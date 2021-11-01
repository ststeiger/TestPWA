﻿
namespace Dapper
{


    [System.Flags]
    public enum RenderType_t : int
    {
        Minified = 0, // un-indented
        Indented = 1,
        DataTable = 2,
        Array = 4,
        Data_Only = 8,
        Columns_Associative = 16,
        Columns_ObjectArray = 32,
        WithDetail = 64,
        ShortName = 128,
        LongName = 256,
        AssemblyQualifiedName = 512
    }


    public static class AsJSONExtensions
    {

        private static string GetAssemblyQualifiedNoVersionName(string input)
        {
            int i = 0;
            bool isNotFirst = false;
            while (i < input.Length)
            {
                if (input[i] == ',')
                {
                    if (isNotFirst)
                        break;

                    isNotFirst = true;
                }

                i += 1;
            }

            // Get second comma in string
            // https://stackoverflow.com/questions/22669044/how-to-get-the-index-of-second-comma-in-a-string
            // int index = s.IndexOf(',', s.IndexOf(',') + 1);
            // You may need to make sure you do not go outside the bounds of the string though. I will leave that part up to you.

            return input.Substring(0, i);
        } // GetAssemblyQualifiedNoVersionName


        private static string GetAssemblyQualifiedNoVersionName(System.Type type)
        {
            if (type == null)
                return null;

            return GetAssemblyQualifiedNoVersionName(type.AssemblyQualifiedName);
        } // GetAssemblyQualifiedNoVersionName


        private static string GetTypeName(System.Type type, RenderType_t renderType)
        {
            if (type == null)
                return null;

            if (renderType.HasFlag(RenderType_t.ShortName))
                return type.Name;

            if (renderType.HasFlag(RenderType_t.LongName))
                return type.FullName;

            if (renderType.HasFlag(RenderType_t.AssemblyQualifiedName))
                return GetAssemblyQualifiedNoVersionName(type);

            return type.Name;
        } // GetAssemblyQualifiedNoVersionName


        private static async System.Threading.Tasks.Task WriteAssociativeColumnsArray(
              Newtonsoft.Json.JsonTextWriter jsonWriter
            , System.Data.Common.DbDataReader dr
            , RenderType_t renderType)
        {
            //await jsonWriter.WriteStartObjectAsync();
            await jsonWriter.WriteStartObjectAsync();


            for (int i = 0; i <= dr.FieldCount - 1; i++)
            {
                await jsonWriter.WritePropertyNameAsync(dr.GetName(i));
                await jsonWriter.WriteStartObjectAsync();

                await jsonWriter.WritePropertyNameAsync("index");
                await jsonWriter.WriteValueAsync(i);

                if (renderType.HasFlag(RenderType_t.WithDetail))
                {
                    await jsonWriter.WritePropertyNameAsync("fieldType");
                    // await jsonWriter.WriteValueAsync(GetAssemblyQualifiedNoVersionName(dr.GetFieldType(i)));
                    await jsonWriter.WriteValueAsync(GetTypeName(dr.GetFieldType(i), renderType));
                }

                await jsonWriter.WriteEndObjectAsync();
            }

            await jsonWriter.WriteEndObjectAsync();
        } // WriteAssociativeArray


        private static async System.Threading.Tasks.Task WriteObjectArray(Newtonsoft.Json.JsonTextWriter jsonWriter,
            System.Data.Common.DbDataReader dr, RenderType_t renderType)
        {
            //await jsonWriter.WriteStartObjectAsync();
            await jsonWriter.WriteStartArrayAsync();

            for (int i = 0; i <= dr.FieldCount - 1; i++)
            {
                await jsonWriter.WriteStartObjectAsync();

                await jsonWriter.WritePropertyNameAsync("name");
                await jsonWriter.WriteValueAsync(dr.GetName(i));

                await jsonWriter.WritePropertyNameAsync("index");
                await jsonWriter.WriteValueAsync(i);

                if (renderType.HasFlag(RenderType_t.WithDetail))
                {
                    await jsonWriter.WritePropertyNameAsync("fieldType");
                    //await jsonWriter.WriteValueAsync(GetAssemblyQualifiedNoVersionName(dr.GetFieldType(i)));
                    await jsonWriter.WriteValueAsync(GetTypeName(dr.GetFieldType(i), renderType));
                }

                await jsonWriter.WriteEndObjectAsync();
            }

            // await jsonWriter.WriteEndObjectAsync();
            await jsonWriter.WriteEndArrayAsync();
        } // WriteAssociativeArray


        private static async System.Threading.Tasks.Task WriteArray(Newtonsoft.Json.JsonTextWriter jsonWriter,
            System.Data.Common.DbDataReader dr)
        {
            await jsonWriter.WriteStartArrayAsync();
            for (int i = 0; i <= dr.FieldCount - 1; i++)
                await jsonWriter.WriteValueAsync(dr.GetName(i));

            await jsonWriter.WriteEndArrayAsync();
        } // End Sub WriteArray 


        public static async System.Threading.Tasks.Task<System.Exception> AsJSON(
              this System.Data.IDbConnection cnn
            , System.IO.TextWriter output
            , string sql
            , RenderType_t format = RenderType_t.Array
            , object param = null
            , System.Data.IDbTransaction transaction = null
            , int? commandTimeout = null
            , System.Data.CommandType? commandType = null)
        {
            try
            {
                using (System.Data.Common.DbDataReader dr = cnn.ExecuteDbReader(sql, param, transaction, commandTimeout, commandType))
                {
                    using (Newtonsoft.Json.JsonTextWriter jsonWriter =
                        new Newtonsoft.Json.JsonTextWriter(output)) // context.Response.Output)
                    {
                        if (format.HasFlag(RenderType_t.Indented))
                            jsonWriter.Formatting = Newtonsoft.Json.Formatting.Indented;


                        // https://stackoverflow.com/questions/15305203/what-to-do-with-errors-when-streaming-the-body-of-an-http-request
                        // https://tools.ietf.org/html/rfc2616#section-14.40
                        // https://stackoverflow.com/questions/50299300/how-to-write-malformed-http-response-to-guarantee-something-akin-to-http-500
                        // https://stackoverflow.com/questions/50298999/write-http-trailer-headers-manually
                        // How do I write a useful trail header to the response that can be displayed well by the browser?
                        // You don’t. Mainstream Web browsers do not care about trailers.
                        // context.Response.StatusCode = (int)System.Net.HttpStatusCode.OK;
                        // context.Response.ContentType = "application/json";


                        await jsonWriter.WriteStartObjectAsync();

                        await jsonWriter.WritePropertyNameAsync("tables");
                        await jsonWriter.WriteStartArrayAsync();

                        do
                        {
                            if (!format.HasFlag(RenderType_t.Data_Only) &&
                                !format.HasFlag(RenderType_t.DataTable))
                            {
                                await jsonWriter.WriteStartObjectAsync();
                                await jsonWriter.WritePropertyNameAsync("columns");

                                if (format.HasFlag(RenderType_t.Columns_Associative))
                                {
                                    await WriteAssociativeColumnsArray(jsonWriter, dr, format);
                                }
                                else if (format.HasFlag(RenderType_t.Columns_ObjectArray))
                                {
                                    await WriteObjectArray(jsonWriter, dr, format);
                                }
                                else // (format.HasFlag(RenderType_t.Array))
                                {
                                    await WriteArray(jsonWriter, dr);
                                }
                            } // End if (!format.HasFlag(RenderType_t.Data_Only)) 


                            if (!format.HasFlag(RenderType_t.Data_Only) &&
                                !format.HasFlag(RenderType_t.DataTable))
                            {
                                await jsonWriter.WritePropertyNameAsync("rows");
                            } // End if (!format.HasFlag(RenderType_t.Data_Only))

                            await jsonWriter.WriteStartArrayAsync();

                            string[] columns = null;
                            if (format.HasFlag(RenderType_t.DataTable))
                            {
                                columns = new string[dr.FieldCount];
                                for (int i = 0; i < dr.FieldCount; i++)
                                {
                                    columns[i] = dr.GetName(i);
                                } // Next i 
                            } // End if (format.HasFlag(RenderType_t.DataTable)) 

                            while (await dr.ReadAsync())
                            {
                                if (format.HasFlag(RenderType_t.DataTable))
                                    await jsonWriter.WriteStartObjectAsync();
                                else
                                    await jsonWriter.WriteStartArrayAsync();

                                for (int i = 0; i <= dr.FieldCount - 1; i++)
                                {
                                    object obj = await dr.GetFieldValueAsync<object>(i);
                                    if (obj == System.DBNull.Value)
                                        obj = null;

                                    if (columns != null && format.HasFlag(RenderType_t.DataTable))
                                    {
                                        await jsonWriter.WritePropertyNameAsync(columns[i]);
                                    }

                                    await jsonWriter.WriteValueAsync(obj);
                                } // Next i 

                                if (format.HasFlag(RenderType_t.DataTable))
                                    await jsonWriter.WriteEndObjectAsync();
                                else
                                    await jsonWriter.WriteEndArrayAsync();
                            } // Whend 

                            await jsonWriter.WriteEndArrayAsync();

                            if (!format.HasFlag(RenderType_t.Data_Only) &&
                                !format.HasFlag(RenderType_t.DataTable))
                            {
                                await jsonWriter.WriteEndObjectAsync();
                            } // End if (!format.HasFlag(RenderType_t.Data_Only)) 
                        } while (await dr.NextResultAsync());

                        await jsonWriter.WriteEndArrayAsync();
                        await jsonWriter.WriteEndObjectAsync();

                        await jsonWriter.FlushAsync();
                        await output.FlushAsync();
                    } // jsonWriter 

                } // End Using dr 

            } // End Try 
            catch (System.Exception ex)
            {
                return ex;
            } // End Catch

            return null;
        } // End Task AsJSON 


        public static async System.Threading.Tasks.Task<System.Exception> AsJSON(
            this System.Data.IDbConnection cnn
          , System.IO.Stream strm
          , string sql = null
          , RenderType_t format = RenderType_t.Array
          , object param = null
          , System.Data.IDbTransaction transaction = null
          , int? commandTimeout = null
          , System.Data.CommandType? commandType = null)
        {
            System.Exception ex = null;

            // using (System.IO.TextWriter output = new System.IO.StreamWriter(strm, new System.Text.UTF8Encoding(false), 4096, true))
            // using (System.IO.StreamWriter output = new System.IO.StreamWriter(strm, new System.Text.UTF8Encoding(false), 4096, true) { AutoFlush = false })
            // using (AAAA output = new AAAA(strm, new System.Text.UTF8Encoding(false), 4096, true))
            // using (AAAAAAAAAA output = new AAAAAAAAAA(strm, new System.Text.UTF8Encoding(false), 4096, true) { ExceptionFetcher = delegate { return ex; } })
            // using(var output = new WebConsoleWriter(strm))
            
            //using (MyStreamWriter output = new MyStreamWriter(strm, new System.Text.UTF8Encoding(false), 4096, true) { ExceptionFetcher = delegate { return ex; } })
            using (System.IO.TextWriter output = new MyStreamWriter(strm, new System.Text.UTF8Encoding(false), 4096, true))
            {
                // ex = new System.Exception("Pity !"); throw new System.Exception("Pity !");
                ex = await AsJSON(cnn, output, sql, format, param, transaction, commandTimeout, commandType);

                if (ex == null)
                    await output.FlushAsync();
            } // End Using output 

            return ex;
        } // End Task AsJSON 


        public static async System.Threading.Tasks.Task<System.Exception> AsJSON(
            this System.Data.IDbConnection cnn
          , System.Text.StringBuilder sb
          , string sql
          , RenderType_t format = RenderType_t.Array
          , object param = null
          , System.Data.IDbTransaction transaction = null
          , int? commandTimeout = null
          , System.Data.CommandType? commandType = null)
        {
            System.Exception ex = null;

            using (System.IO.TextWriter output = new System.IO.StringWriter(sb))
            {
                ex = await AsJSON(cnn, output, sql, format, param, transaction, commandTimeout, commandType);
            } // End Using output 

            return ex;
        } // End Task AsJSON 


    } // End static Class AsJSONExtensions


}

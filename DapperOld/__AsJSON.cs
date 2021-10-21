
namespace Dapper
{


    [System.Flags]
    public enum RenderType_t : int
    {
        Default = 0,
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
            , System.Data.Common.DbDataReader dr, RenderType_t renderType)
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


        private static async System.Threading.Tasks.Task WriteComplexArray(Newtonsoft.Json.JsonTextWriter jsonWriter,
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
                                    await WriteComplexArray(jsonWriter, dr, format);
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


                                    try
                                    {
                                        await jsonWriter.WriteValueAsync(obj);
                                    }
                                    catch (System.Exception exa)
                                    {
                                        System.Console.WriteLine("Hoppala");
                                    }

                                    
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
            // new TestPWA.Code.DB.
            



            using (System.IO.TextWriter output = new System.IO.StreamWriter(strm, new System.Text.UTF8Encoding(false), 4096, true))
            {
                ex = await AsJSON(cnn, output, sql, format, param, transaction, commandTimeout, commandType);
                if (ex == null)
                    await output.FlushAsync();
            } // End Using output 

            return ex;
        } // End Task AsJSON 


        public class AAAAAAAAAA
            : System.IO.StreamWriter
        {
            // https://github.com/microsoft/referencesource/blob/master/mscorlib/system/io/streamwriter.cs
            // https://referencesource.microsoft.com/#mscorlib/system/io/streamwriter.cs,f922405b11eca536


            public AAAAAAAAAA(System.IO.Stream stream) : base(stream)
            { }

            public AAAAAAAAAA(string path) : base(path)
            { }

            public AAAAAAAAAA(System.IO.Stream stream, System.Text.Encoding encoding) 
                : base(stream, encoding)
            { }

            public AAAAAAAAAA(string path, bool append) 
                : base(path, append)
            { }

            public AAAAAAAAAA(System.IO.Stream stream, System.Text.Encoding encoding, int bufferSize) 
                : base(stream, encoding, bufferSize)
            { }

            public AAAAAAAAAA(string path, bool append, System.Text.Encoding encoding) 
                : base(path, append, encoding)
            { }

            public AAAAAAAAAA(System.IO.Stream stream, System.Text.Encoding encoding, int bufferSize, bool leaveOpen) 
                : base(stream, encoding, bufferSize, leaveOpen)
            { }

            public AAAAAAAAAA(string path, bool append, System.Text.Encoding encoding, int bufferSize) 
                : base(path, append, encoding, bufferSize)
            { }



            public delegate System.Exception FetchException_t();

            public FetchException_t ExceptionFetcher;

            protected System.Exception Exception
            {
                get
                {
                    if (ExceptionFetcher == null)
                        return null;

                    return ExceptionFetcher();
                }
            }

            bool m_autoFlush;


            public override bool AutoFlush
            {
                get
                {
                    if (Exception != null)
                        return false;

                    return this.m_autoFlush;
                }
                set
                {
                    m_autoFlush = value;
                }
            }


            protected async override void Dispose(bool disposing)
            {
                System.Console.WriteLine("foo");

                try
                {
                    if(false)//if (Exception == null)
                        base.Dispose(disposing);
                    else
                    {
                        await FlushAsync();

                        bool leaveOpen = true;

                        if (base.BaseStream != null)
                        {
                            // Note: flush on the underlying stream can throw (ex., low disk space)
                            if (disposing && !leaveOpen)
                            {
                                base.BaseStream.Dispose();
                            }
                        }
                    }
                }
                catch (System.Exception ex)
                {
                    System.Console.WriteLine(ex.Message);
                }
            }
            

            public async override void Flush()
            {
                if (this.Exception == null)
                    // base.Flush();
                    // await base.FlushAsync();
                    await this.BaseStream.FlushAsync();
            }


            public override System.Threading.Tasks.Task FlushAsync()
            {
                if (this.Exception == null)
                    // return base.FlushAsync();
                    return this.BaseStream.FlushAsync();

                return System.Threading.Tasks.Task.CompletedTask;
            }

        }



        public class WebConsoleWriter
            : System.IO.TextWriter
        {

            System.IO.Stream Response;
            bool autoFlush = true;

            bool LeaveOpen = true;


            public override void Close()
            {
                Dispose(true);
                System.GC.SuppressFinalize(this);
            }

            protected override void Dispose(bool disposing)
            {
                try
                {
                    if (Response != null)
                    {
                        // Flush();

                        // Note: flush on the underlying stream can throw (ex., low disk space)
                        if (disposing && !LeaveOpen)
                        {
                            this.Response.Dispose();
                        }
                    }
                }
                catch (System.Exception)
                { }
            }



            public WebConsoleWriter(System.IO.Stream strm)
            {
                this.Response = strm;
            }

            public override void Write(char[] buffer)
            {
                byte[] charBuffer = this.Encoding.GetBytes(buffer);
                Response.Write(charBuffer, 0, charBuffer.Length);
                if (autoFlush) this.Response.Flush();
            }


            public override void Write(char[] buffer, int index, int count)
            {
                byte[] charBuffer = this.Encoding.GetBytes(buffer);
                Response.Write(charBuffer, 0, charBuffer.Length);
                if (autoFlush) this.Response.Flush();
            }


            public override System.Threading.Tasks.Task WriteAsync(char[] buffer, int index, int count)
            {
                byte[] charBuffer = this.Encoding.GetBytes(buffer);
                return Response.WriteAsync(charBuffer, 0, charBuffer.Length);
            }



            public override void Write(string value)
            {
                byte[] buffer = this.Encoding.GetBytes(value);
                Response.Write(buffer, 0, buffer.Length);
                if (autoFlush) this.Response.Flush();
            }

            public override System.Threading.Tasks.Task WriteAsync(string value)
            {
                byte[] buffer = this.Encoding.GetBytes(value + "\n");
                return Response.WriteAsync(buffer, 0, buffer.Length);
            }


            public override void WriteLine(string value)
            {
                byte[] buffer = this.Encoding.GetBytes(value + "\n");
                Response.Write(buffer, 0, buffer.Length);
                if (autoFlush) this.Response.Flush();
            }

            public override System.Threading.Tasks.Task WriteLineAsync(string value)
            {
                byte[] buffer = this.Encoding.GetBytes(value + "\n");
                return Response.WriteAsync(buffer, 0, buffer.Length);
            }


            public override void WriteLine()
            {
                byte[] buffer = this.Encoding.GetBytes("\n");
                Response.Write(buffer, 0, buffer.Length);
                if (autoFlush) this.Response.Flush();
            }

            public override System.Threading.Tasks.Task WriteLineAsync()
            {
                byte[] buffer = this.Encoding.GetBytes("\n");
                return Response.WriteAsync(buffer, 0, buffer.Length);
            }


            public override void Flush()
            {
                Response.Flush();
            }

            public override System.Text.Encoding Encoding
            {
                get { return System.Text.Encoding.UTF8; }
            }
        }


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


    }


}

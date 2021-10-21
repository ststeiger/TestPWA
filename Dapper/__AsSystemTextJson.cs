
namespace Dapper
{



    internal static class Utf8JsonWriterExtensions
    {

        // https://github.com/JamesNK/Newtonsoft.Json/blob/master/Src/Newtonsoft.Json/JsonWriter.cs#L525
        public static void WriteValue(this System.Text.Json.Utf8JsonWriter jsonWriter, object obj)
        {
            if (obj == System.DBNull.Value)
                obj = null;

            if (obj == null)
            {
                jsonWriter.WriteNullValue();
                return;
            }

            System.Type t = obj.GetType();

            if (object.ReferenceEquals(t, typeof(System.DateTime)))
            {
                jsonWriter.WriteStringValue((System.DateTime)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.DateTimeOffset)))
            {
                jsonWriter.WriteStringValue((System.DateTimeOffset)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Guid)))
            {
                jsonWriter.WriteStringValue((System.Guid)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Int32)))
            {
                jsonWriter.WriteNumberValue((System.Int32)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.UInt32)))
            {
                jsonWriter.WriteNumberValue((System.UInt32)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Int64)))
            {
                jsonWriter.WriteNumberValue((System.Int64)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.UInt64)))
            {
                jsonWriter.WriteNumberValue((System.UInt64)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Int16)))
            {
                jsonWriter.WriteNumberValue((System.Int16)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.UInt16)))
            {
                jsonWriter.WriteNumberValue((System.UInt16)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Byte)))
            {
                jsonWriter.WriteNumberValue((System.Byte)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Decimal)))
            {
                jsonWriter.WriteNumberValue((System.Decimal)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Double)))
            {
                jsonWriter.WriteNumberValue((System.Double)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Single)))
            {
                jsonWriter.WriteNumberValue((System.Single)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.String)))
            {
                jsonWriter.WriteStringValue((System.String)obj);
            }
            else if (object.ReferenceEquals(t, typeof(System.Boolean)))
            {
                jsonWriter.WriteBooleanValue((System.Boolean)obj);
            }
            else if (object.ReferenceEquals(t, typeof(byte[])))
            {
                byte[] buffer = (byte[])obj;
                jsonWriter.WriteStringValue(System.Convert.ToBase64String(buffer));
            }
            else
            {
                throw new System.NotImplementedException("WriteValue for " + t.FullName);
            }
        }
    }



    public static class AsJSON1Extensions1
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


        private static void WriteAssociativeColumnsArray(
              System.Text.Json.Utf8JsonWriter jsonWriter
            , System.Data.Common.DbDataReader dr, RenderType_t renderType)
        {
            //await jsonWriter.WriteStartObjectAsync();
            jsonWriter.WriteStartObject();


            for (int i = 0; i <= dr.FieldCount - 1; i++)
            {
                jsonWriter.WritePropertyName(dr.GetName(i));
                jsonWriter.WriteStartObject();

                jsonWriter.WritePropertyName("index");
                jsonWriter.WriteValue(i);

                if (renderType.HasFlag(RenderType_t.WithDetail))
                {
                    jsonWriter.WritePropertyName("fieldType");
                    // jsonWriter.WriteValue(GetAssemblyQualifiedNoVersionName(dr.GetFieldType(i)));
                    jsonWriter.WriteValue(GetTypeName(dr.GetFieldType(i), renderType));
                }

                jsonWriter.WriteEndObject();
            }

            jsonWriter.WriteEndObject();
        } // WriteAssociativeArray


        private static void WriteObjectArray(System.Text.Json.Utf8JsonWriter jsonWriter,
            System.Data.Common.DbDataReader dr, RenderType_t renderType)
        {
            // jsonWriter.WriteStartObject();
            jsonWriter.WriteStartArray();

            for (int i = 0; i <= dr.FieldCount - 1; i++)
            {
                jsonWriter.WriteStartObject();

                jsonWriter.WritePropertyName("name");
                jsonWriter.WriteValue(dr.GetName(i));

                jsonWriter.WritePropertyName("index");
                jsonWriter.WriteValue(i);

                if (renderType.HasFlag(RenderType_t.WithDetail))
                {
                    jsonWriter.WritePropertyName("fieldType");
                    //await jsonWriter.WriteValue(GetAssemblyQualifiedNoVersionName(dr.GetFieldType(i)));
                    jsonWriter.WriteValue(GetTypeName(dr.GetFieldType(i), renderType));
                }

                jsonWriter.WriteEndObject();
            }

            // await jsonWriter.WriteEndObjectAsync();
            jsonWriter.WriteEndArray();
        } // WriteAssociativeArray


        private static void WriteArray(System.Text.Json.Utf8JsonWriter jsonWriter,
            System.Data.Common.DbDataReader dr)
        {
            jsonWriter.WriteStartArray();
            for (int i = 0; i <= dr.FieldCount - 1; i++)
                jsonWriter.WriteValue(dr.GetName(i));

            jsonWriter.WriteEndArray();
        } // End Sub WriteArray 




        public static async System.Threading.Tasks.Task<System.Exception> AsSystemTextJson(
              this System.Data.IDbConnection cnn
            , System.IO.Stream outputStream
            , string sql
            , RenderType_t format = RenderType_t.Array
            , object param = null
            , System.Data.IDbTransaction transaction = null
            , int? commandTimeout = null
            , System.Data.CommandType? commandType = null
        )
        {
            try
            {
                using (System.Data.Common.DbDataReader dr = cnn.ExecuteDbReader(sql, param, transaction, commandTimeout, commandType))
                {
                    System.Text.Json.JsonWriterOptions writerOptions = new System.Text.Json.JsonWriterOptions();
                    if (format.HasFlag(RenderType_t.Indented))
                        writerOptions.Indented = true;

                    using (System.Text.Json.Utf8JsonWriter jsonWriter = new System.Text.Json.Utf8JsonWriter(outputStream, writerOptions))
                    {
                        // https://stackoverflow.com/questions/15305203/what-to-do-with-errors-when-streaming-the-body-of-an-http-request
                        // https://tools.ietf.org/html/rfc2616#section-14.40
                        // https://stackoverflow.com/questions/50299300/how-to-write-malformed-http-response-to-guarantee-something-akin-to-http-500
                        // https://stackoverflow.com/questions/50298999/write-http-trailer-headers-manually
                        // How do I write a useful trail header to the response that can be displayed well by the browser?
                        // You don’t. Mainstream Web browsers do not care about trailers.
                        // context.Response.StatusCode = (int)System.Net.HttpStatusCode.OK;
                        // context.Response.ContentType = "application/json";

                        jsonWriter.WriteStartObject();
                        jsonWriter.WritePropertyName("tables");

                        jsonWriter.WriteStartArray();

                        do
                        {
                            if (!format.HasFlag(RenderType_t.Data_Only) &&
                                !format.HasFlag(RenderType_t.DataTable))
                            {
                                jsonWriter.WriteStartObject();
                                jsonWriter.WritePropertyName("columns");

                                if (format.HasFlag(RenderType_t.Columns_Associative))
                                {
                                    WriteAssociativeColumnsArray(jsonWriter, dr, format);
                                }
                                else if (format.HasFlag(RenderType_t.Columns_ObjectArray))
                                {
                                    WriteObjectArray(jsonWriter, dr, format);
                                }
                                else // (format.HasFlag(RenderType_t.Array))
                                {
                                    WriteArray(jsonWriter, dr);
                                }
                            } // End if (!format.HasFlag(RenderType_t.Data_Only)) 


                            if (!format.HasFlag(RenderType_t.Data_Only) &&
                                !format.HasFlag(RenderType_t.DataTable))
                            {
                                jsonWriter.WritePropertyName("rows");
                            } // End if (!format.HasFlag(RenderType_t.Data_Only))

                            jsonWriter.WriteStartArray();

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
                                    jsonWriter.WriteStartObject();
                                else
                                    jsonWriter.WriteStartArray();

                                for (int i = 0; i <= dr.FieldCount - 1; i++)
                                {
                                    object obj = await dr.GetFieldValueAsync<object>(i);
                                    if (obj == System.DBNull.Value)
                                        obj = null;

                                    if (columns != null && format.HasFlag(RenderType_t.DataTable))
                                    {
                                        jsonWriter.WritePropertyName(columns[i]);
                                    }

                                    jsonWriter.WriteValue(obj);
                                } // Next i 

                                if (format.HasFlag(RenderType_t.DataTable))
                                    jsonWriter.WriteEndObject();
                                else
                                    jsonWriter.WriteEndArray();
                            } // Whend 

                            jsonWriter.WriteEndArray();

                            if (!format.HasFlag(RenderType_t.Data_Only) &&
                                !format.HasFlag(RenderType_t.DataTable))
                            {
                                jsonWriter.WriteEndObject();
                            } // End if (!format.HasFlag(RenderType_t.Data_Only)) 
                        } while (await dr.NextResultAsync());

                        jsonWriter.WriteEndArray();
                        jsonWriter.WriteEndObject();

                        await jsonWriter.FlushAsync();
                        await outputStream.FlushAsync();
                    } // jsonWriter 

                } // End Using dr 

            } // End Try 
            catch (System.Exception ex)
            {
                return ex;
            } // End Catch

            return null;
        } // End Task AsJSON1 


        public static async System.Threading.Tasks.Task<System.Exception> AsSystemTextJson(
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

            using (System.IO.MemoryStream ms = new System.IO.MemoryStream())
            {
                ex = await AsSystemTextJson(cnn, ms, sql, format, param, transaction, commandTimeout, commandType);
                using (var sr = new System.IO.StreamReader(ms, new System.Text.UTF8Encoding(false)))
                {
                    sb.Append(sr.ReadToEnd());
                }
            }

            return ex;
        } // End Task AsJSON1 


    } // End static Class AsJSON1Extensions


}

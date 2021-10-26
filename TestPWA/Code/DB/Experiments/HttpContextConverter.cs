
namespace TestPWA
{

    public class HttpContextConverter
       : System.Text.Json.Serialization.JsonConverter<Microsoft.AspNetCore.Http.HttpContext>
    {


        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(Microsoft.AspNetCore.Http.HttpContext).IsAssignableFrom(objectType);

            // if (object.ReferenceEquals(typeof(System.Reflection.TypeInfo), objectType)) return false;

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }


        public override Microsoft.AspNetCore.Http.HttpContext Read(
            ref System.Text.Json.Utf8JsonReader reader,
            System.Type typeToConvert,
            System.Text.Json.JsonSerializerOptions options)
        {
            return null;
        }


        public override void Write(
            System.Text.Json.Utf8JsonWriter writer,
            Microsoft.AspNetCore.Http.HttpContext value,
            System.Text.Json.JsonSerializerOptions options)
        {
            
            
            System.Console.WriteLine(value);

            writer.WriteStartObject();
            try
            {
                if (value.Request != null)
                {
                    writer.WritePropertyName("Request");
                    {
                        writer.WriteStartObject();


                        writer.WritePropertyName("Protocol");
                        writer.WriteStringValue(value.Request.Protocol);
                        writer.WritePropertyName("Method");
                        writer.WriteStringValue(value.Request.Method);
                        writer.WritePropertyName("Url");
                        writer.WriteStringValue(value.Request.Scheme + "://" + value.Request.Host.Value + value.Request.Path.Value + value.Request.QueryString.Value);
                        writer.WritePropertyName("ContentType");
                        writer.WriteStringValue(value.Request.ContentType);

                        writer.WritePropertyName("RouteValues");
                        System.Text.Json.JsonSerializer.Serialize(writer, value.Request.RouteValues, options);

                        writer.WritePropertyName("Cookies");
                        System.Text.Json.JsonSerializer.Serialize(writer, value.Request.Cookies, options);

                        writer.WritePropertyName("Headers");
                        System.Text.Json.JsonSerializer.Serialize(writer, value.Request.Headers, options);

                        writer.WritePropertyName("Query");
                        System.Text.Json.JsonSerializer.Serialize(writer, value.Request.Query, options);

                        if (value.Request.HasFormContentType)
                        {
                            writer.WritePropertyName("Form");
                            System.Text.Json.JsonSerializer.Serialize(writer, value.Request.Form, options);
                        } // End if (value.Request.HasFormContentType) 

                        if (value.Request.Body != null)
                        {
                            
                            writer.WritePropertyName("Body");

                            using (System.IO.TextReader sr = new System.IO.StreamReader(value.Request.Body))
                            {
                                string json = sr.ReadToEndAsync().Result;
                                writer.WriteStringValue(json);
                            } // End Using sr 

                        } // End if (value.Request.Body != null) 

                    } // End JSON-Property Request
                    writer.WriteEndObject();
                } // End if (value.Request != null) 
            }
            catch (System.Exception ex)
            {
                writer.WritePropertyName("Error");
                writer.WriteStartObject();
                writer.WritePropertyName("Message");
                writer.WriteStringValue(ex.Message);
                writer.WritePropertyName("StackTrace");
                writer.WriteStringValue(ex.StackTrace);
                writer.WriteEndObject();
            }

            writer.WriteEndObject();




        }


    }


}


namespace TestPWA 
{


    public class ExceptionConverter
       : System.Text.Json.Serialization.JsonConverter<System.Exception>
    {
        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(System.Exception).IsAssignableFrom(objectType);

            // if (object.ReferenceEquals(typeof(System.Reflection.TypeInfo), objectType)) return false;

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }


        public override System.Exception Read(ref System.Text.Json.Utf8JsonReader reader, System.Type typeToConvert, System.Text.Json.JsonSerializerOptions options)
        {
            return null;
        }

        public override void Write(System.Text.Json.Utf8JsonWriter writer, System.Exception value, System.Text.Json.JsonSerializerOptions options)
        {

            System.Exception thisError = value;


            int innerExceptionCount = 0;

            writer.WriteStartObject();
            while (thisError != null)
            {
                writer.WritePropertyName("Message");
                writer.WriteStringValue(thisError.Message);

                writer.WritePropertyName("StackTrace");
                writer.WriteStringValue(thisError.StackTrace);

                writer.WritePropertyName("Source");
                writer.WriteStringValue(thisError.Source);

                writer.WritePropertyName("HelpLink");
                writer.WriteStringValue(thisError.HelpLink);

                // Do NOT serialize this.
                // writer.WritePropertyName("TargetSite");
                // writer.WriteStringValue(thisError.TargetSite.Name);

                writer.WritePropertyName("Type");
                writer.WriteStringValue(thisError.GetType().FullName);

                writer.WritePropertyName("Data");
                System.Text.Json.JsonSerializer.Serialize(writer, thisError.Data, options);

                if (thisError.InnerException != null)
                {
                    innerExceptionCount++;
                    System.Console.WriteLine(thisError.InnerException);
                    writer.WritePropertyName("InnerException");
                    writer.WriteStartObject();
                } // End if (thisError.InnerException != null) 

                thisError = thisError.InnerException;
            } // Whend 

            for (int i = 0; i < innerExceptionCount; ++i)
            {
                writer.WriteEndObject();
            }

            writer.WriteEndObject();

            System.Console.WriteLine(value);
        }
    }


}

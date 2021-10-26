
namespace TestPWA 
{

    public class HttpContextWrapperConverter
       : System.Text.Json.Serialization.JsonConverter<AnySqlWebAdmin.HttpContextWrapper>
    {


        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(AnySqlWebAdmin.HttpContextWrapper).IsAssignableFrom(objectType);

            // if (object.ReferenceEquals(typeof(System.Reflection.TypeInfo), objectType)) return false;

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }


        public override AnySqlWebAdmin.HttpContextWrapper Read(ref System.Text.Json.Utf8JsonReader reader, System.Type typeToConvert, System.Text.Json.JsonSerializerOptions options)
        {
            return null;
        }


        public override void Write(System.Text.Json.Utf8JsonWriter writer, AnySqlWebAdmin.HttpContextWrapper value, System.Text.Json.JsonSerializerOptions options)
        {
            System.Console.WriteLine(value);
        }


    }


}

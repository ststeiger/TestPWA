
namespace TestPWA 
{


    public class SystemTypeConverter
        : System.Text.Json.Serialization.JsonConverter<System.Type>
    {


        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(System.Type).IsAssignableFrom(objectType);

            if (object.ReferenceEquals(typeof(System.Reflection.TypeInfo), objectType))
                return false;

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }


        public override System.Type Read(ref System.Text.Json.Utf8JsonReader reader, System.Type typeToConvert, System.Text.Json.JsonSerializerOptions options)
        {
            System.Console.WriteLine(typeToConvert.FullName);
            return typeof(string);
        }


        public override void Write(System.Text.Json.Utf8JsonWriter writer, System.Type value, System.Text.Json.JsonSerializerOptions options)
        {
            System.Console.WriteLine(value.FullName);
        }

    }


}

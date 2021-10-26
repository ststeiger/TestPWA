
namespace TestPWA.Code.DB.Experiments
{


    public class CustomDicionaryConverter
      : System.Text.Json.Serialization.JsonConverter<System.Collections.Generic.Dictionary<string, object>>
    {


        public override System.Collections.Generic.Dictionary<string, object> Read(
            ref System.Text.Json.Utf8JsonReader reader,
            System.Type typeToConvert,
            System.Text.Json.JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }


        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(System.Collections.Generic.Dictionary<string, object>).IsAssignableFrom(objectType);

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        } // End Function CanConvert 


        public override void Write(
            System.Text.Json.Utf8JsonWriter writer,
            System.Collections.Generic.Dictionary<string, object> value,
            System.Text.Json.JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        } // End Sub Write 


    } // End Class MyDicionaryConverter 


}

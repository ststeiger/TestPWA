using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;


namespace TestPWA.Code.DB
{

    // https://github.com/JamesNK/Newtonsoft.Json/blob/master/Src/Newtonsoft.Json/Linq/JContainer.cs
    public partial class JContainer
         : JToken //, IList<JToken>
    { 
    
    }

    // https://github.com/JamesNK/Newtonsoft.Json/blob/master/Src/Newtonsoft.Json/Linq/JToken.cs
    public partial class JToken
        //: IJEnumerable<JToken>, IJsonLineInfo
    {
        private JContainer? _parent;
        private JToken? _previous;
        private JToken? _next;
        // private object? _annotations;

    }


    // https://github.com/JamesNK/Newtonsoft.Json/blob/master/Src/Newtonsoft.Json/Linq/JTokenType.cs


    /// <summary>
    /// Specifies the type of token.
    /// </summary>
    public enum JTokenType
    {
        /// <summary>
        /// No token type has been set.
        /// </summary>
        None = 0,

        /// <summary>
        /// A JSON object.
        /// </summary>
        Object = 1,

        /// <summary>
        /// A JSON array.
        /// </summary>
        Array = 2,

        /// <summary>
        /// A JSON constructor.
        /// </summary>
        Constructor = 3,

        /// <summary>
        /// A JSON object property.
        /// </summary>
        Property = 4,

        /// <summary>
        /// A comment.
        /// </summary>
        Comment = 5,

        /// <summary>
        /// An integer value.
        /// </summary>
        Integer = 6,

        /// <summary>
        /// A float value.
        /// </summary>
        Float = 7,

        /// <summary>
        /// A string value.
        /// </summary>
        String = 8,

        /// <summary>
        /// A boolean value.
        /// </summary>
        Boolean = 9,

        /// <summary>
        /// A null value.
        /// </summary>
        Null = 10,

        /// <summary>
        /// An undefined value.
        /// </summary>
        Undefined = 11,

        /// <summary>
        /// A date value.
        /// </summary>
        Date = 12,

        /// <summary>
        /// A raw JSON value.
        /// </summary>
        Raw = 13,

        /// <summary>
        /// A collection of bytes value.
        /// </summary>
        Bytes = 14,

        /// <summary>
        /// A Guid value.
        /// </summary>
        Guid = 15,

        /// <summary>
        /// A Uri value.
        /// </summary>
        Uri = 16,

        /// <summary>
        /// A TimeSpan value.
        /// </summary>
        TimeSpan = 17
    }

    // https://github.com/JamesNK/Newtonsoft.Json/blob/52e257ee57899296d81a868b32300f0b3cfeacbe/Src/Newtonsoft.Json/Linq/JValue.cs#L46
    public partial class JValue : JToken
    {

        private JTokenType _valueType;
        private object _value;


        public JValue(object value, JTokenType type)
        {
            this._value = value;
            this._valueType = type;
        }


        /// <summary>
        /// Initializes a new instance of the <see cref="JValue"/> class with the given value.
        /// </summary>
        /// <param name="value">The value.</param>
        public JValue(long value)
            : this(value, JTokenType.Integer)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="JValue"/> class with the given value.
        /// </summary>
        /// <param name="value">The value.</param>
        public JValue(decimal value)
            : this(value, JTokenType.Float)
        {
        }
        // etc 
    }



    public class RealDataTableHandler
       : System.Text.Json.Serialization.JsonConverter<System.Data.DataTable>
    {

        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            return typeof(System.Data.DataTable).IsAssignableFrom(objectType);
        }


        public override DataTable Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            if (reader.TokenType != JsonTokenType.StartObject)
            {
                throw new JsonException();
            }


            // https://stackoverflow.com/questions/65620060/equivalent-of-jobject-in-system-text-json
            // https://marcroussy.com/2020/08/17/deserialization-with-system-text-json/
            // new System.Text.Json.JsonElement
            // JsonDocument jd = System.Text.Json.JsonDocument.Parse(reader.ValueSequence);
            // var c = jd.RootElement.GetProperty("Columns");
            // System.Console.WriteLine(c);


            // JObject o = new JObject();
            // o.SetLineInfo(reader as IJsonLineInfo, settings);

            // o.ReadTokenFrom(reader, settings);
            // https://github.com/JamesNK/Newtonsoft.Json/blob/52e257ee57899296d81a868b32300f0b3cfeacbe/Src/Newtonsoft.Json/Linq/JContainer.cs#L767

            // internal void ReadContentFrom(JsonReader r, JsonLoadSettings? settings)
            // https://github.com/JamesNK/Newtonsoft.Json/blob/52e257ee57899296d81a868b32300f0b3cfeacbe/Src/Newtonsoft.Json/Linq/JContainer.cs#L786



            System.Data.DataTable dt = new System.Data.DataTable();

            int objectCount = 0;

            // https://docs.microsoft.com/en-us/dotnet/standard/serialization/system-text-json-converters-how-to?pivots=dotnet-5-0
            // https://docs.microsoft.com/en-us/dotnet/standard/serialization/system-text-json-migrate-from-newtonsoft-how-to?pivots=dotnet-5-0
            while (reader.Read())
            {
                // here we need to count open-close
                if (reader.TokenType == JsonTokenType.EndObject && objectCount == 0)
                {
                    return dt;
                }

                if (reader.TokenType == JsonTokenType.StartObject)
                {
                    objectCount++;
                }
                else if (reader.TokenType == JsonTokenType.EndObject)
                {
                    objectCount--;
                }
                else if (reader.TokenType == JsonTokenType.PropertyName)
                {
                    string propertyName = reader.GetString();
                    reader.Read();
                    switch (propertyName)
                    {
                        case "Date":
                            DateTimeOffset date = reader.GetDateTimeOffset();
                            // wf.Date = date;
                            break;
                        case "TemperatureCelsius":
                            int temperatureCelsius = reader.GetInt32();
                            // wf.TemperatureCelsius = temperatureCelsius;
                            break;
                        case "Summary":
                            string summary = reader.GetString();
                            // wf.Summary = string.IsNullOrWhiteSpace(summary) ? "N/A" : summary;
                            break;
                    }
                }
            }

            throw new JsonException();
        }


        public override void Write(Utf8JsonWriter writer, DataTable value, JsonSerializerOptions options)
        {
            throw new NotImplementedException();
        }


    }


}

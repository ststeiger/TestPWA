
using Newtonsoft.Json;
using System.IO;

namespace AnySqlWebAdmin
{


    public class SqlException
    // : System.Exception
    {
        // :base(serializationinfo, streamingContext)

        public bool hasError;
        public string SQL;
        public System.Collections.Generic.Dictionary<string, object> Parameters;
        public HttpContextWrapper Context;
        public System.Exception InnerException;



        public SqlException(
             string message
            , string sql
            , System.Collections.Generic.Dictionary<string, object> parameters
            , Microsoft.AspNetCore.Http.HttpContext context
            , System.Exception innerException)
        //:base(message, innerException)
        {
            this.hasError = true;
            this.SQL = sql;
            this.Parameters = parameters;
            this.Context = new HttpContextWrapper(context);
            this.InnerException = innerException;
        }


        public SqlException(string message, System.Collections.Generic.Dictionary<string, object> parameters
            , Microsoft.AspNetCore.Http.HttpContext context
            , string sql)
            : this(message, sql, parameters, context, null)
        { }


        public SqlException(string message, string sql, Microsoft.AspNetCore.Http.HttpContext context)
            : this(message, sql, null, context, null)
        { }


        public SqlException()
            : this(null, null, null)
        { }


        public async System.Threading.Tasks.Task ToJSON(System.IO.Stream s)
        {
            // https://stackoverflow.com/questions/27197317/json-net-is-ignoring-properties-in-types-derived-from-system-exception-why
            // JsonSerializer.SerializeAndIgnoreSerializableInterface(this, s);

#if true
            using (StreamWriter writer = new StreamWriter(s))
            {
                using (JsonTextWriter jsonWriter = new JsonTextWriter(writer))
                {
                    JsonSerializer ser = new JsonSerializer();
                    ser.Formatting = Formatting.Indented;
                    ser.Serialize(jsonWriter, this);
                    jsonWriter.Flush();
                }
            }
            await System.Threading.Tasks.Task.CompletedTask;
#else
            System.Text.Json.JsonSerializerOptions jso = new System.Text.Json.JsonSerializerOptions();
            jso.IncludeFields = true;
            jso.WriteIndented = true;
            // jso.PropertyNamingPolicy = System.Text.Json.JsonNamingPolicy.CamelCase;
            // System.Text.Json.JsonSerializer.Serialize(s,this, this.GetType(), jso);
            await System.Text.Json.JsonSerializer.SerializeAsync(s, this, this.GetType(), jso);
#endif
        } // End Constructor 


    } // End Class SqlException 


} // End Namespace AnySqlWebAdmin 

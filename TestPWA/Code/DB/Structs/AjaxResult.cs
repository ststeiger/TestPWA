
namespace AnySqlWebAdmin
{


    public class SessionExpiredException
        : System.Exception
    { }



    [System.Serializable()]
    public class AJAXException
        // : System.Exception
    {


        
        protected System.Exception m_Exception = null;
        protected string m_Message = null;
        protected RequestParameters m_parameters;

        public string sql
        {
            get 
            {
                if (this.m_parameters != null && this.m_parameters.ContainsKey("sql"))
                {
                    return System.Convert.ToString(this.m_parameters["sql"]);
                }

                return null;
            }
        }


        public bool sessionExpired
        {
            get
            {
                if (m_Exception != null)
                {
                    if (m_Exception.GetType() == typeof(SessionExpiredException))
                        return true;
                }

                return false;
            }
        } // sessionExpired


        public string message
        {
            get
            {
                if (sessionExpired)
                    return "Session expired";

                if (!string.IsNullOrEmpty(m_Message))
                    return m_Message;

                if (m_Exception != null)
                    return m_Exception.Message;

                return "";
            }

            set
            {
                m_Message = value;
            }
        } // message


        public string originalMessage
        {
            get
            {
                if (m_Exception != null)
                {
                    if (!string.IsNullOrEmpty(m_Exception.Message))
                        return m_Exception.Message;
                }

                return "";
            }
        } // originalMessage


        public string source
        {
            get
            {
                if (m_Exception != null)
                {
                    if (!string.IsNullOrEmpty(m_Exception.Source))
                        return m_Exception.Source;
                }

                return "";
            }
        } // source


        public string stackTrace
        {
            get
            {
                if (m_Exception != null)
                {
                    if (!string.IsNullOrEmpty(m_Exception.StackTrace))
                        return m_Exception.StackTrace;
                }

                return "";
            }
        } // stackTrace


        public System.Exception innerException
        {
            get
            {
                return m_Exception;
            }
        } // innerException


        

        public AJAXException(System.Exception exBaseException)
            :this(exBaseException, null)
        { }


        public AJAXException(System.Exception exBaseException, RequestParameters requestParameters)
        {
            // MyBase.New(exBaseException.Message, exBaseException)
            // Me.m_RealStackTrace = New StackTrace(exBaseException)
            this.m_Exception = exBaseException;
            this.m_parameters = requestParameters;
        } // Constructor


        public AJAXException(string strMessage, System.Exception exBaseException)
        {
            this.message = strMessage;
            this.m_Exception = exBaseException;
        } // Constructor




        public async System.Threading.Tasks.Task ToJSON(System.IO.Stream s)
        {
            System.Text.Json.JsonSerializerOptions options =
                new System.Text.Json.JsonSerializerOptions()
                {
                    Converters = {
                        new TestPWA.ExceptionConverter()
                    // ,new TestPWA.SystemTypeConverter() 
                    }
                    ,IncludeFields = true
                    ,WriteIndented = true
                }
            ;


            System.Text.Json.JsonWriterOptions writerOptions = new System.Text.Json.JsonWriterOptions();
            // if (format.HasFlag(RenderType_t.Indented))
            writerOptions.Indented = true;

            System.Exception thisError = this.innerException;


            using (System.Text.Json.Utf8JsonWriter writer = new System.Text.Json.Utf8JsonWriter(s, writerOptions))
            {
                writer.WriteStartObject();

                writer.WritePropertyName("hasError");
                writer.WriteBooleanValue(true);

                writer.WritePropertyName("error");



                writer.WriteStartObject();


                writer.WritePropertyName("message");
                writer.WriteStringValue(this.message);

                writer.WritePropertyName("originalMessage");
                writer.WriteStringValue(this.originalMessage);


                writer.WritePropertyName("sessionExpired");
                writer.WriteBooleanValue(this.sessionExpired);

                writer.WritePropertyName("source");
                writer.WriteStringValue(this.source);

                writer.WritePropertyName("stackTrace");
                writer.WriteStringValue(this.stackTrace);


                if (this.m_parameters != null && this.m_parameters.ContainsKey("sql"))
                {
                    writer.WritePropertyName("sql");
                    writer.WriteStringValue(System.Convert.ToString(this.m_parameters["sql"]));
                }


                writer.WritePropertyName("innerException");


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

                    // writer.WritePropertyName("Data");
                    // System.Text.Json.JsonSerializer.Serialize(writer, thisError.Data, options);

                    // await writer.FlushAsync();
                    // await System.Text.Json.JsonSerializer.SerializeAsync(s, thisError.Data, options);
                    // await s.FlushAsync();

                    //    await System.Text.Json.JsonSerializer.SerializeAsync(s, thisError.Data, thisError.Data.GetType(), options);
                    // System.Text.Json.JsonSerializer.SerializeAsync(writer, thisError.Data, options);

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
                    writer.WriteEndObject(); // InnerExceptions
                } // Next i 

                writer.WriteEndObject(); // innerException
                writer.WriteEndObject(); // Error
                writer.WriteEndObject(); // end object  

                await writer.FlushAsync();
            } // End Using writer 

        } // End Task ToJSON 

        
    } // AJAXException



    public class AjaxResult
    {

        public object data;
        public AJAXException error;


        public AjaxResult()
        { } // End Constructor 



        public bool hasError
        {
            get
            {
                return this.error != null;
            }
        }


        public async System.Threading.Tasks.Task ToJSON(System.IO.Stream s)
        {
            System.Text.Json.JsonSerializerOptions options =
                new System.Text.Json.JsonSerializerOptions()
                {
                    Converters = { new TestPWA.ExceptionConverter() },
                    IncludeFields = true,
                    WriteIndented = true
                };

            await System.Text.Json.JsonSerializer.SerializeAsync(s, this, this.GetType(), options);
        } // End Task 


    } // End Class AjaxResult 


}

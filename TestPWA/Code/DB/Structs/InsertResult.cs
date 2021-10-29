
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
        {
            // MyBase.New(exBaseException.Message, exBaseException)
            // Me.m_RealStackTrace = New StackTrace(exBaseException)
            this.m_Exception = exBaseException;
        } // Constructor


        public AJAXException(string strMessage, System.Exception exBaseException)
        {
            this.message = strMessage;
            this.m_Exception = exBaseException;
        } // Constructor
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


namespace AnySqlWebAdmin 
{

    public class InsertResult
    {

        public SqlException Exception;

        public string Status
        {
            get
            {
                if (this.Exception == null)
                    return "OK";

                return "ERR";
            }
        } // End Property Status 


        public InsertResult(SqlException ex)
        {
            this.Exception = ex;
        } // End Constructor 


        public InsertResult()
            : this(null)
        { } // End Constructor 



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


    } // End Class InsertResult 


}

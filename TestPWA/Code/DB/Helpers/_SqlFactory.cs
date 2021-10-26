
namespace AnySqlWebAdmin
{


    public class SqlFactory
    {
        private static string s_ConnectionString;
        private static System.Data.Common.DbProviderFactory s_Factory;


        private static string GetMsConnectionString()
        {
            System.Data.SqlClient.SqlConnectionStringBuilder csb = new System.Data.SqlClient.SqlConnectionStringBuilder();

            csb.DataSource = System.Environment.MachineName; // SecretManager.GetSecret<string>("DataSource");
            csb.InitialCatalog = "server_mail";

            csb.IntegratedSecurity = true;
            if (!csb.IntegratedSecurity)
            {
                csb.UserID = SecretManager.GetSecret<string>("DefaultDbUser");
                csb.Password = SecretManager.GetSecret<string>("DefaultDbPassword");
            }

            csb.PacketSize = 4096;
            csb.PersistSecurityInfo = false;
            csb.ApplicationName = "TestPWA";
            csb.ConnectTimeout = 15;
            csb.Pooling = true;
            csb.MinPoolSize = 1;
            csb.MaxPoolSize = 100;
            csb.MultipleActiveResultSets = false;
            csb.WorkstationID = System.Environment.MachineName;

            return csb.ConnectionString;
        }

        private static string GetPgConnectionString()
        {
            Npgsql.NpgsqlConnectionStringBuilder csb = new Npgsql.NpgsqlConnectionStringBuilder();

            csb.Host = SecretManager.GetSecret<string>("DefaultDbHost"); ;
            csb.Port = 5432;
            csb.Database = SecretManager.GetSecret<string>("DefaultDb"); // "server_mail"

            csb.IntegratedSecurity = false;
            if (!csb.IntegratedSecurity)
            {
                // AnySqlSmtpServer smtp_verver_web_services meridian2021
                csb.Username = SecretManager.GetSecret<string>("DefaultDbUser");
                csb.Password = SecretManager.GetSecret<string>("DefaultDbPassword");
            }

            csb.PersistSecurityInfo = false;
            csb.ApplicationName = "TestPWA";
            csb.Timeout = 15;
            csb.Pooling = true;
            csb.MinPoolSize = 1;
            csb.MaxPoolSize = 100;

            return csb.ConnectionString;
        }

        static SqlFactory()
        {
            if (System.Runtime.InteropServices.RuntimeInformation.IsOSPlatform(System.Runtime.InteropServices.OSPlatform.Windows))
            {
                s_Factory = DbProviderFactories.GetFactory(typeof(System.Data.SqlClient.SqlClientFactory));
                s_ConnectionString = GetMsConnectionString();
            }
            else
            {
                s_Factory = DbProviderFactories.GetFactory(typeof(Npgsql.NpgsqlFactory));
                s_ConnectionString = GetPgConnectionString();
            }
        }


        public string ConnectionString
        {
            get
            {
                return s_ConnectionString;
            }
        }


        public System.Data.Common.DbProviderFactory Factory
        {
            get
            {
                return s_Factory;
            }
        }


        public System.Data.Common.DbConnection Connection
        {
            get
            {
                System.Data.Common.DbConnection con = s_Factory.CreateConnection();
                con.ConnectionString = s_ConnectionString;
                if (con.State != System.Data.ConnectionState.Open)
                    con.Open();

                return con;
            }
        }


        public SqlFactory()
        { }


    }


}


namespace TestPWA
{


    using Dapper;


    public class DapperParameterTest
    {


        private static void TestOutputParameterQuery(AnySqlWebAdmin.SqlFactory factory)
        {
            Dapper.DynamicParameters p = new Dapper.DynamicParameters();
            p.Add("para1", 11);
            p.Add("para2", 12);
            p.Add("rc", dbType: System.Data.DbType.Int32, direction: System.Data.ParameterDirection.Output);
            
            using (System.Data.Common.DbConnection cnn = factory.Connection)
            {
                cnn.Execute(@"
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_TestProcedure' AND SPECIFIC_SCHEMA = 'dbo')
BEGIN
	EXECUTE('DROP PROCEDURE dbo.sp_TestProcedure; '); 
END 
");


                cnn.Execute(@"
CREATE PROCEDURE dbo.sp_TestProcedure(@para1 int, @para2 int)
AS
BEGIN
	SELECT 123 AS abc; 
    RETURN 666;
END 
");

                // DECLARE @rc int; 
                cnn.Query<int>("EXECUTE @rc = dbo.sp_TestProcedure @para1, @para2; ", p);
                
                // SELECT @rc; 

                cnn.Execute(@"
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_TestProcedure' AND SPECIFIC_SCHEMA = 'dbo')
BEGIN
	EXECUTE('DROP PROCEDURE dbo.sp_TestProcedure; '); 
END 
");
            }

            int rc = p.Get<int>("rc");
            System.Console.WriteLine(rc);
        }


        public static void TestOutputParameterQuery()
        {
            AnySqlWebAdmin.SqlFactory factory = new AnySqlWebAdmin.SqlFactory();
            TestOutputParameterQuery(factory);
        }



        private static void TestOutputParameterStoredProcedure(AnySqlWebAdmin.SqlFactory factory)
        {
            Dapper.DynamicParameters p = new Dapper.DynamicParameters();
            p.Add("para1", 11);
            p.Add("para2", 12);
            p.Add("rc", dbType: System.Data.DbType.Int32, direction: System.Data.ParameterDirection.ReturnValue);

            using (System.Data.Common.DbConnection cnn = factory.Connection)
            {
                cnn.Execute(@"
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_TestProcedure' AND SPECIFIC_SCHEMA = 'dbo')
BEGIN
	EXECUTE('DROP PROCEDURE dbo.sp_TestProcedure; '); 
END 
");


                cnn.Execute(@"
CREATE PROCEDURE dbo.sp_TestProcedure(@para1 int, @para2 int)
AS
BEGIN
	SELECT 123 AS abc; 
    RETURN 666;
END 
");

                // DECLARE @rc int; 
                // cnn.Query<int>("EXECUTE @rc = dbo.sp_TestProcedure @para1, @para2; ", p, commandType: System.Data.CommandType.StoredProcedure);
                cnn.Query<int>("dbo.sp_TestProcedure", p, commandType: System.Data.CommandType.StoredProcedure);
                // SELECT @rc; 

                cnn.Execute(@"
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_TestProcedure' AND SPECIFIC_SCHEMA = 'dbo')
BEGIN
	EXECUTE('DROP PROCEDURE dbo.sp_TestProcedure; '); 
END 
");
            }

            int rc = p.Get<int>("rc");
            System.Console.WriteLine(rc);
        }

        public static void TestOutputParameterStoredProcedure()
        {
            AnySqlWebAdmin.SqlFactory factory = new AnySqlWebAdmin.SqlFactory();
            TestOutputParameterStoredProcedure(factory);
        }


        private static void TestTempDb(AnySqlWebAdmin.SqlFactory factory)
        {
            Dapper.DynamicParameters p = new Dapper.DynamicParameters();
            p.Add("a", 11);
            p.Add("b", dbType: System.Data.DbType.Int32, direction: System.Data.ParameterDirection.Output);
            p.Add("c", dbType: System.Data.DbType.Int32, direction: System.Data.ParameterDirection.ReturnValue);

            // SELECT* FROM tempdb.INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME LIKE '%testproc%'
            using (System.Data.Common.DbConnection cnn = factory.Connection)
            {
                cnn.Execute(@"
CREATE PROCEDURE #TestProc 
     @a int 
    ,@b int output 
AS 
BEGIN 
    SET @b = 999; 
    SELECT 1111; 
    RETURN @a; 
END 
");
                cnn.Query<int>("#TestProc", p, commandType: System.Data.CommandType.StoredProcedure);
            }

            int c = p.Get<int>("c");
            int b = p.Get<int>("b");
        }


        public static void TestTempDb()
        {
            AnySqlWebAdmin.SqlFactory factory = new AnySqlWebAdmin.SqlFactory();
            TestTempDb(factory);
        }


    } // End Class DapperParameterTest 


} // End Namespace TestPWA 

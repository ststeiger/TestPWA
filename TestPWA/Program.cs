
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Configuration;


namespace TestPWA
{



    public class Program
    {

        public static void Main(string[] args)
        {
            DbHtml.GenerateAllChecklists();
            // TestEpPlus.Test(); return;
            CreateHostBuilder(args).Build().Run();
        } // End Sub Main 


        public static IHostBuilder CreateHostBuilder(string[] args)
        { 
            return Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                });
        } // End Function CreateHostBuilder 


    } // End Class Program 


} // End Namespace TestPWA 


using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Configuration;


namespace TestPWA
{


    // openmaptiles without docker
    // https://stackoverflow.com/questions/52844592/installation-process-for-openmaptiles-server-without-docker
    // https://stackoverflow.com/questions/57739204/openmaptiles-beginner-questions
    // https://www.techidiots.net/notes/mapbox-gl-tileserver-gl/create-an-open-map-tiles-map-without-docker
    // https://github.com/Oslandia/postile-openmaptiles
    // https://github.com/Oslandia/postile
    // https://webdeasy.de/en/program-wysiwyg-editor/
    // https://developer.mozilla.org/en-US/docs/Web/API/Range/surroundContents
    // https://github.com/JiHong88/SunEditor
    // https://www.cssscript.com/minimal-wysiwyg-editor-pure-javascript-suneditor/
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

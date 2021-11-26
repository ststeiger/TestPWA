﻿
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
        public static string GetMime(string imagePath)
        {
            System.Drawing.Image yourImage = System.Drawing.Image.FromFile(imagePath);

            System.Drawing.Imaging.ImageFormat format = yourImage.RawFormat;
            System.Drawing.Imaging.ImageCodecInfo[] codecs = System.Drawing.Imaging.ImageCodecInfo.GetImageDecoders();

            foreach (System.Drawing.Imaging.ImageCodecInfo c in codecs)
            {
                if (c.FormatID == format.Guid)
                        return c.MimeType;
            }

            return "image/unknown";
        }

        public static string MatchEvaluator(System.Text.RegularExpressions.Match match)
        {
            string basePath = @"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic\COR-Basic\Basic\Basic\images";
            // basePath = @"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic\COR-Basic\Basic\Basic\Checklist\images";
            
            string url = match.Groups[1].Value;


            url = url.Replace("&quot;", "");

            // url = url.Replace("../images", basePath);
            url = url.Replace("../../images", basePath);
            url = url.Replace('/', System.IO.Path.DirectorySeparatorChar);

            // url('data:image/png;base64,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')
            string mimeType = GetMime(url);
            byte[] ba = System.IO.File.ReadAllBytes(url);
            string base64 = System.Convert.ToBase64String(ba);

            string ret = "url('data:" + mimeType + ";base64," + base64 + "');";
            return ret.Replace("'", "&quot;");
        }

        public static void ReplaceCssImages()
        {
            string pattern = @"url\((.*?)\)";
            // string contents = System.IO.File.ReadAllText(@"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic\COR-Basic\Basic\Basic\Checklist2\css\Layout.css", System.Text.Encoding.UTF8);
            string contents = System.IO.File.ReadAllText(@"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic\COR-Basic\Basic\Basic\Checklist2\debug.htm", System.Text.Encoding.UTF8);



            contents = System.Text.RegularExpressions.Regex.Replace(contents, pattern, new System.Text.RegularExpressions.MatchEvaluator(MatchEvaluator));

            // System.IO.File.WriteAllText(@"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic\COR-Basic\Basic\Basic\Checklist2\css\LayoutNew.css", contents, System.Text.Encoding.UTF8);
            System.IO.File.WriteAllText(@"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic\COR-Basic\Basic\Basic\Checklist2\debug2.htm", contents, System.Text.Encoding.UTF8);

        }
        

        public static string[] GetArguments(string file, Jint.Engine eng , string input)
        {
            string[] arguments = null;
            if (string.IsNullOrEmpty(input))
                return arguments;

            try
            {
                input = input.Trim();

                if (input.StartsWith('('))
                    input = input.Substring(1);

                if (input.EndsWith(')'))
                    input = input.Substring(0, input.Length - 1);

                input = "[" + input + "]";

                object[] args = (object[])eng.Evaluate(input).ToObject(); // converts the value to .NET
                arguments = new string[args.Length];

                for (int i = 0; i < args.Length; ++i)
                {
                    arguments[i] = System.Convert.ToString(args[i], System.Globalization.CultureInfo.InvariantCulture);
                    arguments[i] = System.Web.HttpUtility.JavaScriptStringEncode(arguments[i]);
                }
            }
            catch (System.Exception ex)
            {
                System.Console.WriteLine(file, input);
            }

            return arguments;
        } // End Function GetArguments 



        public static void GetTranslations()
        {
            string basePath = @"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic-V4\Portal\Portal_Visualiser\0\";
            string[] files = System.IO.Directory.GetFiles(basePath, "*.js");

            // translateEncapsulateString('Export12', 'Papierformat')}
            // translateEncapsulateString('Export13', 'Massstabsgetreu')}
            // string pattern = @"translateEncapsulateString\s*\((.*?)\)";
            // Argh ! There are braces in the strings !
            // https://stackoverflow.com/questions/7679818/regex-to-extract-function-name-its-parameters
            // https://stackoverflow.com/questions/18906514/regex-for-matching-functions-and-capturing-their-arguments
            string pattern = @"(translateEncapsulateString\s*((?:\((?>[^()]+|\((?<open>)|\)(?<-open>))*\)))*)+";
            string saveValues = "[\r\n";

            System.Text.RegularExpressions.Regex re = new System.Text.RegularExpressions.Regex(pattern, System.Text.RegularExpressions.RegexOptions.Compiled);

            Jint.Engine eng = new Jint.Engine();
            foreach (string file in files)
            {
                // string file2 = @"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic-V4\Portal\Portal_Visualiser\0\VWS.Plugin.Export.js";
                string contents = System.IO.File.ReadAllText(file, System.Text.Encoding.UTF8);

                // System.Text.RegularExpressions.Regex.Replace(contents, pattern, delegate (System.Text.RegularExpressions.Match match){ saveValues += "[" + match.Groups[1] + "],\r\n"; return match.Value; } );
                re.Replace(contents, 
                    delegate (System.Text.RegularExpressions.Match match)
                    {
                        // ["Dimensionlines11", "Länge:"],
                        string[] arguments = GetArguments(file, eng, match.Groups[2].Value);
                        if (arguments != null)
                        {
                            saveValues += "[\"" + arguments[0] + "\", \"" + arguments[1] + "\"" + "],\r\n";
                            // System.Console.WriteLine(saveValues);
                        } // End if (arguments != null) 

                        return match.Value;
                    } // End Delegate 
                );

            } // Next  file 

            if (saveValues.EndsWith(",\r\n"))
            {
                saveValues = saveValues.Substring(0, saveValues.Length - 3);
                saveValues += "\r\n";
            } // End if (saveValues.EndsWith(",\r\n")) 

            saveValues += "]\r\n";

            // System.IO.File.WriteAllText(@"D:\username\Documents\Visual Studio 2017\TFS\COR-Basic\COR-Basic\Basic\Basic\Checklist2\css\LayoutNew.css", contents, System.Text.Encoding.UTF8);
            System.IO.File.WriteAllText(@"D:\matchValues.txt", saveValues, System.Text.Encoding.UTF8);
        } // End Sub GetTranslations 


        public static void Main(string[] args)
        {
            // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/global_objects/encodeURIComponent
            // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/global_objects/decodeUriComponent
            // string enc = GlobalObj.encodeURIComponent("hello(world) give me five+six 2%3=2&");
            // string enc = URLEncoder.encode("hello(world) give me five+six 2%3=2&");
            // string enc = gogo2.escape("hello(world) give me five+six 2%3=2&");
            // string enc = gogo2.encodeURIComponent("hello(world) give me five+six 2%3=2& 你好，世界");
            // System.Console.WriteLine(enc);

            GetTranslations();


            // ReplaceCssImages();
            // DbHtml.GenerateAllChecklists();
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

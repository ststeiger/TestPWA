
namespace System.Web.Hosting
{

    public class HostingEnvironment
    {


        public static string MapPath(string input)
        {
            if (input.StartsWith("~"))
            {
                input = input.Substring(1);
                input = input.Replace('/', System.IO.Path.DirectorySeparatorChar);


                string basePath = System.AppDomain.CurrentDomain.BaseDirectory;
                basePath = System.IO.Path.Combine(basePath, "..", "..", "..", "wwwroot");
                basePath = System.IO.Path.GetFullPath(basePath);
                input = basePath + input;
                return input;
            }
            return input;
        }
    }


}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestPWA.OpenOffice.Manual 
{

    public class DocumentBody
    {

    }


    public class DocumentNamespace
    {
        public string Prefix;
        public string Url;

    }

    public class Style
    {

    }



    public class FontFaceDeclaration
    {

    }


    public class OpenOfficeDocument
    {
        public System.Collections.Generic.List<DocumentNamespace> Namespaces;
        public System.Collections.Generic.List<FontFaceDeclaration> FontFaceDecls;
        public System.Collections.Generic.List<string> AutomaticStyles;
        public DocumentBody Body;

    }


}

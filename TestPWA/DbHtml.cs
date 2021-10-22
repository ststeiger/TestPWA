
namespace TestPWA
{


    public class XmlStructure
    {
        public string uuid;
        public string parent_uuid;
        public string tagName;
        public System.Collections.Generic.List<System.Collections.Generic.List<string>> properties;
        public string innerHtml;
        public System.Collections.Generic.List<XmlStructure> children;
        public long sort;
        public long lvl;
        public bool? rootNode;
    }


    public class DbHtml
    {


        public static System.Collections.Generic.List<string> AllLinks(HtmlAgilityPack.HtmlDocument document)
        {
            System.Collections.Generic.List<string> ls = new System.Collections.Generic.List<string>();

            HtmlAgilityPack.HtmlNodeCollection collection = document.DocumentNode.SelectNodes("//a");
            foreach (HtmlAgilityPack.HtmlNode link in collection)
            {
                string target = link.Attributes["href"].Value;
                ls.Add(target);
            }

            return ls;
        }


        private static System.Collections.Generic.List<System.Collections.Generic.List<string>>
            GetProperties(HtmlAgilityPack.HtmlNode el)
        {
            System.Collections.Generic.List<System.Collections.Generic.List<string>> arr =
                new System.Collections.Generic.List<System.Collections.Generic.List<string>>();

            if (el.HasAttributes)
            {
                foreach (HtmlAgilityPack.HtmlAttribute attr in el.Attributes)
                {
                    arr.Add(new System.Collections.Generic.List<string>() { attr.Name, attr.Value });
                }
            }

            return arr;
        }


        public static XmlStructure CollectStructure(HtmlAgilityPack.HtmlNode p, string parent = null, long sort = 0)
        {
            if (p == null)
                return null;

            string guid = System.Guid.NewGuid().ToString();

            HtmlAgilityPack.HtmlAttribute idAttribute = p.Attributes["id"];
            if (idAttribute != null)
                guid = idAttribute.Value;


            XmlStructure checklistData = new XmlStructure()
            {
                uuid = guid,
                parent_uuid = parent,
                tagName = p.Name,
                properties = GetProperties(p),
                children = new System.Collections.Generic.List<XmlStructure>(),
                sort = sort

            };

            if (p.Name.ToLowerInvariant() == "td")
            {
                checklistData.innerHtml = p.InnerHtml;
            }
            else if (p.HasChildNodes)
            {
                long childSort = 0;

                //for (long i = 0; i < children.length; i++)
                foreach (var cur in p.ChildNodes)
                {
                    // https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeType
                    if (cur.NodeType == HtmlAgilityPack.HtmlNodeType.Text)
                    {
                        // this.checkAndReplace(cur);
                        // console.log(cur.textContent);
                    }
                    else if (cur.NodeType == HtmlAgilityPack.HtmlNodeType.Element)
                    {
                        // console.log("cur", cur);
                        // console.log("cur.nodeName", cur.nodeName);
                        // console.log("cur.nodeValue", cur.nodeValue);
                        // console.log("cur.getProperties", getProperties(<Element>cur));
                        XmlStructure ret = CollectStructure(cur, guid, childSort++);
                        checklistData.children.Add(ret); ;
                    }
                    else
                    {
                        System.Console.WriteLine("unhandeld node {0}", cur.NodeType.ToString());
                    }

                } // Next i 

            } // End if (children.length) 

            return checklistData;
        } // End Sub collectStructure


        public static string DocumentToJson(string file, string outputPath)
        {
            HtmlAgilityPack.HtmlDocument document = new HtmlAgilityPack.HtmlDocument();
            // string htmlString = System.IO.File.ReadAllText(file, System.Text.Encoding.UTF8);
            // document.LoadHtml(htmlString);
            document.Load(file);

            // XmlStructure data = CollectStructure(document.DocumentNode);
            // XmlStructure data = CollectStructure(document.DocumentNode.SelectSingleNode("//body"));
            XmlStructure data = CollectStructure(document.DocumentNode.SelectSingleNode("//table"));
            string json = Newtonsoft.Json.JsonConvert.SerializeObject(data, Newtonsoft.Json.Formatting.Indented, new Newtonsoft.Json.JsonSerializerSettings()
            {
                NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore,
                DateFormatHandling = Newtonsoft.Json.DateFormatHandling.MicrosoftDateFormat
            });

            return json;
        }


        public static void GenerateAllChecklists()
        {
            string projectPath = System.AppDomain.CurrentDomain.BaseDirectory;
            projectPath = System.IO.Path.Combine(projectPath, "..", "..", "..");
            projectPath = System.IO.Path.GetFullPath(projectPath);

            string basePath = System.IO.Path.Combine(projectPath, "wwwroot");
            string outputPath = System.IO.Path.Combine(projectPath, "Code", "AutoGen");
            string templatePath = System.IO.Path.Combine(projectPath, "Code", "SQL");

            string[] files = new string[] {
                "Schuettgutcontainer",
                "EVA",
                "CIS",
                "VHP",
                "NPL",
                "BPS_M7",
                "BPS_1020",
            };

            string[] fileUids = new string[] {
                "EB159A9C-E69F-49F4-B10E-3A4825973E46",
                "1F6BEE57-38A8-4B29-9986-BFAD7D107215",
                "58A6D34C-2D4B-4F8A-B831-60488591AEDC",
                "DA19D272-9439-47A7-9749-153DAFAB2B69",
                "698EA23D-485A-4CEE-9B06-2E130A3A5626",
                "F1A2DD8A-2D11-496E-9B14-13559405089F",
                "DDADA097-1BB4-46D5-9EE5-7BB28DD3201B",
            };

            for (int i = 0; i < files.Length; ++i)
            {
                string file = System.IO.Path.Combine(basePath, files[i] + ".htm");
                string json = DocumentToJson(file, outputPath);

                string queryTemplate = System.IO.File.ReadAllText(System.IO.Path.Combine(templatePath, "Template_QueryHtml.sql"), System.Text.Encoding.UTF8);
                string insertTemplate = System.IO.File.ReadAllText(System.IO.Path.Combine(templatePath, "Template_Checklist_Insert.sql"), System.Text.Encoding.UTF8);

                string queryFile = System.IO.Path.Combine(outputPath, "Query_" + files[i] + ".sql");
                string insertFile = System.IO.Path.Combine(outputPath, "Insert_" + files[i] + ".sql");

                System.IO.File.WriteAllText(queryFile, string.Format(queryTemplate, json.Replace("'", "''")), System.Text.Encoding.UTF8);
                System.IO.File.WriteAllText(insertFile, string.Format(insertTemplate, json.Replace("'", "''"), fileUids[i]), System.Text.Encoding.UTF8);
            } // Next i 
            
        } // End Sub GenerateAllChecklists 


    } // End Class DbHtml 


}

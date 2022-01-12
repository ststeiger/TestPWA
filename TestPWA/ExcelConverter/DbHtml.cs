
namespace TestPWA
{



    public class Table
    {

        [Newtonsoft.Json.JsonProperty("columns")]
        [System.Text.Json.Serialization.JsonPropertyName("columns")]
        public System.Collections.Generic.List<string> Columns;


        [Newtonsoft.Json.JsonProperty("rows")]
        [System.Text.Json.Serialization.JsonPropertyName("rows")]
        public System.Collections.Generic.List<System.Collections.Generic.List<string>> Rows;



        public Table()
        {
            this.Columns = new System.Collections.Generic.List<string>();
            this.Rows = new System.Collections.Generic.List<System.Collections.Generic.List<string>>();
        }





        public System.Collections.Generic.List<CheckListSaveData> GetData()
        {
            System.Collections.Generic.Dictionary<string, int> columnIndidices 
                = new System.Collections.Generic.Dictionary<string, int>(System.StringComparer.InvariantCultureIgnoreCase);

            for (int i = 0; i < this.Columns.Count; ++i)
            {
                columnIndidices.Add(this.Columns[i], i);
            }


            int CLV_ELE_UID = columnIndidices["CLV_ELE_UID"];
            int CLV_Value = columnIndidices["CLV_Value"];

            System.Collections.Generic.List<CheckListSaveData> ls = new System.Collections.Generic.List<CheckListSaveData>();

            for (int i = 0; i < this.Rows.Count; ++i)
            {
                string uid = this.Rows[i][CLV_ELE_UID];
                string val = this.Rows[i][CLV_Value];
                ls.Add(new CheckListSaveData() { Guid = uid, Value = val, CLS_UID = "" });
            }

            return ls;
        }



    }


    public class CheckListSaveData
    {
        [Newtonsoft.Json.JsonProperty("uuid")]
        [System.Text.Json.Serialization.JsonPropertyName("uuid")]
        public string Guid;

        [Newtonsoft.Json.JsonProperty("value")]
        [System.Text.Json.Serialization.JsonPropertyName("value")]
        public string Value;

        [Newtonsoft.Json.JsonProperty("__cls_uid")]
        [System.Text.Json.Serialization.JsonPropertyName("__cls_uid")]
        public string CLS_UID;


        public static System.Collections.Generic.List<CheckListSaveData> FromJson(string json)
        {
            if (string.IsNullOrEmpty(json))
                return null;

            System.Collections.Generic.List<CheckListSaveData> SaveData = Newtonsoft.Json.JsonConvert.DeserializeObject<System.Collections.Generic.List<CheckListSaveData>>(json);
            return SaveData;
        }


        public static System.Collections.Generic.List<CheckListSaveData> FromJson()
        {
            // https://cordemo.cor-asp.ch/COR_Basic_Demo_V4/ajax/AnySelect.ashx?sql=Checklist2.LoadChecklist.sql&format=1&no_cache=1641935131052

            string json = @"
[
  {
    ""uuid"": ""4c67321d-1f87-41ab-8d16-527dc55d8256"",
    ""value"": """",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""437e16ae-857d-4fc9-80b1-af4708f091e8"",
    ""value"": ""true"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""915451b2-ecf8-48f0-804b-387ee54e1d32"",
    ""value"": ""true"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""05416543-3a82-4482-83a8-f17a8932b8fb"",
    ""value"": ""true"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""2bf28837-a720-4a4d-a631-d5b8204f6acb"",
    ""value"": ""true"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""36a53fff-9935-480e-a903-548d7adb4fa8"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""ddd6ee44-b9df-4ec4-9035-ca0f8abb79e0"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""7e5c85d2-f64e-4b08-a514-31a4b8a3f9a0"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""9e8a03e7-69d7-428b-aa23-14aa6961f07a"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""db54cde5-ca09-47bb-a8c3-851e186a3d73"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""3ee7e455-7b82-452d-92c2-20122040aea1"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""6bb0a8ed-e62e-4591-93af-26f032824d14"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  },
  {
    ""uuid"": ""6687d488-2ebd-4b80-8d7e-e2cb8966175b"",
    ""value"": ""false"",
    ""__cls_uid"": ""4BF92DCC-1059-4D13-BA25-641B101CD551""
  }
]
"
;

            return FromJson(json);
        }

    }

    public class ResultData
    {
        [Newtonsoft.Json.JsonProperty("tables")]
        [System.Text.Json.Serialization.JsonPropertyName("tables")]
        public System.Collections.Generic.List<Table> Tables;

        public ResultData()
        {
            this.Tables = new System.Collections.Generic.List<Table>();
            
        }
    }


    public class CheckListDataValues
    {

        [Newtonsoft.Json.JsonProperty("data")]
        [System.Text.Json.Serialization.JsonPropertyName("data")]
        public ResultData Data;


        public static System.Collections.Generic.List<CheckListSaveData> FromJson(string json)
        {
            if (string.IsNullOrEmpty(json))
                return null;

            CheckListDataValues sqlResult = Newtonsoft.Json.JsonConvert.DeserializeObject<CheckListDataValues>(json);
            return sqlResult.Data.Tables[0].GetData();
        }


        public static System.Collections.Generic.List<CheckListSaveData> FromJson()
        {
            // https://cordemo.cor-asp.ch/COR_Basic_Demo_V4/ajax/AnySelect.ashx?sql=Checklist2.LoadChecklist.sql&format=1&no_cache=1641935131052

            string json = @"

{
  ""data"": {
    ""tables"": [
      {
        ""columns"": [
          ""CLV_ELE_UID"",
          ""CLV_Value""
        ],
        ""rows"": [
          [
            ""f9284cf2-9f59-4877-bdbb-01818b4ca497"",
            ""false""
          ],
          [
            ""295e1a95-6ff4-45cc-8fca-061c4f311801"",
            ""false""
          ],
          [
            ""d7d40cb5-2fc4-4219-8aa1-0c5e668bce82"",
            ""false""
          ],
          [
            ""4eaf2cea-a525-4fbb-a515-0f94a1862b2e"",
            ""false""
          ],
          [
            ""99f4ee61-35cd-4038-a882-174833da49c7"",
            ""false""
          ],
          [
            ""31132a0f-9121-4204-b3e5-18e4a6ea80f7"",
            ""false""
          ],
          [
            ""60f39224-c8e5-4e9e-9391-19c65617224c"",
            ""false""
          ],
          [
            ""e14f208f-9db9-4975-97ce-21e795a29ffd"",
            ""false""
          ],
          [
            ""1d164f9d-e4ce-4134-a648-24dd3b533553"",
            ""false""
          ],
          [
            ""de42a96e-e7f9-4db6-af0b-25286b9513a1"",
            ""false""
          ],
          [
            ""b3a3fc99-b907-4acb-ae87-2e300491f7fa"",
            ""false""
          ],
          [
            ""90040d47-4e9f-40b4-b192-310de50c7e07"",
            ""false""
          ],
          [
            ""028f42a7-7825-4f1f-83b0-310e280fc355"",
            ""false""
          ],
          [
            ""af6dca95-59cc-4845-8d07-3329c5eff413"",
            ""false""
          ],
          [
            ""aeac992b-952c-43f5-9b6d-367faab5d1f1"",
            ""false""
          ],
          [
            ""6420bdda-de30-44f0-b2a7-38f74e85310e"",
            ""false""
          ],
          [
            ""0679d661-d29f-42b0-9075-3cbaed6de3a8"",
            ""true""
          ],
          [
            ""4413dd27-e867-4cea-968f-42c5674ca9ea"",
            ""false""
          ],
          [
            ""fdd08154-ab94-4968-80e4-473a9b691b56"",
            ""false""
          ],
          [
            ""e708af26-c15e-4066-8335-47664e7500b5"",
            ""false""
          ],
          [
            ""3d96d719-db46-4d1b-82e8-4ad54fb0f035"",
            ""false""
          ],
          [
            ""6aaf1cbf-94dc-4d23-901a-4c926f76f0d9"",
            ""false""
          ],
          [
            ""a28db24b-b122-46eb-8ca4-50a4dd3e6af3"",
            ""false""
          ],
          [
            ""6a1802c4-e691-45aa-913b-50b4196734e3"",
            ""false""
          ],
          [
            ""93668f7a-ca51-4b0f-92b6-528bbf57a672"",
            ""false""
          ],
          [
            ""884e8a90-fefc-4e3f-b291-562cba50d0b6"",
            ""false""
          ],
          [
            ""0182c806-18d9-41a2-90f3-567faca52dff"",
            ""false""
          ],
          [
            ""84d45042-9f57-41b7-be93-5eae717c131a"",
            ""false""
          ],
          [
            ""076bc2bd-bfcf-4f9f-8b09-69f5962241bd"",
            ""false""
          ],
          [
            ""003941c7-aedc-4ef9-9d64-6c76df8efce9"",
            ""false""
          ],
          [
            ""9c18c85c-fd17-41b5-b82e-6ca5bdc14f8d"",
            ""false""
          ],
          [
            ""b3771a5a-adb5-4477-83ec-6df28cd789c2"",
            ""false""
          ],
          [
            ""eaf71d5d-f700-4e0c-a0f1-6f990f2052b6"",
            ""false""
          ],
          [
            ""828010c4-5bbb-4ec1-bdc7-72c5a469344e"",
            """"
          ],
          [
            ""7094d427-a88c-4fbb-8372-73559650617f"",
            ""false""
          ],
          [
            ""7800145c-7cd7-472f-bce2-736a5c84bceb"",
            ""false""
          ],
          [
            ""aad52674-035b-4f6a-a804-74cf8b23a132"",
            ""false""
          ],
          [
            ""ad3bb434-a224-4c47-b843-752b64c73539"",
            ""false""
          ],
          [
            ""96a1e77a-acb4-411d-893e-791f8b24dd49"",
            ""false""
          ],
          [
            ""aff1c596-09ff-4862-9d7a-7b954c08d628"",
            ""false""
          ],
          [
            ""2b79c00e-b7f3-4ff9-838d-83076f97bc5c"",
            ""false""
          ],
          [
            ""1bba3c61-6a49-42c5-903d-8477ba2a1428"",
            ""false""
          ],
          [
            ""31363561-7abf-4486-933c-8636ec0e6a27"",
            ""false""
          ],
          [
            ""a9162c99-91ad-47a0-ab0f-92eb0b551bba"",
            ""false""
          ],
          [
            ""fff96164-c046-4f7f-8899-94274050a704"",
            ""false""
          ],
          [
            ""776494dd-52a6-4adb-bc1c-9e5eecbf0ad4"",
            ""false""
          ],
          [
            ""e4ddf85a-0372-4544-8018-9f2325b5525c"",
            ""false""
          ],
          [
            ""dc59f2e6-dc27-4888-8099-9fa634325f97"",
            ""false""
          ],
          [
            ""a0aa45d1-5211-4173-bf1b-a16380429968"",
            ""false""
          ],
          [
            ""b4b9250a-7180-4cc9-9713-a87fdc25d7b4"",
            ""false""
          ],
          [
            ""03c68f57-4983-4a66-8d45-a899f7e99c03"",
            ""false""
          ],
          [
            ""7f39fc55-f044-4413-bd50-aa738ddde4bf"",
            ""false""
          ],
          [
            ""a0214de2-a89a-48f7-b008-b67f8f3f9666"",
            ""false""
          ],
          [
            ""3032026a-0104-4dd8-bbac-b6f778f1f3a3"",
            ""false""
          ],
          [
            ""dc45507f-304e-4db4-822c-b9c0f823c6f6"",
            ""true""
          ],
          [
            ""5a882f4b-1ce8-4449-bc7a-bd5e2db3c333"",
            ""false""
          ],
          [
            ""e7933729-798a-4a36-a132-bdedd32e9d39"",
            ""false""
          ],
          [
            ""054ad998-245b-4b8a-a818-c0671f882ada"",
            ""Test""
          ],
          [
            ""45e91917-2782-41a2-9e53-c287437691e4"",
            ""false""
          ],
          [
            ""8a1867b9-74ff-4ea4-821c-cbf6a91b5560"",
            """"
          ],
          [
            ""2e98a693-9a44-414e-b885-d2f6ce4ef9e5"",
            ""false""
          ],
          [
            ""2d179b19-e20a-41f7-9f1f-d3820582249b"",
            ""false""
          ],
          [
            ""79a547b3-8c9e-486e-9f43-da76e2c1507d"",
            ""true""
          ],
          [
            ""8889fce4-c9a8-41f6-8de7-deb5a053eb22"",
            ""false""
          ],
          [
            ""3849bb01-b7df-4dd4-a5ae-e1107da0a982"",
            ""false""
          ],
          [
            ""7b3842ad-e63a-4e2a-b846-eafe31e42a6d"",
            ""false""
          ],
          [
            ""aab15ccd-4a05-4fad-8d74-eee43af7d6dd"",
            """"
          ],
          [
            ""c5c6c84c-dc77-4cbe-8980-f4933ec3dbf2"",
            ""false""
          ],
          [
            ""beab62df-93d5-47d3-aa1a-f73b7d4833c4"",
            ""false""
          ],
          [
            ""2e7897a5-cfc1-48f9-9525-f9e6947db5bd"",
            ""false""
          ]
        ]
      }
    ]
  }
}
";
            return FromJson(json);
        }

    }



    public class XmlStructure
    {
        [Newtonsoft.Json.JsonProperty("uuid")]
        [System.Text.Json.Serialization.JsonPropertyName("uuid")]
        public string uuid;

        [Newtonsoft.Json.JsonProperty("parent_uuid")]
        [System.Text.Json.Serialization.JsonPropertyName("parent_uuid")]
        public string parent_uuid;

        [Newtonsoft.Json.JsonProperty("tagName")]
        [System.Text.Json.Serialization.JsonPropertyName("tagName")]
        public string tagName;


        [Newtonsoft.Json.JsonProperty("formName")]
        [System.Text.Json.Serialization.JsonPropertyName("formName")]
        public string formName;

        [Newtonsoft.Json.JsonProperty("properties")]
        [System.Text.Json.Serialization.JsonPropertyName("properties")]
        public System.Collections.Generic.List<System.Collections.Generic.List<string>> properties;

        [Newtonsoft.Json.JsonProperty("innerHtml")]
        [System.Text.Json.Serialization.JsonPropertyName("innerHtml")]
        public string innerHtml;

        [Newtonsoft.Json.JsonProperty("children")]
        [System.Text.Json.Serialization.JsonPropertyName("children")]
        public System.Collections.Generic.List<XmlStructure> children;

        [Newtonsoft.Json.JsonProperty("sort")]
        [System.Text.Json.Serialization.JsonPropertyName("sort")]
        public long sort;

        [Newtonsoft.Json.JsonProperty("lvl")]
        [System.Text.Json.Serialization.JsonPropertyName("lvl")]
        public long lvl;

        [Newtonsoft.Json.JsonProperty("rootNode")]
        [System.Text.Json.Serialization.JsonPropertyName("rootNode")]
        public bool? rootNode;
    } // End Class XmlStructure 


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
            } // Next link 

            return ls;
        } // End Function AllLinks 


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
                } // Next attr 

            } // End if (el.HasAttributes) 

            return arr;
        } // End Function GetProperties 


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
                int inputSort = 0;

                for (int i = 0; i < p.ChildNodes.Count; ++i)
                {
                    string tagName = p.ChildNodes[i].Name.ToLowerInvariant();

                    // if (children[i].nodeType === Node.TEXT_NODE && !string_utils.isNullOrWhiteSpace(children[i].nodeValue))
                    if (p.ChildNodes[i].NodeType == HtmlAgilityPack.HtmlNodeType.Element
                        && (tagName == "input" || tagName == "textarea"))
                    {
                        XmlStructure ret = CollectStructure(p.ChildNodes[i], guid, inputSort++);
                        checklistData.children.Add(ret);
                    }

                }

                if (inputSort == 0)
                    checklistData.innerHtml = p.InnerHtml;
            }
            else if (p.HasChildNodes)
            {
                long childSort = 0;

                //for (long i = 0; i < children.length; i++)
                foreach (HtmlAgilityPack.HtmlNode cur in p.ChildNodes)
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
        } // End Function CollectStructure


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
        } // End Function DocumentToJson 


        private static string CombinePaths(params string[] paths)
        {
            if (paths == null)
            {
                return null;
            }
            
            string currentPath = paths[0];
            for (int i = 1; i < paths.Length; i++)
            {
                currentPath = System.IO.Path.Combine(currentPath, paths[i]);
            }

            return currentPath;
        }


        public static void GenerateAllChecklists()
        {
            string projectPath = System.AppDomain.CurrentDomain.BaseDirectory;
            projectPath = CombinePaths(projectPath, "..", "..", "..");
            projectPath = System.IO.Path.GetFullPath(projectPath);

            string basePath = CombinePaths(projectPath, "wwwroot", "Checklist");
            string outputPath = CombinePaths(projectPath, "Code", "AutoGen");
            string templatePath = CombinePaths(projectPath, "Code", "SQL");

            string[] files = new string[] {
                "BPS_1020",
                "Schuettgutcontainer",
                "EVA",
                "CIS",
                "VHP",
                "NPL",
                "BPS_M7",
                
            };

            string[] fileUids = new string[] {
                "DDADA097-1BB4-46D5-9EE5-7BB28DD3201B",
                "EB159A9C-E69F-49F4-B10E-3A4825973E46",
                "1F6BEE57-38A8-4B29-9986-BFAD7D107215",
                "58A6D34C-2D4B-4F8A-B831-60488591AEDC",
                "DA19D272-9439-47A7-9749-153DAFAB2B69",
                "698EA23D-485A-4CEE-9B06-2E130A3A5626",
                "F1A2DD8A-2D11-496E-9B14-13559405089F",
                
            };

            string[] fileVersionUids = new string[] {
                "FA28E4D1-E505-4C54-9305-52D526DD0D70",
            "08796354-F7AA-4EDF-B943-A51F7AFDAD1D",
"11109E12-7B76-4B60-9168-42FC41D28383",
"7F973E2D-5BEB-4E0F-932E-642CB936E7B6",
"E4FD4412-523C-41F0-9CDF-FFB3E5638C3C",
"6A3210F8-161F-4DF5-9566-1C66BF41D61D",
"26456198-0699-4718-AAF7-B8119BE9D705",

            };




            for (int i = 0; i < files.Length; ++i)
            {
                string file = System.IO.Path.Combine(basePath, files[i] + ".htm");
                string json = DocumentToJson(file, outputPath);
                string excelFile = System.IO.Path.Combine(basePath, files[i] + ".xlsx");
                TestEpPlus.JsonToExcel(null, json, excelFile);
                System.Console.WriteLine("JsonToExcel");
                /*
                string queryTemplate = System.IO.File.ReadAllText(System.IO.Path.Combine(templatePath, "Template_QueryHtml.sql"), System.Text.Encoding.UTF8);
                string insertTemplate = System.IO.File.ReadAllText(System.IO.Path.Combine(templatePath, "Template_Checklist_Insert.sql"), System.Text.Encoding.UTF8);

                string queryFile = System.IO.Path.Combine(outputPath, "Query_" + files[i] + ".sql");
                string insertFile = System.IO.Path.Combine(outputPath, "Insert_" + files[i] + ".sql");
                
                System.IO.File.WriteAllText(queryFile, string.Format(queryTemplate, json.Replace("'", "''")), System.Text.Encoding.UTF8);
                System.IO.File.WriteAllText(insertFile, string.Format(insertTemplate, json.Replace("'", "''"), fileUids[i], fileVersionUids[i]), System.Text.Encoding.UTF8);
                */
            } // Next i 
            
        } // End Sub GenerateAllChecklists 


    } // End Class DbHtml 


} // End Namespace TestPWA 


namespace TestPWA
{

    // using OfficeOpenXml;


    public class HtmlTextStyle
    {
        public bool IsBold = false;
        public bool IsItalic = false;
        public bool IsVertical = false;


        public HtmlTextStyle()
        {
            this.Reset();
        }


        public void Reset()
        {
            this.IsBold = false;
            this.IsItalic = false;
            this.IsVertical = false;
        }


    }



    public class TextItem
    {
        public HtmlTextStyle Style;
        public string Text;
        public OfficeOpenXml.Style.ExcelRichText RichText;




        public TextItem(string text, HtmlTextStyle style)
        {
            this.Text = text;
            this.Style = style;
        }

        public TextItem()
        { }


        public void ApplyStyle(OfficeOpenXml.ExcelRange cell)
        {
            this.RichText.Bold = this.Style.IsBold;
            this.RichText.Italic = this.Style.IsItalic;
            cell.Style.WrapText = true; // Required to honor new lines

            /*
            if (this.Style.IsVertical)
                // cell.Style.TextRotation = 270;
                cell.Style.TextRotation = 90;
            */
        }

    }


    // https://web.archive.org/web/20130327000713/http://www.chrispliakas.com/content/programmatic-document-conversion-openoffice
    // https://essence.handmade.network/blog/p/7388-generating_polygon_outlines
    public class TestEpPlus
    {


        public static HtmlTextStyle GetStyle(HtmlAgilityPack.HtmlNode node, HtmlTextStyle context )
        {
            if (node.ParentNode != null)
            {
                if (node.NodeType == HtmlAgilityPack.HtmlNodeType.Element)
                {
                    string nodeName = node.Name.ToLowerInvariant();

                    if ("body" == nodeName)
                        return context;
                    else if ("i" == nodeName)
                    {
                        context.IsItalic = true;
                    }
                    else if ("b" == nodeName)
                    {
                        context.IsBold = true;
                    }
                    else if (node.HasClass("vert"))
                    {
                        context.IsVertical = true;
                    }
                    else
                    {
                        System.Console.WriteLine(node.Name);
                    }
                }

                context = GetStyle(node.ParentNode, context);
            }

            return context;
        }

        public static HtmlTextStyle GetStyle(HtmlAgilityPack.HtmlNode node)
        {
            HtmlTextStyle context = new HtmlTextStyle();
            return GetStyle(node, context);
        }

        public static System.Collections.Generic.List<TextItem> Itemize(string input)
        {
            System.Collections.Generic.List<TextItem> ls = new System.Collections.Generic.List<TextItem>();
            // input = "<span>hello<b><i>world</i></b><br />bye</span>";

            string html = "<html><head></head><body>" + input + "</body></html>";
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            doc.LoadHtml(html);

            foreach (HtmlAgilityPack.HtmlNode thisNode in doc.DocumentNode.SelectSingleNode("//body").Descendants())
            {
                if (thisNode.NodeType == HtmlAgilityPack.HtmlNodeType.Text)
                {
                    ls.Add(new TextItem(thisNode.InnerText, GetStyle(thisNode)));
                }
                else if ("br" == thisNode.Name.ToLowerInvariant())
                {
                    // System.Console.WriteLine(thisNode.Name); // NewLine
                    ls.Add(new TextItem("\r\n", GetStyle(thisNode)));
                }
                
            }

            doc = null;
            return ls;
        }

        public static string GetProperty(string type, System.Collections.Generic.List<System.Collections.Generic.List<string>> properties)
        {
            foreach (System.Collections.Generic.List<string> ls in properties)
            {
                string key = ls[0];
                if (type.Equals(key, System.StringComparison.InvariantCultureIgnoreCase))
                {
                    return ls[1];
                }
            }

            return null;
        }


        public static T GetProp<T>(string name, System.Collections.Generic.List<System.Collections.Generic.List<string>> properties)
        {
            string prop = GetProperty(name, properties);
            return (T)System.Convert.ChangeType(prop, typeof(T));
        }


        public static int GetIntegerProperty(string property, System.Collections.Generic.List<System.Collections.Generic.List<string>> properties, int defaultValue)
        {
            string prop = GetProperty(property, properties);
            if (prop == null)
                return defaultValue;

            prop = prop.Trim();

            int colSpan = int.Parse(prop, System.Globalization.NumberStyles.Integer, System.Globalization.CultureInfo.InvariantCulture);
            return colSpan;
        }


        public static int GetSpan(System.Collections.Generic.List<System.Collections.Generic.List<string>> properties)
        {
            return GetIntegerProperty("span", properties, 1);
        }

        public static int GetColspan(System.Collections.Generic.List<System.Collections.Generic.List<string>> properties)
        {
            return GetIntegerProperty("colspan", properties, 1);
        }

        public static int GetRowspan(System.Collections.Generic.List<System.Collections.Generic.List<string>> properties)
        {
            return GetIntegerProperty("rowspan", properties, 1);
        }


        public static void Excelize(XmlStructure data, OfficeOpenXml.ExcelPackage package, ref int? colGroup, ref int? y, ref int? x)
        {
            string tagName = data.tagName.ToLowerInvariant();
            OfficeOpenXml.ExcelWorksheet ww = package.Workbook.Worksheets[1];

            if ("colgroup" == tagName)
            {
                if (!colGroup.HasValue)
                    colGroup = 1;
                else
                    colGroup += 1;

                int span = GetSpan(data.properties);
                int width = GetIntegerProperty("width", data.properties, 30);
                int singleSpanWidth = (int) System.Math.Round( ((float)width / (float)span* 0.4f), 0, System.MidpointRounding.AwayFromZero);

                for (int i = colGroup.Value; i < colGroup.Value + span; ++i)
                {
                    ww.Column(i).Width = singleSpanWidth;
                }

                if (span > 1)
                    colGroup += span;
            }
            else if ("tr" == tagName)
            {
                if (!y.HasValue)
                    y = 1;
                else
                    y += 1;

                int rowSpan = GetRowspan(data.properties);
                x = null;
            }
            else if ("td" == tagName)
            {
                if (!x.HasValue)
                    x = 1;
                else
                    x += 1;

                int colSpan = GetColspan(data.properties);
                
                if (colSpan > 1)
                { 
                    ww.Cells[y.Value, x.Value, y.Value, x.Value + colSpan - 1].Merge = true;
                    x += colSpan;
                }
            }

            if (x.HasValue && y.HasValue)
            {
                if (tagName == "td")
                {
                    // package.Workbook.Worksheets[0].Column(0)
                    // package.Workbook.Worksheets[0].Row(0);

                    OfficeOpenXml.ExcelRange cell = ww.Cells[y.Value, x.Value];
                    // object a = package.Workbook.Worksheets[0].Cells[1, 1].Value;



                    // cell.Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                    // cell.Style.Fill.BackgroundColor.SetColor(System.Drawing.Color.Yellow);


                    

                    
                    System.Collections.Generic.List<TextItem> ls = Itemize(data.innerHtml);

                    foreach (TextItem thisTextItem in ls)
                    {
                        thisTextItem.RichText = cell.RichText.Add(thisTextItem.Text);
                    }
                   

                    foreach (TextItem thisTextItem in ls)
                    {
                        thisTextItem.ApplyStyle(cell);
                    }


                    foreach (TextItem thisTextItem in ls)
                    {
                        if (thisTextItem.Style.IsVertical && cell.Style.TextRotation != 90)
                        {
                            cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Bottom;
                            cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                            cell.Style.TextRotation = 90;
                        }

                    }

                    // int id = package.Workbook.Worksheets[0].GetMergeCellId(1, 1);
                    // int id = package.Workbook.Worksheets[0].GetMergeCellId(1, 1);
                    // package.Workbook.Worksheets[0].Cells[id];



                    System.Console.WriteLine(y.Value);
                    System.Console.WriteLine(x.Value);
                }
                else if (tagName == "tr")
                {
                    System.Console.WriteLine(y.Value);
                    System.Console.WriteLine(x.Value);
                }
                else if (tagName == "input")
                {
                    System.Console.WriteLine(y.Value);
                    System.Console.WriteLine(x.Value);
                }
                else if (tagName == "textarea")
                {
                    System.Console.WriteLine(y.Value);
                    System.Console.WriteLine(x.Value);
                }
                else
                {
                    System.Console.WriteLine(data.tagName);
                    System.Console.WriteLine(y.Value);
                    System.Console.WriteLine(x.Value);
                }

            }


            foreach (XmlStructure thisChild in data.children)
            {
                Excelize(thisChild, package, ref colGroup, ref y, ref x);
            }

        }



        public static void Test2(string json, string outputFilename)
        {
            XmlStructure data = Newtonsoft.Json.JsonConvert.DeserializeObject< XmlStructure>(json, new Newtonsoft.Json.JsonSerializerSettings()
            {
                NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore,
                DateFormatHandling = Newtonsoft.Json.DateFormatHandling.MicrosoftDateFormat
            });


            using (OfficeOpenXml.ExcelPackage package = new OfficeOpenXml.ExcelPackage())
            {
                OfficeOpenXml.ExcelWorkbook workbook = package.Workbook;
                OfficeOpenXml.ExcelWorksheet worksheet = workbook.Worksheets.Add("Tabeeeelle1");

                // OfficeOpenXml.ExcelRange cell = worksheet.Cells["A1"];

                // index 0 not allowed for worksheet and cell x&y
                // OfficeOpenXml.ExcelWorksheet ws = package.Workbook.Worksheets[0];
                // OfficeOpenXml.ExcelRange cell = ww.Cells[0, 0];

                int? x = 0;
                int? y = 0;
                int? colGroup = 0;
                Excelize(data, package, ref colGroup, ref y, ref x);

                // OfficeOpenXml.ExcelRange cell = worksheet.Cells["A1"];
                // cell.RichText.Add("hello world");
                // cell.Style.TextRotation = 180;

                package.SaveAs(new System.IO.FileInfo(outputFilename));
            }

        }


                // https://danlb.blogspot.com/2014/05/writing-excel-files-using-epplus.html
                // https://github.com/JanKallman/EPPlus
                // https://github.com/nissl-lab/npoi
                // https://medium.com/amplication/turn-excel-into-code-in-seconds-generate-node-js-d386ec999564


                // https://www.tutorialclues.com/topics/epplus/getting-started-with-epplus
                // https://www.tutorialclues.com/topics/epplus/merge-cells
                // https://www.tutorialclues.com/topics/epplus/examples/merging-cells
                // https://www.tutorialclues.com/topics/epplus/rich-text-in-cells
                // https://www.tutorialclues.com/topics/epplus/examples/adding-richtext-to-a-cell
                // https://itenium.be/blog/dotnet/create-xlsx-excel-with-epplus-csharp/
                public static void Test()
        {
            using (OfficeOpenXml.ExcelPackage package = new OfficeOpenXml.ExcelPackage())
            {
                OfficeOpenXml.ExcelWorkbook workbook = package.Workbook;
                OfficeOpenXml.ExcelWorksheet worksheet = workbook.Worksheets.Add("Tabeeeelle1");
                OfficeOpenXml.ExcelRange cell = worksheet.Cells["A1"];
                cell.Style.Font.Name = "Arial";
                cell.Style.Font.Bold = true;
                cell.Style.Font.Size = 12;
                cell.Style.Font.Color.SetColor(System.Drawing.Color.Ivory);

                cell.Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                cell.Style.Fill.BackgroundColor.SetColor(System.Drawing.Color.Yellow);

                cell.Style.Border.BorderAround(OfficeOpenXml.Style.ExcelBorderStyle.Thick);
                
                worksheet.Column(1).Width = 100;
                // worksheet.Column(1).Hidden = true;

                worksheet.Row(1).Height = 20;
                // worksheet.Row(1).Hidden = true;

                // By range address
                worksheet.Cells["A1:B5"].Merge = true;



                // worksheet.Cells.AutoFitColumns();

                // By indexes
                // worksheet.Cells[1, 1, 5, 2].Merge = true;


                // https://www.tutorialclues.com/topics/epplus/examples/adding-richtext-to-a-cell

                // cell.Value = 100;
                // cell.Style.Numberformat.Format = "$#,##0.00";
                // cell.Value = 15.25M;
                // sheet.Cells["A2"].Formula = "CONCATENATE(A1,\" ... Of course it will!\")";



                cell.IsRichText = true;     // Cell contains RichText rather than basic values
                cell.Style.WrapText = true; // Required to honor new lines

                OfficeOpenXml.Style.ExcelRichText title = cell.RichText.Add("This is my title");
                title.FontName = "Verdana";    // This will be applied to all subsequent sections as well

                OfficeOpenXml.Style.ExcelRichText text = cell.RichText.Add("\nAnd this is my text");

                // Note that each time you Add() a new string, it will inherit the formatting from the previous section.
                // As such, if you want to change the default formatting you will only need to change it on the first string added.
                // The preferred approach is to add all your text sections first, then apply section-specific formatting afterwards, as shown here:

                // Format JUST the title
                title.Bold = true;
                title.Italic = true;

                text.Bold = false;




                OfficeOpenXml.Drawing.ExcelPicture picture = worksheet.Drawings.AddPicture("Logo", System.Drawing.Image.FromFile(@"D:\Stefan.Steiger\Documents\Visual Studio 2017\Projects\TestPWA\TestPWA\wwwroot\images\SNB-Logo-blau-320px.png"));
                picture.SetPosition(0, 0, 5, 0);

                package.SaveAs(new System.IO.FileInfo(@"D:\demoOut.xlsx"));
            }
        }


        public static OfficeOpenXml.ExcelPackage GetTemplate(string resourceName)
        {
            OfficeOpenXml.ExcelPackage pck;

            //Create a stream of .xlsx file contained within my project using reflection
            using (System.IO.Stream stream = typeof(TestEpPlus).Assembly.GetManifestResourceStream(resourceName))
            {
                pck = new OfficeOpenXml.ExcelPackage(stream);
            }

            return pck;
        }


    }


}

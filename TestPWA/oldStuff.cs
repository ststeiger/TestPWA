
namespace TestPWA
{


    public class oldStuff
    {


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


        public static void BadRecursiveExcelize(XmlStructure data, OfficeOpenXml.ExcelPackage package, ref int? colGroup, ref int? y, ref int? x)
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
                int singleSpanWidth = (int)System.Math.Round(((float)width / (float)span * 0.46666667f), 0, System.MidpointRounding.AwayFromZero);

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


                    System.Collections.Generic.List<TextItem> ls = TestEpPlus.Itemize(data.innerHtml);

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
                BadRecursiveExcelize(thisChild, package, ref colGroup, ref y, ref x);
            }

        }


    }
}


namespace TestPWA
{

    // using OfficeOpenXml;


    public class HtmlTextStyle
    {
        public bool IsBold;
        public bool IsItalic;
        public bool IsVertical;
        public string Color;


        public HtmlTextStyle()
        {
            this.Reset();
        }


        public void Reset()
        {
            this.IsBold = false;
            this.IsItalic = false;
            this.IsVertical = false;
            this.Color = null;
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
            if (this.Style.Color != null)
                this.RichText.Color = System.Drawing.ColorTranslator.FromHtml(this.Style.Color);

            /*
            if (this.Style.IsVertical)
                // cell.Style.TextRotation = 270;
                cell.Style.TextRotation = 90;
            */
        }

    }



    public class CssUnitValue
    {
        public float Value;
        public string Unit;


        public float ExcelFactor
        {
            get
            {
                if ("cm".Equals(this.Unit, System.StringComparison.InvariantCultureIgnoreCase))
                    return 21.0f; // 94.5 = 4.5 cm

                return 1.0f;
            }
        }



        public CssUnitValue(float value, string unit)
        {
            this.Value = value;
            this.Unit = unit;
        }

        public CssUnitValue()
            : this(0.0f, "")
        { }


        public static CssUnitValue FromString(string input)
        {
            if (input == null)
                return new CssUnitValue();

            string value = "";
            string unit = "";

            foreach (char c in input)
            {
                if (char.IsDigit(c))
                    value += c;
                else if ('.' == c)
                    value += c;
                else
                    unit += c;
            }

            float val = float.Parse(value, System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture);
            return new CssUnitValue(val, unit);
        }
    }



    public class BorderStyle
    {
        public CssUnitValue Width;
        public string Solid;
        public System.Drawing.Color Color;


        public static BorderStyle FromHtml(string input)
        {
            if (input == null || input.Trim() == string.Empty || "none".Equals(input, System.StringComparison.InvariantCultureIgnoreCase))
                return null;

            BorderStyle ret = new BorderStyle();
            string[] parts = System.Text.RegularExpressions.Regex.Split(input, @"\s+");

            if (parts.Length > 0)
            {
                string width = parts[0];
                ret.Width = CssUnitValue.FromString(width);
            }
            
            if (parts.Length > 1)
                ret.Solid = parts[1];

            if(parts.Length > 2)
                ret.Color = System.Drawing.ColorTranslator.FromHtml(parts[2]);

            return ret;
        }

    }


    public class Border
    {
        public BorderStyle Left;
        public BorderStyle Right;
        public BorderStyle Top;
        public BorderStyle Bottom;

        public Border()
        { }

        public Border(BorderStyle bs)
            : this()
        {
            this.Left = bs;
            this.Right = bs;
            this.Top = bs;
            this.Bottom = bs;
        }


        public static Border SlimBlackBorder
        {
            get
            {
                BorderStyle bs = BorderStyle.FromHtml("1px solid black");
                return new Border(bs);
            }
        }

    }



    // https://web.archive.org/web/20130327000713/http://www.chrispliakas.com/content/programmatic-document-conversion-openoffice
    // https://essence.handmade.network/blog/p/7388-generating_polygon_outlines
    public class TestEpPlus
    {

        public static Border GetBorder(System.Collections.Generic.Dictionary<string, string> styleDictionary)
        {
            string border = null;
            string borderLeft = null;
            string borderRight = null;
            string borderTop = null;
            string borderBottom = null;


            if (styleDictionary.ContainsKey("border"))
            {
                border = styleDictionary["border"];
                borderLeft = border;
                borderRight = border;
                borderTop = border;
                borderBottom = border;
            }

            if (styleDictionary.ContainsKey("border-left"))
                borderLeft = styleDictionary["border-left"];

            if (styleDictionary.ContainsKey("border-right"))
                borderRight = styleDictionary["border-right"];

            if (styleDictionary.ContainsKey("border-top"))
                borderTop = styleDictionary["border-top"];

            if (styleDictionary.ContainsKey("border-bottom"))
                borderBottom = styleDictionary["border-bottom"];


            Border b = new Border()
            {
                Left = BorderStyle.FromHtml(borderLeft),
                Right = BorderStyle.FromHtml(borderRight),
                Top = BorderStyle.FromHtml(borderTop),
                Bottom = BorderStyle.FromHtml(borderBottom)
            };

            if (b.Left == null && b.Right == null && b.Top == null && b.Bottom == null)
                return null;

            return b;
        }


        public static System.Collections.Generic.Dictionary<string, string> ParseStyle(string style, System.StringComparer comparer)
        {
            System.Collections.Generic.Dictionary<string, string> styleDictionary = new System.Collections.Generic.Dictionary<string, string>(comparer);

            if (style != null)
            {
                string[] styles = style.Split(';');

                foreach (string stylePair in styles)
                {
                    if (stylePair == null || stylePair.Trim() == string.Empty)
                        continue;

                    string[] kvp = stylePair.Split(':');
                    if (kvp[0] != null)
                        kvp[0] = kvp[0].Trim();

                    if (kvp[1] != null)
                        kvp[1] = kvp[1].Trim();

                    styleDictionary[kvp[0]] = kvp[1];
                } // Next stylePair 

            } // End if (style != null)
            return styleDictionary;
        }

        public static string[] GetCssClasslist(System.Collections.Generic.Dictionary<string, string> properties)
        {
            System.Collections.Generic.List<string> ls = new System.Collections.Generic.List<string>();
            
            if (properties.ContainsKey("class"))
            {
                string cssClass = properties["class"];
                if (cssClass != null)
                {
                    cssClass = System.Text.RegularExpressions.Regex.Replace(cssClass, @"\s+", " ");
                    return cssClass.Split(' ', System.StringSplitOptions.RemoveEmptyEntries);
                }

            }

            return new string[0];
        }

        // HasClass(GetCssClasslist(props), "foo");
        public static bool HasClass(string[] classList, string className)
        {
            return System.Array.FindIndex(classList, x => x.Equals(className, System.StringComparison.InvariantCulture)) != -1;
        }




        public static System.Collections.Generic.Dictionary<string, string> ParseStyle(string style)
        {
            return ParseStyle(style, System.StringComparer.OrdinalIgnoreCase);
        }


        public static System.Collections.Generic.Dictionary<string, string> ParseStyle(System.Collections.Generic.Dictionary<string, string> properties, bool caseSensitive)
        {
            System.StringComparer comparer = caseSensitive ?
                System.StringComparer.InvariantCulture : System.StringComparer.InvariantCultureIgnoreCase;

            if (properties.ContainsKey("style"))
            {
                return ParseStyle(properties["style"], comparer);
            }

            return new System.Collections.Generic.Dictionary<string, string>(comparer);
        }


        public static System.Collections.Generic.Dictionary<string, string> ParseStyle(System.Collections.Generic.Dictionary<string, string> properties)
        {
            return ParseStyle(properties, false);
        }


        public static HtmlTextStyle GetStyle(HtmlAgilityPack.HtmlNode node, HtmlTextStyle context)
        {
            if (node.ParentNode != null)
            {
                if (node.NodeType == HtmlAgilityPack.HtmlNodeType.Element)
                {
                    string nodeName = node.Name.ToLowerInvariant();

                    string styleString = null;
                    HtmlAgilityPack.HtmlAttribute styleAttribute = node.Attributes["style"];
                    if (styleAttribute != null)
                        styleString = styleAttribute.Value;

                    System.Collections.Generic.Dictionary<string, string> style = ParseStyle(styleString);

                    if (style.ContainsKey("color"))
                    {
                        context.Color = style["color"];
                    }

                    // TF - we don't have unerlying elements here ...
                    string align = null;
                    if (style.ContainsKey("align"))
                        align = style["align"];

                    string valign = null;
                    if (style.ContainsKey("align"))
                        valign = style["valign"];

                    // align = "center"
                    //if ("center".Equals(align, System.StringComparison.InvariantCultureIgnoreCase))
                    //    cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;

                    //// valign = "top"
                    //if ("top".Equals(valign, System.StringComparison.InvariantCultureIgnoreCase))
                    //    cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Top;


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
                    // WTF ? !!!
                    // string text = thisNode.InnerText;
                    string text = System.Web.HttpUtility.HtmlDecode(thisNode.InnerHtml);

                    if (text != null)
                        text = text.Trim(new char[] { ' ', '\t', '\r', '\n', '\f', '\v' });

                    if (text != null && text != string.Empty)
                        ls.Add(new TextItem(text, GetStyle(thisNode)));
                }
                else if ("br" == thisNode.Name.ToLowerInvariant())
                {
                    // System.Console.WriteLine(thisNode.Name); // NewLine
                    if (false)ls.Add(new TextItem("\r\n", GetStyle(thisNode)));
                }

            }

            doc = null;
            return ls;
        }


        private static System.Collections.Generic.Dictionary<string, string> MakeAssociativeArray(
            System.Collections.Generic.List<System.Collections.Generic.List<string>> properties, bool caseSensitive)
        {
            System.StringComparer comparer = caseSensitive ?
                System.StringComparer.InvariantCulture : System.StringComparer.InvariantCultureIgnoreCase;

            System.Collections.Generic.Dictionary<string, string> obj =
                new System.Collections.Generic.Dictionary<string, string>(comparer);

            for (int i = 0; i < properties.Count; ++i)
            {
                string key = properties[i][0];

                if (string.IsNullOrEmpty(key))
                    continue;

                if (!caseSensitive)
                    key = key.ToLowerInvariant();

                obj[key] = properties[i][1];
            }

            return obj;
        }



        private static System.Collections.Generic.Dictionary<string, string> MakeAssociativeArray(
            System.Collections.Generic.List<System.Collections.Generic.List<string>> properties)
        {
            return MakeAssociativeArray(properties, false);
        }

        public static int GetColumnNumber(string name)
        {
            name = name.ToUpperInvariant();

            int number = 0;
            int pow = 1;
            for (int i = name.Length - 1; i >= 0; i--)
            {
                number += (name[i] - 'A' + 1) * pow;
                pow *= 26;
            }

            return number;
        }

        private string GetExcelColumnName(int columnNumber)
        {
            string columnName = "";

            while (columnNumber > 0)
            {
                int modulo = (columnNumber - 1) % 26;
                columnName = (char)('A' + modulo) + columnName;
                columnNumber = (columnNumber - modulo) / 26;
            }

            return columnName;
        }




        // Excel will quantize the passed in column widths to display 12ths below 1 and into 7ths above.
        // This means a staircase result and many end values cannot be made (e.g. 3.5,4.5 etc).
        // https://stackoverflow.com/questions/9096176/how-to-set-xlsx-cell-width-with-epplus
        public static void SetTrueColumnWidth(OfficeOpenXml.ExcelColumn column, double width)
        {
            // Deduce what the column width would really get set to.
            double z = width >= (1 + 2 / 3)
                ? System.Math.Round((System.Math.Round(7 * (width - 1 / 256), 0) - 5) / 7, 2)
                : System.Math.Round((System.Math.Round(12 * (width - 1 / 256), 0) - System.Math.Round(5 * width, 0)) / 12, 2);

            // How far off? (will be less than 1)
            double errorAmt = width - z;

            // Calculate what amount to tack onto the original amount to result in the closest possible setting.
            double adj = width >= 1 + 2 / 3
                ? System.Math.Round(7 * errorAmt - 7 / 256, 0) / 7
                : System.Math.Round(12 * errorAmt - 12 / 256, 0) / 12 + (2 / 12);

            // Set width to a scaled-value that should result in the nearest possible value to the true desired setting.
            if (z > 0)
            {
                column.Width = width + adj;
                return;
            }

            column.Width = 0d;
        }



        // https://www.sysecol2.ethz.ch/_DevAux/Docu_HTML/HTML_4.0_Reference/tables/colgroup.html
        // https://stackoverflow.com/questions/13445653/table-columns-with-relative-size-in-html5
        // However, the width attribute is now deprecated and we're supposed to use CSS instead.
        // <colgroup width="pixels|%|relative_lngth">
        // The WIDTH attribute specifies a width for each column in the group.
        // The value must be a number in pixels, a percentage of the table width,
        // or a relative length expressed as i* where i is an integer.
        // A column with WIDTH="3*" will be allotted three times the width of a column with WIDTH="1*".
        // The value 0* is equivalent to the minimum width necessary for the column's contents.
        // WIDTH=MultiLength (Breite jeder Spalte)
        public static void SetFakeColumnWidth(OfficeOpenXml.ExcelColumn column, double width)
        {
            if (width < 1)
            {
                column.Width = (12.0 / 7) * width;
            }
            else
            {
                column.Width = width + (5.0 / 7);
            }
        }


        public static void SetBorder(OfficeOpenXml.Style.Border border, Border bb, bool ofRow, int currentColumn, int maxColumn)
        {
            if (bb == null)
                return;


            OfficeOpenXml.Style.ExcelBorderStyle px1 = OfficeOpenXml.Style.ExcelBorderStyle.Thin;
            OfficeOpenXml.Style.ExcelBorderStyle px2 = OfficeOpenXml.Style.ExcelBorderStyle.Medium;


            if (bb.Left != null)
            {
                if (!ofRow || currentColumn == 1)
                {

                    if (bb.Left.Width.Value > 1)
                        border.Left.Style = px2;
                    else
                        border.Left.Style = px1;

                    border.Left.Color.SetColor(bb.Left.Color);
                }
            }


            if (bb.Right != null)
            {
                if (!ofRow || currentColumn == maxColumn)
                {
                    if (bb.Right.Width.Value > 1)
                        border.Right.Style = px2;
                    else
                        border.Right.Style = px1;

                    border.Right.Color.SetColor(bb.Right.Color);
                }
            }


            if (bb.Top != null)
            {
                if (bb.Top.Width.Value > 1)
                    border.Top.Style = px2;
                else
                    border.Top.Style = px1;

                border.Top.Color.SetColor(bb.Top.Color);
            }


            if (bb.Bottom != null)
            {
                if (bb.Bottom.Width.Value > 1)
                    border.Bottom.Style = px2;
                else
                    border.Bottom.Style = px1;

                border.Bottom.Color.SetColor(bb.Bottom.Color);
            }

        }


        // https://stackoverflow.com/questions/3932382/traversing-directories-without-using-recursion/30218705#30218705
        public static void Excelize(XmlStructure container, OfficeOpenXml.ExcelPackage package)
        {
            System.Collections.Generic.Stack<XmlStructure> stack =
                new System.Collections.Generic.Stack<XmlStructure>();
            stack.Push(container);

            OfficeOpenXml.ExcelWorksheet ww = package.Workbook.Worksheets[1];


            Border trBorder = null;
            int currentRow = 0;
            int startColumn = 0;
            int endColumn = 0;


            int startColGroup = 0;
            int endColGroup = 0;
            string rowColor = null;


            
            int maxColumns = 0;



            while (stack.Count != 0)
            {
                XmlStructure element = stack.Pop();


                System.Collections.Generic.Dictionary<string, string> properties = MakeAssociativeArray(element.properties);
                System.Collections.Generic.Dictionary<string, string> style = ParseStyle(properties);
                string[] classList = GetCssClasslist(properties);

                // console.log(properties);

                if ("colgroup" == element.tagName)
                {
                    startColGroup = endColGroup + 1;

                    int span = 1;
                    if (properties.ContainsKey("span"))
                        int.TryParse(properties["span"], System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture, out span);

                    endColGroup = startColGroup + span - 1;


                    int width = 30;
                    if (properties.ContainsKey("width"))
                    {
                        int.TryParse(properties["width"], System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture, out width);
                    }


                    // width is for every column ! Do NOT divide by colspan ! 
                    // int spanWidth = (int)System.Math.Round(width * 0.159090909f, 0, System.MidpointRounding.AwayFromZero);
                    // int spanWidth = (int)System.Math.Round(width * 0.136363636f, 0, System.MidpointRounding.AwayFromZero);
                    // int spanWidth = (int)System.Math.Round(width * 0.132238806f, 0, System.MidpointRounding.AwayFromZero);
                    int spanWidth = (int)System.Math.Round(width * 0.15f, 0, System.MidpointRounding.AwayFromZero);


                    for (int i = startColGroup; i < endColGroup + 1; ++i)
                    {
                        maxColumns++;
                        ww.Column(i).Width = spanWidth;
                        // SetTrueColumnWidth(ww.Column(i), spanWidth);
                    }

                }
                else if ("tr" == element.tagName)
                {
                    currentRow += 1;
                    startColumn = 0;
                    endColumn = 0;
                    // console.log(element, currentRow);

                    int rowSpan = 1;

                    if (properties.ContainsKey("rowspan"))
                        int.TryParse(properties["rowspan"], out rowSpan);

                    rowColor = null;
                    if (style.ContainsKey("background-color"))
                    {
                        rowColor = style["background-color"];
                        System.Console.WriteLine(rowColor);
                    } // End if (style.ContainsKey("background-color")) 

                    trBorder = GetBorder(style);
                }
                else if ("td" == element.tagName)
                {
                    int colSpan = 1;
                    int rowSpan = 1;
                    if (properties.ContainsKey("colspan"))
                        int.TryParse(properties["colspan"], out colSpan);

                    if (properties.ContainsKey("rowspan"))
                        int.TryParse(properties["rowspan"], out rowSpan);

                    startColumn = endColumn + 1;
                    endColumn = startColumn + colSpan - 1;

                    string align = null;
                    if (properties.ContainsKey("align"))
                        align = properties["align"];

                    string valign = null;
                    if (properties.ContainsKey("valign"))
                        valign = properties["valign"];


                    CssUnitValue elementHeight = null;
                    if (properties.ContainsKey("height"))
                    {
                        string h = properties["height"];
                        elementHeight = CssUnitValue.FromString(h);
                    }



                    CssUnitValue styleHeight = null;
                    if (style.ContainsKey("height"))
                    {
                        string h = style["height"];
                        styleHeight = CssUnitValue.FromString(h);
                    }



                    // console.log(element);
                    // console.log("y:", currentRow, "x1:", startColumn, "x2", endColumn, "colspan", colSpan, "rowSpan", rowSpan);

                    if (styleHeight != null)
                    {
                        ww.Row(currentRow).Height = styleHeight.Value * styleHeight.ExcelFactor;
                    }


                    OfficeOpenXml.ExcelRange cell = ww.Cells[currentRow, startColumn];
                    // object a = package.Workbook.Worksheets[0].Cells[1, 1].Value;




                    // cell.Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                    // cell.Style.Fill.BackgroundColor.SetColor(System.Drawing.Color.Yellow);

                    if (colSpan > 1 || rowSpan > 1)
                    {
                        ww.Cells[currentRow, startColumn, currentRow + rowSpan - 1, endColumn].Merge = true;
                    }

                    if (rowColor != null)
                    {
                        cell.Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                        cell.Style.Fill.BackgroundColor.SetColor(System.Drawing.ColorTranslator.FromHtml(rowColor));
                    }

                    if (properties.ContainsKey("bgcolor"))
                    {
                        string bgColor = properties["bgcolor"];

                        cell.Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                        cell.Style.Fill.BackgroundColor.SetColor(System.Drawing.ColorTranslator.FromHtml(bgColor));
                    }

                    // align = "center"
                    if ("center".Equals(align, System.StringComparison.InvariantCultureIgnoreCase))
                        cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                    else if ("left".Equals(align, System.StringComparison.InvariantCultureIgnoreCase))
                        cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Left;
                    else if ("right".Equals(align, System.StringComparison.InvariantCultureIgnoreCase))
                        cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Right;


                    // valign = "top"
                    if ("top".Equals(valign, System.StringComparison.InvariantCultureIgnoreCase))
                        cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Top;


                    System.Collections.Generic.List<TextItem> ls = Itemize(element.innerHtml);

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
                        } // End if (thisTextItem.Style.IsVertical && cell.Style.TextRotation != 90) 

                    } // Next thisTextItem 


                    bool hasSBB = HasClass(classList, "slimBlackBorder");
                    for (int i = startColumn; i < endColumn + 1; ++i)
                    {
                        OfficeOpenXml.ExcelRange mergeCellHack = ww.Cells[currentRow, i];

                        // Sequence matters ! 
                        // first TR, then class, then style 
                        if (trBorder != null)
                        {
                            SetBorder(mergeCellHack.Style.Border, trBorder, true, i, maxColumns);
                        } // End if (trBorder != null) 

                        if (hasSBB)
                            SetBorder(mergeCellHack.Style.Border, Border.SlimBlackBorder, false, i, maxColumns);

                        Border bb = GetBorder(style);
                        SetBorder(mergeCellHack.Style.Border, bb, false, i, maxColumns);
                    } // Next i 
                    
                    // worksheet.Cells.AutoFitColumns();
                    // cell.AutoFitColumns();
                }
                else if ("input" == element.tagName)
                {
                    System.Console.WriteLine(element);
                }
                else if ("textarea" == element.tagName)
                {
                    System.Console.WriteLine(element);
                }
                else
                {
                    System.Console.WriteLine(element.tagName);
                }


                System.Collections.Generic.List<XmlStructure> children = element.children;

                for (int i = children.Count - 1; i > -1; --i)
                {
                    stack.Push(children[i]);
                }

            }

        } // End Function iterateOverStructure 



        public static void Test2(string json, string outputFilename)
        {
            XmlStructure data = Newtonsoft.Json.JsonConvert.DeserializeObject<XmlStructure>(json, new Newtonsoft.Json.JsonSerializerSettings()
            {
                NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore,
                DateFormatHandling = Newtonsoft.Json.DateFormatHandling.MicrosoftDateFormat
            });


            using (OfficeOpenXml.ExcelPackage package = new OfficeOpenXml.ExcelPackage())
            {
                OfficeOpenXml.ExcelWorkbook workbook = package.Workbook;
                OfficeOpenXml.ExcelWorksheet worksheet = workbook.Worksheets.Add("Checkliste");

                // OfficeOpenXml.ExcelRange cell = worksheet.Cells["A1"];

                // index 0 not allowed for worksheet and cell x&y
                // OfficeOpenXml.ExcelWorksheet ws = package.Workbook.Worksheets[0];
                // OfficeOpenXml.ExcelRange cell = ww.Cells[0, 0];

                Excelize(data, package);

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

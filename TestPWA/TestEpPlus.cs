
namespace TestPWA
{


    public class RowSpan
    {
        public int StartColumn;
        public int EndColumn;


        public RowSpan(int fromColumnInclusive, int toColumnInclusive)
        {
            this.StartColumn = fromColumnInclusive;
            this.EndColumn = toColumnInclusive;
        }


        public RowSpan()
            :this(0,0)
        { }




        public bool IsInSpan(int columnNumber)
        {
            if (columnNumber >= StartColumn && columnNumber <= EndColumn)
                return true;

            return false;
        }


    }


    public class RowSpanCollection
    {
        System.Collections.Generic.List<RowSpan> m_list;

        public RowSpanCollection()
        {
            this.m_list = new System.Collections.Generic.List<RowSpan>();
        }


        public void Add(RowSpan span)
        {
            this.m_list.Add(span);
        }


        public void Remove(RowSpan span)
        {
            for (int i = 0; i < this.m_list.Count; ++i)
            {
                if (this.m_list[i].StartColumn == span.StartColumn && this.m_list[i].EndColumn == span.EndColumn)
                {
                    this.m_list.RemoveAt(i);
                    return;
                }
            }
        }


        public RowSpan FindSpan(int columnIndex)
        {
            foreach (RowSpan thisSpan in this.m_list)
            {
                if (thisSpan.IsInSpan(columnIndex))
                    return thisSpan;
            }

            return null;
        }

    }



    // https://web.archive.org/web/20130327000713/http://www.chrispliakas.com/content/programmatic-document-conversion-openoffice
    // https://essence.handmade.network/blog/p/7388-generating_polygon_outlines
    public class TestEpPlus
    {


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


            System.Collections.Generic.Dictionary<int, RowSpanCollection> spareSpans = 
                new System.Collections.Generic.Dictionary<int, RowSpanCollection>();




            while (stack.Count != 0)
            {
                XmlStructure element = stack.Pop();


                System.Collections.Generic.Dictionary<string, string> properties = CssHelper.MakeAssociativeArray(element.properties);
                System.Collections.Generic.Dictionary<string, string> style = CssHelper.ParseStyle(properties);
                string[] classList = CssHelper.GetCssClassList(properties);

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

                    trBorder = CssHelper.GetBorder(style);
                } // End if tr 
                else if ("td" == element.tagName)
                {
                    int colSpan = 1;
                    int rowSpan = 1;
                    if (properties.ContainsKey("colspan"))
                        int.TryParse(properties["colspan"], out colSpan);

                    if (properties.ContainsKey("rowspan"))
                        int.TryParse(properties["rowspan"], out rowSpan);

                    startColumn = endColumn + 1;

                    
                    if (spareSpans.ContainsKey(currentRow))
                    {
                        RowSpan spareRange = null;
                        // there might be adjacent ranges ...
                        while ((spareRange = spareSpans[currentRow].FindSpan(startColumn)) != null)
                        { 
                            startColumn = spareRange.EndColumn + 1;
                            spareSpans[currentRow].Remove(spareRange);
                        }
                    }



                    endColumn = startColumn + colSpan - 1;

                    //// FOOOOOO
                    if (rowSpan > 1)
                    {
                        int spanEndRow = currentRow + rowSpan - 1;

                        for (int i = currentRow; i < spanEndRow + 1; ++i)
                        {
                            if (!spareSpans.ContainsKey(i))
                                spareSpans[i] = new RowSpanCollection();

                            spareSpans[i].Add(new RowSpan(startColumn, endColumn) );
                        } // Next i 

                    } // End if (rowSpan > 1)


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
                    } // End if (style.ContainsKey("height"))



                    // console.log(element);
                    // console.log("y:", currentRow, "x1:", startColumn, "x2", endColumn, "colspan", colSpan, "rowSpan", rowSpan);

                    if (styleHeight != null)
                    {
                        ww.Row(currentRow).Height = styleHeight.Value * styleHeight.ExcelFactor;
                    } // End if (styleHeight != null)


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

                    if (style.ContainsKey("background-color"))
                    {
                        string bgColor = style["background-color"];
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


                    System.Collections.Generic.List<TextItem> ls = ExcelHelper.Itemize(element.innerHtml);

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


                    bool hasSBB = CssHelper.HasClass(classList, "slimBlackBorder");
                    for (int i = startColumn; i < endColumn + 1; ++i)
                    {
                        OfficeOpenXml.ExcelRange mergeCellHack = ww.Cells[currentRow, i];

                        // Sequence matters ! 
                        // first border style of TR, then class of cell, then style of cell 
                        if (trBorder != null)
                        {
                            ExcelHelper.SetBorder(mergeCellHack.Style.Border, trBorder, true, i, maxColumns);
                        } // End if (trBorder != null) 

                        if (hasSBB)
                            ExcelHelper.SetBorder(mergeCellHack.Style.Border, Border.SlimBlackBorder, false, i, maxColumns);

                        Border bb = CssHelper.GetBorder(style);
                        ExcelHelper.SetBorder(mergeCellHack.Style.Border, bb, false, i, maxColumns);
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

            } // Whend 

        } // End Function Excelize 



        public static void JsonToExcel(string json, string outputFilename)
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

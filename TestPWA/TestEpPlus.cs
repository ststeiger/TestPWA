
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
        public static void Excelize(System.Collections.Generic.List<CheckListSaveData> saveData, XmlStructure container, OfficeOpenXml.ExcelPackage package)
        {
            if (container == null)
                return;

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


            int maxRows = 0;
            int maxColumns = 0;


            System.Collections.Generic.Dictionary<int, RowSpanCollection> spareSpans = 
                new System.Collections.Generic.Dictionary<int, RowSpanCollection>();

            System.Collections.Generic.Dictionary<string, string> valuesDictionary = new System.Collections.Generic.Dictionary<string, string>(System.StringComparer.InvariantCultureIgnoreCase);


            if (saveData != null)
            {

                for (int i = 0; i < saveData.Count; ++i)
                {
                    if(saveData[i] != null)
                        valuesDictionary.Add(saveData[i].Guid, saveData[i].Value);
                } // Next i 

            } // End if (saveData != null) 


            while (stack.Count != 0)
            {
                XmlStructure element = stack.Pop();


                System.Collections.Generic.Dictionary<string, string> properties = CssHelper.MakeAssociativeArray(element.properties);
                System.Collections.Generic.Dictionary<string, string> style = CssHelper.ParseStyle(properties);
                string[] classList = CssHelper.GetCssClassList(properties);

                // console.log(properties);

                if ("colgroup".Equals(element.tagName, System.StringComparison.InvariantCultureIgnoreCase))
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
                else if ("tr".Equals(element.tagName, System.StringComparison.InvariantCultureIgnoreCase))
                {
                    maxRows++;
                    currentRow++;
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
                else if ("td".Equals(element.tagName, System.StringComparison.InvariantCultureIgnoreCase))
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

#if false
                    {
                        CssUnitValue elementHeight = null;
                        if (properties.ContainsKey("height"))
                        {
                            string h = properties["height"];
                            elementHeight = CssUnitValue.FromString(h);
                        }


                        if (elementHeight != null)
                        {
                            for (int i = 0; i < rowSpan; ++i)
                            {
                                ww.Row(currentRow + i).Height = elementHeight.Value * 0.8f;
                            }

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
                            for (int i = 0; i < rowSpan; ++i)
                            {
                                ww.Row(currentRow + i).Height = styleHeight.Value * styleHeight.ExcelFactor;
                            }

                        } // End if (styleHeight != null)
                    }
#endif 


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

                        // Rücksubstitution Hintergrundfarbenanpassung
                        if ("#5F5F5F".Equals(bgColor, System.StringComparison.InvariantCultureIgnoreCase))
                            bgColor = "#EDEDED";

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
                    else // Default
                        cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Left;


                    // valign = "top"
                    if ("top".Equals(valign, System.StringComparison.InvariantCultureIgnoreCase))
                        cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Top;
                    else if ("middle".Equals(valign, System.StringComparison.InvariantCultureIgnoreCase))
                        cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;
                    else if ("bottom".Equals(valign, System.StringComparison.InvariantCultureIgnoreCase))
                        cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Bottom;
                    else // Default 
                        cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Top;


                    System.Collections.Generic.List<TextItem> ls = ExcelHelper.Itemize(element.innerHtml);

                    foreach (TextItem thisTextItem in ls)
                    {
                        thisTextItem.RichText = cell.RichText.Add(" ");
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
                    for (int j = 0; j < rowSpan; ++j)
                    {
                        for (int i = startColumn; i < endColumn + 1; ++i)
                        {
                            OfficeOpenXml.ExcelRange mergeCellHack = ww.Cells[currentRow+j, i];

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
                    } // Next j 

                    // worksheet.Cells.AutoFitColumns();
                    // cell.AutoFitColumns();

                    
                }
                else if ("input".Equals(element.tagName, System.StringComparison.InvariantCultureIgnoreCase))
                {

                    if (valuesDictionary.ContainsKey(element.uuid))
                    {
                        string val = valuesDictionary[element.uuid];
                        OfficeOpenXml.ExcelRange cell = ww.Cells[currentRow, startColumn];
                        cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;
                        cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;


                        // https://fsymbols.com/signs/tick/
                        if ("true".Equals(val, System.StringComparison.InvariantCultureIgnoreCase))
                        {
                            cell.Value = "✗";
                            cell.Value = "✕";
                            cell.Value = "☒";
                        }
                        else
                            cell.Value = "☐";
                    }


                }
                else if ("textarea".Equals(element.tagName, System.StringComparison.InvariantCultureIgnoreCase))
                {

                    if (valuesDictionary.ContainsKey(element.uuid))
                    {
                        string val = valuesDictionary[element.uuid];

                        OfficeOpenXml.ExcelRange cell = ww.Cells[currentRow, startColumn];

                        cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Left;
                        cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;
                        cell.Value = val;
                    }
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



        public static void JsonToExcel(string saveDataJSON, string json, string outputFilename)
        {
            using (System.IO.Stream strm = System.IO.File.OpenWrite(outputFilename))
            {
                JsonToExcel(saveDataJSON, json, strm);
            }
        }


        public static void JsonToExcel(string saveDataJSON, string json, System.IO.Stream stream)
        {
            XmlStructure data = Newtonsoft.Json.JsonConvert.DeserializeObject<XmlStructure>(json, new Newtonsoft.Json.JsonSerializerSettings()
            {
                NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore,
                DateFormatHandling = Newtonsoft.Json.DateFormatHandling.MicrosoftDateFormat
            });

            // System.Collections.Generic.List<CheckListSaveData> saveData = CheckListDataValues.FromJson(saveDataJSON);
            // System.Console.WriteLine(saveData);

            System.Collections.Generic.List<CheckListSaveData> saveData = CheckListSaveData.FromJson(saveDataJSON);
            // System.Console.WriteLine(saveData);


            using (OfficeOpenXml.ExcelPackage package = new OfficeOpenXml.ExcelPackage())
            {
                OfficeOpenXml.ExcelWorkbook workbook = package.Workbook;
                OfficeOpenXml.ExcelWorksheet worksheet = workbook.Worksheets.Add("Checkliste");

                Excelize(saveData, data, package);

                // Block - Add title and Logo
                {
                    // This will insert 15 rows starting at row 10. All the rows under will be shifted down.
                    // worksheet.InsertRow(10, 15);
                    worksheet.InsertRow(1, 5);


                    string logoPath = System.Web.Hosting.HostingEnvironment.MapPath("~/Checklist2/images/SNB-Logo-blau-320px.png");
                    

                    using (OfficeOpenXml.Drawing.ExcelPicture picture = GetLogo(worksheet, "Logo", logoPath, 135, 150))
                    {
                        // picture.SetPosition(0, 0, 5, 0);
                        picture.From.Row = 0;
                        picture.From.Column = 5;

                        picture.To.Row = 3;
                        picture.To.Column = 10;
                        // picture.Placement = xlMove; //XLPlacement : xlMoveAndSize,xlMove,xlFreeFloating

                        // picture.SetSize(135, 150);
                        // picture.AdjustPositionAndSize();
                    }

                    // A3:E4
                    // 1,1: 5,4
                    worksheet.Cells["A3:E4"].Merge = true;

                    OfficeOpenXml.ExcelRange cell = worksheet.Cells["A3"];
                    cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Right;

                    cell.IsRichText = true; // Cell contains RichText rather than basic values
                    cell.Style.WrapText = true; // Required to honor new lines

                    OfficeOpenXml.Style.ExcelRichText title = cell.RichText.Add("Wartungscheckliste MUVE");
                    title.FontName = "Arial";    // This will be applied to all subsequent sections as well
                    title.Size = 14;
                    title.Bold = true;
                }

                // package.SaveAs(new System.IO.FileInfo(outputFilename));
                package.SaveAs(stream);
            }

        }

        public static OfficeOpenXml.Drawing.ExcelPicture GetLogo(OfficeOpenXml.ExcelWorksheet worksheet, string pictureName, string path, int width, int height)
        {
            OfficeOpenXml.Drawing.ExcelPicture picture = null;

            string logoPath = path;
            using (System.Drawing.Image img = LoadAndResizeImage(logoPath, width, height))
            {
                picture = worksheet.Drawings.AddPicture(pictureName, img);
            }

            return picture;
        }


        public static OfficeOpenXml.Drawing.ExcelPicture GetLogo(OfficeOpenXml.ExcelWorksheet worksheet, string pictureName, System.Drawing.Image logo, int width, int height)
        {
            OfficeOpenXml.Drawing.ExcelPicture picture = null;
            using (System.Drawing.Image img = LoadAndResizeImage(logo, width, height))
            {
                picture = worksheet.Drawings.AddPicture(pictureName, img);
            }

            return picture;
        }


        private static System.Drawing.Image LoadAndResizeImage(string path, int width, int height)
        {
            System.Drawing.Image img;

            using (System.Drawing.Image imgToResize = System.Drawing.Image.FromFile(path))
            {
                img = LoadAndResizeImage(imgToResize, width, height);
            }

            return img;
        }


        private static System.Drawing.Image LoadAndResizeImage(System.Drawing.Image imgToResize, int width, int height)
        {
            int sourceWidth = imgToResize.Width;
            int sourceHeight = imgToResize.Height;

            float nPercent = 0;
            float nPercentW = 0;
            float nPercentH = 0;

            nPercentW = ((float)width / (float)sourceWidth);
            nPercentH = ((float)height / (float)sourceHeight);

            if (nPercentH < nPercentW)
                nPercent = nPercentH;
            else
                nPercent = nPercentW;

            int destWidth = (int)(sourceWidth * nPercent);
            int destHeight = (int)(sourceHeight * nPercent);

            System.Drawing.Image img;

            using (System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(destWidth, destHeight))
            {
                using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bmp))
                {
                    g.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceCopy;
                    g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
                    g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
                    g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                    g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;

                    g.DrawImage(imgToResize, 0, 0, destWidth, destHeight);
                }

                using (System.IO.MemoryStream ms = new System.IO.MemoryStream())
                {
                    bmp.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    ms.Position = 0;
                    img = System.Drawing.Image.FromStream(ms);
                }
            }

            return img;
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


                string logoPath = System.IO.Path.GetDirectoryName(typeof(TestEpPlus).Assembly.Location);
                logoPath = System.IO.Path.Combine(logoPath, "..", "..", "..", "wwwroot", "Checklist2", "images", "SNB-Logo-blau-320px.png");
                logoPath = System.IO.Path.GetFullPath(logoPath);


                OfficeOpenXml.Drawing.ExcelPicture picture = worksheet.Drawings.AddPicture("Logo", System.Drawing.Image.FromFile(logoPath));
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

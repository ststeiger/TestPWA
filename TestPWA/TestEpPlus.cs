
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace TestPWA
{

    // using OfficeOpenXml;


    // https://web.archive.org/web/20130327000713/http://www.chrispliakas.com/content/programmatic-document-conversion-openoffice
    // https://essence.handmade.network/blog/p/7388-generating_polygon_outlines
    public class TestEpPlus
    {


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

                //By range address
                worksheet.Cells["A1:B5"].Merge = true;


                // worksheet.Cells.AutoFitColumns();

                //By indexes
                // worksheet.Cells[1, 1, 5, 2].Merge = true;


                // https://www.tutorialclues.com/topics/epplus/examples/adding-richtext-to-a-cell

                // cell.Value = 100;
                //cell.Style.Numberformat.Format = "$#,##0.00";
                //cell.Value = 15.25M;
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


namespace TestPWA
{


    public class ExcelHelper
    {


        // Note:
        // ofRow: true - sets border of entire row 
        // ofRow: false - sets border of single cell 
        // delicate hack because merge cells need to be set for each cell in range separately ... 
        // wtf ? 
        public static void SetBorder(
              OfficeOpenXml.Style.Border border
            , Border bb
            , bool ofRow
            , int currentColumn
            , int maxColumn)
        {
            if (bb == null)
                return;


            OfficeOpenXml.Style.ExcelBorderStyle px1 = OfficeOpenXml.Style.ExcelBorderStyle.Thin;
            OfficeOpenXml.Style.ExcelBorderStyle px2 = OfficeOpenXml.Style.ExcelBorderStyle.Medium;


            if (bb.Left != null)
            {
                // only set the left border when a cell or when the leftmost cell of an entire row 
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
                // only set the right border when a cell or when the rightmost cell of an entire row 
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
                // TODO: border on entire row only when rowspan-top 
                if (bb.Top.Width.Value > 1)
                    border.Top.Style = px2;
                else
                    border.Top.Style = px1;

                border.Top.Color.SetColor(bb.Top.Color);
            }


            if (bb.Bottom != null)
            {
                // TODO: bottom on entire row only when rowspan-top 
                if (bb.Bottom.Width.Value > 1)
                    border.Bottom.Style = px2;
                else
                    border.Bottom.Style = px1;

                border.Bottom.Color.SetColor(bb.Bottom.Color);
            }

        } // End Sub SetBorder 


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
                    // string text = thisNode.InnerText;
                    // WTF ? !!!
                    // It would be too easy ...
                    string text = System.Web.HttpUtility.HtmlDecode(thisNode.InnerHtml);

                    if (text != null)
                        text = text.Trim(new char[] { ' ', '\t', '\r', '\n', '\f', '\v' });

                    if (text != null && text != string.Empty)
                        ls.Add(new TextItem(text, CssHelper.GetStyle(thisNode)));
                }
                else if ("br" == thisNode.Name.ToLowerInvariant())
                {
                    // System.Console.WriteLine(thisNode.Name); // NewLine
                    if (false) ls.Add(new TextItem("\r\n", CssHelper.GetStyle(thisNode)));
                }

            } // Next thisNode 

            doc = null;
            return ls;
        } // End Function Itemize 


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
        } // End Function GetColumnNumber 

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
        } // End Function GetExcelColumnName 




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
        } // End Function SetTrueColumnWidth 


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
        } // End Function SetFakeColumnWidth 


    }
}


namespace TestPWA
{

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


}

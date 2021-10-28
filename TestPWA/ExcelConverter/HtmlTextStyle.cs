
namespace TestPWA
{


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


}

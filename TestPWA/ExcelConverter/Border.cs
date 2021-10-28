
namespace TestPWA
{


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


}

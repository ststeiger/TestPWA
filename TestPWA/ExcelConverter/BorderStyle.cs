
namespace TestPWA
{

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

            if (parts.Length > 2)
                ret.Color = System.Drawing.ColorTranslator.FromHtml(parts[2]);

            return ret;
        }

    }


}

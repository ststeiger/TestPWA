
namespace TestPWA
{


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


}

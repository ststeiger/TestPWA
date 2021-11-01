
namespace TestPWA
{


    public class CssHelper
    {

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


        public static System.Collections.Generic.Dictionary<string, string> ParseStyle(string style)
        {
            return ParseStyle(style, System.StringComparer.OrdinalIgnoreCase);
        } // End Function ParseStyle 


        public static System.Collections.Generic.Dictionary<string, string> ParseStyle(
            System.Collections.Generic.Dictionary<string, string> properties, 
            bool caseSensitive
            )
        {
            System.StringComparer comparer = caseSensitive ?
                System.StringComparer.InvariantCulture : System.StringComparer.InvariantCultureIgnoreCase;

            if (properties.ContainsKey("style"))
            {
                return ParseStyle(properties["style"], comparer);
            }

            return new System.Collections.Generic.Dictionary<string, string>(comparer);
        } // End Function ParseStyle 


        public static System.Collections.Generic.Dictionary<string, string> ParseStyle(System.Collections.Generic.Dictionary<string, string> properties)
        {
            return ParseStyle(properties, false);
        } // End Function ParseStyle 


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
        } // End Function GetStyle 


        public static HtmlTextStyle GetStyle(HtmlAgilityPack.HtmlNode node)
        {
            HtmlTextStyle context = new HtmlTextStyle();
            return GetStyle(node, context);
        } // End Function GetStyle 


        public static string[] GetCssClassList(System.Collections.Generic.Dictionary<string, string> properties)
        {
            System.Collections.Generic.List<string> ls = new System.Collections.Generic.List<string>();

            if (properties.ContainsKey("class"))
            {
                string cssClass = properties["class"];
                if (cssClass != null)
                {
                    cssClass = System.Text.RegularExpressions.Regex.Replace(cssClass, @"\s+", " ");

                    // Return cssClass.Split(" "c, System.StringSplitOptions.RemoveEmptyEntries)
                    // return cssClass.Split(' ', System.StringSplitOptions.RemoveEmptyEntries);
                    return cssClass.Split(new char[] { ' ' }, System.StringSplitOptions.RemoveEmptyEntries);
                } // End if (cssClass != null) 

            } // End if (properties.ContainsKey("class")) 

            return new string[0];
        } // End Function GetCssClassList 


        // HasClass(GetCssClassList(props), "foo");
        public static bool HasClass(string[] classList, string className)
        {
            return System.Array.FindIndex(classList, x => x.Equals(className, System.StringComparison.InvariantCulture)) != -1;
        } // End Function HasClass 


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


        public static System.Collections.Generic.Dictionary<string, string> MakeAssociativeArray(
            System.Collections.Generic.List<System.Collections.Generic.List<string>> properties, 
            bool caseSensitive)
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
            } // Next i 

            return obj;
        } // End Function MakeAssociativeArray 


        public static System.Collections.Generic.Dictionary<string, string> MakeAssociativeArray(
            System.Collections.Generic.List<System.Collections.Generic.List<string>> properties)
        {
            return MakeAssociativeArray(properties, false);
        } // End Function MakeAssociativeArray 


    }
}

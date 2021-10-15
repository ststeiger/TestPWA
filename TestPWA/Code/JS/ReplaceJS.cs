
namespace TestPWA.JS
{


    class ReplaceJS
    {


        public static string ReplaceOld(string str, string old, string newToken, System.StringComparison comparison)
        {
            newToken = newToken ?? "";
            if (string.IsNullOrEmpty(str) || string.IsNullOrEmpty(old) || old.Equals(newToken, comparison))
                return str;

            int foundAt = 0;
            while ((foundAt = str.IndexOf(old, foundAt, comparison)) != -1)
            {
                str = str.Remove(foundAt, old.Length).Insert(foundAt, newToken);

                foundAt += newToken.Length;
            }

            return str;
        }


        public static string Replace(string str, string oldToken, string newToken, bool ignoreCase)
        {
            newToken = newToken ?? "";

            if (string.IsNullOrEmpty(str) || string.IsNullOrEmpty(oldToken))
                return str;

            if ((ignoreCase ? oldToken.ToLowerInvariant() : oldToken) == (ignoreCase ? newToken.ToLowerInvariant() : newToken))
                return str;

            int foundAt = 0;


            string ci = ignoreCase ? oldToken.ToLowerInvariant() : oldToken;

            while ((foundAt = ((ignoreCase ? str.ToLowerInvariant() : str)).IndexOf(ci, foundAt)) != -1)
            {
                str = str.Substring(0, foundAt) + newToken + str.Substring(foundAt + oldToken.Length);
                foundAt += newToken.Length;
            }

            return str;
        }



        public static string StripInvalid(string input)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            char[] invalid = new char[] { '"', '\'', '<', '>', '|', ':', '*', '?', '\\', '/' };

            foreach (char c in input)
            {
                if (-1 != System.Array.FindIndex(invalid, x => x == c))
                    continue;

                if (c > 31)
                    sb.Append(c);
            } // Next c 

            string ret = sb.ToString();
            sb.Length = 0;
            sb = null;

            return ret;
        } // End Function StripInvalid 


    }


}

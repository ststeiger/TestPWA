
namespace TestPWA
{
    // https://www.demo2s.com/java/java-uri-decodeuricomponent-string-input.html
    // https://github.com/cubao/naive-svg/blob/master/encodeURIComponent.hpp
    // https://www.w3schools.com/jsref/jsref_obj_global.asp

    // https://www.rosettacode.org/wiki/URL_decoding#C.23
    // https://docs.oracle.com/javase/6/docs/api/java/net/URLEncoder.html
    // https://docs.oracle.com/javase/6/docs/api/java/net/URLDecoder.html

    // https://github.com/openjdk-mirror/jdk7u-jdk/blob/master/src/share/classes/java/net/URLDecoder.java
    // https://github.com/openjdk-mirror/jdk7u-jdk/blob/master/src/share/classes/java/net/URLEncoder.java
    // https://github.com/akamai/BlazeDS/blob/master/modules/core/src/java/flex/messaging/util/URLDecoder.java
    // https://github.com/akamai/BlazeDS/blob/master/modules/core/src/java/flex/messaging/util/URLEncoder.java
    public class EcmaEncodeDecode
    {
        // decodeUriComponent
        // https://tc39.es/ecma262/multipage/global-object.html#sec-decode
        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/global_objects/decodeUriComponent
        // 1. Let componentString be? ToString(encodedURIComponent).
        // 2. Let reservedURIComponentSet be the empty String.
        // 3. Return? Decode(componentString, reservedURIComponentSet).

        // https://gist.github.com/arthurafarias/56fec2cd49a32f374c02d1df2b6c350f




        // https://stackoverflow.com/questions/687359/how-would-you-get-an-array-of-unicode-code-points-from-a-net-string
        public static int[] ToCodePoints(string str)
        {
            if (str == null)
                throw new System.ArgumentNullException("str");

            System.Collections.Generic.List<int> codePoints =
                new System.Collections.Generic.List<int>(str.Length);

            for (int i = 0; i < str.Length; i++)
            {
                codePoints.Add(char.ConvertToUtf32(str, i));
                if (char.IsHighSurrogate(str[i]))
                    i += 1;
            }

            return codePoints.ToArray();
        }

        public static int[] ToCodePointsSimple(string s)
        {
            byte[] utf32bytes = System.Text.Encoding.UTF32.GetBytes(s);
            int[] codepoints = new int[utf32bytes.Length / 4];
            System.Buffer.BlockCopy(utf32bytes, 0, codepoints, 0, utf32bytes.Length);
            return codepoints;
        }


        public static System.Collections.Generic.List<int> Utf32CodePoints(string ss)
        {
            char[] s = ss.ToCharArray();

            System.Collections.Generic.List<int> ls = new System.Collections.Generic.List<int>();

            bool useBigEndian = !System.BitConverter.IsLittleEndian;
            System.Text.Encoding utf32 = new System.Text.UTF32Encoding(useBigEndian, false, true);
            byte[] octets = utf32.GetBytes(s);

            for (int i = 0; i < octets.Length; i += 4)
            {
                int codePoint = System.BitConverter.ToInt32(octets, i);
                ls.Add(codePoint);
            }

            return ls;
        }



        public static bool IsInSet(char c, string unescapedSet)
        {
            foreach (char cc in unescapedSet)
            {
                if (c == cc)
                    return true;
            }

            return false;
        }


        public static string encodeURIComponent(string mystring)
        {
            // 2. Let unescapedURIComponentSet be a String containing one instance of each code unit valid in uriUnescaped.
            const string unescapedSet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.!~*'()";
            return encodeURIComponent(mystring, unescapedSet);
        }


        // encodeURIComponent 
        // https://tc39.es/ecma262/multipage/global-object.html#sec-encode
        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/global_objects/encodeURIComponent
        // 1. Let componentString be? ToString(uriComponent).
        // 2. Let unescapedURIComponentSet be a String containing one instance of each code unit valid in uriUnescaped.
        // 3. Return? Encode(componentString, unescapedURIComponentSet).

        // This syntax of Uniform Resource Identifiers is based upon RFC 2396
        // and does not reflect the more recent RFC 3986 which replaces RFC 2396.
        // A formal description and implementation of UTF-8 is given in RFC 3629.
        // RFC 3629 prohibits the decoding of invalid UTF-8 octet sequences.
        // For example, the invalid sequence C0 80 must not decode into the code unit 0x0000.
        // Implementations of the Decode algorithm are required to throw a URIError when encountering such invalid sequences.

        public static string encodeURIComponent(string mystring, string unescapedSet)
        {
            int strLen = mystring.Length;
            string R = "";
            int k = 0;

            while (k != strLen)
            {
                char c = mystring[k];

                if (IsInSet(c, unescapedSet))
                {
                    R += c.ToString();
                    ++k;
                }
                else
                {
                    // https://docs.microsoft.com/en-us/dotnet/standard/base-types/character-encoding-introduction
                    // A char instance represents a 16-bit code unit.
                    // NET uses UTF-16 to encode the text in a string
                    // https://en.wikipedia.org/wiki/UTF-16

                    // https://stackoverflow.com/questions/27331819/whats-the-difference-between-a-character-a-code-point-a-glyph-and-a-grapheme
                    // https://stackoverflow.com/questions/23751261/codepointat-equivalent-in-c-sharp
                    // if (!char.IsSurrogatePair(mystring, k)) throw new System.Exception("URIError");

                    bool isSurrogate = char.IsSurrogate(mystring, k);
                    if (isSurrogate && !char.IsSurrogatePair(mystring, k))
                        throw new System.Exception("URIError");

                    int codepointLength = isSurrogate ? 2 : 1;
                    byte[] octets = System.Text.Encoding.UTF8.GetBytes(mystring.Substring(k, codepointLength));
                    foreach (byte octet in octets)
                    {
                        R += "%" + octet.ToString("X2", System.Globalization.CultureInfo.InvariantCulture);
                        // R "%" the String representation of octet, formatted as a two - digit uppercase hexadecimal number, padded to the left with a zero if necessary
                    }

                    k += codepointLength;
                }

            } // Whend 

            return R;
        } // End Function encodeURIComponent 


        private static bool NeedsNoEscaping(char c)
        {
            foreach (char cc in "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@*_+-./")
            {
                if (c == cc) return true;
            }

            return false;
        }


        public static string escape(string mystring)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            int k = 0;
            int length = mystring.Length;
            while (k < length)
            {
                System.UInt16 n = mystring[k];

                if (NeedsNoEscaping(mystring[k]))
                {
                    sb.Append(mystring[k].ToString());
                }
                else if (n >= 256)
                {
                    //the String representation of n, formatted as a four-digit uppercase hexadecimal number, padded to the left with zeroes if necessary
                    sb.Append("%u");
                    sb.Append(n.ToString("X4", System.Globalization.CultureInfo.InvariantCulture));
                }
                else
                {
                    if (n > 255)
                        throw new System.InvalidOperationException("Assert char < 256");

                    // the String representation of n, formatted as a two - digit uppercase hexadecimal number, padded to the left with a zero if necessary
                    sb.Append("%");
                    sb.Append(n.ToString("X2", System.Globalization.CultureInfo.InvariantCulture));
                }

                k++;
            }

            return sb.ToString();
        }


    }


    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/escape
    // https://tc39.es/ecma262/multipage/additional-ecmascript-features-for-web-browsers.html#sec-escape-string
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/unescape
    // https://tc39.es/ecma262/multipage/additional-ecmascript-features-for-web-browsers.html#sec-unescape-string


    // The encoding is partly based on the encoding described in RFC 1738,
    // but the entire encoding specified in this standard is described above without regard to the contents of RFC 1738.
    // This encoding does not reflect changes to RFC 1738 made by RFC 3986.

}

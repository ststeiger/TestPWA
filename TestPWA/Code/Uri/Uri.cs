using System;

namespace TestPWA.Code.Uri
{


    public class UriParser2
    {
        public static bool DontEnableStrictRFC3986ReservedCharacterSets = false;
        public static bool ShouldUseLegacyV2Quirks = false;
        public static bool DontKeepUnicodeBidiFormattingCharacters = true;


    }


    // This enum specifies the Uri syntax flags that is understood by builtin Uri parser.
    [Flags]
    internal enum UriSyntaxFlags
    {
        None = 0x0,

        MustHaveAuthority = 0x1,  // must have "//" after scheme:
        OptionalAuthority = 0x2,  // used by generic parser due to unknown Uri syntax
        MayHaveUserInfo = 0x4,
        MayHavePort = 0x8,
        MayHavePath = 0x10,
        MayHaveQuery = 0x20,
        MayHaveFragment = 0x40,

        AllowEmptyHost = 0x80,
        AllowUncHost = 0x100,
        AllowDnsHost = 0x200,
        AllowIPv4Host = 0x400,
        AllowIPv6Host = 0x800,
        AllowAnInternetHost = AllowDnsHost | AllowIPv4Host | AllowIPv6Host,
        AllowAnyOtherHost = 0x1000, // Relaxed authority syntax

        FileLikeUri = 0x2000, //Special case to allow file:\\balbla or file://\\balbla
        MailToLikeUri = 0x4000, //V1 parser inheritance mailTo:AuthorityButNoSlashes

        V1_UnknownUri = 0x10000, // a Compatibility with V1 parser for an unknown scheme
        SimpleUserSyntax = 0x20000, // It is safe to not call virtual UriParser methods
        BuiltInSyntax = 0x40000, // This is a simple Uri plus it is hardcoded in the product
        ParserSchemeOnly = 0x80000, // This is a Parser that does only Uri scheme parsing

        AllowDOSPath = 0x100000,  // will check for "x:\"
        PathIsRooted = 0x200000,  // For an authority based Uri the first path char is '/'
        ConvertPathSlashes = 0x400000,  // will turn '\' into '/'
        CompressPath = 0x800000,  // For an authority based Uri remove/compress /./ /../ in the path
        CanonicalizeAsFilePath = 0x1000000, // remove/convert sequences /.../ /x../ /x./ dangerous for a DOS path
        UnEscapeDotsAndSlashes = 0x2000000, // additionally unescape dots and slashes before doing path compression
        AllowIdn = 0x4000000,    // IDN host conversion allowed
        AllowIriParsing = 0x10000000,   // Iri parsing. String is normalized, bidi control 
                                        // characters are removed, unicode char limits are checked etc.

        //      KeepTailLWS             = 0x8000000,
    }

    public class Uri
    {

        internal const char c_DummyChar = (char)0xFFFF;     //An Invalid Unicode character used as a dummy char passed into the parameter
        internal const char c_EOL = (char)0xFFFE;     //An Invalid Unicode character used by CheckCanonical as "no delimiter condition"
        internal const int c_MaxUriBufferSize = 0xFFF0;

        // Value from config Uri section
        // On by default in .NET 4.5+ and cannot be disabled by config.
        private static volatile bool s_IriParsing = (UriParser2.ShouldUseLegacyV2Quirks ? false : true);

        internal static bool IriParsingStatic(UriParser syntax)
        {
            // return (s_IriParsing && (((syntax != null) && syntax.InFact(UriSyntaxFlags.AllowIriParsing)) || (syntax == null)));
            return true;
        }


        //Only consider ASCII characters
        private static bool IsAsciiLetter(char character)
        {

            return (character >= 'a' && character <= 'z') ||
                   (character >= 'A' && character <= 'Z');
        }

        internal static bool IsAsciiLetterOrDigit(char character)
        {
            return IsAsciiLetter(character) || (character >= '0' && character <= '9');
        }


        // Is this a Bidirectional control char.. These get stripped
        internal static bool IsBidiControlCharacter(char ch)
        {
            return (ch == '\u200E' /*LRM*/ || ch == '\u200F' /*RLM*/ || ch == '\u202A' /*LRE*/ ||
                    ch == '\u202B' /*RLE*/ || ch == '\u202C' /*PDF*/ || ch == '\u202D' /*LRO*/ ||
                    ch == '\u202E' /*RLO*/);
        }


        //
        // Is this a gen delim char from RFC 3986
        //
        internal static bool IsGenDelim(char ch)
        {
            return (ch == ':' || ch == '/' || ch == '?' || ch == '#' || ch == '[' || ch == ']' || ch == '@');
        }


        // Where stringToEscape is intended to be URI data, but not an entire URI.
        // This method will escape any character that is not an unreserved character, including percent signs.
        //
        public static string EscapeDataString(string stringToEscape)
        {
            if ((object)stringToEscape == null)
                throw new ArgumentNullException("stringToEscape");

            if (stringToEscape.Length == 0)
                return string.Empty;

            int position = 0;
            char[] dest = UriHelper.EscapeString(stringToEscape, 0, stringToEscape.Length, null, ref position, false,
                c_DummyChar, c_DummyChar, c_DummyChar);
            if (dest == null)
                return stringToEscape;
            return new string(dest, 0, position);
        }



        //
        // Where stringToEscape is intented to be a completely unescaped URI string.
        // This method will escape any character that is not a reserved or unreserved character, including percent signs.
        // Note that EscapeUriString will also do not escape a '#' sign.
        //
        public static string EscapeUriString(string stringToEscape)
        {
            if ((object)stringToEscape == null)
                throw new ArgumentNullException("stringToEscape");

            if (stringToEscape.Length == 0)
                return string.Empty;

            int position = 0;
            char[] dest = UriHelper.EscapeString(stringToEscape, 0, stringToEscape.Length, null, ref position, true,
                c_DummyChar, c_DummyChar, c_DummyChar);
            if ((object)dest == null)
                return stringToEscape;
            return new string(dest, 0, position);
        }
        //

    }
}

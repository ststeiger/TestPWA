
/*************************************************************************
 *
 * ADOBE CONFIDENTIAL
 * __________________
 *
 *  Copyright 2002 - 2007 Adobe Systems Incorporated
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Adobe Systems Incorporated and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Adobe Systems Incorporated
 * and its suppliers and may be covered by U.S. and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Adobe Systems Incorporated.
 **************************************************************************/
//package flex.messaging.util;

//import java.io.BufferedWriter;
//import java.io.ByteArrayOutputStream;
//import java.io.IOException;
//import java.io.OutputStreamWriter;
//import java.io.UnsupportedEncodingException;


using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestPWA
{

    class Character
    {
        public const int MIN_RADIX = 2;
        public const int MAX_RADIX = 36;


        public static bool NeedsNoEscaping(char c)
        {
            foreach (char cc in "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@*_+-./")
            {
                if (c == cc) return true;
            }

            return false;
        }

        public static char forDigit(int digit, int radix)
        {
            if (radix < MIN_RADIX || radix > MAX_RADIX)
                throw new ArgumentOutOfRangeException("radix");

            if (digit < 0 || digit >= radix)
                throw new ArgumentOutOfRangeException("digit");

            if (digit < 10)
                return (char)(digit + (int)'0');

            return (char)(digit - 10 + (int)'a');
        }


        public static char ForDigit(System.UInt16 digit, int radix)
        {
            if (radix < MIN_RADIX || radix > MAX_RADIX)
                throw new ArgumentOutOfRangeException("radix");

            if (digit < 0 || digit >= radix)
                throw new ArgumentOutOfRangeException("digit");

            if (digit < 10)
                return (char)(digit + (int)'0');

            return (char)(digit - 10 + (int)'A');
        }
    }



    // Utility class for URL encoding.
    public class URLEncoder
    {

        public static string encode(String s)
        {
            const string charset = "utf-8";

            try
            {
                return encode(s, charset);
            }
            catch (System.Exception ex)
            {
                throw new System.ArgumentException(charset);
            }
        }

        public static string encode(String s, string enc) //throws UnsupportedEncodingException
        {
            if (!needsEncoding(s))
            {
                return s;
            }

            int length = s.Length;

            System.Text.StringBuilder @out = new System.Text.StringBuilder(length);

            System.IO.MemoryStream buf = new System.IO.MemoryStream(10); // why 10? w3c says so.
            System.Text.Encoding encc = System.Text.Encoding.GetEncoding(enc);
            System.IO.TextWriter writer = new System.IO.StreamWriter(buf, encc);

            for (int i = 0; i < length; i++)
            {
                int c = (int)s[i];
                if (c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z' || c >= '0' && c <= '9' || c == ' ')
                {
                    if (c == ' ')
                    {
                        c = '+';
                    }

                    toHex(@out, buf.ToArray());
                    buf.SetLength(0);

                    @out.Append((char)c);
                }
                else
                {
                    try
                    {
                        writer.Write(c);

                        if (c >= 0xD800 && c <= 0xDBFF && i < length - 1)
                        {
                            int d = (int)s[i+1];
                            if (d >= 0xDC00 && d <= 0xDFFF)
                            {
                                writer.Write(d);
                                i++;
                            }
                        }

                        writer.Flush();
                    }
                    catch (System.IO.IOException ex)
                    {
                        throw new System.ArgumentException(s);
                    }
                }
            }
            try
            {
                writer.Close();
            }
            catch (System.IO.IOException ioe)
            {
                // Ignore exceptions on close.
            }

            toHex(@out, buf.ToArray());

            return @out.ToString();
        }

        private static void toHex(System.Text.StringBuilder buffer, byte[] b)
        {
            for (int i = 0; i < b.Length; i++)
            {
                buffer.Append('%');

                char ch = Character.forDigit( (b[i] >> 4) & 0xF, 16);
                if (char.IsLetter(ch))
                {
                    ch = (char)((int)ch - 32);
                }
                buffer.Append(ch);

                ch = Character.forDigit(b[i] & 0xF, 16);

                if (char.IsLetter(ch))
                {
                    ch = (char)((int)ch - 32);
                }
                buffer.Append(ch);
            }
        }

        private static bool needsEncoding(String s)
        {
            if (s == null)
            {
                return false;
            }

            int length = s.Length;

            for (int i = 0; i < length; i++)
            {
                int c = (int)s[i];
                if (c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z' || c >= '0' && c <= '9')
                {
                    // keep going
                }
                else
                {
                    return true;
                }
            }

            return false;
        }
    }

}

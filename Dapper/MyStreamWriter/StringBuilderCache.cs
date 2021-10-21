// ==++==
// 
//   Copyright (c) Microsoft Corporation.  All rights reserved.
// 
// ==--==
/*============================================================
**
** Class:  StringBuilderCache
**
** Purpose: provide a cached reusable instance of stringbuilder
**          per thread  it's an optimisation that reduces the 
**          number of instances constructed and collected.
**
**  Acquire - is used to get a string builder to use of a 
**            particular size.  It can be called any number of 
**            times, if a stringbuilder is in the cache then
**            it will be returned and the cache emptied.
**            subsequent calls will return a new stringbuilder.
**
**            A StringBuilder instance is cached in 
**            Thread Local Storage and so there is one per thread
**
**  Release - Place the specified builder in the cache if it is 
**            not too big.
**            The stringbuilder should not be used after it has 
**            been released.
**            Unbalanced Releases are perfectly acceptable.  It
**            will merely cause the runtime to create a new 
**            stringbuilder next time Acquire is called.
**
**  GetStringAndRelease
**          - ToString() the stringbuilder, Release it to the 
**            cache and return the resulting string
**
===========================================================*/

namespace Dapper 
{
    
    using System;
    using System.Text;

    internal static class AppendFormatHelperExtensions 
    {
        private static void FormatError()
        {
            throw new FormatException("Format_InvalidString");
        }

        internal static StringBuilder AppendFormatHelper(this System.Text.StringBuilder sb, IFormatProvider provider, String format, ParamsArray args)
        {
            if (sb == null)
            {
                throw new ArgumentNullException("sb");
            }

            if (format == null)
            {
                throw new ArgumentNullException("format");
            }
            
            int pos = 0;
            int len = format.Length;
            char ch = '\x0';

            ICustomFormatter cf = null;
            if (provider != null)
            {
                cf = (ICustomFormatter)provider.GetFormat(typeof(ICustomFormatter));
            }

            while (true)
            {
                int p = pos;
                int i = pos;
                while (pos < len)
                {
                    ch = format[pos];

                    pos++;
                    if (ch == '}')
                    {
                        if (pos < len && format[pos] == '}') // Treat as escape character for }}
                            pos++;
                        else
                            FormatError();
                    }

                    if (ch == '{')
                    {
                        if (pos < len && format[pos] == '{') // Treat as escape character for {{
                            pos++;
                        else
                        {
                            pos--;
                            break;
                        }
                    }
                    
                    sb.Append(ch);
                }

                if (pos == len) break;
                pos++;
                if (pos == len || (ch = format[pos]) < '0' || ch > '9') FormatError();
                int index = 0;
                do
                {
                    index = index * 10 + ch - '0';
                    pos++;
                    if (pos == len) FormatError();
                    ch = format[pos];
                } while (ch >= '0' && ch <= '9' && index < 1000000);
                if (index >= args.Length) throw new FormatException("Format_IndexOutOfRange");
                while (pos < len && (ch = format[pos]) == ' ') pos++;
                bool leftJustify = false;
                int width = 0;
                if (ch == ',')
                {
                    pos++;
                    while (pos < len && format[pos] == ' ') pos++;

                    if (pos == len) FormatError();
                    ch = format[pos];
                    if (ch == '-')
                    {
                        leftJustify = true;
                        pos++;
                        if (pos == len) FormatError();
                        ch = format[pos];
                    }
                    if (ch < '0' || ch > '9') FormatError();
                    do
                    {
                        width = width * 10 + ch - '0';
                        pos++;
                        if (pos == len) FormatError();
                        ch = format[pos];
                    } while (ch >= '0' && ch <= '9' && width < 1000000);
                }

                while (pos < len && (ch = format[pos]) == ' ') pos++;
                Object arg = args[index];
                StringBuilder fmt = null;
                if (ch == ':')
                {
                    pos++;
                    p = pos;
                    i = pos;
                    while (true)
                    {
                        if (pos == len) FormatError();
                        ch = format[pos];
                        pos++;
                        if (ch == '{')
                        {
                            if (pos < len && format[pos] == '{')  // Treat as escape character for {{
                                pos++;
                            else
                                FormatError();
                        }
                        else if (ch == '}')
                        {
                            if (pos < len && format[pos] == '}')  // Treat as escape character for }}
                                pos++;
                            else
                            {
                                pos--;
                                break;
                            }
                        }

                        if (fmt == null)
                        {
                            fmt = new StringBuilder();
                        }
                        fmt.Append(ch);
                    }
                }
                if (ch != '}') FormatError();
                pos++;
                String sFmt = null;
                String s = null;
                if (cf != null)
                {
                    if (fmt != null)
                    {
                        sFmt = fmt.ToString();
                    }
                    s = cf.Format(sFmt, arg, provider);
                }

                if (s == null)
                {
                    IFormattable formattableArg = arg as IFormattable;

                    if (formattableArg != null)
                    {
                        if (sFmt == null && fmt != null)
                        {
                            sFmt = fmt.ToString();
                        }

                        s = formattableArg.ToString(sFmt, provider);
                    }
                    else if (arg != null)
                    {
                        s = arg.ToString();
                    }
                }

                if (s == null) s = String.Empty;
                int pad = width - s.Length;
                if (!leftJustify && pad > 0) sb.Append(' ', pad);
                sb.Append(s);
                if (leftJustify && pad > 0) sb.Append(' ', pad);
            }
            return sb;
        }


    }


    internal static class StringBuilderCache
    {
        // The value 360 was chosen in discussion with performance experts as a compromise between using
        // as litle memory (per thread) as possible and still covering a large part of short-lived
        // StringBuilder creations on the startup path of VS designers.
        private const int MAX_BUILDER_SIZE = 360;


        internal const int DefaultCapacity = 16;

        [ThreadStatic]
        private static StringBuilder CachedInstance;

        public static StringBuilder Acquire(int capacity = StringBuilderCache.DefaultCapacity)
        {
            if (capacity <= MAX_BUILDER_SIZE)
            {
                StringBuilder sb = StringBuilderCache.CachedInstance;
                if (sb != null)
                {
                    // Avoid stringbuilder block fragmentation by getting a new StringBuilder
                    // when the requested size is larger than the current capacity
                    if (capacity <= sb.Capacity)
                    {
                        StringBuilderCache.CachedInstance = null;
                        sb.Clear();
                        return sb;
                    }
                }
            }
            return new StringBuilder(capacity);
        }

        public static void Release(StringBuilder sb)
        {
            if (sb.Capacity <= MAX_BUILDER_SIZE)
            {
                StringBuilderCache.CachedInstance = sb;
            }
        }

        public static string GetStringAndRelease(StringBuilder sb)
        {
            string result = sb.ToString();
            Release(sb);
            return result;
        }
    }
}
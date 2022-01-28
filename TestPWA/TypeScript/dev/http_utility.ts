
"use strict";


export function htmlEncode(s: string): string 
{
    if (s == null)
        return null;

    if (s.length == 0)
        return s;

    let needEncode: boolean = false;
    for (let i = 0; i < s.length; i++)
    {
        let c = s[i];
        if (c == '&' || c == '"' || c == '<' || c == '>' || c.charCodeAt(0) > 159
            || c == '\''
        )
        {
            needEncode = true;
            break;
        }
    }

    if (!needEncode)
        return s;

    let output: string[] = [];
    let len = s.length;

    for (let i = 0; i < len; i++)
    {
        let ch = s[i];
        switch (ch)
        {
            case '&':
                output.push("&amp;");
                break;
            case '>':
                output.push("&gt;");
                break;
            case '<':
                output.push("&lt;");
                break;
            case '"':
                output.push("&quot;");
                break;
            case '\'':
                output.push("&#39;");
                break;
            case '\uff1c':
                output.push("&#65308;");
                break;

            case '\uff1e':
                output.push("&#65310;");
                break;

            default:
                if (ch.charCodeAt(0) > 159 && ch.charCodeAt(0) < 256)
                {
                    output.push("&#");
                    output.push(ch.charCodeAt(0).toString());
                    output.push(";");
                }
                else
                    output.push(ch);
                break;
        }
    }

    return output.join("");
}




export function htmlDecode(s: string): string
{
    if (s == null)
        return null;

    if (s.length == 0)
        return "";

    if (s.indexOf('&') == -1)
        return s;

    function isDigit(str: string)
    {
        return /^\d+$/.test(str);
    }

    function isHexDigit(str: string)
    {
        return /[0-9A-Fa-f]{6}/g.test(str);
    }

    function initEntities()
    {
        // Build the hash table of HTML entity references.  This list comes
        // from the HTML 4.01 W3C recommendation.
        let entities: any = {};

        entities["nbsp"] = '\u00A0';
        entities["iexcl"] = '\u00A1';
        entities["cent"] = '\u00A2';
        entities["pound"] = '\u00A3';
        entities["curren"] = '\u00A4';
        entities["yen"] = '\u00A5';
        entities["brvbar"] = '\u00A6';
        entities["sect"] = '\u00A7';
        entities["uml"] = '\u00A8';
        entities["copy"] = '\u00A9';
        entities["ordf"] = '\u00AA';
        entities["laquo"] = '\u00AB';
        entities["not"] = '\u00AC';
        entities["shy"] = '\u00AD';
        entities["reg"] = '\u00AE';
        entities["macr"] = '\u00AF';
        entities["deg"] = '\u00B0';
        entities["plusmn"] = '\u00B1';
        entities["sup2"] = '\u00B2';
        entities["sup3"] = '\u00B3';
        entities["acute"] = '\u00B4';
        entities["micro"] = '\u00B5';
        entities["para"] = '\u00B6';
        entities["middot"] = '\u00B7';
        entities["cedil"] = '\u00B8';
        entities["sup1"] = '\u00B9';
        entities["ordm"] = '\u00BA';
        entities["raquo"] = '\u00BB';
        entities["frac14"] = '\u00BC';
        entities["frac12"] = '\u00BD';
        entities["frac34"] = '\u00BE';
        entities["iquest"] = '\u00BF';
        entities["Agrave"] = '\u00C0';
        entities["Aacute"] = '\u00C1';
        entities["Acirc"] = '\u00C2';
        entities["Atilde"] = '\u00C3';
        entities["Auml"] = '\u00C4';
        entities["Aring"] = '\u00C5';
        entities["AElig"] = '\u00C6';
        entities["Ccedil"] = '\u00C7';
        entities["Egrave"] = '\u00C8';
        entities["Eacute"] = '\u00C9';
        entities["Ecirc"] = '\u00CA';
        entities["Euml"] = '\u00CB';
        entities["Igrave"] = '\u00CC';
        entities["Iacute"] = '\u00CD';
        entities["Icirc"] = '\u00CE';
        entities["Iuml"] = '\u00CF';
        entities["ETH"] = '\u00D0';
        entities["Ntilde"] = '\u00D1';
        entities["Ograve"] = '\u00D2';
        entities["Oacute"] = '\u00D3';
        entities["Ocirc"] = '\u00D4';
        entities["Otilde"] = '\u00D5';
        entities["Ouml"] = '\u00D6';
        entities["times"] = '\u00D7';
        entities["Oslash"] = '\u00D8';
        entities["Ugrave"] = '\u00D9';
        entities["Uacute"] = '\u00DA';
        entities["Ucirc"] = '\u00DB';
        entities["Uuml"] = '\u00DC';
        entities["Yacute"] = '\u00DD';
        entities["THORN"] = '\u00DE';
        entities["szlig"] = '\u00DF';
        entities["agrave"] = '\u00E0';
        entities["aacute"] = '\u00E1';
        entities["acirc"] = '\u00E2';
        entities["atilde"] = '\u00E3';
        entities["auml"] = '\u00E4';
        entities["aring"] = '\u00E5';
        entities["aelig"] = '\u00E6';
        entities["ccedil"] = '\u00E7';
        entities["egrave"] = '\u00E8';
        entities["eacute"] = '\u00E9';
        entities["ecirc"] = '\u00EA';
        entities["euml"] = '\u00EB';
        entities["igrave"] = '\u00EC';
        entities["iacute"] = '\u00ED';
        entities["icirc"] = '\u00EE';
        entities["iuml"] = '\u00EF';
        entities["eth"] = '\u00F0';
        entities["ntilde"] = '\u00F1';
        entities["ograve"] = '\u00F2';
        entities["oacute"] = '\u00F3';
        entities["ocirc"] = '\u00F4';
        entities["otilde"] = '\u00F5';
        entities["ouml"] = '\u00F6';
        entities["divide"] = '\u00F7';
        entities["oslash"] = '\u00F8';
        entities["ugrave"] = '\u00F9';
        entities["uacute"] = '\u00FA';
        entities["ucirc"] = '\u00FB';
        entities["uuml"] = '\u00FC';
        entities["yacute"] = '\u00FD';
        entities["thorn"] = '\u00FE';
        entities["yuml"] = '\u00FF';
        entities["fnof"] = '\u0192';
        entities["Alpha"] = '\u0391';
        entities["Beta"] = '\u0392';
        entities["Gamma"] = '\u0393';
        entities["Delta"] = '\u0394';
        entities["Epsilon"] = '\u0395';
        entities["Zeta"] = '\u0396';
        entities["Eta"] = '\u0397';
        entities["Theta"] = '\u0398';
        entities["Iota"] = '\u0399';
        entities["Kappa"] = '\u039A';
        entities["Lambda"] = '\u039B';
        entities["Mu"] = '\u039C';
        entities["Nu"] = '\u039D';
        entities["Xi"] = '\u039E';
        entities["Omicron"] = '\u039F';
        entities["Pi"] = '\u03A0';
        entities["Rho"] = '\u03A1';
        entities["Sigma"] = '\u03A3';
        entities["Tau"] = '\u03A4';
        entities["Upsilon"] = '\u03A5';
        entities["Phi"] = '\u03A6';
        entities["Chi"] = '\u03A7';
        entities["Psi"] = '\u03A8';
        entities["Omega"] = '\u03A9';
        entities["alpha"] = '\u03B1';
        entities["beta"] = '\u03B2';
        entities["gamma"] = '\u03B3';
        entities["delta"] = '\u03B4';
        entities["epsilon"] = '\u03B5';
        entities["zeta"] = '\u03B6';
        entities["eta"] = '\u03B7';
        entities["theta"] = '\u03B8';
        entities["iota"] = '\u03B9';
        entities["kappa"] = '\u03BA';
        entities["lambda"] = '\u03BB';
        entities["mu"] = '\u03BC';
        entities["nu"] = '\u03BD';
        entities["xi"] = '\u03BE';
        entities["omicron"] = '\u03BF';
        entities["pi"] = '\u03C0';
        entities["rho"] = '\u03C1';
        entities["sigmaf"] = '\u03C2';
        entities["sigma"] = '\u03C3';
        entities["tau"] = '\u03C4';
        entities["upsilon"] = '\u03C5';
        entities["phi"] = '\u03C6';
        entities["chi"] = '\u03C7';
        entities["psi"] = '\u03C8';
        entities["omega"] = '\u03C9';
        entities["thetasym"] = '\u03D1';
        entities["upsih"] = '\u03D2';
        entities["piv"] = '\u03D6';
        entities["bull"] = '\u2022';
        entities["hellip"] = '\u2026';
        entities["prime"] = '\u2032';
        entities["Prime"] = '\u2033';
        entities["oline"] = '\u203E';
        entities["frasl"] = '\u2044';
        entities["weierp"] = '\u2118';
        entities["image"] = '\u2111';
        entities["real"] = '\u211C';
        entities["trade"] = '\u2122';
        entities["alefsym"] = '\u2135';
        entities["larr"] = '\u2190';
        entities["uarr"] = '\u2191';
        entities["rarr"] = '\u2192';
        entities["darr"] = '\u2193';
        entities["harr"] = '\u2194';
        entities["crarr"] = '\u21B5';
        entities["lArr"] = '\u21D0';
        entities["uArr"] = '\u21D1';
        entities["rArr"] = '\u21D2';
        entities["dArr"] = '\u21D3';
        entities["hArr"] = '\u21D4';
        entities["forall"] = '\u2200';
        entities["part"] = '\u2202';
        entities["exist"] = '\u2203';
        entities["empty"] = '\u2205';
        entities["nabla"] = '\u2207';
        entities["isin"] = '\u2208';
        entities["notin"] = '\u2209';
        entities["ni"] = '\u220B';
        entities["prod"] = '\u220F';
        entities["sum"] = '\u2211';
        entities["minus"] = '\u2212';
        entities["lowast"] = '\u2217';
        entities["radic"] = '\u221A';
        entities["prop"] = '\u221D';
        entities["infin"] = '\u221E';
        entities["ang"] = '\u2220';
        entities["and"] = '\u2227';
        entities["or"] = '\u2228';
        entities["cap"] = '\u2229';
        entities["cup"] = '\u222A';
        entities["int"] = '\u222B';
        entities["there4"] = '\u2234';
        entities["sim"] = '\u223C';
        entities["cong"] = '\u2245';
        entities["asymp"] = '\u2248';
        entities["ne"] = '\u2260';
        entities["equiv"] = '\u2261';
        entities["le"] = '\u2264';
        entities["ge"] = '\u2265';
        entities["sub"] = '\u2282';
        entities["sup"] = '\u2283';
        entities["nsub"] = '\u2284';
        entities["sube"] = '\u2286';
        entities["supe"] = '\u2287';
        entities["oplus"] = '\u2295';
        entities["otimes"] = '\u2297';
        entities["perp"] = '\u22A5';
        entities["sdot"] = '\u22C5';
        entities["lceil"] = '\u2308';
        entities["rceil"] = '\u2309';
        entities["lfloor"] = '\u230A';
        entities["rfloor"] = '\u230B';
        entities["lang"] = '\u2329';
        entities["rang"] = '\u232A';
        entities["loz"] = '\u25CA';
        entities["spades"] = '\u2660';
        entities["clubs"] = '\u2663';
        entities["hearts"] = '\u2665';
        entities["diams"] = '\u2666';
        entities["quot"] = '\u0022';
        entities["amp"] = '\u0026';
        entities["lt"] = '\u003C';
        entities["gt"] = '\u003E';
        entities["OElig"] = '\u0152';
        entities["oelig"] = '\u0153';
        entities["Scaron"] = '\u0160';
        entities["scaron"] = '\u0161';
        entities["Yuml"] = '\u0178';
        entities["circ"] = '\u02C6';
        entities["tilde"] = '\u02DC';
        entities["ensp"] = '\u2002';
        entities["emsp"] = '\u2003';
        entities["thinsp"] = '\u2009';
        entities["zwnj"] = '\u200C';
        entities["zwj"] = '\u200D';
        entities["lrm"] = '\u200E';
        entities["rlm"] = '\u200F';
        entities["ndash"] = '\u2013';
        entities["mdash"] = '\u2014';
        entities["lsquo"] = '\u2018';
        entities["rsquo"] = '\u2019';
        entities["sbquo"] = '\u201A';
        entities["ldquo"] = '\u201C';
        entities["rdquo"] = '\u201D';
        entities["bdquo"] = '\u201E';
        entities["dagger"] = '\u2020';
        entities["Dagger"] = '\u2021';
        entities["permil"] = '\u2030';
        entities["lsaquo"] = '\u2039';
        entities["rsaquo"] = '\u203A';
        entities["euro"] = '\u20AC';

        return entities;
    }

    let Entities: any = initEntities();


    let rawEntity: string[] = [];
    let entity: string[] = [];
    let output: string[] = [];
    let len = s.length;
    // 0 -> nothing,
    // 1 -> right after '&'
    // 2 -> between '&' and ';' but no '#'
    // 3 -> '#' found after '&' and getting numbers
    let state = 0;
    let number = 0;
    let is_hex_value = false;
    let have_trailing_digits = false;

    for (let i = 0; i < len; i++)
    {
        let c = s[i];
        if (state == 0)
        {
            if (c == '&')
            {
                entity.push(c);
                rawEntity.push(c);
                state = 1;
            }
            else
            {
                output.push(c);
            }
            continue;
        }

        if (c == '&')
        {
            state = 1;
            if (have_trailing_digits)
            {
                entity.push(number.toString());
                have_trailing_digits = false;
            }

            output.push(entity.join(""));
            entity = [];
            entity.push('&');
            continue;
        }

        if (state == 1)
        {
            if (c == ';')
            {
                state = 0;
                output.push(entity.join(""));
                output.push(c);
                entity = [];
            }
            else
            {
                number = 0;
                is_hex_value = false;
                if (c != '#')
                {
                    state = 2;
                }
                else
                {
                    state = 3;
                }
                entity.push(c);
                rawEntity.push(c);
            }
        }
        else if (state == 2)
        {
            entity.push(c);
            if (c == ';')
            {
                let key: string = entity.join("");
                if (key.length > 1 && Entities.hasOwnProperty(key.substr(1, key.length - 2)))
                    key = Entities[key.substr(1, key.length - 2)].toString();

                output.push(key);
                state = 0;
                entity = [];
                rawEntity = [];
            }
        }
        else if (state == 3)
        {
            if (c == ';')
            {
                if (number == 0)
                    output.push(rawEntity.join("") + ";");
                else
                    if (number > 65535)
                    {
                        output.push("&#");
                        output.push(number.toString());
                        output.push(";");
                    }
                    else
                    {
                        output.push(String.fromCharCode(number));
                    }
                state = 0;
                entity = [];
                rawEntity = [];
                have_trailing_digits = false;
            }
            else if (is_hex_value && isHexDigit(c))
            {
                number = number * 16 + parseInt(c, 16);
                have_trailing_digits = true;
                rawEntity.push(c);
            }
            else if (isDigit(c))
            {
                number = number * 10 + (c.charCodeAt(0) - '0'.charCodeAt(0));
                have_trailing_digits = true;
                rawEntity.push(c);
            }
            else if (number == 0 && (c == 'x' || c == 'X'))
            {
                is_hex_value = true;
                rawEntity.push(c);
            }
            else
            {
                state = 2;
                if (have_trailing_digits)
                {
                    entity.push(number.toString());
                    have_trailing_digits = false;
                }
                entity.push(c);
            }
        }
    }

    if (entity.length > 0)
    {
        output.push(entity.join(""));
    }
    else if (have_trailing_digits)
    {
        output.push(number.toString());
    }
    return output.join("");
}




export function htmlAttributeEncode(s: string): string
{
    if (!s)
        return "";

    let needEncode: boolean = false;
    for (let i = 0; i < s.length; i++)
    {
        let c = s[i];
        if (c == '&' || c == '"' || c == '<' || c == '\'')
        {
            needEncode = true;
            break;
        }
    }

    if (!needEncode)
        return s;

    let output: string[] = [];
    let len = s.length;

    for (let i = 0; i < len; i++)
    {
        let ch = s[i];
        switch (ch)
        {
            case '&':
                output.push("&amp;");
                break;
            case '"':
                output.push("&quot;");
                break;
            case '<':
                output.push("&lt;");
                break;
            case '\'':
                output.push("&#39;");
                break;
            default:
                output.push(ch);
                break;
        }
    }

    return output.join("");
}


function replace(str: string, oldToken: string, newToken: string)
{
    if (!str)
        return str;

    let foundAt = 0;
    while ((foundAt = str.indexOf(oldToken, foundAt)) != -1)
    {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }

    return str;
}




export function htmlAttributeDecode(s: string): string
{
    let len = s.length;
    let output: string[] = [];

    s = replace(s,'&#39;', '\'');
    s = replace(s, '&lt;', '<');
    s = replace(s, '&quot;', '"');
    s = replace(s, '&amp;', '&');

    return s;
}



export function javaScriptStringEncode(value: string, addDoubleQuotes?: boolean): string
{
    addDoubleQuotes = addDoubleQuotes || false;


    if (!value)
        return addDoubleQuotes ? "\"\"" : "";

    let len = value.length;
    let needEncode = false;
    let c;
    for (let i = 0; i < len; i++)
    {
        c = value[i];
        let cc = c.charCodeAt(0);

        if (cc >= 0 && cc <= 31 || cc == 34 || cc == 39 || cc == 60 || cc == 62 || cc == 92)
        {
            needEncode = true;
            break;
        }
    }

    if (!needEncode)
        return addDoubleQuotes ? "\"" + value + "\"" : value;

    let sb: string[] = [];
    if (addDoubleQuotes)
        sb.push('"');

    for (let i = 0; i < len; i++)
    {
        c = value[i];
        let cc = c.charCodeAt(0);

        if (cc >= 0 && cc <= 7 || cc == 11 || cc >= 14 && cc <= 31 || cc == 39 || cc == 60 || cc == 62)
        {
            let t = "0000" + cc.toString(16);
            t = "\\u" + t.substr(t.length - 4);
            sb.push(t);
        }
        else switch (cc)
        {
            case 8:
                sb.push("\\b");
                break;
            case 9:
                sb.push("\\t");
                break;
            case 10:
                sb.push("\\n");
                break;
            case 12:
                sb.push("\\f");
                break;
            case 13:
                sb.push("\\r");
                break;
            case 34:
                sb.push("\\\"");
                break;
            case 92:
                sb.push("\\\\");
                break;
            default:
                sb.push(c);
                break;
        }
    }

    if (addDoubleQuotes)
        sb.push('"');

    return sb.join("");
}


// https://stackoverflow.com/questions/18729405/how-to-convert-utf8-string-to-byte-array
function toUTF8Array(str: string): number[]
{
    let utf8 = [];
    for (let i = 0; i < str.length; i++)
    {
        let charcode = str.charCodeAt(i);
        if (charcode < 0x80) utf8.push(charcode);
        else if (charcode < 0x800)
        {
            utf8.push(0xc0 | (charcode >> 6),
                0x80 | (charcode & 0x3f));
        }
        else if (charcode < 0xd800 || charcode >= 0xe000)
        {
            utf8.push(0xe0 | (charcode >> 12),
                0x80 | ((charcode >> 6) & 0x3f),
                0x80 | (charcode & 0x3f));
        }
        // surrogate pair
        else
        {
            i++;
            // UTF-16 encodes 0x10000-0x10FFFF by
            // subtracting 0x10000 and splitting the
            // 20 bits of 0x0-0xFFFFF into two halves
            charcode = 0x10000 + (((charcode & 0x3ff) << 10)
                | (str.charCodeAt(i) & 0x3ff));
            utf8.push(0xf0 | (charcode >> 18),
                0x80 | ((charcode >> 12) & 0x3f),
                0x80 | ((charcode >> 6) & 0x3f),
                0x80 | (charcode & 0x3f));
        }
    }
    return utf8;
}


export function urlPathEncode(value: string): string
{
    if (!value)
        return value;

    let result: string[] = [];

    function UrlPathEncodeChar(c: string)
    {
        let hexChars: string[] = "0123456789abcdef".split('');
        let cc = c.charCodeAt(0);

        if (cc < 33 || cc > 126)
        {
            let bIn: number[] = toUTF8Array(c);
            for (let i = 0; i < bIn.length; i++)
            {
                result.push('%');
                let idx = (bIn[i]) >> 4;
                result.push(hexChars[idx]);
                idx = (bIn[i]) & 0x0F;
                result.push(hexChars[idx]);
            }
        }
        else if (c == ' ')
        {
            result.push('%20');
        }
        else
            result.push(c);
    }

    let length = value.length;
    for (let j = 0; j < length; j++)
        UrlPathEncodeChar(value[j]);

    return result.join("");
}

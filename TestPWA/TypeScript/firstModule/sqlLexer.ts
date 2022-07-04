
enum SqlKeywordType 
{
    Reserved = 0,
    Function = 1,
    Operator = 2,
    From = 3,
    Identifier = 4,
    String = 5,
    Number = 6,
    Separator = 7,
    Comment = 8,
    OpenBracket = 9,
    CloseBracket = 10,
    Go = 11,
    Unknown = 12
}


enum SqlSyntaxTokenType
{
    String,
    DashComment,
    SlashComment,
    ScriptSeparator,
    StatementSeparator,
    QuotedIdentifier,
    SingleArgumentOperator,
    DoubleArgumentOperator,
    Undefined
}




// https://github.com/emn178/js-htmlencode/blob/master/src/htmlencode.js

function htmlEnc(s: string): string
{
    return s.replace(/&/g, '&amp;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;')
        .replace(/'/g, '&#39;')
        .replace(/"/g, '&#34;');
}

function htmlEncodeWithCharCode(string:string)
{
    let buffer = [];

    for (let i = string.length - 1; i >= 0; i--)
    {
        // Both methods change the length of the array 
        // by the number of elements added to the array. 
        // Both method changes the original array. 
        // Both method returns the newly added element
        // The little difference is that unshift() method adds the element at 0 index 
        // and all the values get shifted by 1 by ultimately returning the length of the array. 
        // The push() method returns the last element adding a new element from the last index. 
        buffer.unshift(['&#', string.charCodeAt(i), ';'].join(''));
    }

    return buffer.join('');
}

function htmlEncodeWithTextNode(text:string)
{
    let ta = document.createElement('textarea');
    let tn = document.createTextNode(text);
    ta.appendChild(tn);
    return ta.innerHTML;
}


// https://www.delftstack.com/howto/javascript/htmlencode-javascript/
// https://github.com/mathiasbynens/he/blob/master/he.js
// console.log(htmlEncodeWithCharCode("<h1>Hello world</h1>"));


function stringEquals(a: string, b: string)
{
    if (a == null && b == null)
        return true;

    if (a == null || b == null)
        return false;

    return a.toLowerCase() === b.toLowerCase();
}



class SqlStringBuilder
{

    protected m_list: string[];


    constructor()
    {
        this.m_list = [];
        this.Append = this.Append.bind(this);
        this.AppendLine = this.AppendLine.bind(this);
        this.ToString = this.ToString.bind(this);
    }


    public Clear()
    {
        this.m_list = null;
        this.m_list = [];
    }


    public Append(text: string)
    {
        this.m_list.push(text);
    }

    public AppendLine(text: string)
    {
        this.m_list.push(text);
        this.m_list.push("\r\n");
    }

    public ToString(): string
    {
        return this.m_list.join("");
    }

    get Length(): number
    {
        return this.m_list.join("").length;
    }

}



// [System.Diagnostics.DebuggerDisplay("Text = {m_text}, SyntaxTokenType = {SyntaxTokenType} KeywordType = {KeywordType}")]
class SqlToken
{
    public SyntaxTokenType: SqlSyntaxTokenType;
    public KeywordType: SqlKeywordType;


    protected m_text: string = "";


    public Previous: SqlToken;
    public Next: SqlToken;

    public IsJoinStatement: boolean;
    public IsPotentialJoinStatement: boolean;
    public NeedsPostProcessing: boolean;


    constructor(text: string, syntaxTokenType?: SqlSyntaxTokenType, keywordType?: SqlKeywordType)
    {
        text = text || "";
        syntaxTokenType = syntaxTokenType || SqlSyntaxTokenType.Undefined;
        keywordType = keywordType || SqlKeywordType.Unknown;

        this.NeedsPostProcessing = false;
        this.IsJoinStatement = false;
        this.IsPotentialJoinStatement = false;
        this.SyntaxTokenType = syntaxTokenType;
        this.KeywordType = keywordType;
        this.Text = text;
    }




    get HtmlText(): string
    {
        return replaceAll(replaceAll(replaceAll(htmlEnc(this.m_text)
            , " ", "&nbsp;")
            , "\r\n", "\n")
            , "\n", "<br />");
    }

    get Text(): string
    {
        return this.m_text;
    }
    set Text(value: string)
    {
        this.m_text = value;

        if (stringEquals("(", this.m_text))
        {
            this.KeywordType = SqlKeywordType.OpenBracket;
        }
        else if (stringEquals(")", this.m_text))
        {
            this.KeywordType = SqlKeywordType.CloseBracket;

        }
        else if (stringEquals("LEFT", this.m_text))
            this.NeedsPostProcessing = true;
        else if (stringEquals("RIGHT", this.m_text))
            this.NeedsPostProcessing = true;
        else if (stringEquals("INNER", this.m_text))
        {
            this.IsPotentialJoinStatement = true;
            this.NeedsPostProcessing = true;
        }
        else if (stringEquals("OUTER", this.m_text))
        {
            this.IsPotentialJoinStatement = true;
            this.NeedsPostProcessing = true;
        }
        else if (stringEquals("FULL", this.m_text))
            this.NeedsPostProcessing = true;
        else if (stringEquals("CROSS", this.m_text))
            this.NeedsPostProcessing = true;
        else if (stringEquals("NATURAL", this.m_text))
            this.NeedsPostProcessing = true;
        else if (stringEquals("JOIN", this.m_text))
        {
            this.IsJoinStatement = true;
            this.KeywordType = SqlKeywordType.From;
        }
        else if (stringEquals("APPLY", this.m_text))
        {
            this.IsJoinStatement = true;
            this.NeedsPostProcessing = true;
        }
        else if (stringEquals("LATERAL", this.m_text))
        {
            this.IsJoinStatement = true;
            this.KeywordType = SqlKeywordType.From;
        }
        else if (stringEquals("NOT", this.m_text))
        {
            this.KeywordType = SqlKeywordType.Operator;
            this.SyntaxTokenType = SqlSyntaxTokenType.SingleArgumentOperator;
        }
        else if (stringEquals("AND", this.m_text))
        {
            this.KeywordType = SqlKeywordType.Operator;
            this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
        }
        else if (stringEquals("OR", this.m_text))
        {
            this.KeywordType = SqlKeywordType.Operator;
            this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
        }
        else if (stringEquals("ANY", this.m_text))
        {
            this.KeywordType = SqlKeywordType.Operator;
            this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
        }
        else if (stringEquals("ALL", this.m_text))
        {
            this.KeywordType = SqlKeywordType.Operator;
            this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
            this.NeedsPostProcessing = true;
        }
        else if (stringEquals("LIKE", this.m_text))
        {
            this.KeywordType = SqlKeywordType.Operator;
            this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
        }
        else if (stringEquals("ILIKE", this.m_text))
        {
            this.KeywordType = SqlKeywordType.Operator;
            this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
        }

    }


    public NextNonSeparatorIncludingBracket(): SqlToken 
    {
        let foo: SqlToken = this;

        while ((foo = foo.Next) != null)
        {
            if (
                (
                    (foo.SyntaxTokenType != SqlSyntaxTokenType.StatementSeparator)
                    || (foo.KeywordType != SqlKeywordType.OpenBracket)
                    // || (foo.KeywordType != SqlKeywordType.CloseBracket)
                )
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.DashComment)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.SlashComment)
            )
                return foo;
        }

        return foo;
    }


    public NextNonSeparator(): SqlToken
    {
        let foo: SqlToken = this;

        while ((foo = foo.Next) != null)
        {
            if (
                (foo.SyntaxTokenType != SqlSyntaxTokenType.StatementSeparator)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.DashComment)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.SlashComment)
            )
                return foo;
        }

        return foo;
    }


    public PreviousNonSeparator(): SqlToken 
    {
        let foo: SqlToken = this;

        while ((foo = foo.Previous) != null)
        {
            if (
                (foo.SyntaxTokenType != SqlSyntaxTokenType.StatementSeparator)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.DashComment)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.SlashComment)
            )
                return foo;
        }

        return foo;
    }

}




class Helper
{

    public static IsNewLine(c: string): boolean
    {
        if (c == '\r' || c == '\n')
            return true;

        return false;
    }


    public static IsWhiteSpace(c: string): boolean
    {
        if (c == ' ')
            return true;

        if (c == '\t')
            return true;

        if (c == '\r')
            return true;

        if (c == '\n')
            return true;

        if (c == '\v')
            return true;

        if (c == '\f')
            return true;

        if (c == '\u00A0') // ASCII 0xA0 (160: non-breaking space)
            return true;

        if (c == '\uFEFF') // Unicode Character 'ZERO WIDTH NO-BREAK SPACE' (U+FEFF)
            return true;

        // return char.IsWhiteSpace(c);
        return /^\s*$/.test(c);
    }


}







function replaceAll(str: string, find: string, newToken: string, ignoreCase?: boolean)
{
    let i: number = -1;

    if (!str)
    {
        // Instead of throwing, act as COALESCE if find == null/empty and str == null
        if ((str == null) && (find == null))
            return newToken;

        return str;
    }

    if (!find) // sanity check 
        return str;

    ignoreCase = ignoreCase || false;
    find = ignoreCase ? find.toLowerCase() : find;

    while (
        (
            i = (ignoreCase ? str.toLowerCase() : str).indexOf(
                find, i >= 0 ? i + newToken.length : 0)
        ) !== -1
    )
    {
        str = str.substring(0, i) +
            newToken +
            str.substring(i + find.length);
    } // Whend 

    return str;
}






abstract class SqlStringReader
{

    protected m_charArray: string[];

    protected m_currentPosition: number;
    protected m_length: number;


    constructor(sql: string)
    {
        sql = SqlStringReader.Substitute(sql);

        this.m_charArray = sql.split("");
        this.m_length = this.m_charArray.length;
        this.m_currentPosition = -1;
    }


    //~SqlStringReader()
    //{
    //    System.Array.Clear(this.m_charArray);
    //}


    static Substitute(text: string): string
    {
        return replaceAll(
            replaceAll(
                replaceAll(text, "''", "\b") // BS
                , "\"\"", "\u0005"
            )// ENQ
            , "]]", "\u0006") // ACK
            ;
    }



    static BackSubstitute(text: string): string
    {
        return replaceAll(
            replaceAll(
                replaceAll(text, "\b", "''")  // BS
                , "\u0005", "\"\"")// ENQ
            , "\u0006", "]]")// ACK
            ;
    }


    public Peek(offset?: number): string
    {
        offset = offset || this.m_currentPosition

        if (offset < 0 || offset >= this.m_length)
            return null;

        return this.m_charArray[offset];
    }


    public PeekRelativeOffset(offset: number): string
    {
        let pos = this.m_currentPosition + offset;
        return this.Peek(pos);
    }


    get Current(): string
    {
        return this.Peek();
    }


    get Next(): string
    {
        return this.PeekRelativeOffset(1);
    }


    get Previous(): string
    {
        return this.PeekRelativeOffset(-1);
    }

    public GoToNext(): boolean
    {
        let pos: number = this.m_currentPosition + 1;
        if (pos < 0 || pos >= this.m_length)
            return false;

        this.m_currentPosition = pos;

        return true;
    }


    public GoToPrevious(): boolean
    {
        let pos: number = this.m_currentPosition - 1;
        if (pos < 0 || pos >= this.m_length)
            return false;

        this.m_currentPosition = pos;

        return true;
    }

    get IsBeginSlashStarComment(): boolean
    {
        return this.Current == '/' && this.Next == '*';
    }

    get IsEndSlashStarComment(): boolean
    {
        return this.Current == '*' && this.Next == '/';
    }

    get IsBeginDashDashComment(): boolean
    {
        return this.Current == '-' && this.Next == '-';
    }


    get IsEndOfLine(): boolean
    {
        return this.Current == '\n';
    }


    get IsQuote(): boolean
    {
        return this.Current == '\'';
    }


    get IsDoubleQuote(): boolean
    {
        return this.Current == '"';
    }


    get IsOpenSquareBracket(): boolean
    {
        return this.Current == '[';
    }


    get IsCloseSquareBracket(): boolean
    {
        return this.Current == ']';
    }


    get IsBackspace(): boolean
    {
        return this.Current == '\b';
    }




    get IsEnquiry(): boolean
    {
        return this.Current == '\u0005'; // ENQ
    }

    get IsAcknowledge(): boolean
    {
        return this.Current == '\u0006'; // ACK
    }

    get IsComma(): boolean
    {
        return this.Current == ',';
    }


    get IsSemicolon(): boolean
    {
        return this.Current == ';';
    }

    get IsBracket(): boolean
    {
        return (this.Current == '(' || this.Current == ')');
    }



    get IsOperator(): boolean
    {
        return (
            this.Current == '!' ||
            this.Current == '<' ||
            this.Current == '>' ||
            this.Current == '+' ||
            this.Current == '-' ||
            this.Current == '*' ||
            this.Current == '/' ||
            this.Current == '%' ||
            this.Current == '~' ||
            this.Current == '^' ||
            this.Current == '&' ||
            this.Current == '|'
        );
    }


    get IsGoStatement(): boolean
    {
        if (this.Current == null || this.Next == null)
            return false;

        return (this.Current.toLowerCase() == 'g' && this.Next.toLowerCase() == 'o');
    }
    


    get IsDoubleOperator(): boolean
    {
        return (
            (this.Current == '&' && this.Next == '&') ||
            (this.Current == '|' && this.Next == '|') ||
            (this.Current == '!' && this.Next == '=') ||
            (this.Current == '~' && this.Next == '=') ||
            (this.Current == '=' && this.Next == '=') ||
            (this.Current == '<' && this.Next == '=') ||
            (this.Current == '>' && this.Next == '=') ||
            (this.Current == '<' && this.Next == '>') ||
            (this.Current == '+' && this.Next == '=') ||
            (this.Current == '-' && this.Next == '=') ||
            (this.Current == '*' && this.Next == '=') ||
            (this.Current == '/' && this.Next == '=') ||
            (this.Current == '%' && this.Next == '=') ||
            (this.Current == '&' && this.Next == '=') ||
            (this.Current == '|' && this.Next == '=') ||
            (this.Current == '^' && this.Next == '=')
        );
    }


    get IsWhiteSpace(): boolean
    {
        let c = this.Current;

        if (c != null)
            return Helper.IsWhiteSpace(c);

        return true;
    }

    get NextIsWhiteSpace(): boolean
    {
        let c = this.Next;

        if (c != null)
            return Helper.IsWhiteSpace(c);

        return true;
    }


    get PreviousIsWhiteSpace(): boolean
    {
        let c = this.Previous;

        if (c != null)
            return Helper.IsWhiteSpace(c);

        return true;
    }

    // SELECT 123 AS hel--lo
    // SELECT '123'AS hel--lo
    // SELECT '12/*3'AS hel--lo
    get IsStatementSeparator(): boolean
    {
        let c = this.Current;

        if (c != null)
        {
            if (Helper.IsWhiteSpace(c))
                return true;

            if (c == '\b')
                return true;

            if (c == ',')
                return true;

            if (c == ';')
                return true;

            if (c == '(')
                return true;

            if (c == ')')
                return true;

            if (this.IsBeginDashDashComment)
                return true;

            if (this.IsBeginSlashStarComment)
                return true;

            if (this.IsQuote)
                return true;
        }

        return false;
    }


    public ReadQuotedString(): string
    {
        let sb = new SqlStringBuilder();
        sb.Append(this.Current);

        while (this.GoToNext())
        {
            sb.Append(this.Current);

            if (this.IsQuote)
            {
                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }

        return SqlStringReader.BackSubstitute(sb.ToString());
    }



    public ReadDoubleQuotedString(): string
    {
        let sb = new SqlStringBuilder();
        sb.Append(this.Current);

        while (this.GoToNext())
        {
            sb.Append(this.Current);

            if (this.IsDoubleQuote)
            {
                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }

        return SqlStringReader.BackSubstitute(sb.ToString());
    }


    public ReadSquareBracketString(): string
    {
        let sb = new SqlStringBuilder();
        sb.Append(this.Current);

        while (this.GoToNext())
        {
            sb.Append(this.Current);

            if (this.IsCloseSquareBracket)
            {
                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }

        return SqlStringReader.BackSubstitute(sb.ToString());
    }



    public ReadDashDashComment(): string
    {
        let sb = new SqlStringBuilder();

        sb.Append(this.Current);

        while (this.GoToNext())
        {
            sb.Append(this.Current);

            if (this.Next == '\r' || this.Next == '\n')
                break;
        }

        return SqlStringReader.BackSubstitute(sb.ToString());
    }


    public ReadStatementSeparator(): string
    {
        let sb = new SqlStringBuilder();

        sb.Append(this.Current);

        while (this.GoToNext())
        {
            if (this.IsStatementSeparator && !this.IsBracket && !this.IsBeginDashDashComment && !this.IsBeginSlashStarComment && !this.IsBackspace && !this.IsEndSlashStarComment && !this.IsQuote)
                sb.Append(this.Current);
            else
            {
                this.GoToPrevious();
                break;
            }
        }

        return sb.ToString();
    }




    // /* SELECT /*'SELECT 123 AS hello, 346 AS world' */  */
    // SELECT /*'SELECT ''123'' AS hello, ''Jean le Rond d''''Alembert'' AS world' */ 
    // SELECT '' as abc 
    // SELECT 'SELECT ''123'' AS hello, ''Jean le Rond d''''Alembert''' AS world
    public ReadSlashStarCommentWithResult(): string 
    {
        let sb = new SqlStringBuilder();
        sb.Append(this.Current);

        while (this.GoToNext())
        {
            if (this.IsBeginSlashStarComment)
            {
                let innerComment: string = this.ReadSlashStarCommentWithResult();
                sb.Append(innerComment);
                continue;
            }

            sb.Append(this.Current);

            if (this.IsEndSlashStarComment)
            {
                this.GoToNext();
                sb.Append(this.Current);

                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }

        // return false;
        return SqlStringReader.BackSubstitute(sb.ToString());
    }





    public static Test()
    {


        let sql: string = "SELECT * FROM T_Benutzer AS foo";
        sql = "SELECT 123 AS abc FROM T_Benutzer AS foo";
        sql = "SELECT '123' AS abc FROM T_Benutzer AS foo";
        sql = "SELECT '' AS abc FROM T_Benutzer AS foo";
        sql = "SELECT 'd''Alambert' AS abc FROM T_Benutzer AS foo";

        sql = "SELECT '/*d''Alambert*/' AS abc FROM T_Benutzer AS foo";
        sql = "SELECT /*'d''Alambert'*/ AS abc FROM T_Benutzer AS foo";
        sql = "--SELECT /*'d''Alambert'*/ AS abc FROM T_Benutzer AS foo";
        sql = "--SELECT /*'d''Alambert'*/ AS abc FROM T_Benutzer AS foo\r\nSELECT 123 AS test";
        sql = "SELECT /*'d''Alambert'*/AS abc FROM T_Benutzer AS foo";
        sql = "SELECT 'd''Alambert'AS abc FROM T_Benutzer AS foo";
        sql = "SELECT 'd''Alambert'AS abc FROM T_Benutzer AS foo LEFT JOIN T_Benutzergruppen ON 1=2";

        sql = "SELECT 'd''Alambert'AS abc, LEFT(abc, 5) FROM T_Benutzer AS foo LEFT JOIN T_Benutzergruppen ON 1=2";

        sql = "SELECT ''as abc 'd''Alambert'AS abc, LTRIM(RTRIM(abc)) FROM T_Benutzer AS foo LEFT JOIN T_Benutzergruppen ON 1=2";

        sql = `
        SELECT
        123 * 758.13 / 13 % 5 + 1 - 7 AS expr
            , '' as abc 'd''Alambert'AS ""abc def, []ghi""
                , 123 AS[hello[]] world, now]
,CASE @in_sprache 
   WHEN 'DE' THEN xxx_DE 
   WHEN 'FR' THEN xxx_FR 
   WHEN 'IT' THEN xxx_IT 
   ELSE xxx_en 
 END AS xxx
            , LTRIM(RTRIM(abc)) 

FROM T_Benutzer AS foo 

LEFT JOIN T_Benutzergruppen 
    ON 1 = 2 ";


        sql = @"


IF 1 = 2
        BEGIN
    PRINT 'FOO';
        END

SELECT current_timestamp, current_user, varchar(MAX), pretzelkoenig('test')


            ;WITH RECURSIVE CTE AS
                (
                    SELECT 
        1 AS i
                    , array[1] AS paths 

    UNION ALL 

    SELECT 
         CTE.i + 1 AS i
                    , CTE.paths || (CTE.i + 1) AS paths
    FROM CTE
    WHERE CTE.i < 10000
    AND CTE.i = ANY(CTE.paths) 
    --AND CTE.i <> ALL(CTE.paths)
                )
SELECT i FROM CTE



        SELECT * 
, apply(5, 3) AS ppl
        -- , LEFT(abc, 5) AS lll, RIGHT('abc', 2) AS rrrr, FULL(123, 5) AS fff 
FROM T_Benutzer 
LEFT OUTER JOIN T_Benutzergruppen AS t1 ON 1 = 2
        --LEFT INNER JOIN T_Benutzergruppen AS t2 ON 1 = 2 
RIGHT JOIN T_Benutzergruppen AS t2 ON 1 = 2 
NATURAL JOIN T_Benutzergruppen AS t2 ON 1 = 2 



CROSS JOIN T_Benutzergruppen AS t3

        --FULL OUTER JOIN T_Benutzergruppen AS t4 ON 1 = 2
        --FULL JOIN T_Benutzergruppen AS t4 ON 1 = 2 

OUTER APPLY(SELECT 123 AS outerApplied) AS t5

CROSS APPLY(SELECT 123 AS crossApplied) AS t6 


LEFT JOIN LATERAL(SELECT 123 AS crossApplied) AS t7 
INNER JOIN LATERAL(SELECT 123 AS crossApplied) AS t8 
CROSS JOIN LATERAL(SELECT 123 AS crossApplied) AS t9



        `;

    }





    public static Lexme(sql: string): SqlToken[]
    {

        let x: SqlStringReader = new SqlStringReaderImpl(sql);

        let ls: SqlToken[] = [];
        let sb = new SqlStringBuilder();

        while (x.GoToNext())
        {
            if (x.IsQuote)
            {
                let quotedString: string = x.ReadQuotedString();

                ls.push(new SqlToken(quotedString, SqlSyntaxTokenType.String, SqlKeywordType.String));
                sb.Clear();

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));


                continue;
            }

            if (x.IsBeginSlashStarComment)
            {
                let slashComment: string = x.ReadSlashStarCommentWithResult();
                ls.push(new SqlToken(slashComment, SqlSyntaxTokenType.SlashComment, SqlKeywordType.Comment));
                sb.Clear();

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }

            if (x.IsBeginDashDashComment)
            {
                let dashComment: string = x.ReadDashDashComment();
                ls.push(new SqlToken(dashComment, SqlSyntaxTokenType.DashComment, SqlKeywordType.Comment));
                sb.Clear();

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }


            if (x.IsDoubleQuote)
            {
                let quotedString: string = x.ReadDoubleQuotedString();
                ls.push(new SqlToken(quotedString, SqlSyntaxTokenType.QuotedIdentifier, SqlKeywordType.Identifier));
                sb.Clear();

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }


            if (x.IsOpenSquareBracket)
            {
                let quotedString: string = x.ReadSquareBracketString();
                ls.push(new SqlToken(quotedString, SqlSyntaxTokenType.QuotedIdentifier, SqlKeywordType.Identifier));
                sb.Clear();

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }

            if (x.IsBackspace)
            {
                let foo: string = sb.ToString();
                if (!!foo)
                    throw new Error("damn"); //System.InvalidProgramException("damn");

                sb.Clear();

                ls.push(new SqlToken("''", SqlSyntaxTokenType.String, SqlKeywordType.String));

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }

            if (x.IsEnquiry)
            {
                let foo: string = sb.ToString();
                if (!!foo) throw new Error("damn"); //System.InvalidProgramException("damn");
                sb.Clear();

                ls.push(new SqlToken("\"\"", SqlSyntaxTokenType.String, SqlKeywordType.String));

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }

            if (x.IsAcknowledge)
            {
                let foo: string = sb.ToString();
                if (!!foo)
                    throw new Error("damn"); // throw new System.InvalidProgramException("damn");

                sb.Clear();

                ls.push(new SqlToken("]]", SqlSyntaxTokenType.String, SqlKeywordType.String));

                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }


            if (x.IsDoubleOperator)
            {
                let foo: string = sb.ToString();
                if (!!foo)
                    ls.push(new SqlToken(foo, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));

                sb.Clear();

                let doubleOperator: string = x.Current + x.Next;
                ls.push(new SqlToken(doubleOperator, SqlSyntaxTokenType.DoubleArgumentOperator, SqlKeywordType.Operator));

                x.GoToNext();

                continue;
            }


            if (x.IsOperator)
            {
                let foo: string = sb.ToString();
                if (!!foo)
                    ls.push(new SqlToken(foo, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));

                sb.Clear();

                ls.push(new SqlToken(x.Current, SqlSyntaxTokenType.SingleArgumentOperator, SqlKeywordType.Operator));

                continue;
            }


            if (x.IsStatementSeparator)
            {
                let statement: string = sb.ToString();
                if (!!statement)
                    ls.push(new SqlToken(statement, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));


                sb.Clear();

                statement = x.ReadStatementSeparator();
                ls.push(new SqlToken(statement, SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));

                continue;
            }


            if (x.IsGoStatement)
            {
                let statement: string = sb.ToString();

                if (!!statement)
                    ls.push(new SqlToken(statement, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));

                sb.Clear();

                ls.push(new SqlToken("GO", SqlSyntaxTokenType.ScriptSeparator, SqlKeywordType.Go));

                x.GoToNext();
                continue;
            }

            sb.Append(x.Current!);
        }

        if (sb.Length != 0)
            ls.push(new SqlToken(sb.ToString(), SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));


        for (let i = 0; i < ls.length; ++i)
        {
            if (i != 0)
                ls[i].Previous = ls[i - 1];


            if (i != ls.length - 1)
                ls[i].Next = ls[i + 1];
        }


        for (let i = 0; i < ls.length; ++i)
        {
            if (ls[i].NeedsPostProcessing)
            {
                let potentialToken: SqlToken = ls[i].NextNonSeparator();
                let realToken: SqlToken = potentialToken;


                // Here are the LEFT/RIGHT OUTER|INNER JOIN/APPLY LATERAL 
                if (potentialToken != null && potentialToken.IsPotentialJoinStatement)
                    realToken = potentialToken.NextNonSeparator();

                if (realToken != null && realToken.IsJoinStatement)
                {
                    potentialToken!.KeywordType = SqlKeywordType.From;
                    realToken.KeywordType = SqlKeywordType.From;
                    ls[i].KeywordType = SqlKeywordType.From;

                    potentialToken.NeedsPostProcessing = false;
                    realToken.NeedsPostProcessing = false;
                    ls[i].NeedsPostProcessing = false;
                }


                if (stringEquals("ALL", ls[i].Text))
                {
                    let previousToken: SqlToken = ls[i].PreviousNonSeparator();
                    if (previousToken != null && stringEquals("UNION", previousToken.Text))
                    {
                        ls[i].SyntaxTokenType = SqlSyntaxTokenType.Undefined;
                        ls[i].KeywordType = SqlKeywordType.Reserved;
                    }
                }




            }
        }


        let list_of_reserved_words: string[] = [
            "BIT", "BOOLEAN", "CHAR", "NCHAR", "VARCHAR", "NVARCHAR"
            , "NATIONAL", "CHARACTER", "VARYING"
            , "CURSOR", "OPEN", "CLOSE", "WHILE", "FETCH", "NEXT", "DEALLOCATE"
            , "TRAN", "TRANSACTION", "COMMIT", "ROLLBACK"
            , "BACKUP", "RESTORE", "CHECKPOINT"
            , "DATE", "TIME", "DATETIME", "TIMESTAMP", "UNIQUEIDENTIFIER"
            , "INT", "INTEGER", "ARRAY", "FLOAT", "REAL", "DECIMAL"
            , "TABLE", "VIEW", "COLUMN", "TRIGGER", "FUNCTION", "PROCEDURE", "INDEX", "DOMAIN", "CONSTRAINT", "UNIQUE", "RULE"
            , "DECLARE", "SET", "PRINT", "READONLY", "OUTPUT"
            , "WITH", "RECURSIVE", "AS", "CONNECT", "NOCYCLE", "PRIOR", "OPTION", "MAXRECURSION", "WITHIN"
            , "CREATE", "REPLACE", "ALTER", "DROP", "SELECT", "INSERT", "INTO", "VALUES", "MERGE", "UPDATE", "DELETE", "TRUNCATE"
            , "EXEC", "EXECUTE", "EXISTS", "RETURNS", "BEGIN", "END", "IF", "BREAK", "CONTINUE", "GOTO", "EXIT"
            , "FROM", "UNION", "EXCEPT", "INTERSECT", "DISTINCT", "GROUP", "BY", "DISTRIBUTED"
            , "ORDER", "ASC", "DESC", "COLLATE", "LIMIT", "OFFSET", "TOP", "PERCENT"
            , "CASE", "WHEN", "ELSE", "ESCAPE", "OVER"
            , "TRUE", "FALSE", "ON", "OFF", "OF"
            , "GRANT", "REVOKE", "DENY", "STATISTICS", "WAITFOR"
            , "FOREIGN", "KEY", "REFERENCES", "NOCHECK", "CASCADE", "DEFAULT", "PERSIST"
            , "OPENROWSET", "OPENQUERY", "OPENDATASOURCE"
            , "FILLFACTOR", "FREETEXT", "FREETEXTTABLE", "READTEXT", "WRITETEXT", "TEXTSIZE"
            , "SEMANTICKEYPHRASETABLE", "SEMANTICSIMILARITYDETAILSTABLE", "SEMANTICSIMILARITYTABLE"
            , "CONTAINSTABLE", "EXPLAIN", "PLAN", "TABLESAMPLE"
            , "GO", "START", "UNPIVOT", "NONCLUSTERED", "DBCC", "RECONFIGURE", "DUMP"
        ];

        let list_of_functions: string[] = [
            "CURRENT_DATE", "CURRENT_TIME", "CURRENT_TIMESTAMP", "CURRENT_USER", "SESSION_USER"
            , "ERROR_MESSAGE", "ERROR_SEVERITY", "ERROR_STATE", "ERRLVL", "LINENO"
            , "NANOSECOND", "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY"
            , "DAYOFYEAR", "WEEKDAY", "WEEK", "ISO_WEEK", "MONTH", "QUARTER", "YEAR"
            , "MAX", "MIN", "LEAST", "GREATEST", "CONVERT", "TRY_CONVERT", "CAST", "TRY_CAST"
            , "ROW_NUMBER", "DENSE_RANK", "RANK", "NTILE", "SUM", "COUNT", "NULLIF", "ISNULL", "COALESCE"
            , "RAISERROR"
        ];

        let list_of_joins: string[] = [
            "LEFT", "RIGHT", "INNER", "OUTER", "FULL", "NATURAL", "JOIN", "APPLY"
        ];

        list_of_reserved_words.sort();
        list_of_functions.sort();
        list_of_joins.sort();


        const reserved_words = new CaseInsensitiveSet(list_of_reserved_words);
        const functions = new CaseInsensitiveSet(list_of_functions);
        const joins = new CaseInsensitiveSet(list_of_joins);


        for (let i = 0; i < ls.length; ++i)
        {
            // SET Functions
            let potentialBracket: SqlToken = ls[i].NextNonSeparatorIncludingBracket();

            if (potentialBracket != null && potentialBracket.KeywordType == SqlKeywordType.OpenBracket)
            {
                // LEFT/RIGHT/INNER/FULL JOIN is not a function 
                if (ls[i].KeywordType != SqlKeywordType.From
                    && ls[i].KeywordType != SqlKeywordType.Operator)
                {
                    if (reserved_words.has(ls[i].Text))
                        ls[i].KeywordType = SqlKeywordType.Reserved;
                    else
                        ls[i].KeywordType = SqlKeywordType.Function;
                }

            }

        }



        for (let i = 0; i < ls.length; ++i)
        {
            if (ls[i].KeywordType == SqlKeywordType.Function)
                continue;

            let txt: string = ls[i].Text;

            if (reserved_words.has(txt))
            {
                ls[i].KeywordType = SqlKeywordType.Reserved;
            }

            if (functions.has(txt))
            {
                ls[i].KeywordType = SqlKeywordType.Function;
            }

            if (joins.has(txt))
            {
                ls[i].KeywordType = SqlKeywordType.From;
            }

        }



        return ls;
    }


    // This does not work properly, as GO can be an alias or identifier. 
    public static SeparateScript(t: string): string[] 
    {
        let ret: string[] = [];
        let ls: SqlToken[] = SqlStringReader.Lexme(t);

        let sbb = new SqlStringBuilder();

        for (let i = 0; i < ls.length; ++i)
        {
            let mytok: SqlToken = ls[i];
            
            if (mytok.KeywordType == SqlKeywordType.Go)
            {
                ret.push(sbb.ToString());
                sbb.Clear();
            }
            else 
                sbb.Append(mytok.Text);
        }

        let s = sbb.ToString();
        sbb.Clear();

        if (s.length > 0)
            ret.push(s);
        
        return ret;
    }


    public static LexToHtml(t: string ): string 
    {
        let ls: SqlToken[] = SqlStringReader.Lexme(t);

        let colors: string[] = [
            "blue", // Reserved = 0,
            "hotpink", // Function = 1,
            "gray", // Operator = 2,
            "#A0A0A0", // From = 3,
            "black", // Identifier = 4,
            "red", // String = 5,
            "black", // Number = 6,
            "black", // Separator = 7,
            "green", // Comment = 8,
            "black", // OpenBracket = 9,
            "black", // CloseBracket = 10,
            "black", // Unknown = 11
        ];



        let sbb = new SqlStringBuilder();
        sbb.AppendLine(`
    <html>
        <head></head>
        <body>
        `);

        for (let i = 0; i < ls.length; ++i)
        {
            let mytok: SqlToken = ls[i];

            // if (mytok.KeywordType == SqlKeywordType.Comment) continue;

            let html: string = mytok.HtmlText;
            let color: string = colors[mytok.KeywordType];

            sbb.Append(`<span style="color: `);
            sbb.Append(color);
            sbb.Append(`;">`);
            sbb.Append(html);
            sbb.Append(`</span>`);

        }
        sbb.AppendLine(`</body>
    </html>`);

        let s: string = sbb.ToString();
        sbb.Clear();

        return s;
    }


}



class SqlStringReaderImpl
    extends SqlStringReader
{

    constructor(text: string)
    {
        super(text);
    }

}


class CaseInsensitiveSet
{

    protected m_objects: any;


    constructor(values: any[])
    {
        this.m_objects = {};

        for (let i = 0; i < values.length; ++i)
        {
            this.m_objects[values[i]] = true;
        }
        
    }

    add(str: string)
    {
        this.m_objects[str.toLowerCase()] = true;
    }

    has(str: string):boolean 
    {
        if (this.m_objects[str.toLowerCase()])
            return true;

        return false;
    }

    delete(str: string)
    {
        delete this.m_objects[str.toLowerCase()];
    }

}



// Doesn't work in ES5 - super.constructor requires new 
//class CaseInsensitiveSet extends Set
//{
//    constructor(values:any[])
//    {
//        super(Array.from(values, it => it.toLowerCase()));
//    }

//    add(str:string)
//    {
//        return super.add(str.toLowerCase());
//    }

//    has(str: string)
//    {
//        return super.has(str.toLowerCase());
//    }

//    delete(str: string)
//    {
//        return super.delete(str.toLowerCase());
//    }
//}

// const countries = new CaseInsensitiveSet(["Usa", "CanAdA"]);

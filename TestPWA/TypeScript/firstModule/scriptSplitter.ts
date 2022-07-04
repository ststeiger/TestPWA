
"use strict";



// https://docs.microsoft.com/en-us/dotnet/api/system.char.iswhitespace?view=net-6.0
// Members of the UnicodeCategory.SpaceSeparator
// Members of the UnicodeCategory.LineSeparator
// Members of the UnicodeCategory.ParagraphSeparator
// The characters CHARACTER TABULATION (U+0009), LINE FEED (U+000A), 
// LINE TABULATION(U + 000B), FORM FEED(U + 000C), CARRIAGE RETURN(U + 000D), and NEXT LINE(U + 0085).
function isWhiteSpaceChar(c: string): boolean
{
    let arr = [
        // Members of the UnicodeCategory.SpaceSeparator
         '\u0020' // SPACE
        , '\u00A0' // NO - BREAK SPACE
        , '\u1680' // OGHAM SPACE MARK
        , '\u2000' // EN QUAD
        , '\u2001' // EM QUAD
        , '\u2002' // EN SPACE
        , '\u2003' // EM SPACE
        , '\u2004' // THREE-PER-EM SPACE
        , '\u2005' // FOUR-PER-EM SPACE
        , '\u2006' // SIX-PER-EM SPACE
        , '\u2007' // FIGURE SPACE
        , '\u2008' // PUNCTUATION SPACE
        , '\u2009' // THIN SPACE
        , '\u200A' // HAIR SPACE
        , '\u202F' // NARROW NO - BREAK SPACE
        , '\u205F' // MEDIUM MATHEMATICAL SPACE
        , '\u3000' // IDEOGRAPHIC SPACE

        // (typography) EN: A unit of measurement equal to half an em
        // (half the height of the type in use).

        // Members of the UnicodeCategory.LineSeparator category, 
        // which consists solely of the LINE SEPARATOR character.
        , '\u2028' // LINE SEPARATOR

        // Members of the UnicodeCategory.ParagraphSeparator category, 
        // which consists solely of the PARAGRAPH SEPARATOR character.
        , '\u2029' // PARAGRAPH SEPARATOR

        // ASCII space characters 
        , '\u0009' // HORIZONTAL TAB \t
        , '\u000A' // LINE FEED \n
        , '\u000B' // VERTICAL TAB \v
        , '\u000C' // FORM FEED \f
        , '\u000D' // CARRIAGE RETURN \r
        , '\u0085' // NEXT LINE &hellip; = ellipsis dots:
    ];

    // return /\s/.test(c); 
    return (arr.indexOf(c) !== -1);
}


class StringBuilder
{

    protected m_list: string[];


    constructor()
    {
        this.m_list = [];
        this.append = this.append.bind(this);
        this.appendLine = this.appendLine.bind(this);
        this.toString = this.toString.bind(this);
    }


    public clear()
    {
        this.m_list = null;
        this.m_list = [];
    }


    public append(text: string)
    {
        this.m_list.push(text);
    }

    public appendLine(text: string)
    {
        this.m_list.push(text);
        this.m_list.push("\r\n");
    }

    public toString(): string
    {
        return this.m_list.join("");
    }

    get length(): number
    {
        return this.m_list.join("").length;
    }

}



class SqlParseException
    extends Error
{
    constructor(message: string)
    {
        super(message);
        this.name = "SqlParseException";
        // Set the prototype explicitly.
        Object.setPrototypeOf(this, SqlParseException.prototype);
    }

}




class ObjectDisposedException
    extends Error
{
    constructor(message: string)
    {
        super(message);
        this.name = "ObjectDisposedException";
        // Set the prototype explicitly.
        Object.setPrototypeOf(this, ObjectDisposedException.prototype);
    }

}


class ArgumentNullException
    extends Error
{
    constructor(message: string)
    {
        super(message);
        this.name = "ArgumentNullException";
        // Set the prototype explicitly.
        Object.setPrototypeOf(this, ObjectDisposedException.prototype);
    }

}





class StringReader
{
    private m_source: string;
    private m_nextChar: number;
    private m_sourceLength: number;
    private m_errorMessage: string;


    constructor(source: string)
    {
        this.m_source = source;
        this.m_nextChar = 0;
        this.m_sourceLength = source.length;
        this.m_errorMessage = "Cannot read from a closed CsvReader";

        this.read = this.read.bind(this);
        this.peek = this.peek.bind(this);
        this.peekNum = this.peekNum.bind(this);
        this.readToEnd = this.readToEnd.bind(this);
        this.read2 = this.read2.bind(this);
    }


    public read(): string
    {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);

        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(0);

        return this.m_source[this.m_nextChar++];
    }


    public peek(): string
    {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);

        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(0);

        return this.m_source[this.m_nextChar];
    }


    public peekNum(): number
    {

        if (this.m_nextChar >= this.m_sourceLength)
            return -1;

        this.m_source.charCodeAt(this.m_nextChar);
    }


    public readToEnd(): string
    {
        let toEnd: string = this.m_source.substr(this.m_nextChar, this.m_sourceLength - this.m_nextChar);
        this.m_nextChar = this.m_sourceLength;
        return toEnd;
    }


    // https://searchcode.com/codesearch/raw/25342566/
    // The method will read up to count characters from the StringReader
    // into the buffer character array starting at position index. Returns
    // the actual number of characters read, or zero if the end of the string
    // has been reached and no characters are read.
    public read2(buffer: string, index: number, count: number): { "charsRead": number, "buffer": string }
    {
        if (this.m_source == null) throw new ObjectDisposedException(this.m_errorMessage);

        // if (buffer == null) throw new ArgumentNullException("buffer");
        // if (buffer.length - index < count) throw new ArgumentException();
        // if (index < 0 || count < 0) throw new ArgumentOutOfRangeException();

        let charsToRead: number;

        // reordered to avoir possible integer overflow
        if (this.m_nextChar > this.m_sourceLength - count)
            charsToRead = this.m_sourceLength - this.m_nextChar;
        else
            charsToRead = count;

        // this.m_source.CopyTo(sourceIndex, destination, destinationIndex, count);
        // this.m_source.CopyTo(this.m_nextChar, buffer, index, charsToRead);

        let sub = this.m_source.substr(this.m_nextChar, charsToRead)
        let prebuffer = buffer.substr(0, index);
        let postBuffer = buffer.substr(index + sub.length);
        let newBuffer = prebuffer + sub + postBuffer;

        this.m_nextChar += charsToRead;

        // return charsToRead;
        return { "charsRead": charsToRead, "buffer": newBuffer };
    }


    public dispose(): void
    {
        this.m_source = null;
        this.m_errorMessage = null;
    }

}


abstract class ScriptReader
{
    protected m_splitter: ScriptSplitter;


    constructor(splitter: ScriptSplitter)
    {
        this.m_splitter = splitter;
        this.readNext = this.readNext.bind(this);
        this.readNextSection = this.readNextSection.bind(this);

        this.readDashDashComment = this.readDashDashComment.bind(this);
        this.readQuotedString = this.readQuotedString.bind(this);
        this.readSlashStarComment = this.readSlashStarComment.bind(this);
        this.readSlashStarCommentWithResult = this.readSlashStarCommentWithResult.bind(this);
        this.peek = this.peek.bind(this);
    }


    protected peek(): string
    {
        if (!this.hasNext)
        {
            return String.fromCharCode(0);
        }

        return this.m_splitter.peek();
    }


    get whiteSpace(): boolean
    {
        // return this.m_splitter.current.trim().length === 0;
        return /^\s*$/.test(this.m_splitter.current);
    }

    get endOfLine(): boolean
    {
        return '\n' == this.m_splitter.current;
    }


    get current(): string
    {
        return this.m_splitter.current;
    }

    get lastChar(): string
    {
        return this.m_splitter.lastChar;
    }

    get hasNext(): boolean
    {
        return this.m_splitter.hasNext;
    }


    get isQuote(): boolean
    {
        return '\'' == this.m_splitter.current;
    }

    get beginDashDashComment(): boolean
    {
        return this.current == '-' && this.peek() == '-';
    }


    get beginSlashStarComment(): boolean
    {
        return this.current == '/' && this.peek() == '*';
    }

    get endSlashStarComment(): boolean
    {
        return this.lastChar == '*' && this.current == '/';
    }


    protected readDashDashComment(): boolean
    {
        this.m_splitter.append(this.current);
        while (this.m_splitter.next())
        {
            this.m_splitter.append(this.current);
            if (this.endOfLine)
            {
                break;
            }
        }
        //We should be EndOfLine or EndOfScript here.
        this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
        return false;
    }



    protected readSlashStarComment()
    {
        if (this.readSlashStarCommentWithResult())
        {
            this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
            return;
        }
    }


    private readSlashStarCommentWithResult(): boolean
    {
        this.m_splitter.append(this.current);
        while (this.m_splitter.next())
        {
            if (this.beginSlashStarComment)
            {
                this.readSlashStarCommentWithResult();
                continue;
            }

            this.m_splitter.append(this.current);

            if (this.endSlashStarComment)
            {
                return true;
            }
        }

        return false;
    }


    protected readQuotedString()
    {
        this.m_splitter.append(this.current);
        while (this.m_splitter.next())
        {
            this.m_splitter.append(this.current);
            if (this.isQuote)
            {
                return;
            }
        }
    }


    // protected abstract bool readNext();
    protected readNext(): boolean
    {
        throw new Error("ABSTRACT: This method must be overriden.");
    }


    public readNextSection(): boolean
    {
        if (this.isQuote)
        {
            this.readQuotedString();
            return false;
        }

        if (this.beginDashDashComment)
        {
            return this.readDashDashComment();
        }

        if (this.beginSlashStarComment)
        {
            this.readSlashStarComment();
            return false;
        }

        return this.readNext();
    }

    public static charsAreEqual(expected: string, actual: string): boolean
    {
        return expected.toLowerCase() == actual.toLowerCase();
    }

    protected charEquals(compare: string): boolean 
    {
        return ScriptReader.charsAreEqual(this.current, compare);
    }

}


class SeparatorLineReader
    extends ScriptReader
{

    private m_builder: StringBuilder;
    private m_foundGo: boolean;
    private m_gFound: boolean;

    constructor(splitter: ScriptSplitter)
    {
        super(splitter);
        
        this.m_builder = new StringBuilder();
        this.m_foundGo = false;
        this.m_gFound = false;

        this.readNext = this.readNext.bind(this);
        this.reset = this.reset.bind(this);

        this.readDashDashComment = this.readDashDashComment.bind(this);
        this.readSlashStarComment = this.readSlashStarComment.bind(this);
        this.foundNonEmptyCharacter = this.foundNonEmptyCharacter.bind(this);

        
    }


    public reset():void 
    {
        this.m_foundGo = false;
        this.m_gFound = false;
        this.m_builder = new StringBuilder();
    }

    protected readDashDashComment(): boolean 
    {
        if (!this.m_foundGo)
        {
            super.readDashDashComment();
            return false;
        }

        super.readDashDashComment();
        return true;
    }

    protected readSlashStarComment():void
    {
        if (this.m_foundGo)
        {
            throw new SqlParseException("Incorrect Syntax near GO");
        }

        super.readSlashStarComment();
    }

    
    public foundNonEmptyCharacter(c:string): void
    {
        this.m_builder.append(c);
        this.m_splitter.append(this.m_builder.toString());
        this.m_splitter.setParser(new SqlScriptReader(this.m_splitter));
    }

    protected readNext(): boolean
    {
        if (this.endOfLine) //End of line or script
        {
            if (!this.m_foundGo)
            {
                this.m_builder.append(this.current);
                this.m_splitter.append(this.m_builder.toString());
                this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
                return false;
            }

            this.reset();
            return true;
        }

        if (this.whiteSpace)
        {
            this.m_builder.append(this.current);
            return false;
        }

        if (!this.charEquals('g') && !this.charEquals('o'))
        {
            this.foundNonEmptyCharacter(this.current);
            return false;
        }

        if (this.charEquals('o'))
        {
            if (ScriptReader.charsAreEqual('g', this.lastChar) && !this.m_foundGo)
            {
                this.m_foundGo = true;
            }
            else
            {
                this.foundNonEmptyCharacter(this.current);
            }
        }

        if (ScriptReader.charsAreEqual('g', this.current))
        {
            if (this.m_gFound || (!(/\s/.test(this.lastChar)) && this.lastChar != String.fromCharCode(0)))
            {
                this.foundNonEmptyCharacter(this.current);
                return false;
            }

            this.m_gFound = true;
        }

        if (!this.hasNext && this.m_foundGo)
        {
            this.reset();
            return true;
        }

        this.m_builder.append(this.current);
        return false;
    }
}


class SqlScriptReader 
    extends ScriptReader
{
    constructor(splitter: ScriptSplitter)    
    {
        super(splitter);
        this.readNext = this.readNext.bind(this);
    }

    protected readNext(): boolean 
    {
        if (this.endOfLine) //end of line
        {
            this.m_splitter.append(this.current);
            this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
            return false;
        }

        this.m_splitter.append(this.current);
        return false;
    }
}


class ScriptSplitter
{
    protected _reader: StringReader;
    protected _scriptReader: ScriptReader;
    protected _builder: StringBuilder;

    private _current: string;
    private _lastChar: string;


    constructor(script: string)
    {
        this._builder = new StringBuilder();
        this._reader = new StringReader(script);
        this._scriptReader = new SeparatorLineReader(this);

        this.next = this.next.bind(this);
        this.peek = this.peek.bind(this);
        this.split = this.split.bind(this);
        this.setParser = this.setParser.bind(this);
        this.append = this.append.bind(this);
        this.reset = this.reset.bind(this);
    }


    get hasNext(): boolean
    {
        return this._reader.peek() != String.fromCharCode(0);
    }



    get current(): string
    {
        return this._current;
    }

    get lastChar(): string
    {
        return this._lastChar;
    }

    public next(): boolean
    {
        if (!this.hasNext)
        {
            return false;
        }

        this._lastChar = this._current;
        this._current = this._reader.read();
        return true;
    }


    public peek(): string
    {
        return this._reader.peek();
    }


    protected split(): boolean
    {
        return this._scriptReader.readNextSection();
    }


    public setParser(newReader: ScriptReader)
    {
        this._scriptReader = newReader;
    }


    public append(text: string)
    {
        this._builder.append(text);
    }

    public reset()
    {
        this._current = this._lastChar = String.fromCharCode(0);
        this._builder = new StringBuilder();
    }


    get scripts(): string[]
    {
        let scripts: string[] = [];
        
        while (this.next())
        {
            if (this.split())
            {
                let script: string = this._builder.toString().trim();
                if (script.length > 0)
                {
                    scripts.push(script);
                }

                this.reset();
            }
        }

        if (this._builder.length > 0)
        {
            let scriptRemains: string = this._builder.toString().trim();
            if (scriptRemains.length > 0)
            {
                scripts.push(scriptRemains);
            }
        }

        return scripts;
    }

}

let sql = [

    , "SELECT "
    , "     CAST(SERVERPROPERTY('ServerName') AS nvarchar(MAX)) + ' > ' + DB_NAME() AS db "
    , "    ,SUSER_SNAME() + N' [' + @@LANGUAGE + N']' AS usr "
    , "    ,SUBSTRING(@@VERSION, 1, CHARINDEX(' (', @@version)) AS SqlServer "
    , "    ,SERVERPROPERTY('ProductVersion') AS ProductVersion "
    , "    ,SERVERPROPERTY('ProductLevel') AS ProductLevel "
    , "    ,SERVERPROPERTY('Edition') AS Edition "
    , "    ,SERVERPROPERTY('BuildClrVersion') AS BuildClrVersion "
    // , "    ,SERVERPROPERTY('EngineEdition') AS EngineEdition "
    , "    ,CASE WHEN EXISTS( "
    , "        SELECT * FROM sys.server_permissions AS what "
    , "        INNER JOIN sys.server_principals AS who "
    , "            ON who.principal_id = what.grantee_principal_id "
    , "        WHERE(1 = 1) "
    , "        AND what.permission_name = 'ALTER TRACE' "
    , "        AND who.name NOT LIKE '##MS%##' "
    , "        AND who.type_desc <> 'SERVER_ROLE' "
    , "        -- AND who.name IN('COR\COR_DB', 'RZ\COR_PowerUser') "
    , "        AND who.name IN(SELECT name FROM sys.login_token WHERE principal_id > 0) "
    , "    ) "
    , "        OR EXISTS(SELECT name FROM sys.login_token WHERE principal_id > 0 AND name = 'sysadmin') "
    , "        THEN 1 "
    , "        ELSE 0 "
    , "    END AS can_trace "

    , ""
    , ""
    , ""

    , "SELECT "
    , "     db.name "
    , "    ,db.create_date "
    , "    ,db.state_desc "
    , "    ,db.user_access_desc "
    , "    ,db.snapshot_isolation_state_desc "
    , "    ,db.recovery_model_desc "
    , "FROM sys.databases AS db "
    , "WHERE db.owner_sid <> 0x01 "
    , "ORDER BY name "

    , ""
    , ""
    , ""

    , "SELECT "
    , "     ist.TABLE_SCHEMA AS table_schema "
    , "    ,ist.TABLE_NAME AS table_name "
    , "FROM INFORMATION_SCHEMA.TABLES AS ist "
    , "WHERE ist.TABLE_TYPE = 'BASE TABLE' "
    , "ORDER BY table_schema, table_name "
    , ""
].join('\n');


sql = "SELECT 1 AS a\r\nGO\r\nSELECT 2 AS b ";

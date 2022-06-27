
"use strict";



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
    }


    public Read(): string
    {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);

        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(-1);

        return this.m_source[this.m_nextChar++];
    }


    public Peek(): string
    {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);

        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(-1);

        return this.m_source[this.m_nextChar];
    }


    public PeekNum(): number
    {

        if (this.m_nextChar >= this.m_sourceLength)
            return -1;

        this.m_source.charCodeAt(this.m_nextChar);
    }


    public ReadToEnd(): string
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
    public Read2(buffer: string, index: number, count: number): { "charsRead": number, "buffer": string }
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


    public Dispose(): void
    {
        this.m_source = null;
        this.m_errorMessage = null;
    }


}



class SeparatorLineReader
{


    protected Splitter: ScriptSplitter;
    protected _builder: StringBuilder;



    private _foundGo: boolean;
    private _gFound: boolean;


    get WhiteSpace(): boolean
    {
        // return this.Splitter.Current.trim().length === 0;
        return /^\s*$/.test(this.Splitter.Current);
    }

    get EndOfLine(): boolean
{
    return '\n' == this.Splitter.Current;
}


    get Current(): string
    {
        return this.Splitter.Current;
    }

    get LastChar(): string
    {
        return this.Splitter.LastChar;
    }

    get HasNext(): boolean
    {
        return this.Splitter.HasNext;
    }


    get IsQuote(): boolean
    {
        return '\'' == this.Splitter.Current;
    }

    get BeginDashDashComment(): boolean
    {
        return this.Current == '-' && this.Peek() == '-';
    }


    get BeginSlashStarComment(): boolean
    {
        return this.Current == '/' && this.Peek() == '*';
    }

    get EndSlashStarComment(): boolean
    {
        return this.LastChar == '*' && this.Current == '/';
    }



    constructor(splitter: ScriptSplitter)
    {
        this.Splitter = splitter;
        this._builder = new StringBuilder();
    }


    public Reset()
    {
        this._foundGo = false;
        this._gFound = false;
        this._builder = new StringBuilder();
    }



    protected Peek(): string
    {
        // if (!HasNext) { return char.MinValue; }
        return this.Splitter.Peek();
    }


    protected ReadQuotedString()
    {
        this.Splitter.Append(this.Current);
        while (this.Splitter.Next())
        {
            this.Splitter.Append(this.Current);
            if (this.IsQuote)
            {
                return;
            }
        }
    }

    protected ReadDashDashComment(): boolean
    {
        this.Splitter.Append(this.Current);
        while (this.Splitter.Next())
        {
            this.Splitter.Append(this.Current);
            if (this.EndOfLine)
            {
                break;
            }
        }
        //We should be EndOfLine or EndOfScript here.
        this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
        return false;
    }



    protected ReadSlashStarComment()
    {
        if (this.ReadSlashStarCommentWithResult())
        {
            this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
            return;
        }
    }


    private ReadSlashStarCommentWithResult(): boolean
    {
        this.Splitter.Append(this.Current);
        while (this.Splitter.Next())
        {
            if (this.BeginSlashStarComment)
            {
                this.ReadSlashStarCommentWithResult();
                continue;
            }

            this.Splitter.Append(this.Current);

            if (this.EndSlashStarComment)
            {
                return true;
            }
        }
        return false;
    }


    public FoundNonEmptyCharacter(c: string)
    {
        this._builder.Append(c);
        this.Splitter.Append(this._builder.ToString());
        this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
    }

    
    protected CharEquals(compare: string): boolean
    {
        return this.Current.toLowerCase() == compare.toLowerCase();
    }


    protected CharEquals2(expected: string, actual:string): boolean
    {
        return expected.toLowerCase() == actual.toLowerCase();
    }


    protected IsWhiteSpace(s:string): boolean
    {
        // return s.trim().length === 0;
        return /^\s*$/.test(s);
    }

    protected ReadNext(): boolean
    {
        if (this.EndOfLine) //End of line or script
        {
            if (!this._foundGo)
            {
                this._builder.Append(this.Current);
                this.Splitter.Append(this._builder.ToString());
                this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
                return false;
            }
            this.Reset();
            return true;
        }

        if (this.WhiteSpace)
        {
            this._builder.Append(this.Current);
            return false;
        }

        if (!this.CharEquals('g') && !this.CharEquals('o'))
        {
            this.FoundNonEmptyCharacter(this.Current);
            return false;
        }

        if (this.CharEquals('o'))
        {
            if (this.CharEquals2('g', this.LastChar) && !this._foundGo)
            {
                this._foundGo = true;
            }
            else
            {
                this.FoundNonEmptyCharacter(this.Current);
            }
        }

        if (this.CharEquals2('g', this.Current))
        {
            
            if (this._gFound || (!this.IsWhiteSpace(this.LastChar) && this.LastChar != String.fromCharCode(0)))
            {
                this.FoundNonEmptyCharacter(this.Current);
                return false;
            }

            this._gFound = true;
        }

        if (!this.HasNext && this._foundGo)
        {
            this.Reset();
            return true;
        }

        this._builder.Append(this.Current);
        return false;
    }



    public ReadNextSection(): boolean
    {
        if (this.IsQuote)
        {
            this.ReadQuotedString();
            return false;
        }

        if (this.BeginDashDashComment)
        {
            return this.ReadDashDashComment();
        }

        if (this.BeginSlashStarComment)
        {
            this.ReadSlashStarComment();
            return false;
        }

        return this.ReadNext();
    }

}




class ScriptSplitter
{

    protected _reader: StringReader;
    protected _scriptReader: SeparatorLineReader;
    protected _builder: StringBuilder;

    private _current: string;
    private _lastChar: string;



    constructor(script: string)
    {
        this._builder = new StringBuilder();
        this._reader = new StringReader(script);
        this._scriptReader = new SeparatorLineReader(this);
    }


    public SetParser(newReader: SeparatorLineReader)
    {
        this._scriptReader = newReader;
    }



    public Reset()
    {
        this._current = this._lastChar = String.fromCharCode(0); // char.MinValue;
        this._builder = new StringBuilder();
    }


    get HasNext(): boolean
    {
        return this._reader.Peek() != String.fromCharCode(-1);
    }


    get Current(): string
    {
        return this._current;
    }

    get LastChar(): string
    {
        return this._lastChar;
    }




    public Peek(): string
    {
        return this._reader.Peek();
    }


    public Next(): boolean
    {
        if (!this.HasNext)
        {
            return false;
        }

        this._lastChar = this._current;
        this._current = this._reader.Read();
        return true;
    }


    protected Split(): boolean
    {
        return this._scriptReader.ReadNextSection();
    }


    public Append(text: string)
    {
        this._builder.Append(text);
    }



    public GetEnumerator()
    {
        let a:string[] = [];

        while (this.Next())
        {
            if (this.Split())
            {
                let script: string = this._builder.ToString().trim();
                if (script.length > 0)
                {
                    a.push(script);
                }

                this.Reset();
            }
        }
        if (this._builder.Length > 0)
        {
            let scriptRemains: string = this._builder.ToString().trim();
            if (scriptRemains.length > 0)
            {
                a.push(scriptRemains);
            }
        }

        return a;
    }


}
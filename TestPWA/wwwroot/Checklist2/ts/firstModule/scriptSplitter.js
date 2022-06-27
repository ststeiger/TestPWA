"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var ObjectDisposedException = (function (_super) {
    __extends(ObjectDisposedException, _super);
    function ObjectDisposedException(message) {
        var _this = _super.call(this, message) || this;
        _this.name = "ObjectDisposedException";
        Object.setPrototypeOf(_this, ObjectDisposedException.prototype);
        return _this;
    }
    return ObjectDisposedException;
}(Error));
var ArgumentNullException = (function (_super) {
    __extends(ArgumentNullException, _super);
    function ArgumentNullException(message) {
        var _this = _super.call(this, message) || this;
        _this.name = "ArgumentNullException";
        Object.setPrototypeOf(_this, ObjectDisposedException.prototype);
        return _this;
    }
    return ArgumentNullException;
}(Error));
var StringReader = (function () {
    function StringReader(source) {
        this.m_source = source;
        this.m_nextChar = 0;
        this.m_sourceLength = source.length;
        this.m_errorMessage = "Cannot read from a closed CsvReader";
    }
    StringReader.prototype.Read = function () {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);
        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(-1);
        return this.m_source[this.m_nextChar++];
    };
    StringReader.prototype.Peek = function () {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);
        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(-1);
        return this.m_source[this.m_nextChar];
    };
    StringReader.prototype.PeekNum = function () {
        if (this.m_nextChar >= this.m_sourceLength)
            return -1;
        this.m_source.charCodeAt(this.m_nextChar);
    };
    StringReader.prototype.ReadToEnd = function () {
        var toEnd = this.m_source.substr(this.m_nextChar, this.m_sourceLength - this.m_nextChar);
        this.m_nextChar = this.m_sourceLength;
        return toEnd;
    };
    StringReader.prototype.Read2 = function (buffer, index, count) {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);
        var charsToRead;
        if (this.m_nextChar > this.m_sourceLength - count)
            charsToRead = this.m_sourceLength - this.m_nextChar;
        else
            charsToRead = count;
        var sub = this.m_source.substr(this.m_nextChar, charsToRead);
        var prebuffer = buffer.substr(0, index);
        var postBuffer = buffer.substr(index + sub.length);
        var newBuffer = prebuffer + sub + postBuffer;
        this.m_nextChar += charsToRead;
        return { "charsRead": charsToRead, "buffer": newBuffer };
    };
    StringReader.prototype.Dispose = function () {
        this.m_source = null;
        this.m_errorMessage = null;
    };
    return StringReader;
}());
var SeparatorLineReader = (function () {
    function SeparatorLineReader(splitter) {
        this.Splitter = splitter;
        this._builder = new StringBuilder();
    }
    Object.defineProperty(SeparatorLineReader.prototype, "WhiteSpace", {
        get: function () {
            return /^\s*$/.test(this.Splitter.Current);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "EndOfLine", {
        get: function () {
            return '\n' == this.Splitter.Current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "Current", {
        get: function () {
            return this.Splitter.Current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "LastChar", {
        get: function () {
            return this.Splitter.LastChar;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "HasNext", {
        get: function () {
            return this.Splitter.HasNext;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "IsQuote", {
        get: function () {
            return '\'' == this.Splitter.Current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "BeginDashDashComment", {
        get: function () {
            return this.Current == '-' && this.Peek() == '-';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "BeginSlashStarComment", {
        get: function () {
            return this.Current == '/' && this.Peek() == '*';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SeparatorLineReader.prototype, "EndSlashStarComment", {
        get: function () {
            return this.LastChar == '*' && this.Current == '/';
        },
        enumerable: false,
        configurable: true
    });
    SeparatorLineReader.prototype.Reset = function () {
        this._foundGo = false;
        this._gFound = false;
        this._builder = new StringBuilder();
    };
    SeparatorLineReader.prototype.Peek = function () {
        return this.Splitter.Peek();
    };
    SeparatorLineReader.prototype.ReadQuotedString = function () {
        this.Splitter.Append(this.Current);
        while (this.Splitter.Next()) {
            this.Splitter.Append(this.Current);
            if (this.IsQuote) {
                return;
            }
        }
    };
    SeparatorLineReader.prototype.ReadDashDashComment = function () {
        this.Splitter.Append(this.Current);
        while (this.Splitter.Next()) {
            this.Splitter.Append(this.Current);
            if (this.EndOfLine) {
                break;
            }
        }
        this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
        return false;
    };
    SeparatorLineReader.prototype.ReadSlashStarComment = function () {
        if (this.ReadSlashStarCommentWithResult()) {
            this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
            return;
        }
    };
    SeparatorLineReader.prototype.ReadSlashStarCommentWithResult = function () {
        this.Splitter.Append(this.Current);
        while (this.Splitter.Next()) {
            if (this.BeginSlashStarComment) {
                this.ReadSlashStarCommentWithResult();
                continue;
            }
            this.Splitter.Append(this.Current);
            if (this.EndSlashStarComment) {
                return true;
            }
        }
        return false;
    };
    SeparatorLineReader.prototype.FoundNonEmptyCharacter = function (c) {
        this._builder.Append(c);
        this.Splitter.Append(this._builder.ToString());
        this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
    };
    SeparatorLineReader.prototype.CharEquals = function (compare) {
        return this.Current.toLowerCase() == compare.toLowerCase();
    };
    SeparatorLineReader.prototype.CharEquals2 = function (expected, actual) {
        return expected.toLowerCase() == actual.toLowerCase();
    };
    SeparatorLineReader.prototype.IsWhiteSpace = function (s) {
        return /^\s*$/.test(s);
    };
    SeparatorLineReader.prototype.ReadNext = function () {
        if (this.EndOfLine) {
            if (!this._foundGo) {
                this._builder.Append(this.Current);
                this.Splitter.Append(this._builder.ToString());
                this.Splitter.SetParser(new SeparatorLineReader(this.Splitter));
                return false;
            }
            this.Reset();
            return true;
        }
        if (this.WhiteSpace) {
            this._builder.Append(this.Current);
            return false;
        }
        if (!this.CharEquals('g') && !this.CharEquals('o')) {
            this.FoundNonEmptyCharacter(this.Current);
            return false;
        }
        if (this.CharEquals('o')) {
            if (this.CharEquals2('g', this.LastChar) && !this._foundGo) {
                this._foundGo = true;
            }
            else {
                this.FoundNonEmptyCharacter(this.Current);
            }
        }
        if (this.CharEquals2('g', this.Current)) {
            if (this._gFound || (!this.IsWhiteSpace(this.LastChar) && this.LastChar != String.fromCharCode(0))) {
                this.FoundNonEmptyCharacter(this.Current);
                return false;
            }
            this._gFound = true;
        }
        if (!this.HasNext && this._foundGo) {
            this.Reset();
            return true;
        }
        this._builder.Append(this.Current);
        return false;
    };
    SeparatorLineReader.prototype.ReadNextSection = function () {
        if (this.IsQuote) {
            this.ReadQuotedString();
            return false;
        }
        if (this.BeginDashDashComment) {
            return this.ReadDashDashComment();
        }
        if (this.BeginSlashStarComment) {
            this.ReadSlashStarComment();
            return false;
        }
        return this.ReadNext();
    };
    return SeparatorLineReader;
}());
var ScriptSplitter = (function () {
    function ScriptSplitter(script) {
        this._builder = new StringBuilder();
        this._reader = new StringReader(script);
        this._scriptReader = new SeparatorLineReader(this);
    }
    ScriptSplitter.prototype.SetParser = function (newReader) {
        this._scriptReader = newReader;
    };
    ScriptSplitter.prototype.Reset = function () {
        this._current = this._lastChar = String.fromCharCode(0);
        this._builder = new StringBuilder();
    };
    Object.defineProperty(ScriptSplitter.prototype, "HasNext", {
        get: function () {
            return this._reader.Peek() != String.fromCharCode(-1);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptSplitter.prototype, "Current", {
        get: function () {
            return this._current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptSplitter.prototype, "LastChar", {
        get: function () {
            return this._lastChar;
        },
        enumerable: false,
        configurable: true
    });
    ScriptSplitter.prototype.Peek = function () {
        return this._reader.Peek();
    };
    ScriptSplitter.prototype.Next = function () {
        if (!this.HasNext) {
            return false;
        }
        this._lastChar = this._current;
        this._current = this._reader.Read();
        return true;
    };
    ScriptSplitter.prototype.Split = function () {
        return this._scriptReader.ReadNextSection();
    };
    ScriptSplitter.prototype.Append = function (text) {
        this._builder.Append(text);
    };
    ScriptSplitter.prototype.GetEnumerator = function () {
        var a = [];
        while (this.Next()) {
            if (this.Split()) {
                var script = this._builder.ToString().trim();
                if (script.length > 0) {
                    a.push(script);
                }
                this.Reset();
            }
        }
        if (this._builder.Length > 0) {
            var scriptRemains = this._builder.ToString().trim();
            if (scriptRemains.length > 0) {
                a.push(scriptRemains);
            }
        }
        return a;
    };
    return ScriptSplitter;
}());

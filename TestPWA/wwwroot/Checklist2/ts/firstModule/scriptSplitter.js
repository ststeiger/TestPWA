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
function isWhiteSpaceChar(c) {
    var arr = [
        '\u0020',
        '\u00A0',
        '\u1680',
        '\u2000',
        '\u2001',
        '\u2002',
        '\u2003',
        '\u2004',
        '\u2005',
        '\u2006',
        '\u2007',
        '\u2008',
        '\u2009',
        '\u200A',
        '\u202F',
        '\u205F',
        '\u3000',
        '\u2028',
        '\u2029',
        '\u0009',
        '\u000A',
        '\u000B',
        '\u000C',
        '\u000D',
        '\u0085'
    ];
    return (arr.indexOf(c) !== -1);
}
var StringBuilder = (function () {
    function StringBuilder() {
        this.m_list = [];
        this.append = this.append.bind(this);
        this.appendLine = this.appendLine.bind(this);
        this.toString = this.toString.bind(this);
    }
    StringBuilder.prototype.clear = function () {
        this.m_list = null;
        this.m_list = [];
    };
    StringBuilder.prototype.append = function (text) {
        this.m_list.push(text);
    };
    StringBuilder.prototype.appendLine = function (text) {
        this.m_list.push(text);
        this.m_list.push("\r\n");
    };
    StringBuilder.prototype.toString = function () {
        return this.m_list.join("");
    };
    Object.defineProperty(StringBuilder.prototype, "length", {
        get: function () {
            return this.m_list.join("").length;
        },
        enumerable: false,
        configurable: true
    });
    return StringBuilder;
}());
var SqlParseException = (function (_super) {
    __extends(SqlParseException, _super);
    function SqlParseException(message) {
        var _this = _super.call(this, message) || this;
        _this.name = "SqlParseException";
        Object.setPrototypeOf(_this, SqlParseException.prototype);
        return _this;
    }
    return SqlParseException;
}(Error));
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
        this.read = this.read.bind(this);
        this.peek = this.peek.bind(this);
        this.peekNum = this.peekNum.bind(this);
        this.readToEnd = this.readToEnd.bind(this);
        this.read2 = this.read2.bind(this);
    }
    StringReader.prototype.read = function () {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);
        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(0);
        return this.m_source[this.m_nextChar++];
    };
    StringReader.prototype.peek = function () {
        if (this.m_source == null)
            throw new ObjectDisposedException(this.m_errorMessage);
        if (this.m_nextChar >= this.m_sourceLength)
            return String.fromCharCode(0);
        return this.m_source[this.m_nextChar];
    };
    StringReader.prototype.peekNum = function () {
        if (this.m_nextChar >= this.m_sourceLength)
            return -1;
        this.m_source.charCodeAt(this.m_nextChar);
    };
    StringReader.prototype.readToEnd = function () {
        var toEnd = this.m_source.substr(this.m_nextChar, this.m_sourceLength - this.m_nextChar);
        this.m_nextChar = this.m_sourceLength;
        return toEnd;
    };
    StringReader.prototype.read2 = function (buffer, index, count) {
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
    StringReader.prototype.dispose = function () {
        this.m_source = null;
        this.m_errorMessage = null;
    };
    return StringReader;
}());
var ScriptReader = (function () {
    function ScriptReader(splitter) {
        this.m_splitter = splitter;
        this.readNext = this.readNext.bind(this);
        this.readNextSection = this.readNextSection.bind(this);
        this.readDashDashComment = this.readDashDashComment.bind(this);
        this.readQuotedString = this.readQuotedString.bind(this);
        this.readSlashStarComment = this.readSlashStarComment.bind(this);
        this.readSlashStarCommentWithResult = this.readSlashStarCommentWithResult.bind(this);
        this.peek = this.peek.bind(this);
    }
    ScriptReader.prototype.peek = function () {
        if (!this.hasNext) {
            return String.fromCharCode(0);
        }
        return this.m_splitter.peek();
    };
    Object.defineProperty(ScriptReader.prototype, "whiteSpace", {
        get: function () {
            return /^\s*$/.test(this.m_splitter.current);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "endOfLine", {
        get: function () {
            return '\n' == this.m_splitter.current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "current", {
        get: function () {
            return this.m_splitter.current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "lastChar", {
        get: function () {
            return this.m_splitter.lastChar;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "hasNext", {
        get: function () {
            return this.m_splitter.hasNext;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "isQuote", {
        get: function () {
            return '\'' == this.m_splitter.current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "beginDashDashComment", {
        get: function () {
            return this.current == '-' && this.peek() == '-';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "beginSlashStarComment", {
        get: function () {
            return this.current == '/' && this.peek() == '*';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptReader.prototype, "endSlashStarComment", {
        get: function () {
            return this.lastChar == '*' && this.current == '/';
        },
        enumerable: false,
        configurable: true
    });
    ScriptReader.prototype.readDashDashComment = function () {
        this.m_splitter.append(this.current);
        while (this.m_splitter.next()) {
            this.m_splitter.append(this.current);
            if (this.endOfLine) {
                break;
            }
        }
        this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
        return false;
    };
    ScriptReader.prototype.readSlashStarComment = function () {
        if (this.readSlashStarCommentWithResult()) {
            this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
            return;
        }
    };
    ScriptReader.prototype.readSlashStarCommentWithResult = function () {
        this.m_splitter.append(this.current);
        while (this.m_splitter.next()) {
            if (this.beginSlashStarComment) {
                this.readSlashStarCommentWithResult();
                continue;
            }
            this.m_splitter.append(this.current);
            if (this.endSlashStarComment) {
                return true;
            }
        }
        return false;
    };
    ScriptReader.prototype.readQuotedString = function () {
        this.m_splitter.append(this.current);
        while (this.m_splitter.next()) {
            this.m_splitter.append(this.current);
            if (this.isQuote) {
                return;
            }
        }
    };
    ScriptReader.prototype.readNext = function () {
        throw new Error("ABSTRACT: This method must be overriden.");
    };
    ScriptReader.prototype.readNextSection = function () {
        if (this.isQuote) {
            this.readQuotedString();
            return false;
        }
        if (this.beginDashDashComment) {
            return this.readDashDashComment();
        }
        if (this.beginSlashStarComment) {
            this.readSlashStarComment();
            return false;
        }
        return this.readNext();
    };
    ScriptReader.charsAreEqual = function (expected, actual) {
        return expected.toLowerCase() == actual.toLowerCase();
    };
    ScriptReader.prototype.charEquals = function (compare) {
        return ScriptReader.charsAreEqual(this.current, compare);
    };
    return ScriptReader;
}());
var SeparatorLineReader = (function (_super) {
    __extends(SeparatorLineReader, _super);
    function SeparatorLineReader(splitter) {
        var _this = _super.call(this, splitter) || this;
        _this.m_builder = new StringBuilder();
        _this.m_foundGo = false;
        _this.m_gFound = false;
        _this.readNext = _this.readNext.bind(_this);
        _this.reset = _this.reset.bind(_this);
        _this.readDashDashComment = _this.readDashDashComment.bind(_this);
        _this.readSlashStarComment = _this.readSlashStarComment.bind(_this);
        _this.foundNonEmptyCharacter = _this.foundNonEmptyCharacter.bind(_this);
        return _this;
    }
    SeparatorLineReader.prototype.reset = function () {
        this.m_foundGo = false;
        this.m_gFound = false;
        this.m_builder = new StringBuilder();
    };
    SeparatorLineReader.prototype.readDashDashComment = function () {
        if (!this.m_foundGo) {
            _super.prototype.readDashDashComment.call(this);
            return false;
        }
        _super.prototype.readDashDashComment.call(this);
        return true;
    };
    SeparatorLineReader.prototype.readSlashStarComment = function () {
        if (this.m_foundGo) {
            throw new SqlParseException("Incorrect Syntax near GO");
        }
        _super.prototype.readSlashStarComment.call(this);
    };
    SeparatorLineReader.prototype.foundNonEmptyCharacter = function (c) {
        this.m_builder.append(c);
        this.m_splitter.append(this.m_builder.toString());
        this.m_splitter.setParser(new SqlScriptReader(this.m_splitter));
    };
    SeparatorLineReader.prototype.readNext = function () {
        if (this.endOfLine) {
            if (!this.m_foundGo) {
                this.m_builder.append(this.current);
                this.m_splitter.append(this.m_builder.toString());
                this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
                return false;
            }
            this.reset();
            return true;
        }
        if (this.whiteSpace) {
            this.m_builder.append(this.current);
            return false;
        }
        if (!this.charEquals('g') && !this.charEquals('o')) {
            this.foundNonEmptyCharacter(this.current);
            return false;
        }
        if (this.charEquals('o')) {
            if (ScriptReader.charsAreEqual('g', this.lastChar) && !this.m_foundGo) {
                this.m_foundGo = true;
            }
            else {
                this.foundNonEmptyCharacter(this.current);
            }
        }
        if (ScriptReader.charsAreEqual('g', this.current)) {
            if (this.m_gFound || (!(/\s/.test(this.lastChar)) && this.lastChar != String.fromCharCode(0))) {
                this.foundNonEmptyCharacter(this.current);
                return false;
            }
            this.m_gFound = true;
        }
        if (!this.hasNext && this.m_foundGo) {
            this.reset();
            return true;
        }
        this.m_builder.append(this.current);
        return false;
    };
    return SeparatorLineReader;
}(ScriptReader));
var SqlScriptReader = (function (_super) {
    __extends(SqlScriptReader, _super);
    function SqlScriptReader(splitter) {
        var _this = _super.call(this, splitter) || this;
        _this.readNext = _this.readNext.bind(_this);
        return _this;
    }
    SqlScriptReader.prototype.readNext = function () {
        if (this.endOfLine) {
            this.m_splitter.append(this.current);
            this.m_splitter.setParser(new SeparatorLineReader(this.m_splitter));
            return false;
        }
        this.m_splitter.append(this.current);
        return false;
    };
    return SqlScriptReader;
}(ScriptReader));
var ScriptSplitter = (function () {
    function ScriptSplitter(script) {
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
    Object.defineProperty(ScriptSplitter.prototype, "hasNext", {
        get: function () {
            return this._reader.peek() != String.fromCharCode(0);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptSplitter.prototype, "current", {
        get: function () {
            return this._current;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(ScriptSplitter.prototype, "lastChar", {
        get: function () {
            return this._lastChar;
        },
        enumerable: false,
        configurable: true
    });
    ScriptSplitter.prototype.next = function () {
        if (!this.hasNext) {
            return false;
        }
        this._lastChar = this._current;
        this._current = this._reader.read();
        return true;
    };
    ScriptSplitter.prototype.peek = function () {
        return this._reader.peek();
    };
    ScriptSplitter.prototype.split = function () {
        return this._scriptReader.readNextSection();
    };
    ScriptSplitter.prototype.setParser = function (newReader) {
        this._scriptReader = newReader;
    };
    ScriptSplitter.prototype.append = function (text) {
        this._builder.append(text);
    };
    ScriptSplitter.prototype.reset = function () {
        this._current = this._lastChar = String.fromCharCode(0);
        this._builder = new StringBuilder();
    };
    Object.defineProperty(ScriptSplitter.prototype, "scripts", {
        get: function () {
            var scripts = [];
            while (this.next()) {
                if (this.split()) {
                    var script = this._builder.toString().trim();
                    if (script.length > 0) {
                        scripts.push(script);
                    }
                    this.reset();
                }
            }
            if (this._builder.length > 0) {
                var scriptRemains = this._builder.toString().trim();
                if (scriptRemains.length > 0) {
                    scripts.push(scriptRemains);
                }
            }
            return scripts;
        },
        enumerable: false,
        configurable: true
    });
    return ScriptSplitter;
}());
var sql = [
    ,
    "SELECT ",
    "     CAST(SERVERPROPERTY('ServerName') AS nvarchar(MAX)) + ' > ' + DB_NAME() AS db ",
    "    ,SUSER_SNAME() + N' [' + @@LANGUAGE + N']' AS usr ",
    "    ,SUBSTRING(@@VERSION, 1, CHARINDEX(' (', @@version)) AS SqlServer ",
    "    ,SERVERPROPERTY('ProductVersion') AS ProductVersion ",
    "    ,SERVERPROPERTY('ProductLevel') AS ProductLevel ",
    "    ,SERVERPROPERTY('Edition') AS Edition ",
    "    ,SERVERPROPERTY('BuildClrVersion') AS BuildClrVersion ",
    "    ,CASE WHEN EXISTS( ",
    "        SELECT * FROM sys.server_permissions AS what ",
    "        INNER JOIN sys.server_principals AS who ",
    "            ON who.principal_id = what.grantee_principal_id ",
    "        WHERE(1 = 1) ",
    "        AND what.permission_name = 'ALTER TRACE' ",
    "        AND who.name NOT LIKE '##MS%##' ",
    "        AND who.type_desc <> 'SERVER_ROLE' ",
    "        -- AND who.name IN('COR\COR_DB', 'RZ\COR_PowerUser') ",
    "        AND who.name IN(SELECT name FROM sys.login_token WHERE principal_id > 0) ",
    "    ) ",
    "        OR EXISTS(SELECT name FROM sys.login_token WHERE principal_id > 0 AND name = 'sysadmin') ",
    "        THEN 1 ",
    "        ELSE 0 ",
    "    END AS can_trace ",
    "",
    "",
    "",
    "SELECT ",
    "     db.name ",
    "    ,db.create_date ",
    "    ,db.state_desc ",
    "    ,db.user_access_desc ",
    "    ,db.snapshot_isolation_state_desc ",
    "    ,db.recovery_model_desc ",
    "FROM sys.databases AS db ",
    "WHERE db.owner_sid <> 0x01 ",
    "ORDER BY name ",
    "",
    "",
    "",
    "SELECT ",
    "     ist.TABLE_SCHEMA AS table_schema ",
    "    ,ist.TABLE_NAME AS table_name ",
    "FROM INFORMATION_SCHEMA.TABLES AS ist ",
    "WHERE ist.TABLE_TYPE = 'BASE TABLE' ",
    "ORDER BY table_schema, table_name ",
    ""
].join('\n');
sql = "SELECT 1 AS a\r\nGO\r\nSELECT 2 AS b ";

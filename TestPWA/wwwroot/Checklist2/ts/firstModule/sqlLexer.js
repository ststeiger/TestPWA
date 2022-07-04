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
var SqlKeywordType;
(function (SqlKeywordType) {
    SqlKeywordType[SqlKeywordType["Reserved"] = 0] = "Reserved";
    SqlKeywordType[SqlKeywordType["Function"] = 1] = "Function";
    SqlKeywordType[SqlKeywordType["Operator"] = 2] = "Operator";
    SqlKeywordType[SqlKeywordType["From"] = 3] = "From";
    SqlKeywordType[SqlKeywordType["Identifier"] = 4] = "Identifier";
    SqlKeywordType[SqlKeywordType["String"] = 5] = "String";
    SqlKeywordType[SqlKeywordType["Number"] = 6] = "Number";
    SqlKeywordType[SqlKeywordType["Separator"] = 7] = "Separator";
    SqlKeywordType[SqlKeywordType["Comment"] = 8] = "Comment";
    SqlKeywordType[SqlKeywordType["OpenBracket"] = 9] = "OpenBracket";
    SqlKeywordType[SqlKeywordType["CloseBracket"] = 10] = "CloseBracket";
    SqlKeywordType[SqlKeywordType["Go"] = 11] = "Go";
    SqlKeywordType[SqlKeywordType["Unknown"] = 12] = "Unknown";
})(SqlKeywordType || (SqlKeywordType = {}));
var SqlSyntaxTokenType;
(function (SqlSyntaxTokenType) {
    SqlSyntaxTokenType[SqlSyntaxTokenType["String"] = 0] = "String";
    SqlSyntaxTokenType[SqlSyntaxTokenType["DashComment"] = 1] = "DashComment";
    SqlSyntaxTokenType[SqlSyntaxTokenType["SlashComment"] = 2] = "SlashComment";
    SqlSyntaxTokenType[SqlSyntaxTokenType["ScriptSeparator"] = 3] = "ScriptSeparator";
    SqlSyntaxTokenType[SqlSyntaxTokenType["StatementSeparator"] = 4] = "StatementSeparator";
    SqlSyntaxTokenType[SqlSyntaxTokenType["QuotedIdentifier"] = 5] = "QuotedIdentifier";
    SqlSyntaxTokenType[SqlSyntaxTokenType["SingleArgumentOperator"] = 6] = "SingleArgumentOperator";
    SqlSyntaxTokenType[SqlSyntaxTokenType["DoubleArgumentOperator"] = 7] = "DoubleArgumentOperator";
    SqlSyntaxTokenType[SqlSyntaxTokenType["Undefined"] = 8] = "Undefined";
})(SqlSyntaxTokenType || (SqlSyntaxTokenType = {}));
function htmlEnc(s) {
    return s.replace(/&/g, '&amp;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;')
        .replace(/'/g, '&#39;')
        .replace(/"/g, '&#34;');
}
function htmlEncodeWithCharCode(string) {
    var buffer = [];
    for (var i = string.length - 1; i >= 0; i--) {
        buffer.unshift(['&#', string.charCodeAt(i), ';'].join(''));
    }
    return buffer.join('');
}
function htmlEncodeWithTextNode(text) {
    var ta = document.createElement('textarea');
    var tn = document.createTextNode(text);
    ta.appendChild(tn);
    return ta.innerHTML;
}
function stringEquals(a, b) {
    if (a == null && b == null)
        return true;
    if (a == null || b == null)
        return false;
    return a.toLowerCase() === b.toLowerCase();
}
var SqlStringBuilder = (function () {
    function SqlStringBuilder() {
        this.m_list = [];
        this.Append = this.Append.bind(this);
        this.AppendLine = this.AppendLine.bind(this);
        this.ToString = this.ToString.bind(this);
    }
    SqlStringBuilder.prototype.Clear = function () {
        this.m_list = null;
        this.m_list = [];
    };
    SqlStringBuilder.prototype.Append = function (text) {
        this.m_list.push(text);
    };
    SqlStringBuilder.prototype.AppendLine = function (text) {
        this.m_list.push(text);
        this.m_list.push("\r\n");
    };
    SqlStringBuilder.prototype.ToString = function () {
        return this.m_list.join("");
    };
    Object.defineProperty(SqlStringBuilder.prototype, "Length", {
        get: function () {
            return this.m_list.join("").length;
        },
        enumerable: false,
        configurable: true
    });
    return SqlStringBuilder;
}());
var SqlToken = (function () {
    function SqlToken(text, syntaxTokenType, keywordType) {
        this.m_text = "";
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
    Object.defineProperty(SqlToken.prototype, "HtmlText", {
        get: function () {
            return replaceAll(replaceAll(replaceAll(htmlEnc(this.m_text), " ", "&nbsp;"), "\r\n", "\n"), "\n", "<br />");
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlToken.prototype, "Text", {
        get: function () {
            return this.m_text;
        },
        set: function (value) {
            this.m_text = value;
            if (stringEquals("(", this.m_text)) {
                this.KeywordType = SqlKeywordType.OpenBracket;
            }
            else if (stringEquals(")", this.m_text)) {
                this.KeywordType = SqlKeywordType.CloseBracket;
            }
            else if (stringEquals("LEFT", this.m_text))
                this.NeedsPostProcessing = true;
            else if (stringEquals("RIGHT", this.m_text))
                this.NeedsPostProcessing = true;
            else if (stringEquals("INNER", this.m_text)) {
                this.IsPotentialJoinStatement = true;
                this.NeedsPostProcessing = true;
            }
            else if (stringEquals("OUTER", this.m_text)) {
                this.IsPotentialJoinStatement = true;
                this.NeedsPostProcessing = true;
            }
            else if (stringEquals("FULL", this.m_text))
                this.NeedsPostProcessing = true;
            else if (stringEquals("CROSS", this.m_text))
                this.NeedsPostProcessing = true;
            else if (stringEquals("NATURAL", this.m_text))
                this.NeedsPostProcessing = true;
            else if (stringEquals("JOIN", this.m_text)) {
                this.IsJoinStatement = true;
                this.KeywordType = SqlKeywordType.From;
            }
            else if (stringEquals("APPLY", this.m_text)) {
                this.IsJoinStatement = true;
                this.NeedsPostProcessing = true;
            }
            else if (stringEquals("LATERAL", this.m_text)) {
                this.IsJoinStatement = true;
                this.KeywordType = SqlKeywordType.From;
            }
            else if (stringEquals("NOT", this.m_text)) {
                this.KeywordType = SqlKeywordType.Operator;
                this.SyntaxTokenType = SqlSyntaxTokenType.SingleArgumentOperator;
            }
            else if (stringEquals("AND", this.m_text)) {
                this.KeywordType = SqlKeywordType.Operator;
                this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
            }
            else if (stringEquals("OR", this.m_text)) {
                this.KeywordType = SqlKeywordType.Operator;
                this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
            }
            else if (stringEquals("ANY", this.m_text)) {
                this.KeywordType = SqlKeywordType.Operator;
                this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
            }
            else if (stringEquals("ALL", this.m_text)) {
                this.KeywordType = SqlKeywordType.Operator;
                this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
                this.NeedsPostProcessing = true;
            }
            else if (stringEquals("LIKE", this.m_text)) {
                this.KeywordType = SqlKeywordType.Operator;
                this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
            }
            else if (stringEquals("ILIKE", this.m_text)) {
                this.KeywordType = SqlKeywordType.Operator;
                this.SyntaxTokenType = SqlSyntaxTokenType.DoubleArgumentOperator;
            }
        },
        enumerable: false,
        configurable: true
    });
    SqlToken.prototype.NextNonSeparatorIncludingBracket = function () {
        var foo = this;
        while ((foo = foo.Next) != null) {
            if (((foo.SyntaxTokenType != SqlSyntaxTokenType.StatementSeparator)
                || (foo.KeywordType != SqlKeywordType.OpenBracket))
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.DashComment)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.SlashComment))
                return foo;
        }
        return foo;
    };
    SqlToken.prototype.NextNonSeparator = function () {
        var foo = this;
        while ((foo = foo.Next) != null) {
            if ((foo.SyntaxTokenType != SqlSyntaxTokenType.StatementSeparator)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.DashComment)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.SlashComment))
                return foo;
        }
        return foo;
    };
    SqlToken.prototype.PreviousNonSeparator = function () {
        var foo = this;
        while ((foo = foo.Previous) != null) {
            if ((foo.SyntaxTokenType != SqlSyntaxTokenType.StatementSeparator)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.DashComment)
                && (foo.SyntaxTokenType != SqlSyntaxTokenType.SlashComment))
                return foo;
        }
        return foo;
    };
    return SqlToken;
}());
var Helper = (function () {
    function Helper() {
    }
    Helper.IsNewLine = function (c) {
        if (c == '\r' || c == '\n')
            return true;
        return false;
    };
    Helper.IsWhiteSpace = function (c) {
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
        if (c == '\u00A0')
            return true;
        if (c == '\uFEFF')
            return true;
        return /^\s*$/.test(c);
    };
    return Helper;
}());
function replaceAll(str, find, newToken, ignoreCase) {
    var i = -1;
    if (!str) {
        if ((str == null) && (find == null))
            return newToken;
        return str;
    }
    if (!find)
        return str;
    ignoreCase = ignoreCase || false;
    find = ignoreCase ? find.toLowerCase() : find;
    while ((i = (ignoreCase ? str.toLowerCase() : str).indexOf(find, i >= 0 ? i + newToken.length : 0)) !== -1) {
        str = str.substring(0, i) +
            newToken +
            str.substring(i + find.length);
    }
    return str;
}
var SqlStringReader = (function () {
    function SqlStringReader(sql) {
        sql = SqlStringReader.Substitute(sql);
        this.m_charArray = sql.split("");
        this.m_length = this.m_charArray.length;
        this.m_currentPosition = -1;
    }
    SqlStringReader.Substitute = function (text) {
        return replaceAll(replaceAll(replaceAll(text, "''", "\b"), "\"\"", "\u0005"), "]]", "\u0006");
    };
    SqlStringReader.BackSubstitute = function (text) {
        return replaceAll(replaceAll(replaceAll(text, "\b", "''"), "\u0005", "\"\""), "\u0006", "]]");
    };
    SqlStringReader.prototype.Peek = function (offset) {
        offset = offset || this.m_currentPosition;
        if (offset < 0 || offset >= this.m_length)
            return null;
        return this.m_charArray[offset];
    };
    SqlStringReader.prototype.PeekRelativeOffset = function (offset) {
        var pos = this.m_currentPosition + offset;
        return this.Peek(pos);
    };
    Object.defineProperty(SqlStringReader.prototype, "Current", {
        get: function () {
            return this.Peek();
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "Next", {
        get: function () {
            return this.PeekRelativeOffset(1);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "Previous", {
        get: function () {
            return this.PeekRelativeOffset(-1);
        },
        enumerable: false,
        configurable: true
    });
    SqlStringReader.prototype.GoToNext = function () {
        var pos = this.m_currentPosition + 1;
        if (pos < 0 || pos >= this.m_length)
            return false;
        this.m_currentPosition = pos;
        return true;
    };
    SqlStringReader.prototype.GoToPrevious = function () {
        var pos = this.m_currentPosition - 1;
        if (pos < 0 || pos >= this.m_length)
            return false;
        this.m_currentPosition = pos;
        return true;
    };
    Object.defineProperty(SqlStringReader.prototype, "IsBeginSlashStarComment", {
        get: function () {
            return this.Current == '/' && this.Next == '*';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsEndSlashStarComment", {
        get: function () {
            return this.Current == '*' && this.Next == '/';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsBeginDashDashComment", {
        get: function () {
            return this.Current == '-' && this.Next == '-';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsEndOfLine", {
        get: function () {
            return this.Current == '\n';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsQuote", {
        get: function () {
            return this.Current == '\'';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsDoubleQuote", {
        get: function () {
            return this.Current == '"';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsOpenSquareBracket", {
        get: function () {
            return this.Current == '[';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsCloseSquareBracket", {
        get: function () {
            return this.Current == ']';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsBackspace", {
        get: function () {
            return this.Current == '\b';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsEnquiry", {
        get: function () {
            return this.Current == '\u0005';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsAcknowledge", {
        get: function () {
            return this.Current == '\u0006';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsComma", {
        get: function () {
            return this.Current == ',';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsSemicolon", {
        get: function () {
            return this.Current == ';';
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsBracket", {
        get: function () {
            return (this.Current == '(' || this.Current == ')');
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsOperator", {
        get: function () {
            return (this.Current == '!' ||
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
                this.Current == '|');
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsGoStatement", {
        get: function () {
            if (this.Current == null || this.Next == null)
                return false;
            return (this.Current.toLowerCase() == 'g' && this.Next.toLowerCase() == 'o');
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsDoubleOperator", {
        get: function () {
            return ((this.Current == '&' && this.Next == '&') ||
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
                (this.Current == '^' && this.Next == '='));
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsWhiteSpace", {
        get: function () {
            var c = this.Current;
            if (c != null)
                return Helper.IsWhiteSpace(c);
            return true;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "NextIsWhiteSpace", {
        get: function () {
            var c = this.Next;
            if (c != null)
                return Helper.IsWhiteSpace(c);
            return true;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "PreviousIsWhiteSpace", {
        get: function () {
            var c = this.Previous;
            if (c != null)
                return Helper.IsWhiteSpace(c);
            return true;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SqlStringReader.prototype, "IsStatementSeparator", {
        get: function () {
            var c = this.Current;
            if (c != null) {
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
        },
        enumerable: false,
        configurable: true
    });
    SqlStringReader.prototype.ReadQuotedString = function () {
        var sb = new SqlStringBuilder();
        sb.Append(this.Current);
        while (this.GoToNext()) {
            sb.Append(this.Current);
            if (this.IsQuote) {
                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }
        return SqlStringReader.BackSubstitute(sb.ToString());
    };
    SqlStringReader.prototype.ReadDoubleQuotedString = function () {
        var sb = new SqlStringBuilder();
        sb.Append(this.Current);
        while (this.GoToNext()) {
            sb.Append(this.Current);
            if (this.IsDoubleQuote) {
                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }
        return SqlStringReader.BackSubstitute(sb.ToString());
    };
    SqlStringReader.prototype.ReadSquareBracketString = function () {
        var sb = new SqlStringBuilder();
        sb.Append(this.Current);
        while (this.GoToNext()) {
            sb.Append(this.Current);
            if (this.IsCloseSquareBracket) {
                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }
        return SqlStringReader.BackSubstitute(sb.ToString());
    };
    SqlStringReader.prototype.ReadDashDashComment = function () {
        var sb = new SqlStringBuilder();
        sb.Append(this.Current);
        while (this.GoToNext()) {
            sb.Append(this.Current);
            if (this.Next == '\r' || this.Next == '\n')
                break;
        }
        return SqlStringReader.BackSubstitute(sb.ToString());
    };
    SqlStringReader.prototype.ReadStatementSeparator = function () {
        var sb = new SqlStringBuilder();
        sb.Append(this.Current);
        while (this.GoToNext()) {
            if (this.IsStatementSeparator && !this.IsBracket && !this.IsBeginDashDashComment && !this.IsBeginSlashStarComment && !this.IsBackspace && !this.IsEndSlashStarComment && !this.IsQuote)
                sb.Append(this.Current);
            else {
                this.GoToPrevious();
                break;
            }
        }
        return sb.ToString();
    };
    SqlStringReader.prototype.ReadSlashStarCommentWithResult = function () {
        var sb = new SqlStringBuilder();
        sb.Append(this.Current);
        while (this.GoToNext()) {
            if (this.IsBeginSlashStarComment) {
                var innerComment = this.ReadSlashStarCommentWithResult();
                sb.Append(innerComment);
                continue;
            }
            sb.Append(this.Current);
            if (this.IsEndSlashStarComment) {
                this.GoToNext();
                sb.Append(this.Current);
                return SqlStringReader.BackSubstitute(sb.ToString());
            }
        }
        return SqlStringReader.BackSubstitute(sb.ToString());
    };
    SqlStringReader.Test = function () {
        var sql = "SELECT * FROM T_Benutzer AS foo";
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
        sql = "\n        SELECT\n        123 * 758.13 / 13 % 5 + 1 - 7 AS expr\n            , '' as abc 'd''Alambert'AS \"\"abc def, []ghi\"\"\n                , 123 AS[hello[]] world, now]\n,CASE @in_sprache \n   WHEN 'DE' THEN xxx_DE \n   WHEN 'FR' THEN xxx_FR \n   WHEN 'IT' THEN xxx_IT \n   ELSE xxx_en \n END AS xxx\n            , LTRIM(RTRIM(abc)) \n\nFROM T_Benutzer AS foo \n\nLEFT JOIN T_Benutzergruppen \n    ON 1 = 2 \";\n\n\n        sql = @\"\n\n\nIF 1 = 2\n        BEGIN\n    PRINT 'FOO';\n        END\n\nSELECT current_timestamp, current_user, varchar(MAX), pretzelkoenig('test')\n\n\n            ;WITH RECURSIVE CTE AS\n                (\n                    SELECT \n        1 AS i\n                    , array[1] AS paths \n\n    UNION ALL \n\n    SELECT \n         CTE.i + 1 AS i\n                    , CTE.paths || (CTE.i + 1) AS paths\n    FROM CTE\n    WHERE CTE.i < 10000\n    AND CTE.i = ANY(CTE.paths) \n    --AND CTE.i <> ALL(CTE.paths)\n                )\nSELECT i FROM CTE\n\n\n\n        SELECT * \n, apply(5, 3) AS ppl\n        -- , LEFT(abc, 5) AS lll, RIGHT('abc', 2) AS rrrr, FULL(123, 5) AS fff \nFROM T_Benutzer \nLEFT OUTER JOIN T_Benutzergruppen AS t1 ON 1 = 2\n        --LEFT INNER JOIN T_Benutzergruppen AS t2 ON 1 = 2 \nRIGHT JOIN T_Benutzergruppen AS t2 ON 1 = 2 \nNATURAL JOIN T_Benutzergruppen AS t2 ON 1 = 2 \n\n\n\nCROSS JOIN T_Benutzergruppen AS t3\n\n        --FULL OUTER JOIN T_Benutzergruppen AS t4 ON 1 = 2\n        --FULL JOIN T_Benutzergruppen AS t4 ON 1 = 2 \n\nOUTER APPLY(SELECT 123 AS outerApplied) AS t5\n\nCROSS APPLY(SELECT 123 AS crossApplied) AS t6 \n\n\nLEFT JOIN LATERAL(SELECT 123 AS crossApplied) AS t7 \nINNER JOIN LATERAL(SELECT 123 AS crossApplied) AS t8 \nCROSS JOIN LATERAL(SELECT 123 AS crossApplied) AS t9\n\n\n\n        ";
    };
    SqlStringReader.Lexme = function (sql) {
        var x = new SqlStringReaderImpl(sql);
        var ls = [];
        var sb = new SqlStringBuilder();
        while (x.GoToNext()) {
            if (x.IsQuote) {
                var quotedString = x.ReadQuotedString();
                ls.push(new SqlToken(quotedString, SqlSyntaxTokenType.String, SqlKeywordType.String));
                sb.Clear();
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsBeginSlashStarComment) {
                var slashComment = x.ReadSlashStarCommentWithResult();
                ls.push(new SqlToken(slashComment, SqlSyntaxTokenType.SlashComment, SqlKeywordType.Comment));
                sb.Clear();
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsBeginDashDashComment) {
                var dashComment = x.ReadDashDashComment();
                ls.push(new SqlToken(dashComment, SqlSyntaxTokenType.DashComment, SqlKeywordType.Comment));
                sb.Clear();
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsDoubleQuote) {
                var quotedString = x.ReadDoubleQuotedString();
                ls.push(new SqlToken(quotedString, SqlSyntaxTokenType.QuotedIdentifier, SqlKeywordType.Identifier));
                sb.Clear();
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsOpenSquareBracket) {
                var quotedString = x.ReadSquareBracketString();
                ls.push(new SqlToken(quotedString, SqlSyntaxTokenType.QuotedIdentifier, SqlKeywordType.Identifier));
                sb.Clear();
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsBackspace) {
                var foo_1 = sb.ToString();
                if (!!foo_1)
                    throw new Error("damn");
                sb.Clear();
                ls.push(new SqlToken("''", SqlSyntaxTokenType.String, SqlKeywordType.String));
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsEnquiry) {
                var foo_2 = sb.ToString();
                if (!!foo_2)
                    throw new Error("damn");
                sb.Clear();
                ls.push(new SqlToken("\"\"", SqlSyntaxTokenType.String, SqlKeywordType.String));
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsAcknowledge) {
                var foo_3 = sb.ToString();
                if (!!foo_3)
                    throw new Error("damn");
                sb.Clear();
                ls.push(new SqlToken("]]", SqlSyntaxTokenType.String, SqlKeywordType.String));
                if (!x.NextIsWhiteSpace)
                    ls.push(new SqlToken("", SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsDoubleOperator) {
                var foo_4 = sb.ToString();
                if (!!foo_4)
                    ls.push(new SqlToken(foo_4, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));
                sb.Clear();
                var doubleOperator = x.Current + x.Next;
                ls.push(new SqlToken(doubleOperator, SqlSyntaxTokenType.DoubleArgumentOperator, SqlKeywordType.Operator));
                x.GoToNext();
                continue;
            }
            if (x.IsOperator) {
                var foo_5 = sb.ToString();
                if (!!foo_5)
                    ls.push(new SqlToken(foo_5, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));
                sb.Clear();
                ls.push(new SqlToken(x.Current, SqlSyntaxTokenType.SingleArgumentOperator, SqlKeywordType.Operator));
                continue;
            }
            if (x.IsStatementSeparator) {
                var statement = sb.ToString();
                if (!!statement)
                    ls.push(new SqlToken(statement, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));
                sb.Clear();
                statement = x.ReadStatementSeparator();
                ls.push(new SqlToken(statement, SqlSyntaxTokenType.StatementSeparator, SqlKeywordType.Separator));
                continue;
            }
            if (x.IsGoStatement) {
                var statement = sb.ToString();
                if (!!statement)
                    ls.push(new SqlToken(statement, SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));
                sb.Clear();
                ls.push(new SqlToken("GO", SqlSyntaxTokenType.ScriptSeparator, SqlKeywordType.Go));
                x.GoToNext();
                continue;
            }
            sb.Append(x.Current);
        }
        if (sb.Length != 0)
            ls.push(new SqlToken(sb.ToString(), SqlSyntaxTokenType.Undefined, SqlKeywordType.Identifier));
        for (var i = 0; i < ls.length; ++i) {
            if (i != 0)
                ls[i].Previous = ls[i - 1];
            if (i != ls.length - 1)
                ls[i].Next = ls[i + 1];
        }
        for (var i = 0; i < ls.length; ++i) {
            if (ls[i].NeedsPostProcessing) {
                var potentialToken = ls[i].NextNonSeparator();
                var realToken = potentialToken;
                if (potentialToken != null && potentialToken.IsPotentialJoinStatement)
                    realToken = potentialToken.NextNonSeparator();
                if (realToken != null && realToken.IsJoinStatement) {
                    potentialToken.KeywordType = SqlKeywordType.From;
                    realToken.KeywordType = SqlKeywordType.From;
                    ls[i].KeywordType = SqlKeywordType.From;
                    potentialToken.NeedsPostProcessing = false;
                    realToken.NeedsPostProcessing = false;
                    ls[i].NeedsPostProcessing = false;
                }
                if (stringEquals("ALL", ls[i].Text)) {
                    var previousToken = ls[i].PreviousNonSeparator();
                    if (previousToken != null && stringEquals("UNION", previousToken.Text)) {
                        ls[i].SyntaxTokenType = SqlSyntaxTokenType.Undefined;
                        ls[i].KeywordType = SqlKeywordType.Reserved;
                    }
                }
            }
        }
        var list_of_reserved_words = [
            "BIT", "BOOLEAN", "CHAR", "NCHAR", "VARCHAR", "NVARCHAR",
            "NATIONAL", "CHARACTER", "VARYING",
            "CURSOR", "OPEN", "CLOSE", "WHILE", "FETCH", "NEXT", "DEALLOCATE",
            "TRAN", "TRANSACTION", "COMMIT", "ROLLBACK",
            "BACKUP", "RESTORE", "CHECKPOINT",
            "DATE", "TIME", "DATETIME", "TIMESTAMP", "UNIQUEIDENTIFIER",
            "INT", "INTEGER", "ARRAY", "FLOAT", "REAL", "DECIMAL",
            "TABLE", "VIEW", "COLUMN", "TRIGGER", "FUNCTION", "PROCEDURE", "INDEX", "DOMAIN", "CONSTRAINT", "UNIQUE", "RULE",
            "DECLARE", "SET", "PRINT", "READONLY", "OUTPUT",
            "WITH", "RECURSIVE", "AS", "CONNECT", "NOCYCLE", "PRIOR", "OPTION", "MAXRECURSION", "WITHIN",
            "CREATE", "REPLACE", "ALTER", "DROP", "SELECT", "INSERT", "INTO", "VALUES", "MERGE", "UPDATE", "DELETE", "TRUNCATE",
            "EXEC", "EXECUTE", "EXISTS", "RETURNS", "BEGIN", "END", "IF", "BREAK", "CONTINUE", "GOTO", "EXIT",
            "FROM", "UNION", "EXCEPT", "INTERSECT", "DISTINCT", "GROUP", "BY", "DISTRIBUTED",
            "ORDER", "ASC", "DESC", "COLLATE", "LIMIT", "OFFSET", "TOP", "PERCENT",
            "CASE", "WHEN", "ELSE", "ESCAPE", "OVER",
            "TRUE", "FALSE", "ON", "OFF", "OF",
            "GRANT", "REVOKE", "DENY", "STATISTICS", "WAITFOR",
            "FOREIGN", "KEY", "REFERENCES", "NOCHECK", "CASCADE", "DEFAULT", "PERSIST",
            "OPENROWSET", "OPENQUERY", "OPENDATASOURCE",
            "FILLFACTOR", "FREETEXT", "FREETEXTTABLE", "READTEXT", "WRITETEXT", "TEXTSIZE",
            "SEMANTICKEYPHRASETABLE", "SEMANTICSIMILARITYDETAILSTABLE", "SEMANTICSIMILARITYTABLE",
            "CONTAINSTABLE", "EXPLAIN", "PLAN", "TABLESAMPLE",
            "GO", "START", "UNPIVOT", "NONCLUSTERED", "DBCC", "RECONFIGURE", "DUMP"
        ];
        var list_of_functions = [
            "CURRENT_DATE", "CURRENT_TIME", "CURRENT_TIMESTAMP", "CURRENT_USER", "SESSION_USER",
            "ERROR_MESSAGE", "ERROR_SEVERITY", "ERROR_STATE", "ERRLVL", "LINENO",
            "NANOSECOND", "MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY",
            "DAYOFYEAR", "WEEKDAY", "WEEK", "ISO_WEEK", "MONTH", "QUARTER", "YEAR",
            "MAX", "MIN", "LEAST", "GREATEST", "CONVERT", "TRY_CONVERT", "CAST", "TRY_CAST",
            "ROW_NUMBER", "DENSE_RANK", "RANK", "NTILE", "SUM", "COUNT", "NULLIF", "ISNULL", "COALESCE",
            "RAISERROR"
        ];
        var list_of_joins = [
            "LEFT", "RIGHT", "INNER", "OUTER", "FULL", "NATURAL", "JOIN", "APPLY"
        ];
        list_of_reserved_words.sort();
        list_of_functions.sort();
        list_of_joins.sort();
        var reserved_words = new CaseInsensitiveSet(list_of_reserved_words);
        var functions = new CaseInsensitiveSet(list_of_functions);
        var joins = new CaseInsensitiveSet(list_of_joins);
        for (var i = 0; i < ls.length; ++i) {
            var potentialBracket = ls[i].NextNonSeparatorIncludingBracket();
            if (potentialBracket != null && potentialBracket.KeywordType == SqlKeywordType.OpenBracket) {
                if (ls[i].KeywordType != SqlKeywordType.From
                    && ls[i].KeywordType != SqlKeywordType.Operator) {
                    if (reserved_words.has(ls[i].Text))
                        ls[i].KeywordType = SqlKeywordType.Reserved;
                    else
                        ls[i].KeywordType = SqlKeywordType.Function;
                }
            }
        }
        for (var i = 0; i < ls.length; ++i) {
            if (ls[i].KeywordType == SqlKeywordType.Function)
                continue;
            var txt = ls[i].Text;
            if (reserved_words.has(txt)) {
                ls[i].KeywordType = SqlKeywordType.Reserved;
            }
            if (functions.has(txt)) {
                ls[i].KeywordType = SqlKeywordType.Function;
            }
            if (joins.has(txt)) {
                ls[i].KeywordType = SqlKeywordType.From;
            }
        }
        return ls;
    };
    SqlStringReader.SeparateScript = function (t) {
        var ret = [];
        var ls = SqlStringReader.Lexme(t);
        var sbb = new SqlStringBuilder();
        for (var i = 0; i < ls.length; ++i) {
            var mytok = ls[i];
            if (mytok.KeywordType == SqlKeywordType.Go) {
                ret.push(sbb.ToString());
                sbb.Clear();
            }
            else
                sbb.Append(mytok.Text);
        }
        var s = sbb.ToString();
        sbb.Clear();
        if (s.length > 0)
            ret.push(s);
        return ret;
    };
    SqlStringReader.LexToHtml = function (t) {
        var ls = SqlStringReader.Lexme(t);
        var colors = [
            "blue",
            "hotpink",
            "gray",
            "#A0A0A0",
            "black",
            "red",
            "black",
            "black",
            "green",
            "black",
            "black",
            "black",
        ];
        var sbb = new SqlStringBuilder();
        sbb.AppendLine("\n    <html>\n        <head></head>\n        <body>\n        ");
        for (var i = 0; i < ls.length; ++i) {
            var mytok = ls[i];
            var html = mytok.HtmlText;
            var color = colors[mytok.KeywordType];
            sbb.Append("<span style=\"color: ");
            sbb.Append(color);
            sbb.Append(";\">");
            sbb.Append(html);
            sbb.Append("</span>");
        }
        sbb.AppendLine("</body>\n    </html>");
        var s = sbb.ToString();
        sbb.Clear();
        return s;
    };
    return SqlStringReader;
}());
var SqlStringReaderImpl = (function (_super) {
    __extends(SqlStringReaderImpl, _super);
    function SqlStringReaderImpl(text) {
        return _super.call(this, text) || this;
    }
    return SqlStringReaderImpl;
}(SqlStringReader));
var CaseInsensitiveSet = (function () {
    function CaseInsensitiveSet(values) {
        this.m_objects = {};
        for (var i = 0; i < values.length; ++i) {
            this.m_objects[values[i]] = true;
        }
    }
    CaseInsensitiveSet.prototype.add = function (str) {
        this.m_objects[str.toLowerCase()] = true;
    };
    CaseInsensitiveSet.prototype.has = function (str) {
        if (this.m_objects[str.toLowerCase()])
            return true;
        return false;
    };
    CaseInsensitiveSet.prototype.delete = function (str) {
        delete this.m_objects[str.toLowerCase()];
    };
    return CaseInsensitiveSet;
}());

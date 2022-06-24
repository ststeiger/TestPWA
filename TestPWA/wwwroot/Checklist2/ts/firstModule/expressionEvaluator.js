"use strict";
Object.values = Object.values ? Object.values : function (obj) {
    var allowedTypes = ["[object String]", "[object Object]", "[object Array]", "[object Function]"];
    var objType = Object.prototype.toString.call(obj);
    if (obj === null || typeof obj === "undefined") {
        throw new TypeError("Cannot convert undefined or null to object");
    }
    else if (!~allowedTypes.indexOf(objType)) {
        return [];
    }
    else {
        if (Object.keys) {
            return Object.keys(obj).map(function (key) {
                return obj[key];
            });
        }
        var result = [];
        for (var prop in obj) {
            if (obj.hasOwnProperty(prop)) {
                result.push(obj[prop]);
            }
        }
        return result;
    }
};
var ExpressionEvaluator = (function () {
    function ExpressionEvaluator() {
        this._symbols = {};
        this.defineOperator("!", this.factorial, "postfix", 6);
        this.defineOperator("^", Math.pow, "infix", 5, true);
        this.defineOperator("*", this.multiplication, "infix", 4);
        this.defineOperator("/", this.division, "infix", 4);
        this.defineOperator("+", this.last, "prefix", 3);
        this.defineOperator("-", this.negation, "prefix", 3);
        this.defineOperator("+", this.addition, "infix", 2);
        this.defineOperator("-", this.subtraction, "infix", 2);
        this.defineOperator(",", Array.of, "infix", 1);
        this.defineOperator("(", this.last, "prefix");
        this.defineOperator(")", null, "postfix");
        this.defineOperator("min", Math.min);
        this.defineOperator("max", Math.max);
        this.defineOperator("sqrt", Math.sqrt);
        this.defineOperator("cbrt", Math.cbrt);
    }
    ExpressionEvaluator.prototype.defineOperator = function (symbol, f, notation, precedence, rightToLeft) {
        var _a;
        if (notation === void 0) { notation = "func"; }
        if (precedence === void 0) { precedence = 0; }
        if (rightToLeft === void 0) { rightToLeft = false; }
        if (notation === "func")
            precedence = 0;
        this._symbols[symbol] = Object.assign({}, this._symbols[symbol], (_a = {},
            _a[notation] = {
                symbol: symbol,
                f: f,
                notation: notation,
                precedence: precedence,
                rightToLeft: rightToLeft,
                argCount: 1 + (notation === "infix")
            },
            _a.symbol = symbol,
            _a.regSymbol = symbol.replace(/[\\^$*+?.()|[\]{}]/g, '\\$&')
                + (/\w$/.test(symbol) ? "\\b" : ""),
            _a));
    };
    ExpressionEvaluator.prototype.last = function () {
        var a = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            a[_i] = arguments[_i];
        }
        return a[a.length - 1];
    };
    ExpressionEvaluator.prototype.negation = function (a) { return -a; };
    ExpressionEvaluator.prototype.addition = function (a, b) { return a + b; };
    ExpressionEvaluator.prototype.subtraction = function (a, b) { return a - b; };
    ExpressionEvaluator.prototype.multiplication = function (a, b) { return a * b; };
    ExpressionEvaluator.prototype.division = function (a, b) { return a / b; };
    ExpressionEvaluator.prototype.factorial = function (a) {
        if (a % 1 || !(+a >= 0))
            return NaN;
        if (a > 170)
            return Infinity;
        var b = 1;
        while (a > 1)
            b *= a--;
        return b;
    };
    ExpressionEvaluator.prototype.calculate = function (expression) {
        var match;
        var values = [];
        var operators = [this._symbols["("].prefix];
        var exec = function () {
            var op = operators.pop();
            values.push(op.f.apply(op, [].concat.apply([], values.splice(-op.argCount))));
            return op.precedence;
        };
        var error = function (msg) {
            var notation = match ? match.index : expression.length;
            return "".concat(msg, " at ").concat(notation, ":\n").concat(expression, "\n").concat(' '.repeat(notation), "^");
        };
        var pattern = new RegExp("\\d+(?:\\.\\d+)?|"
            + Object.values(this._symbols)
                .sort(function (a, b) { return b.symbol.length - a.symbol.length; })
                .map(function (val) { return val.regSymbol; }).join('|')
            + "|(\\S)", "g");
        var afterValue = false;
        pattern.lastIndex = 0;
        do {
            match = pattern.exec(expression);
            var _a = match || [")", undefined], token = _a[0], bad = _a[1], notNumber = this._symbols[token], notNewValue = notNumber && !notNumber.prefix && !notNumber.func, notAfterValue = !notNumber || !notNumber.postfix && !notNumber.infix;
            if (bad || (afterValue ? notAfterValue : notNewValue))
                return error("Syntax error");
            if (afterValue) {
                var curr = notNumber.postfix || notNumber.infix;
                do {
                    var prev = operators[operators.length - 1];
                    if (((curr.precedence - prev.precedence) || prev.rightToLeft) > 0)
                        break;
                } while (exec());
                afterValue = curr.notation === "postfix";
                if (curr.symbol !== ")") {
                    operators.push(curr);
                    if (afterValue)
                        exec();
                }
            }
            else if (notNumber) {
                operators.push(notNumber.prefix || notNumber.func);
                if (notNumber.func) {
                    match = pattern.exec(expression);
                    if (!match || match[0] !== "(")
                        return error("Function needs parentheses");
                }
            }
            else {
                values.push(+token);
                afterValue = true;
            }
        } while (match && operators.length);
        return operators.length ? error("Missing closing parenthesis")
            : match ? error("Too many closing parentheses")
                : values.pop();
    };
    return ExpressionEvaluator;
}());
var instance = new ExpressionEvaluator();
function perform() {
    var expr = document.getElementById('expr').value, result = instance.calculate(expr);
    document.getElementById('out').textContent = isNaN(result) ? result.toString() : '=' + result.toString();
}
document.getElementById('expr').addEventListener('input', perform);
perform();
var tests = [
    { expr: '1+2', expected: 3 },
    { expr: '1+2*3', expected: 7 },
    { expr: '1+2*3^2', expected: 19 },
    { expr: '1+2*2^3^2', expected: 1025 },
    { expr: '-3!', expected: -6 },
    { expr: '12---11+1-3', expected: -1 },
    { expr: 'min(2,1,3)', expected: 1 },
    { expr: '(2,1,3)', expected: 3 },
    { expr: '4-min(sqrt(2+2*7),9,5)', expected: 0 },
    { expr: '2,3,10', expected: 10 }
];
for (var _i = 0, tests_1 = tests; _i < tests_1.length; _i++) {
    var _a = tests_1[_i], expr = _a.expr, expected = _a.expected;
    var result = instance.calculate(expr);
    console.assert(result === expected, "".concat(expr, " should be ").concat(expected, ", but gives ").concat(result));
}

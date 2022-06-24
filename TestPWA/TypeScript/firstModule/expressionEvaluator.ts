"use strict";

// The Object.values() method returns an array of a given object's own enumerable property values, 
// in the same order as that provided by a for...in loop

(<any>Object).values = (<any>Object).values ? (<any>Object).values : function (obj: any)
{
    let allowedTypes = ["[object String]", "[object Object]", "[object Array]", "[object Function]"];
    let objType = Object.prototype.toString.call(obj);

    if (obj === null || typeof obj === "undefined")
    {
        throw new TypeError("Cannot convert undefined or null to object");
    }
    else if (!~allowedTypes.indexOf(objType))
    {
        return [];
    }
    else
    {
        // if ES6 is supported
        if (Object.keys)
        {
            return Object.keys(obj).map(
                function (key)
                {
                    return obj[key];
                }
            );
        }

        let result = [];
        for (let prop in obj)
        {
            if (obj.hasOwnProperty(prop))
            {
                result.push(obj[prop]);
            }
        }

        return result;
    }
};


interface Object
{
    values(obj: any): any[];
}



class ExpressionEvaluator
{

    protected _symbols: any;


    constructor()
    {
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
        // this.defineOperator("abs", Math.abs);
        // this.defineOperator("sin", Math.sin);
        // this.defineOperator("cos", Math.cos);
        // this.defineOperator("tan", Math.tan);
        this.defineOperator("sqrt", Math.sqrt);
        this.defineOperator("cbrt", Math.cbrt);
    }


    // Method allowing to extend an instance with more operators and functions:
    protected defineOperator(symbol: string, f: Function, notation: string = "func", precedence: number = 0, rightToLeft: boolean = false)
    {
        // Store operators keyed by their symbol/name. Some symbols may represent
        // different usages: e.g. "-" can be unary or binary, so they are also
        // keyed by their notation (prefix, infix, postfix, func):
        if (notation === "func") precedence = 0;
        this._symbols[symbol] = Object.assign({}, this._symbols[symbol], {
            [notation]: {
                symbol, f, notation, precedence, rightToLeft,
                argCount: 1 + <number><any>(notation === "infix")
            },
            symbol,
            regSymbol: symbol.replace(/[\\^$*+?.()|[\]{}]/g, '\\$&')
                + (/\w$/.test(symbol) ? "\\b" : "") // add a break if it's a name 
        });
    }

    protected last(...a: number[]) { return a[a.length - 1] }
    protected negation(a: number) { return -a }
    protected addition(a: number, b: number) { return a + b }
    protected subtraction(a: number, b: number) { return a - b }
    protected multiplication(a: number, b: number) { return a * b }
    protected division(a: number, b: number) { return a / b }


    protected factorial(a: number)
    {
        if (a % 1 || !(+a >= 0)) return NaN
        if (a > 170) return Infinity;
        let b = 1;
        while (a > 1) b *= a--;
        return b;
    }


    public calculate(expression: string)
    {
        let match: any;
        const values: any[] = [];
        const operators = [this._symbols["("].prefix];


        const exec = function ()
        {
            let op = operators.pop();
            values.push(op.f(...[].concat(...values.splice(-op.argCount))));
            return op.precedence;
        };

        const error = function (msg: any)
        {
            let notation = match ? match.index : expression.length;
            return `${msg} at ${notation}:\n${expression}\n${' '.repeat(notation)}^`;
        };




        const pattern = new RegExp(
            // Pattern for numbers
            "\\d+(?:\\.\\d+)?|"
            // ...and patterns for individual operators/function names
            + Object.values(this._symbols)
                // longer symbols should be listed first
                .sort(function (a: any, b: any) { return b.symbol.length - a.symbol.length; })
                .map(function (val: any) { return val.regSymbol; }).join('|')
            + "|(\\S)", "g"
        );

        let afterValue = false;
        pattern.lastIndex = 0; // Reset regular expression object

        do
        {
            match = pattern.exec(expression);
            const [token, bad] = match || [")", undefined],
                notNumber = this._symbols[token],
                notNewValue = notNumber && !notNumber.prefix && !notNumber.func,
                notAfterValue = !notNumber || !notNumber.postfix && !notNumber.infix;

            // Check for syntax errors:
            if (bad || (afterValue ? notAfterValue : notNewValue))
                return error("Syntax error");

            if (afterValue)
            {
                // We either have an infix or postfix operator (they should be mutually exclusive)
                const curr = notNumber.postfix || notNumber.infix;
                do
                {
                    const prev = operators[operators.length - 1];
                    if (((curr.precedence - prev.precedence) || prev.rightToLeft) > 0)
                        break;

                    // Apply previous operator, since it has precedence over current one
                } while (exec()); // Exit loop after executing an opening parenthesis or function

                afterValue = curr.notation === "postfix";
                if (curr.symbol !== ")")
                {
                    operators.push(curr);
                    // Postfix always has precedence over any operator that follows after it
                    if (afterValue)
                        exec();
                }
            }
            else if (notNumber)
            {
                // prefix operator or function
                operators.push(notNumber.prefix || notNumber.func);
                if (notNumber.func)
                {
                    // Require an opening parenthesis
                    match = pattern.exec(expression);
                    if (!match || match[0] !== "(")
                        return error("Function needs parentheses")
                }
            }
            else
            {
                // number
                values.push(+token);
                afterValue = true;
            }

        } while (match && operators.length);

        return operators.length ? error("Missing closing parenthesis")
            : match ? error("Too many closing parentheses")
                : values.pop() // All done!
    }
}



let instance = new ExpressionEvaluator(); // Create a singleton

// I/O handling
function perform()
{
    const expr = (<HTMLInputElement>document.getElementById('expr')).value,
        result = instance.calculate(expr);

    document.getElementById('out').textContent = isNaN(<number>result) ? result.toString() : '=' + result.toString();
}

document.getElementById('expr').addEventListener('input', perform);
perform();


// Tests
const tests = [
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
]


for (let { expr, expected } of tests)
{
    let result = instance.calculate(expr);
    console.assert(result === expected, `${expr} should be ${expected}, but gives ${result}`);
}

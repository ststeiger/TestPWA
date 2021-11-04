
import * as foo from "./foo.js";
import * as test from "./testmodule2.js";

export function foobar()
{
    foo.bar();
    test.main();
}




export function getErrorObject()
{
    try { throw Error('') } catch (err) { return err; }
}


// https://gist.github.com/jedp/3166317
export function getScriptName(fn: string): string
{
    let error = getErrorObject() // new Error()
        , source
        , lastStackFrameRegex = new RegExp(/.+\/(.*?):\d+(:\d+)*$/)
        , currentStackFrameRegex = new RegExp(/getScriptName \(.+\/(.*):\d+:\d+\)/);

    // console.log("stacki", error.stack);

    // str.match(rx); //
    // let t = str.matchAll(/\((.*)\)/gm);
    // str.match(/\((.*)\)/gm);
    // console.log(t);

    // var matches = str.matchAll(rx);
    // console.log(matches);
    // Array.from(matches)

    // https://stackoverflow.com/questions/710957/how-might-i-get-the-script-filename-from-within-that-script/19807441
    // http://www.stacktracejs.com/
    // https://github.com/stacktracejs/stacktrace.js/blob/master/stacktrace.js
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/matchAll
    // https://stackoverflow.com/questions/1707299/how-to-extract-a-string-using-javascript-regex/1707638
    // https://regex101.com/
    if (error.stack)
    {
        // let rx = new RegExp("at\\s+(.*)\\s+\\((.*?)\\)", 'gm');
        let rx = (error.stack.indexOf('@') != -1) ? new RegExp("(.*)@(.*):", 'gm') // Firefox 
            : new RegExp("at\\s((.*?)\\s+)?(\\()?(http.*:)(\\))?", 'gm') // Chrome
            ;

        let frames: string[][] = [];
        // console.log(error.stack);

        let match: RegExpExecArray;
        while ((match = rx.exec(error.stack)) !== null)
        {
            // console.log(match);
            // console.log(match[0]));
            // console.log(`Found ${match[0]} start=${match.index} end=${rx.lastIndex}.`);

            let method: string = null;
            let path: string = null;

            if (match.length == 6)
            {
                method = match[2];
                path = match[4].substr(0, match[4].lastIndexOf('/') + 1);
            }
            else if (match.length == 3)
            {
                method = match[1];
                path = match[2].substr(0, match[2].lastIndexOf('/') + 1);
            }
            else
            {
                console.log("require.js: bad match: ", match);
            }

            if (["getErrorObject", "getScriptName", "readFileSync", "require"].indexOf(method) == -1)
            {
                // console.log(path);
                return path;
            }

            frames.push([method, path]);
        }

        // console.log(frames);
        return frames[frames.length - 1][1]
    }

    // console.log("no stack!", error);

    if ((<any>error).fileName != undefined)
        return (<any>error).fileName;

    return null;
}

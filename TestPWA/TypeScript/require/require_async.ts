
"use strict";

// declare global
// {

interface Window
{
    require_async: (name: string) => Promise<any>;
}

// }


// https://mariusschulz.com/blog/declaring-global-variables-in-typescript
// global scope without window
// declare var require_async: (fileName: string) => Promise<string>;

interface IAsynchronousFileFetchResult 
{
    "text": string;
    "contentType": string;
    "mimeType": string;
}


// Avoid `console` errors in browsers that lack a console.
(function () 
{
    let method;
    let noop = function () { };
    let methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeStamp', 'trace', 'warn'
    ];

    let length = methods.length;
    let console = ((<any>window.console) = window.console || {});

    while (length--) 
    {
        method = methods[length];

        // Only stub undefined methods.
        if (!(<any>console)[method]) 
        {
            (<any>console)[method] = noop;
        }
    }
}());


if (!String.prototype.startsWith)
{
    Object.defineProperty(String.prototype, 'startsWith', {
        value: function (search: string, rawPos: number)
        {
            var pos = rawPos > 0 ? rawPos | 0 : 0;
            return this.substring(pos, pos + search.length) === search;
        }
    });
}


// https://mariusschulz.com/blog/declaring-global-variables-in-typescript
// global scope without window
async function require_async(name: string)
    : Promise<any>
{
    console.log(`Evaluating file ${name}`);

    
    async function readFileAsync(fileName: string, encoding: string)
        : Promise<IAsynchronousFileFetchResult>
    {
        const textDecoder = new TextDecoder(encoding);
        // textDecoder.ignoreBOM = true;

        const response = await fetch(fileName);
        let contentType:string = response.headers.get("Content-Type");
        let mimeType = null;
        if (contentType != null)
        {
            contentType = contentType.toLowerCase();
            let ind = contentType.indexOf(";");
            if (ind == -1)
                mimeType = contentType;
            else
                mimeType = contentType.substr(0, ind).replace(/^\s+|\s+$/g, '');
        }

        console.log(response.ok);
        console.log(response.status);
        console.log(response.statusText);
        // let json = await response.json();
        // let txt = await response.text();
        // let blo:Blob = response.blob();
        // let ab:ArrayBuffer = await response.arrayBuffer();
        // let fd = await response.formData()

        // Read file almost by line
        // https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader/read#Example_2_-_handling_text_line_by_line

        let buffer: ArrayBuffer = await response.arrayBuffer();
        let file: string = textDecoder.decode(buffer);

        return {
             "text": file 
            ,"contentType": contentType 
            ,"mimeType": mimeType 
        };
    } // End Function getFileAsync


    if (!(name in require_async.cache))
    {
        console.log(`${name} is not in cache; reading from disk`);
        let code = await readFileAsync(name, 'utf8');
        let module = { exports: {} };
        require_async.cache[name] = module;
        
        // console.log(code.text);
        console.log("contentType", code.contentType, "mimeType:", code.mimeType);

        // if (["text/html", "text/plain", "text/css"].indexOf(code.mimeType ) > -1) { require_async.cache[name] = { "exports": code.text }; } else
        if (code.mimeType.startsWith("text/") && code.mimeType.indexOf("javascript") == -1 && code.mimeType.indexOf("json") == -1)
        {
            require_async.cache[name] = { "exports": code.text };
        }
        else
        {
            let wrapper = Function("asyncRequire, exports, module", code.text);
            await wrapper(require_async, module.exports, module);
        }
    }

    console.log(`${name} is in cache. Returning it...`);
    return require_async.cache[name].exports;
}

require_async.cache = Object.create(null);
window.require_async = require_async;



(async function () 
{
    const asyncStuff = await require_async("https://stackoverflow.com/questions/9901082/what-is-this-javascript-require/63070817#63070817")
    console.log(asyncStuff);
}());

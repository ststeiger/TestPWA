
"use strict";

// declare global
// {

interface Window
{
    // require_async: (name: string) => Promise<any>;
    require_async<T>(name: string): Promise<T>;
    exports: any;
}

// }


// https://mariusschulz.com/blog/declaring-global-variables-in-typescript
// global scope without window
// declare var require_async: (fileName: string) => Promise<string>;
// declare function require_async<T>(name: string): Promise<T>;


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

if (!String.prototype.endsWith)
{
    String.prototype.endsWith = function (search: string, this_len: number)
    {
        if (this_len === undefined || this_len > this.length)
        {
            this_len = this.length;
        }
        return this.substring(this_len - search.length, this_len) === search;
    };
}


// for IE8
if (!String.prototype.trim)
{
    String.prototype.trim = function ()
    {
        // return this.replace(/^\s+|\s+$/g, '');
        return this.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
    };
}

if (!(<any>String.prototype).trimStart)
{
    (<any>String.prototype).trimStart = function ()
    {
        // return this.replace(/^\s+/g, '');
        return this.replace(/^[\s\uFEFF\xA0]+/g, '');
    };
}

if (!(<any>String.prototype).trimEnd)
{
    (<any>String.prototype).trimEnd = function ()
    {
        // return this.replace(/\s+$/g, '');
        return this.replace(/[\s\uFEFF\xA0]+$/g, '');
    };
}


// https://mariusschulz.com/blog/declaring-global-variables-in-typescript
// global scope without window
async function require_async<T>(name: string)
    : Promise<T>
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
require_async.paths = Object.create(null);
require_async.debug = false;

window.require_async = require_async;



interface IMainModule
{
    main(): Promise<any>;
}




(async function ()
{
    const asyncStuff = await require_async<string>("https://stackoverflow.com/questions/9901082/what-is-this-javascript-require/63070817#63070817")
    console.log(asyncStuff);

    window.require_async = require_async;
    // https://nodejs.org/api/globals.html
    // __dirname: This variable may appear to be global but is not. The directory name of the current module. This is the same as the path.dirname() of the __filename.
    // __filename: This variable may appear to be global but is not. The file name of the current module. This is the current module file's absolute path with symlinks resolved.
    // jep, it's a global-object: __dirname, __filename, exports, module, require()
    window.exports = window.exports || Object.create(null);

    let cs = document.currentScript || document.scripts[document.scripts.length - 1];

    // console.log("cs", cs);
    if (cs != null)
    {
        require_async.paths.main = cs.getAttribute("data-main");
        require_async.paths.src = cs.getAttribute("src");
        require_async.paths.html = document.location.href; // cs.baseURI || document.location.href;

        let props = ["hash", "host", "hostname", "origin", "pathname", "port", "protocol", "search", "ancestorOrigins"];
        for (let i = 0; i < props.length; ++i)
        {
            require_async.paths[props[i]] = (<any>document.location)[props[i]];
        }

        require_async.paths.basePath = require_async.paths.html.substr(0, (<string>require_async.paths.html).lastIndexOf("/") + 1);

        let sanitizedPath = require_async.paths.main;
        if (sanitizedPath.startsWith("./"))
            sanitizedPath = sanitizedPath.substr(2);

        let url: string = require_async.paths.basePath + sanitizedPath;
        require_async.paths.mainPath = url.substr(0, url.lastIndexOf("/") + 1);
        
        // console.log("paths:", require_async.paths);
        let ts = await require_async<IMainModule>(url);
        if (ts && ts.main)
            await ts.main();
    }
}());



async function foobar(key: string)
{
    return "";
}

function doSomething()
{ }


function removeAll()
{
    Promise.all([
        foobar("key1"),
        foobar("key2"),
        foobar("key3")
    ]).then(
        function (value: string[])
        {
            doSomething();
        }
    );


}


async function removeAll2()
{
    let boo:string[] = await Promise.all([
        foobar("key1"),
        foobar("key2"),
        foobar("key3")
    ]);

    doSomething();
}

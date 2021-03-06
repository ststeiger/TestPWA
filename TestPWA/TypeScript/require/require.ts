
"use strict";

// declare global
// {

interface Window
{
    // require: (fileName: string) => any;
    require<T>(fileName: string): T;
    exports: any;
}

// }

// https://mariusschulz.com/blog/declaring-global-variables-in-typescript
// global scope without window
// declare var require: (fileName: string) => string;

interface ISynchronousFileFetchResult 
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


// https://stackoverflow.com/questions/6971583/node-style-require-for-in-browser-javascript
// https://michelenasti.com/2018/10/02/let-s-write-a-simple-version-of-the-require-function.html
function require<T>(name: string): T
{
    if (require.debug)
        console.log(`Evaluating file ${name}`);

    // let cs = document.currentScript || document.scripts[document.scripts.length - 1];
    // console.log("cs", cs);
    
    // let src = cs.getAttribute("src");
    // let bs = cs.baseURI;
    // let source:string = null;

    // console.log("relativeScript", src);
    // console.log("base", cs.baseURI);


     // If the exact filename is not found, then Node.js will attempt to load the required filename with the added extensions: 
    // .js, .json, and finally .node.
    // You can check node_js docs for detailed explanation.
    // https://nodejs.org/api/modules.html#modules_file_modules
    // .Node.js will perform a hierarchical directory search for "node_modules" and "utils" in the following ways:
    // ./node_modules/utils.js
    // ./node_modules/utils/index.js
    // ./node_modules/utils/package.json
    // If it still can't find the file in this directory-spidering manner, 
    // Node.js will then proceed to look at the directory paths outlined in the "require.paths" array.
    // The paths values in this array default to the paths defined, in part, by the environmental variable, NODE_PATH; 
    // but, they can be updated programmatically within a Node.js application.
    function readFileSync(fileName: string, encoding: string): ISynchronousFileFetchResult
    {
        // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/Synchronous_and_Asynchronous_Requests
        let client = new XMLHttpRequest();
        // client.setRequestHeader("Content-Type", "text/plain;charset=UTF-8");

        let contentType: string = null;
        let mimeType: string = null;
        
        if (fileName.startsWith("./"))
        {
            fileName = fileName.substr(2);
            // fileName = getScriptName(fileName) + fileName;
            // console.log("fn", fileName);

            // WTF ? filename can be ./http_utility ...
            if (!(fileName.startsWith("https://") || fileName.startsWith("http://")))
                fileName = require.paths.mainPath + fileName;
            // else { console.log("bad file", fileName); }

            if (require.debug)
                console.log("doctored", fileName);
        }

        // Don't TF cache these files...
        if (fileName.indexOf("?") == -1)
            fileName += "?no_cache=" + (new Date()).getTime().toString();
        else
            fileName += "&no_cache=" + (new Date()).getTime().toString();


        function hand()
        {
            // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/readyState
            // https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

            if (client.readyState === XMLHttpRequest.DONE)
            {
                // console.log(this.getResponseHeader('content-type'));

                let status:number = client.status;
                if (status === 0 || (status >= 200 && status < 400))
                {
                    // The request has been completed successfully
                    contentType = this.getResponseHeader('content-type');
                    if (contentType != null)
                    {
                        contentType = contentType.toLowerCase();
                        let ind = contentType.indexOf(";");
                        if (ind == -1)
                            mimeType = contentType;
                        else 
                            mimeType = contentType.substr(0, ind).replace(/^\s+|\s+$/g, '');
                    }
                }
                else
                {
                    // Oh no! There has been an error with the request!
                }
            } // End if (client.readyState === XMLHttpRequest.DONE) 
        } // End Function hand 

        client.onreadystatechange = hand;


        // works only with ascii 
        //function stringToArrayBuffer(str:string)
        //{
        //    let buf = new ArrayBuffer(str.length);
        //    let bufView = new Uint8Array(buf);

        //    for (let i = 0, strLen = str.length; i < strLen; i++)
        //    {
        //        bufView[i] = str.charCodeAt(i);
        //    }

        //    return buf;
        //}

        // console.log("open " + fileName);
        // open(method, url, async)
        client.open("GET", fileName, false);
        // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseType
        // client.responseType = "arraybuffer"; // not allowed in synchronous mode ... 
        client.send();
        if (client.status === 200)
        {
            // console.log("returning response text", mimeType, "ct:", contentType);
            // return <any> new Uint8Array(client.response);

            // return <any>stringToArrayBuffer(client.responseText);

            return {
                  "text" : client.responseText
                , "contentType": contentType
                , "mimeType": mimeType
            };
        } // End if (client.status === 200) 

        return {
              "text": "<!-- -->"
            , "contentType": fileName
            , "mimeType": encoding
        };
    }
    
    if (!(name in require.cache))
    {
        if (require.debug)
            console.log(`${name} is not in cache; reading from disk`);

        let code = readFileSync(name, 'utf8');
        // let code = await fs.readFileAsync(name, 'utf8');
        let module = { exports: {} };
        require.cache[name] = module;


        // console.log(code.text);
        // console.log("contentType", code.contentType, "mimeType:", code.mimeType);
        
        // if (["text/html", "text/plain", "text/css"].indexOf(code.mimeType ) > -1) { require.cache[name] = { "exports": code.text }; } else 
        if (code.mimeType.startsWith("text/") && code.mimeType.indexOf("javascript") == -1 && code.mimeType.indexOf("json") == -1)
        {
            require.cache[name] = { "exports": code.text };
        }
        else
        {
            // module.exports vs exports - default 
            // module.exports = {} vs. exports.foo='bar'
            // https://www.sitepoint.com/understanding-module-exports-exports-node-js/
            // some more properites: id, parent, filename, loaded, children, paths
            // https://riptutorial.com/javascript/example/16339/universal-module-definition--umd-
            // https://www.typescriptlang.org/tsconfig#baseUrl
            // https://www.typescriptlang.org/docs/handbook/modules.html
            // console.log(code.text);

            try
            {
                let wrapper = Function("require, exports, module", code.text);
                wrapper(require, module.exports, module);

                // damn f*ing commonjs default-import
                // https://basarat.gitbook.io/typescript/main-1/defaultisbad
                // users who have to const { default} = require('module/foo'); 
                // instead of const { Foo } = require('module/foo').
                if ((<any>module.exports).default)
                {
                    module.exports = (<any>module.exports).default;
                }
            }
            catch (err)
            {
                console.log("Error in require.ts-eval:", err);
                debugger;
            }

        }
    }

    if (require.debug)
        console.log(`${name} is in cache. Returning it...`);

    return require.cache[name].exports;
}

require.cache = Object.create(null);
require.paths = Object.create(null);
require.debug = false;

interface IMainModule
{
    main(): any;
}


(function ()
{
    window.require = require;
    // https://nodejs.org/api/globals.html
    // __dirname: This variable may appear to be global but is not. The directory name of the current module. This is the same as the path.dirname() of the __filename.
    // __filename: This variable may appear to be global but is not. The file name of the current module. This is the current module file's absolute path with symlinks resolved.
    // jep, it's a global-object: __dirname, __filename, exports, module, require()
    window.exports = window.exports || Object.create(null);

    let cs = document.currentScript || document.scripts[document.scripts.length - 1];

    // console.log("cs", cs);
    if (cs != null)
    {
        require.paths.main = cs.getAttribute("data-main");
        require.paths.src = cs.getAttribute("src");
        require.paths.html = document.location.href; // cs.baseURI || document.location.href;

        let props = ["hash", "host", "hostname", "origin", "pathname", "port", "protocol", "search", "ancestorOrigins"];
        for (let i = 0; i < props.length; ++i)
        {
            require.paths[props[i]] = (<any>document.location)[props[i]];
        }

        require.paths.basePath = require.paths.html.substr(0, (<string>require.paths.html).lastIndexOf("/") + 1); 
        
        let sanitizedPath = require.paths.main;
        if (sanitizedPath.startsWith("./"))
            sanitizedPath = sanitizedPath.substr(2);

        let url: string = require.paths.basePath + sanitizedPath;
        require.paths.mainPath = url.substr(0, url.lastIndexOf("/") + 1);
        
        // console.log("paths:", require.paths); 
        let ts = require<IMainModule>(url);
        if (ts && ts.main)
            ts.main();
    }
}());




// const stuff = window.require('./main.js');
// console.log(stuff);


// function wrapper(require, exports, module)
// function require(name: string): any


// https://syfuhs.net/bruce-a-command-line-kerberos-net-management-tool
// https://github.com/dotnet/Kerberos.NET
// https://github.com/SIGAN/gssapi

(function ()
{
    // require all polyfills based on requirements ! 
    // try-catch 

    // old browsers won't remove sync-http-request ! 

    // if (!Array.prototype.map) {
    // <script src="lib/polyfills/Array.prototype.map.js?v=1"></script>


    // https://gist.github.com/lski/0eae0d2738831b6b0ec2b88a8a603952
    // array.reduce-polyfill.min.js

    // https://stackoverflow.com/questions/27684465/javascript-filter-function-polyfill
    // array.prototype.filter.js


    // if ("document" in window.self) { if (!("classList" in document.createElement("_")) || document.createElementNS && !("classList" in document.createElementNS("http://www.w3.org/2000/svg", "g")))
    // warning ! // 3. Patch in unsupported methods in DOMTokenList
    // <script src="lib/polyfills/classList.js?v=1"></script>


    // if (typeof Object.setPrototypeOf === 'undefined' && typeof Object.getOwnPropertyNames === 'function')
    // <script src="lib/polyfills/object-setprototypeof-ie9.js?v=1"></script>


    // window.Promise = window.Promise || ES6Promise.Promise;
    // <script src="lib/polyfills/es6-promise-2.0.0.min.js?v=1"></script>

    // if (window.fetch)
    // <script src="lib/polyfills/fetch.js?v=1"></script>

    // run main here !
}());

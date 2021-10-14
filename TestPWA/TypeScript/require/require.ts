
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


// https://stackoverflow.com/questions/6971583/node-style-require-for-in-browser-javascript
// https://michelenasti.com/2018/10/02/let-s-write-a-simple-version-of-the-require-function.html
function require<T>(name: string): T
{
    console.log(`Evaluating file ${name}`);
    
    var cs = document.currentScript || document.scripts[document.scripts.length - 1];
    // var cs = document.currentScript;
    // console.log("cs", cs);

    let src = cs.getAttribute("src");
    let bs = cs.baseURI;
    let source:string = null;

    
    console.log("relativeScript", src);
    console.log("base", cs.baseURI);
    
    let ind = src.lastIndexOf('/')
    if (ind != -1)
        source = src.substr(0, ind + 1);

    // console.log("caller", require.caller);

    // https://gist.github.com/jedp/3166317
    function _getCaller():any
    {
        var err = new Error();
        (<any>Error).captureStackTrace(err);

        // Throw away the first line of the trace
        var frames = err.stack.split('\n').slice(1);

        // Find the first line in the stack that doesn't name this module.
        
        for (var i = 0; i < frames.length; i++)
        {
            console.log("framews", frames[i]);

            // var STACK_FRAME_RE = new RegExp(/at ((\S+)\s)?\(?([^:]+):(\d+):(\d+)/);
            var STACK_FRAME_RE = new RegExp("\\((.*?\\.(js|htm|html)).*\\)");
            let callerInfo = STACK_FRAME_RE.exec(frames[i]);
            // console.log("callerInfo", callerInfo);
            if (callerInfo && callerInfo.length>0)
            console.log("callerInfo", callerInfo[1]);
            
            //if (frames[i].indexOf("/ts/dev/test.js") === -1)
            //{
            //    var STACK_FRAME_RE = new RegExp(/at ((\S+)\s)?\(?([^:]+):(\d+):(\d+)/);
            //    callerInfo = STACK_FRAME_RE.exec(frames[i]);
            //    break;
            //}
        }

        //if (callerInfo)
        //{
        //    return {
        //        function: callerInfo[2] || null,
        //        module: callerInfo[3] || null,
        //        line: callerInfo[4] || null,
        //        column: callerInfo[5] || null
        //    };
        //}
        return null;
    }

    // https://github.com/browserify/browserify

    // console.log("ci", _getCaller())
    


    function getErrorObject()
    {
        try { throw Error('') } catch (err) { return err; }
    }

    var err = getErrorObject();
    // var caller_line = err.stack.split("\n")[4];
    // var index = caller_line.indexOf("at ");
    // var clean = caller_line.slice(index + 2, caller_line.length);
    // console.log("stack", err.stack);
    


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
            fileName = source + fileName;
            // console.log("doctored", fileName)
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

        return null;
    }

    if (!(name in require.cache))
    {
        console.log(`${name} is not in cache; reading from disk`);
        let code = readFileSync(name, 'utf8');
        // let code = await fs.readFileAsync(name, 'utf8');
        let module = { exports: {} };
        require.cache[name] = module;


        // console.log(code.text);
        console.log("contentType", code.contentType, "mimeType:", code.mimeType);
        
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
            let wrapper = Function("require, exports, module", code.text);
            wrapper(require, module.exports, module);
        }
    }

    console.log(`${name} is in cache. Returning it...`);
    return require.cache[name].exports;
}


require.cache = Object.create(null);
window.require = require;
window.exports = {};


// const stuff = window.require('./main.js');
// console.log(stuff);


// function wrapper(require, exports, module)
// function require(name: string): any

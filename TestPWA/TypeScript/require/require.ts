
"use strict";

// declare global
// {

interface Window
{
    require: (fileName: string) => any;
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
function require(name: string): any
{
    console.log(`Evaluating file ${name}`);

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
            let wrapper = Function("require, exports, module", code.text);
            wrapper(require, module.exports, module);
        }
    }

    console.log(`${name} is in cache. Returning it...`);
    return require.cache[name].exports;
}


require.cache = Object.create(null);
window.require = require;

// const stuff = window.require('./main.js');
// console.log(stuff);


// function wrapper(require, exports, module)
// function require(name: string): any

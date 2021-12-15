
"use strict";

import * as autobind_autotrace from "./autobind_autotrace.js";
import * as autorun from "./autorun.js";

import * as utils from "./string_utils.js";
import * as url_params from "./url_params.js";

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent

function percentEncodeCharacter(c:string)
{
    return "%" + c.charCodeAt(0).toString(16);
}

function percentDecodeCharacter(s:string, hex:string)
{
    return String.fromCharCode(parseInt(hex, 16));
}


// encodeRFC5987
function contentDispositionEncode(str:string)
{
    return encodeURIComponent(str).
        // Note that although RFC3986 reserves "!", RFC5987 does not,
        // so we do not need to escape it
        replace(/['()*]/g, percentEncodeCharacter). // i.e., %27 %28 %29 %2a (Note that valid encoding of "*" is %2A
        // which necessitates calling toUpperCase() to properly encode)
        // The following are not required for percent-encoding per RFC5987,
        // so we can allow for a little better readability over the wire: |`^
        replace(/%(7C|60|5E)/g, percentDecodeCharacter);
}


// encodeRfc3986
function urlEncode(str: string): string 
{
    return encodeURIComponent(str).replace(/[!'()*]/g, function (c)
    {
        return '%' + c.charCodeAt(0).toString(16);
    });
}


{
    console.log(true)
}


function isPrimitive(val: any)
{
    return !(typeof val == "object" || typeof val == "function");
}

function isArray(obj:any)
{
    return !!obj && obj.constructor === Array;
}




function objectToQueryString(obj:any)
{
    let str = [];
    for (let p in obj)
    {
        if (obj.hasOwnProperty(p))
        {
            if (isPrimitive(obj[p]))
            { 
                str.push(urlEncode(p) + "=" + urlEncode(obj[p]));
            }
            else if (isArray(obj[p]))
            {
                let t: any[] = obj[p];

                for (let i = 0; i < t.length; ++i)
                {
                    str.push(urlEncode(p) + "=" + urlEncode(t[i]));
                }
            }
        }
    }

    return str.join("&");
}

let person = {
    "first_name": "Marty",
    "last_name": "Mcfly",
    "dependencies": ["stack", "queue", "linked_list"],
    "objects": {
        "key1": "value 1",
        "key2": "value 2",
        "key3": "value 3"
    }
};
let queryString = objectToQueryString(person); 



function nestedLoop(obj:any)
{
    const res:any = {};

    function recurse(obj:any)
    {
        for (const key in obj)
        {
            let value = obj[key];
            if (value != undefined)
            {
                if (value && typeof value === 'object')
                {
                    recurse(value);
                }
                else
                {
                    // Do your stuff here to var value
                    res[key] = value;
                }
            }
        }
    }
    
    recurse(obj);
    return res;
}

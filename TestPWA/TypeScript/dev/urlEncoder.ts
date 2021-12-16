
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


function isObject(obj: any)
{
    return (typeof obj === 'object' && obj !== null);
}




function objectToQueryString(obj:any, key?:string):string
{
    let str = [];

    if (isPrimitive(obj))
    {
        if(obj != null)
            str.push(String(obj));
    }
    else if (isArray(obj))
    {
        let t: any[] = obj;

        for (let i = 0; i < t.length; ++i)
        {
            let v = objectToQueryString(t[i]);
            if(v!= null)
                str.push(urlEncode(key || i.toString()) + "=" + urlEncode(v));
        }
    }
    else if (isObject(obj))
    {
        for (let p in obj)
        {
            if (!obj.hasOwnProperty(p))
                continue;

            let r = objectToQueryString(obj[p], p);

            if (r != null)
            {
                if (isArray(obj[p]))
                    str.push(r);
                else
                    str.push(urlEncode(p) + "=" + urlEncode(r));
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
console.log(queryString);


function unpack(qs:string)
{
    let obj:any = {};

    let values = qs.split("&");
    for (let i = 0; i < values.length; ++i)
    {
        let kvp = values[i].split("=");
        let k = decodeURIComponent(kvp[0]);
        let v = decodeURIComponent(kvp[1]);

        if (obj.hasOwnProperty(k))
        {
            if (isArray(obj[k]))
                obj[k].push(v);
            else
            {
                let t = obj[k];
                obj[k] = [t];
                obj[k].push(v);
            }
        }
        else
            obj[k] = v;
        
    }

    return obj;
}


console.log(unpack(queryString));
console.log(unpack(unpack(queryString).objects))


// https://dmitripavlutin.com/parse-url-javascript/
// https://github.com/lifaon74/url-polyfill
//const url = new URL('https://www.example.com:8080/bla/blo/foo.aspx?fr=yset_ie_syc_oracle&type=orcl_hpset#page0');
//hash: "page0"
//host: "www.example.com:8080"
//hostname: "www.example.com"
//href: "https://www.example.com:8080/?fr=yset_ie_syc_oracle&type=orcl_hpset#page0"
//origin: "https://www.example.com:8080"
//pathname: "/" if empty, or '/bla/blo/foo.aspx' with some-path
//port: "8080"
//protocol: "https:"
//search: "?fr=yset_ie_syc_oracle&type=orcl_hpset"
//searchParams: URLSearchParams(see next)


// URLSearchParams: 
// Supported: 'append', 'delete', 'get', 'getAll', 'has', 'set', 'forEach', 'keys', 'values', 'entries', 'toString', 'Symbol.iterator'
// const url = new URL('https://www.example.com/?fr=yset_ie_syc_oracle&type=orcl_hpset#page0');
// url.searchParams.append('page', 0);
// console.log(url.toString()); // print: "https://www.example.com/?fr=yset_ie_syc_oracle&type=orcl_hpset&page=0#page0"
// url.searchParams.get("fr")
// url.searchParams.has("fr") // CASE-SENSITIVE
// url.searchParams.keys()
// url.searchParams.values()
// url.searchParams.entries()

// https://stackoverflow.com/questions/67159465/can-urlsearchparams-get-param-case-insensitive
// const params: URLSearchParams = new URLSearchParams("?someParam=paramValue");

// Doesn't work
// console.log(params.get("someparam"));
// Create the new one
// const newParams = new URLSearchParams();
// for (const [name, value] of params)
// {
//     newParams.append(name.toLowerCase(), value);
// }
// Works
// console.log(newParams.get("someparam"));



//let searchParams: URLSearchParams = new URLSearchParams("?someParam=paramValue");

//searchParams.forEach(function (value, key)
//{
//    console.log(value, key);
//});

//interface ISearchEntries
//{
//    entries: () => string[];
//}

//for (var entry of (<ISearchEntries><any>searchParams).entries())
//{
//    console.log(entry[0] + ' -> ' + entry[1]);
//}


//(<any>Array.prototype).contains = function <T>(obj: Array<T>): boolean
//{
//    let i = this.length;
//    while (i--)
//    {
//        if (this[i] === obj)
//        {
//            return true;
//        }
//    }

//    return false;
//}; // End Function contains



// https://www.dodgycoder.net/2012/09/q-with-nine-great-programmers.html
// note: this fails if query-string has repeating argument names 
export function parseQuery(input: string): IQueryParseResult
{
    let retValue: IQueryParseResult = {
        "url": null,
        "hash": null,
        "query": null,
        "dS": {},
        "dI": {},
        "kvps": [],
        "containsKey": null,
        "get": null,
        "set": null,
        "remove": null
    }

    retValue.containsKey = function (key: string)
    {
        for (let j = 0; j < retValue.kvps.length; ++j)
        {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase())
                return true;
        }

        return false;
    };

    retValue.get = function (key: string)
    {
        for (let j = 0; j < retValue.kvps.length; ++j)
        {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase())
                return retValue.kvps[j][1];
        }

        return null;
    };

    retValue.set = function (key: string, value: string)
    {
        for (let j = 0; j < retValue.kvps.length; ++j)
        {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase())
            {
                retValue.kvps[j][1] = value;
                retValue.dS[retValue.kvps[j][0]] = retValue.kvps[j][1];
                retValue.dI[retValue.kvps[j][0].toLowerCase()] = retValue.kvps[j][1];
                return;
            }

        }

        retValue.kvps.push([key, value]);
        retValue.dS[key] = value;
        retValue.dI[key.toLowerCase()] = value;
    };

    retValue.remove = function (key: string)
    {
        for (let j = 0; j < retValue.kvps.length; ++j)
        {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase())
            {
                delete retValue.dI[retValue.kvps[j][0].toLowerCase()];
                delete retValue.dS[retValue.kvps[j][0]];
                // delete retValue.kvps[j]; // this leaves empty element in place...
                retValue.kvps.splice(j, 1);

                return;
            }

        }

        return null;
    };


    if (input == null)
        return retValue;

    let hashPos = input.indexOf('#');

    if (hashPos !== -1)
    {
        retValue.hash = input.substr(hashPos);
        input = input.substr(0, hashPos);
    }

    let qmPos = input.indexOf('?');
    retValue.query = input;

    if (qmPos !== -1)
    {
        retValue.query = retValue.query.substr(qmPos + 1);
        retValue.url = input.substr(0, qmPos);
    }
    else
    {
        retValue.url = input;
        retValue.query = null;
    }

    if (retValue.url.length == 0)
        retValue.url = null;

    // console.log("url", retValue.url);
    // console.log("query", retValue.query);
    // console.log("hash", retValue.hash);


    if (retValue.query != null && retValue.query.length > 0)
    {
        let pairs = retValue.query.split('&');
        // console.log("pairs", pairs);

        for (let i = 0; i < pairs.length; ++i)
        {
            let kvp = pairs[i].split('=');
            // console.log("kvp (" + i.toString() + ")", kvp);
            retValue.kvps.push([decodeURIComponent(kvp[0]), (kvp.length == 2 ? decodeURIComponent(kvp[1]) : null)]);
            retValue.dS[retValue.kvps[i][0]] = retValue.kvps[i][1];
            retValue.dI[retValue.kvps[i][0].toLowerCase()] = retValue.kvps[i][1];
        }

    }

    // console.log("Pairs", retValue.kvps);
    // console.log("Sensitive", retValue.dS);
    // console.log("Insensitive", retValue.dI);
    return retValue;
}

// parseQuery("http://foo.bar?")
// console.log(parseQuery("foo.bar/lol?hello=kitty&foo=bar&lol&trololol&abc=def#mydar"));
// console.log(JSON.stringify(parseQuery("foo.bar/lol?hello=kitty&foo=bar&lol&trololol&abc=def#mydar"), null, "  "));
// let x = parseQuery("foo.bar/lol?hello=kitty&foo=bar&lol&trololol&abc=def#mydar");

/*

// Read a page's GET URL variables and return them as an associative array.
function getUrlVars(urlHref:string)
{
    var vars = [], hash;
    var hashes = urlHref.slice(urlHref.indexOf('?') + 1).split('&');
    var i;

    for (i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(decodeURIComponent(hash[0]));
        vars[decodeURIComponent(hash[0])] = decodeURIComponent(hash[1]);
    } // Next i

    return vars;
} // End Function getUrlVars


*/


class BaseError
{
    constructor()
    {
        Error.apply(this, arguments);
    }
}


BaseError.prototype = new Error();



class HttpRequestError extends BaseError
{
    constructor(public status: number, public message: string)
    {
        super();
    }
}

// https://gist.github.com/WebReflection/5593554
// https://gist.github.com/edoardocavazza/47246856759f2273e48b
interface Object
{
    // Object.setPrototypeOf() is in ECMAScript 2015 
    setPrototypeOf(obj: any, prototype: any): any;
}



// https://stackoverflow.com/questions/31626231/custom-error-class-in-typescript
class ApplicationOfflineError extends Error
{
    constructor(m: string)
    {
        super(m);
        // Set the prototype explicitly.
        Object.setPrototypeOf(this, ApplicationOfflineError.prototype);
    }

    sayHello()
    {
        return "hello " + this.message;
    }
}



enum RenderType_t 
{
    Default = 0,                        // 0000000000
    Indented = 1, // 1 << 0             // 0000000001
    DataTable = 2, // 1 << 1            // 0000000010
    Array = 4, // 1 << 2                // 0000000100
    Data_Only = 8, // 1 << 3            // 0000001000
    Columns_Associative = 16, // 1 << 4 // 0000010000
    Columns_ObjectArray = 32, // 1 << 5 // 0000100000
    WithDetail = 64,  // 1 << 6         // 0000100000
    ShortName = 128,  // 1 << 7         // 0001000000
    LongName = 256,  // 1 << 8          // 0010000000
    AssemblyQualifiedName = 512, // 1<<9// 0100000000
    All = ~(~0 << 10)                   // 1111111111
}



// let url = "http://localhost:59799/sql?sql=Maps.Gebaeudekategorie.sql&BE_Hash=12435&format=" + badDataTable.toString();
async function getData(url: string, data?: any)
{
    if (url == null)
    {
        throw Error("URL is NULL...");
    }


    // https://developer.mozilla.org/en-US/docs/Web/API/NavigatorOnLine/Online_and_offline_events
    // window.addEventListener('online', updateOnlineStatus);
    // window.addEventListener('offline', updateOnlineStatus);
    // https://caniuse.com/#feat=online-status // it doesn't work on Android's WebView...
    if (!navigator.onLine)
    {
        // throw new Error("offline");
        // throw new ApplicationOfflineError("msg");
        throw new HttpRequestError(500, 'Client offline');
        // if (error instanceof ApplicationOfflineError) { console.log(error.sayHello(); }
    }


    let prettyDataTable = RenderType_t.Indented | RenderType_t.DataTable;
    let prettyBadDataTable = RenderType_t.Columns_Associative | RenderType_t.Indented;
    let badDataTable = RenderType_t.Columns_Associative;

    if (url.indexOf("?") != -1)
        url += "&format=" + prettyBadDataTable;
    else
        url += "?format=" + prettyBadDataTable;

    if (url.indexOf("no_cache") == -1)
        url += "&no_cache=" + (new Date()).getTime();

    let req: Response = null;
    let json: string = null;
    let obj: any = null;
    let ex1: any = null;
    let ex2: any = null;
    let ex3: any = null;

    // https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch#Headers
    let myHeaders = new Headers();
    myHeaders.append("Accept", "application/json");
    myHeaders.append("Content-Type", "application/json");
    myHeaders.append("pragma", "no-cache");
    myHeaders.append("cache-control", "no-cache");
    // myHeaders.append("Upgrade-Insecure-Requests", "1");


    // https://stackoverflow.com/questions/37668282/unable-to-fetch-post-without-no-cors-in-header

    // https://davidwalsh.name/fetch
    let options: any = {
        "method": "POST",
        // "headers": { 'auth': '1234','content-type': 'application/json'},
        // https://stackoverflow.com/questions/38156239/how-to-set-the-content-type-of-request-header-when-using-fetch-api
        // "headers": new Headers({ 'content-type': 'application/json' })
        // "headers": { "Content-Type": "application/json" } 
        // "headers": new Headers({ 'Content-Type': 'application/json' }) 
        // "headers": { 'Accept': 'application/json', 'Content-Type': 'application/json' },
        // "headers": new Headers({ 'Accept': 'application/json', 'Content-Type': 'application/json' }), 
        "headers": myHeaders
        // ,"mode": "no-cors" 
        , credentials: 'same-origin' // the default would be same-origin, but there's an exciting Edge-bug ...
        , "body": <any>null
    };


    if (data != null)
    {
        if (typeof data === 'string' || data instanceof String)
            options["body"] = data;
        else
            options["body"] = JSON.stringify({ "id": 123 });
    }

    try
    {
        // let result = <any>await fetch(url, options).then(function (response) { return response.json(); });
        req = await fetch(url, options);
    }
    catch (ex)
    {
        console.log(ex);
        ex1 = ex;
    }

    try
    {
        if (req != null)
            json = await req.text();
    }
    catch (ex)
    {
        console.log(ex);
        ex2 = ex;
    }

    try
    {
        // req.json();
        obj = JSON.parse(json);
    }
    catch (ex)
    {
        ex3 = ex;
        console.log(ex);
    }


    if (obj == null)
    {
        throw new HttpRequestError(500, 'Server Error');
    }

    // console.log(obj);
    return obj;
}

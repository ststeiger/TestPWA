
export async function postFetch(url: string, payload?: any): Promise<Response>
{
    let bdy: string = null;

    if (typeof (payload) === 'string' || payload instanceof String)
        bdy = <string>payload;

    if (typeof (payload) === 'object')
        bdy = JSON.stringify(payload);

    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await fetch(url, {
        method: 'POST',
        headers: {
            "Accept": "application/json"
            , "Content-Type": "application/json"
            , "credentials": "same-origin" // the default would be same-origin, but there's an exciting Edge-bug ... 
            , "pragma": "no-cache"
            , "cache-control": "no-cache"
        }
        , body: bdy
    });

    return result;
}



export async function fetchJSON(url: string, payload?: any): Promise<any>
{

    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await postFetch(url, payload);
    let data: any = await result.json();
    return data;
}


export async function fetchText(url: string, payload?: any): Promise<string>
{
    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await postFetch(url, payload);
    let data: string = await result.text();
    return data;
}


//function foo()
//{
//    for (var i = 0; i < arguments.length; i++)
//    {
//        console.log(arguments[i]);
//    }
//}

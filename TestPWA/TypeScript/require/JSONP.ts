
"use strict";

// declare global
// {

interface Window
{
    // require: (fileName: string) => any;
    // require_async: (name: string) => Promise<any>;

    require<T>(fileName: string): T;
    require_async<T>(name: string): Promise<T>;
}

// }


// https://mariusschulz.com/blog/declaring-global-variables-in-typescript
// global scope without window
// declare var require: (fileName: string) => string;
// declare var requireAsync: (fileName: string) => Promise<string>;






async () =>
{
    const asyncStuff = await window.require_async('./main.js');
    console.log(asyncStuff);
}





// jsonp Promise
function get(url: string, timeoutMS?: number)
    : Promise<any>
{
    function urlJoinChar(u: string): string
    {
        return u.indexOf('?') >= 0 ? '&' : '?'
    }

    return new Promise(function (resolve: (value: any) => void, reject: (reason?: any) => void)
    {
        let timeout: number = timeoutMS || 10000; // default timeout
        let callbackName = 'jsonp_callback_' + Date.now();
        let head = document.getElementsByTagName('head')[0] || document.documentElement;
        let script = document.createElement('script');
        let timerId: number = null;
        script.src = url + urlJoinChar(url) + 'callback=' + callbackName;
        script.async = true;


        function cleanUp()
        {
            timerId && clearTimeout(timerId);
            (<any>window)[callbackName] && delete (<any>window)[callbackName];
            script && head.removeChild(script);
        }

        function onResolve(data: any)
        {
            cleanUp();
            resolve(JSON.stringify(data));
        }

        function onError()
        {
            cleanUp();
            reject(Error("Network error loading " + script.src));
        }

        function onTimeout()
        {
            cleanUp();
            reject(Error("Request to " + url + " failed to execute callback after " + timeout + "ms."))
        }


        (<any>window)[callbackName] = onResolve;
        script.onerror = onError;

        head.appendChild(script);
        timerId = setTimeout(onTimeout, timeout);
    });
}

function getJSON(url: string)
    : Promise<any>
{
    return get(url).then(JSON.parse);
}


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
// declare var require: (fileName: string) => any;
// declare var require_async: (fileName: string) => Promise<string>;

(function () 
{
    const stuff = require<string>("https://stackoverflow.com/questions/9901082/what-is-this-javascript-require/63070817#63070817")
    console.log(stuff);
}());


(async function () 
{
    const asyncStuff = await require_async<string>("https://stackoverflow.com/questions/9901082/what-is-this-javascript-require/63070817#63070817")
    console.log(asyncStuff);
}());



async () =>
{
    const asyncStuff = await window.require_async<any>('./main.js');
    console.log(asyncStuff);
}


function sleepTwice(interval: number)
    : Promise<void>
{
    return new Promise(
        function (resolve: () => void, reject: (reason?: any) => void)
        {
            let wait: number = setTimeout(
                function ()
                {
                    clearTimeout(wait);
                    //reject(new Error(`Promise timed out ! (timeout = ${timeout})`));
                    resolve();
                    resolve();
                }, interval);
        }
    );
}


sleepTwice(2000).then(function ()
{
    console.log("Do I resolve twice, or not ?");
});

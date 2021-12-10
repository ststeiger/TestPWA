
"use strict";
function sleep(interval: number) 
{
    return new Promise<void>(
        function (resolve: () => void, reject: (reason?: any) => void) 
        {
            let wait = setTimeout(function ()
            {
                clearTimeout(wait);
                //reject(new Error(`Promise timed out ! (timeout = ${timeout})`));
                resolve();
            }, interval);
        });
}

function testPromise()
{
    sleep(3000).then(function ()
    {
        console.log("i waited 3 seconds");
    })
    .catch(function (reason: any)
    {
        console.log("error", reason);
    });
}


async function testSleep() 
{
    try
    {
        await sleep(5000);
        console.log("i waited 5 seconds");
    }
    catch (err)
    {
        console.log("error", err);
    }
    
}


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


export function foo()
{
    return 123;
}



export function bar()
{
    return 123;
}

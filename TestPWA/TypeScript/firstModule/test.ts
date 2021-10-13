
"use strict";

interface Window
{
    require: (fileName: string) => any;
    require_async: (name: string) => Promise<any>;
}

interface IModule
{
    exports: any;
}


// global scope without window
declare var require: (fileName: string) => any;
declare var exports: any;
declare var module: IModule;

interface IHttpUtility
{
    htmlEncode(s: string): string;
    htmlDecode(s: string): string;

    // private parts 
    // declare function initEntities(): any;
    // declare let Entities: any;
    // declare function isDigit(str: string): boolean;
    // declare function isHexDigit(str: string): boolean;
}



// https://mariusschulz.com/blog/declaring-global-variables-in-typescript

/*

//export as namespace L;

declare module "L"
{
      export function htmlEncode(s: string): string;
      export function htmlDecode(s: string): string;
}

declare global
{

    namespace L
    {
        declare function htmlDecode(s: string): string;
        declare function htmlEncode(s: string): string;
    }
}


*/



let a: IHttpUtility = require("HttpUtility.js")
let b = a.htmlEncode("הצü<>[]{}nihao")
let c = a.htmlDecode(b);
console.log(c);


/*
cd / d "D:\username\Documents\Visual Studio 2017\Projects\TestPWA\TestPWA\wwwroot\ts\firstModule"
npx - p typescript tsc HttpUtility.js--declaration--allowJs--emitDeclarationOnly--outDir types


https://www.typescriptlang.org/docs/handbook/declaration-files/dts-from-js.html


cd / d "D:\username\Documents\Visual Studio 2017\Projects\TestPWA\TestPWA\TypeScript\firstModule"
npx - p typescript tsc HttpUtility.ts--declaration--allowJs--emitDeclarationOnly--outDir types
*/


"use strict";

interface Window
{
    // require: (fileName: string) => any;
    // require_async: (name: string) => Promise<any>;
    require<T>(fileName: string): T;
    require_async<T>(name: string): Promise<T>;
}



interface Window
{
    CustomEvent: any;
    // attachEvent: any;
    // detachEvent: any;
    attachEvent(eventName: string, callback: (event: any) => void): void;
    detachEvent(eventName: string, callback: (event: any) => void): void;
}

interface Document
{
    // attachEvent: any;
    // detachEvent: any;

    attachEvent(eventName: string, callback: (event: any) => void): void;
    detachEvent(eventName: string, callback: (event: any) => void): void;

    attachCustomEvent: any;
}

interface Element
{
    attachEvent: any;
    detachEvent: any;
    fireEvent: (eventName: string) => void;
}


interface Event
{
    clientX: any;
    clientY: any;
}

interface CustomEvent
{
    pageX: number;
    pageY: number;
}

interface IModule
{
    exports: any;
}


// global scope without window
// declare var require: (fileName: string) => any;
declare function require<T>(fileName: string): T;
declare function require_async<T>(name: string): Promise<T>;
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


/*
cd / d "D:\username\Documents\Visual Studio 2017\Projects\TestPWA\TestPWA\wwwroot\ts\firstModule"
npx - p typescript tsc HttpUtility.js--declaration--allowJs--emitDeclarationOnly--outDir types


https://www.typescriptlang.org/docs/handbook/declaration-files/dts-from-js.html


cd / d "D:\username\Documents\Visual Studio 2017\Projects\TestPWA\TestPWA\TypeScript\firstModule"
npx - p typescript tsc HttpUtility.ts--declaration--allowJs--emitDeclarationOnly--outDir types
*/

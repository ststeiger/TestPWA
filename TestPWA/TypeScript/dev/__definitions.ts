
"use strict";

// Modules should have short, all - lowercase names.
// Underscores can be used in the module name if it improves readability. 
// Python packages should also have short, all - lowercase names, although the use of underscores is discouraged.


/* 
Grunt => Gulp => browserify => webpack => vite

Vite: 50s =>


Gulp	32.4k	https://github.com/gulpjs/gulp
Grunt 12.1k	https://github.com/gruntjs/grunt
browserify 13.9k https://github.com/browserify/browserify
webpack	59.6k	https://github.com/webpack/webpack
vite 32.7k	https://github.com/vitejs/vite
esbuild 28k https://github.com/evanw/esbuild
TypeScript  74.9k   https://github.com/microsoft/TypeScript
Babel   39.8k   https://github.com/babel/babel
Flow    21.4k   https://github.com/facebook/flow


webpack => esbuild: 40s => 0.33s, 50s => 0.4s, 60s => 0.5s

https://webpack.js.org/concepts/hot-module-replacement/
https://vitejs.dev/guide/
https://vitejs.dev/guide/features.html#typescript


https://javascript.plainenglish.io/why-you-should-not-use-webpack-f07f4fd7c116
https://medium.com/@housecor/browserify-vs-webpack-b3d7ca08a0a9
https://alligator.io/tooling/webpack-gulp-grunt-browserify/


https://www.typescriptlang.org/docs/handbook/type-compatibility.html
https://www.typescriptlang.org/docs/handbook/modules.html

*/


interface Window
{
    // require: (fileName: string) => any;
    // require_async: (name: string) => Promise<any>;
    require<T>(fileName: string): T;
    require_async<T>(name: string): Promise<T>;
    msCrypto: Crypto;
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

    attachEvent(eventName: string, callback: EventListenerOrEventListenerObject) : void;
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
    htmlAttributeEncode(s: string): string;
    htmlAttributeDecode(s: string): string;
    javaScriptStringEncode(value: string, addDoubleQuotes?: boolean): string;
    urlPathEncode(value: string): string;
    
    // private parts 
    // declare let Entities: any; 
    // toUTF8Array(str: string): number[]; 
    // initEntities(): any[]; 
    // isDigit(str: string): boolean; 
    // isHexDigit(str: string): boolean; 
}


interface IXmlBeautifier 
{
    parse(string: string, type: DOMParserSupportedType): Document;
    stringify(DOM: Node): string;
    transform(xml: string, xsl: string): string | DocumentFragment;
    minify(node: Element): string;
    prettify(node: Element): string;
}



interface IUUID 
{
    uuidv4(): string;
    newId(v?: number): string;
    newGuid(v?: number): string;
}


/*
cd / d "D:\username\Documents\Visual Studio 2017\Projects\TestPWA\TestPWA\wwwroot\ts\firstModule"
npx - p typescript tsc HttpUtility.js--declaration--allowJs--emitDeclarationOnly--outDir types


https://www.typescriptlang.org/docs/handbook/declaration-files/dts-from-js.html


cd / d "D:\username\Documents\Visual Studio 2017\Projects\TestPWA\TestPWA\TypeScript\firstModule"
npx - p typescript tsc HttpUtility.ts--declaration--allowJs--emitDeclarationOnly--outDir types
*/







// sobald modul: declare global {

interface IXmlStructure
{
    uuid: string;
    parent_uuid?: string;
    tagName: string;
    properties: string[][];
    innerHtml?: string;
    children: IXmlStructure[];
    sort: number;
    lvl?: number;
    rootNode?: number;
}




interface IT_Checklist
{
    CL_UID: string;
    CL_Name: string;
}



interface IT_ChecklistElements
{
    ELE_UID: string;
    ELE_Parent_UID: string;
    ELE_CL_UID: string;
    ELE_TagName: string;
    ELE_Level: number;
    ELE_Sort: number;
    ELE_InnerHtml: string;
    ELE_InnerHtml2: string;
}


interface IT_Checklist_ZO_ElementProperties
{

    PRO_UID: string;
    PRO_Name: string;
    PRO_Value: string;
    PRO_ELE_UID: string;
}


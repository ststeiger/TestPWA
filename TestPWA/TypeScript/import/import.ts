
"use strict";

// declare global
// {

interface Window
{
    // require: (fileName: string) => any;
    requisite<T>(fileName: string): Promise<T>;
    exports: any;
}

declare function requisite<T>(fileName: string): Promise<T>;

// }


// https://dev.to/iggredible/what-the-heck-are-cjs-amd-umd-and-esm-ikm
// https://www.devbridge.com/articles/understanding-amd-requirejs/
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import#dynamic_imports
// https://javascript.info/modules-dynamic-imports
// https://fixjs.github.io/define.js/
// https://github.com/enimo/amd-loader
// https://curiosity-driven.org/minimal-loader
// https://blog.avenuecode.com/lazy-loading-es2015-modules-in-the-browser
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules

interface IFoo
{
    foo(): any;
    bar(): any;
}


async function main()
{
    let bar = await requisite<IFoo>("./foo.js");
    // let foo = await import("./foo.js");
    bar.foo();

    // foo.foo();

    // foo.foo();
    // let a = foo.default;


}


main();

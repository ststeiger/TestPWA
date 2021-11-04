
"use strict";

import * as mymodule from "./testmodule2.js";

mymodule.foo();

async function testMeMore()
{
    let a = await import("./testmodule2.js");
    console.log("Hello");
    a.foo();
}


testMeMore();


// https://github.com/google/systemjs

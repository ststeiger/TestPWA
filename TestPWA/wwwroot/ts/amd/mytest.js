define(["require", "exports", "./testmodule2"], function (require, exports, module2) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.testfunction = void 0;
    function testfunction() {
        console.log("testfunction main");
    }
    exports.testfunction = testfunction;
    module2.foo();
});

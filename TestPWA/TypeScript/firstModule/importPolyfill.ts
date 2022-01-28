
// https://gist.github.com/ebidel/3201b36f59f26525eb606663f7b487d0
// https://gist.github.com/samthor/64b114e4a4f539915a95b91ffd340acc


// Feature detect static imports.
function supportsStaticImport()
{
    // This is wrong. e.g. Safari 10.1 supports type = "module" but not the nomodule attribute
    const script = document.createElement('script');
    return 'noModule' in script;
}


// Feature detect dynamic import().
// With this test, Chrome 62 and Edge 16 passes for dynamic import while they don't support it really.
function supportsDynamicImport()
{
    try
    {
        // This would NOT execute.
        new Function('import("")');
        // This will compile on browsers that support it, and it will fail to compile and error on browsers that do not support it.
        // I think what you are missing, is that import and import() are both reserved keyword syntax errors on older browsers. 
        // fooBar() and import() are not both functions calls. 
        // One is a function call to a possibly defined external symbol, the other is a syntax error. 
        // The dynamic import detection relies on a form of eval, which will be blocked by unsafe - eval CSP.
        // While there may be workarounds(e.g.blob, nonce, etc), these would only be practical for a Web App, not a library.
        // new Function('import("").catch(function(){})')();

        return true;
    } catch (err)
    {
        return false;
    }
}




function foobar()
{
    try
    {
        // import('foo').catch(function() { });
    } catch (e) { }
}


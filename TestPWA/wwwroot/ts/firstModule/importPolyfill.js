function supportsStaticImport() {
    var script = document.createElement('script');
    return 'noModule' in script;
}
function supportsDynamicImport() {
    try {
        new Function('import("")');
        return true;
    }
    catch (err) {
        return false;
    }
}
function foobar() {
    try {
    }
    catch (e) { }
}

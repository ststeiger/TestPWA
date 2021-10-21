"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.prettify = exports.minify = exports.transform = exports.stringify = exports.parse = void 0;
function parse(string, type) {
    if (type === void 0) { type = 'text/xml'; }
    return new DOMParser().parseFromString(string, type);
}
exports.parse = parse;
function stringify(DOM) {
    return new XMLSerializer().serializeToString(DOM);
}
exports.stringify = stringify;
function transform(xml, xsl) {
    var proc = new XSLTProcessor();
    proc.importStylesheet(typeof xsl == 'string' ? parse(xsl) : xsl);
    var output = proc.transformToFragment(typeof xml == 'string' ? parse(xml) : xml, document);
    return typeof xml == 'string' ? stringify(output) : output;
}
exports.transform = transform;
function toString(node, pretty, level, singleton) {
    if (level === void 0) { level = 0; }
    if (singleton === void 0) { singleton = false; }
    if (typeof node == 'string')
        node = parse(node);
    var tabs = pretty ? Array(level + 1).fill('').join('\t') : '';
    var newLine = pretty ? '\n' : '';
    if (node.nodeType == 3)
        return (singleton ? '' : tabs) + node.textContent.trim() + (singleton ? '' : newLine);
    if (!node.nodeName)
        return toString(node.firstChild, pretty);
    var output = tabs + ("<" + node.nodeName.toLowerCase());
    if (node.attributes) {
        for (var i = 0; i < node.attributes.length; i++)
            output += " " + node.attributes[i].name + "=\"" + node.attributes[i].value + "\"";
    }
    if (node.childNodes.length == 0)
        return output + ' />' + newLine;
    else
        output += '>';
    var onlyOneTextChild = ((node.childNodes.length == 1) && (node.childNodes[0].nodeType == 3));
    if (!onlyOneTextChild)
        output += newLine;
    for (var i = 0; i < node.childNodes.length; i++)
        output += toString(node.childNodes[i], pretty, level + 1, onlyOneTextChild);
    return output + (onlyOneTextChild ? '' : tabs) + ("</" + node.nodeName.toLowerCase() + ">") + newLine;
}
function minify(node) {
    return toString(node, false);
}
exports.minify = minify;
function prettify(node) {
    var res = toString(node, true);
    if (res.startsWith("<#document-fragment>"))
        res = res.substr("<#document-fragment>".length);
    if (res.endsWith("</#document-fragment>\n")) {
        res = res.substr(0, res.length - "</#document-fragment>\n".length);
        res += "\n";
    }
    return res;
}
exports.prettify = prettify;

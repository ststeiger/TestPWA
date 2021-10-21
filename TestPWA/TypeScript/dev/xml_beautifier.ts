
"use strict";

// https://gist.github.com/max-pub/a5c15b7831bbfaba7ad13acefc3d0781


// like JSON.parse
export function parse(string: string, type: DOMParserSupportedType = 'text/xml'): Document
{
    return new DOMParser().parseFromString(string, type);
}


// like JSON.stringify
export function stringify(DOM: Node): string
{
    return new XMLSerializer().serializeToString(DOM);
}


export function transform(xml: string, xsl: string):string|DocumentFragment
{
    let proc = new XSLTProcessor();
    proc.importStylesheet(typeof xsl == 'string' ? parse(xsl) : xsl);
    let output = proc.transformToFragment(typeof xml == 'string' ? parse(xml) : xml, document);
    return typeof xml == 'string' ? stringify(output) : output; // if source was string then stringify response, else return object
}


function toString(node: Node, pretty: boolean, level = 0, singleton = false): string
{

    // einzelkind
    if (typeof node == 'string')
        node = parse(node);

    let tabs = pretty ? Array(level + 1).fill('').join('\t') : '';

    let newLine = pretty ? '\n' : '';
    if (node.nodeType == 3)
        return (singleton ? '' : tabs) + node.textContent.trim() + (singleton ? '' : newLine)

    if (!node.nodeName)
        return toString(node.firstChild, pretty);

    let output = tabs + `<${node.nodeName.toLowerCase()}`; // >\n

    if ((<Element>node).attributes)
    {
        for (let i = 0; i < (<Element>node).attributes.length; i++)
            output += ` ${(<Element>node).attributes[i].name}="${(<Element>node).attributes[i].value}"`;
    }

    if (node.childNodes.length == 0)
        return output + ' />' + newLine;
    else
        output += '>';

    let onlyOneTextChild = ((node.childNodes.length == 1) && (node.childNodes[0].nodeType == 3));
    if (!onlyOneTextChild)
        output += newLine;

    for (let i = 0; i < node.childNodes.length; i++)
        output += toString(node.childNodes[i], pretty, level + 1, onlyOneTextChild);

    return output + (onlyOneTextChild ? '' : tabs) + `</${node.nodeName.toLowerCase()}>` + newLine;
}


export function minify(node: Element): string
{
    return toString(node, false);
}


export function prettify(node: Element): string
{
    // return toString(node, true);
    let res = toString(node, true);

    // substr(MDN) takes parameters as (from, length).
    // substring (MDN) takes parameters as (from, to).
    // If start is negative, substr() uses it as a character index from the end of the string.
    // substr() accepts a negative starting position as an offset from the end of the string.substring() does not.

    if (res.startsWith("<#document-fragment>"))
        res = res.substr("<#document-fragment>".length);

    if (res.endsWith("</#document-fragment>\n"))
    {
        res = res.substr(0, res.length - "</#document-fragment>\n".length);
        res += "\n";
    }

    return res;
}

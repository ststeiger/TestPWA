
"use strict";


export function stringToFragment(html:string)
{
    let temp = document.createElement('template');
    temp.innerHTML = html;
    return temp.content;
}

export function xmlToDom(xmlString:string)
{
    let doc: Document = new DOMParser().parseFromString(xmlString, "text/xml");
    return doc;
}

export function htmlToDom(html: string)
{
    let parser = new DOMParser();
    return  parser.parseFromString(html, 'text/html');
}


export function htmlToDocFragment(html:string)
{
    let parser = new DOMParser();
    let doc: Document = parser.parseFromString(html, 'text/html');
    let frag = document.createDocumentFragment();

    for (let i = 0; i < doc.body.children.length; ++i)
    {
        frag.appendChild(doc.body.children[i]);
    }

    return frag;
}



// LIFO-data-structure 
class Stack<T>
{
    protected items: T[];


    // Array is used to implement stack
    constructor()
    {
        this.items = [];
    }

    // push function
    public push(element: T)
    {
        // push element into the items
        this.items.push(element);
    }

    public pop(): T
    {
        // return top most element in the stack
        // and removes it from the stack
        // Underflow if stack is empty
        if (this.items.length == 0)
        {
            throw new Error("Stack underflow");
        }

        return this.items.pop();
    }

    public peek(): T
    {
        // return the top most element from the stack
        // but does'nt delete it.
        return this.items[this.items.length - 1];
    }


    // return true if stack is empty
    get isEmpty(): boolean
    {
        return this.items.length == 0;
    }


    get count(): number
    {
        return this.items.length;
    }


    public debugDisplay(): string 
    {
        let str: string[] = [];
        for (let i = 0; i < this.items.length; i++)
            str.push(String(this.items[i]));

        return str.join(" ");
    }

} // End Class Stack<T> 




function replace(str: string, oldToken: string[] | string, newToken?: string, ignoreCase?: boolean)
{
    if (Array.isArray(oldToken))
    {
        for (let i = 0; i < oldToken.length; ++i)
        {
            str = replace(str, oldToken[i], newToken, ignoreCase);
        }

        return str;
    }

    newToken = newToken || "";
    ignoreCase = ignoreCase || false;

    if (!str || !oldToken)
        return str;

    if ((ignoreCase ? oldToken.toLowerCase() : oldToken) == (ignoreCase ? newToken.toLowerCase() : newToken))
        return str;

    let foundAt = 0;
    let ci = (ignoreCase ? oldToken.toLowerCase() : oldToken)
    while ((foundAt = ((ignoreCase ? str.toLowerCase() : str)).indexOf(ci, foundAt)) != -1)
    {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }

    return str;
}


function _getProperties(el: Element): string[][]
{
    let arr: string[][] = [];

    for (let i = 0, atts = el.attributes, n = atts.length; i < n; i++)
    {
        let a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    } // Next i 

    return arr;
} // End Function _getProperties 


export function htmlAttributeEncode(s: string): string
{
    if (!s)
        return "";

    let needEncode: boolean = false;
    for (let i = 0; i < s.length; i++)
    {
        let c = s[i];
        if (c == '&' || c == '"' || c == '<' || c == '\'')
        {
            needEncode = true;
            break;
        }
    }

    if (!needEncode)
        return s;

    let output: string[] = [];
    let len = s.length;

    for (let i = 0; i < len; i++)
    {
        let ch = s[i];
        switch (ch)
        {
            case '&':
                output.push("&amp;");
                break;
            case '"':
                output.push("&quot;");
                break;
            case '<':
                output.push("&lt;");
                break;
            case '\'':
                output.push("&#39;");
                break;
            default:
                output.push(ch);
                break;
        }
    }

    return output.join("");
}


export function javaScriptStringEncode(value: string, addDoubleQuotes?: boolean): string
{
    addDoubleQuotes = addDoubleQuotes || false;


    if (!value)
        return addDoubleQuotes ? "\"\"" : "";

    let len = value.length;
    let needEncode = false;
    let c;
    for (let i = 0; i < len; i++)
    {
        c = value[i];
        let cc = c.charCodeAt(0);

        if (cc >= 0 && cc <= 31 || cc == 34 || cc == 39 || cc == 60 || cc == 62 || cc == 92)
        {
            needEncode = true;
            break;
        }
    }

    if (!needEncode)
        return addDoubleQuotes ? "\"" + value + "\"" : value;

    let sb: string[] = [];
    if (addDoubleQuotes)
        sb.push('"');

    for (let i = 0; i < len; i++)
    {
        c = value[i];
        let cc = c.charCodeAt(0);

        if (cc >= 0 && cc <= 7 || cc == 11 || cc >= 14 && cc <= 31 || cc == 39 || cc == 60 || cc == 62)
        {
            let t = "0000" + cc.toString(16);
            t = "\\u" + t.substr(t.length - 4);
            sb.push(t);
        }
        else switch (cc)
        {
            case 8:
                sb.push("\\b");
                break;
            case 9:
                sb.push("\\t");
                break;
            case 10:
                sb.push("\\n");
                break;
            case 12:
                sb.push("\\f");
                break;
            case 13:
                sb.push("\\r");
                break;
            case 34:
                sb.push("\\\"");
                break;
            case 92:
                sb.push("\\\\");
                break;
            default:
                sb.push(c);
                break;
        }
    }

    if (addDoubleQuotes)
        sb.push('"');

    return sb.join("");
}


// https://stackoverflow.com/questions/3932382/traversing-directories-without-using-recursion/30218705#30218705
export function smartIterate(container: Node, documentName?: string)
{
    let stack = new Stack<Node>();
    stack.push(container);
    documentName = documentName || "document";

    // root
    //     - child1
    //     - child2
    //         - child 2.1
    //         - child 2.2
    //             - child 2.2.1
    //             - child 2.2.2
    //             - child 2.2.3
    //         - child 2.3
    //     - child3



    let js = [];
    let k = 1;
    
    while (!stack.isEmpty)
    {

        let cur = stack.pop();
        let increment = false;
        
        if ((<any>cur).appendOnly)
        {
            let currentParent: string = (<any>cur).pa;
            js.push(currentParent + ".appendChild(" + (<any>cur).currentElement + ");\r\n");
            continue;
        }

        // https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeType
        if (cur.nodeType === Node.ELEMENT_NODE)
        {
            // console.log(cur.nodeName);
            let props = _getProperties(<Element>cur);
            // console.log(props);

            (<any>cur).currentElement = "node_" + k.toString();
            increment = true;

            js.push("var " + (<any>cur).currentElement + " = " + documentName + ".createElement(\"" + cur.nodeName + "\");\r\n");

            for (let i = 0; i < props.length; ++i)
            {
                let thisProperty = props[i];
                let propertyName = thisProperty[0];
                let propertyValue = thisProperty[1];

                propertyName = javaScriptStringEncode(htmlAttributeEncode(propertyName));
                propertyValue = javaScriptStringEncode(htmlAttributeEncode(propertyValue));

                js.push((<any>cur).currentElement + ".setAttribute(\"" + propertyName + "\", \"" + propertyValue + "\");\r\n");
            }

        }
        else if (cur.nodeType === Node.DOCUMENT_FRAGMENT_NODE)
        {
            (<any>cur).currentElement = "node_" + k.toString();
            increment = true;
            js.push("var " + (<any>cur).currentElement + " = " + documentName + ".createDocumentFragment();\r\n");
        }
        else if (cur.nodeType === Node.TEXT_NODE)
        {
            let txt = cur.textContent.replace(/^\s+|\s+$/g, '');
            if (txt)
            {
                let currentParent: string = (<any>cur).pa;
                txt = (<Text>cur).wholeText || cur.textContent;
                txt = javaScriptStringEncode(htmlAttributeEncode(txt));
                js.push(currentParent + ".appendChild(" + documentName + ".createTextNode(\"" + txt + "\"));\r\n");
            }

        }
        else
        {
            console.log(cur.nodeName, cur.nodeType);
        }

        if (increment)
        {
            k++;
            (<any>cur).appendOnly = true;
            if( k != 2)
                stack.push(cur)
        }

        let children: Node[] = Array.prototype.slice.call(cur.childNodes);

        for (let i = children.length - 1; i > -1; --i)
        {
            (<any>children[i]).pa = (<any>cur).currentElement;

            stack.push(children[i]);
        } // Next i 

    } // Whend 

    return js.join("");
} // End Function smartIterate



function testJS()
{
    let ccc = `<div class="buttonFrame" id="buttonFrame">
  <span class="bfUsername">D. Administrator&nbsp;</span>

  <div class="Right">
    <input type="submit" name="btn_Speichern" value="Speichern" onclick="javascript:console.log('hello');" style="box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;">
  </div>

  <div class="Left">
    <input type="submit" name="btn_Abbrechen" value="Abbrechen" id="btn_Abbrechen" class="validate-skip" style="box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;">
  </div>
</div>
`;

    let js = smartIterate(htmlToDocFragment(ccc), "document");
    console.log(js);
}

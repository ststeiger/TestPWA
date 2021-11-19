
"use strict";


async function postFetch(url: string, payload?: any): Promise<Response>
{
    let bdy: string = null;

    if (typeof (payload) === 'string' || payload instanceof String)
        bdy = <string>payload;

    if (typeof (payload) === 'object')
        bdy = JSON.stringify(payload);

    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await fetch(url, {
        method: 'POST',
        headers: {
            "Accept": "application/json"
            , "Content-Type": "application/json"
            , "credentials": "same-origin" // the default would be same-origin, but there's an exciting Edge-bug ... 
            , "pragma": "no-cache"
            , "cache-control": "no-cache"
        }
        , body: bdy
    });

    return result;
}



async function fetchJSON(url: string, payload?: any): Promise<any>
{

    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await postFetch(url, payload);
    let data: any = await result.json();
    return data;
}


async function fetchText(url: string, payload?: any): Promise<string>
{
    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await postFetch(url, payload);
    let data: string = await result.text();
    return data;
}


//function foo()
//{
//    for (var i = 0; i < arguments.length; i++)
//    {
//        console.log(arguments[i]);
//    }
//}


function concat(...args: any[]):string
{
    let a:string[] = [];

    for (let i = 0; i < args.length; i++)
    {
        if(args[i] != null)
            a.push(String(args[i])); // warning: String(null) yields "null" + dito for undefined ...
    }

    return a.join("");
}



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
                js.push(currentParent + ".appendChild(" + documentName + ".createTextNode(\"" + cur.textContent + "\"));\r\n");
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

    let js = smartIterate(htmlToDocFragment(ccc), "docx");
    console.log(js);
}


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


export function createFooter()
{
    let doc = window.parent.document;
    let main = doc.getElementById("Main");
    let html = `<div class="buttonFrame" id="buttonFrame">
  <span class="bfUsername">D. Administrator&nbsp;</span>

  <div class="Right">
    <input type="submit" name="btn_Speichern" value="Speichern" onclick="javascript:console.log('hello');" style="box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;">
  </div>

  <div class="Left">
    <input type="submit" name="btn_Abbrechen" value="Abbrechen" id="btn_Abbrechen" class="validate-skip" style="box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;">
  </div>
</div>
`;

    // 'beforebegin': Before the element itself.
    // 'afterbegin': Just inside the element, before its first child.
    // 'beforeend': Just inside the element, after its last child.
    // 'afterend': After the element itself.

    // main.insertAdjacentHTML("afterbegin", html);


    let fragment = doc.createDocumentFragment();

    let buttonFrame = doc.createElement("DIV");
    buttonFrame.setAttribute("class", "buttonFrame");
    buttonFrame.setAttribute("id", "buttonFrame");

    let spanUsername = doc.createElement("SPAN");
    spanUsername.setAttribute("class", "bfUsername");
    spanUsername.appendChild(doc.createTextNode("D. Administrator "));
    buttonFrame.appendChild(spanUsername);

    let divRight = doc.createElement("DIV");
    divRight.setAttribute("class", "Right");

    let btnSave = doc.createElement("INPUT");
    btnSave.setAttribute("type", "submit");
    btnSave.setAttribute("name", "btn_Speichern");
    btnSave.setAttribute("value", "Speichern");
    btnSave.setAttribute("onclick", "javascript:console.log('hello');");
    btnSave.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
    divRight.appendChild(btnSave);
    buttonFrame.appendChild(divRight);

    let divLeft = doc.createElement("DIV");
    divLeft.setAttribute("class", "Left");

    let btnCancel = doc.createElement("INPUT");
    btnCancel.setAttribute("type", "submit");
    btnCancel.setAttribute("name", "btn_Abbrechen");
    btnCancel.setAttribute("value", "Abbrechen");
    btnCancel.setAttribute("id", "btn_Abbrechen");
    btnCancel.setAttribute("class", "validate-skip");
    btnCancel.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");

    divLeft.appendChild(btnCancel);
    buttonFrame.appendChild(divLeft);

    fragment.appendChild(buttonFrame);

    main.appendChild(fragment);
}

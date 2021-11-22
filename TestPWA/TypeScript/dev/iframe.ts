
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

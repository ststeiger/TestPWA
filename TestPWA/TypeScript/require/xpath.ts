
"use strict";


// https://developer.mozilla.org/en-US/docs/Web/XPath/Introduction_to_using_XPath_in_JavaScript#implementing_a_user_defined_namespace_resolver
// https://stackoverflow.com/questions/31162358/extract-svg-element-by-using-document-evaluate
function nsResolver(prefix: string):string 
{
    let ns = <{ [key: string]: string }>{
        "xhtml": "http://www.w3.org/1999/xhtml",
        "mathml": "http://www.w3.org/1998/Math/MathML",
        "svg": "http://www.w3.org/2000/svg"
    };

    return ns[prefix] || null;
}


// var nsResolver = document.createNSResolver(contextNode.ownerDocument == null ? contextNode.documentElement : contextNode.ownerDocument.documentElement);
// var nsResolver = document.createNSResolver(document.documentElement);


// https://developer.mozilla.org/en-US/docs/Web/XPath/Introduction_to_using_XPath_in_JavaScript
// https://github.com/jsdom/jsdom/issues/1880



// https://stackoverflow.com/questions/10596417/is-there-a-way-to-get-element-by-xpath-using-javascript-in-selenium-webdriver
function xpathSelector(path: string):Node 
{
    return document.evaluate(path, document, nsResolver, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
}

// xpathSelector("//svg:g");



function xpathSelectorAll(xpathToExecute: string):Node[]
{
    let result = [];
    let nodesSnapshot = document.evaluate(xpathToExecute, document, nsResolver, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);

    for (let i = 0; i < nodesSnapshot.snapshotLength; i++)
    {
        result.push(nodesSnapshot.snapshotItem(i));
    }

    return result;
}

// xpathSelectorAll("//svg:g");
// xpathSelectorAll("/svg:svg/svg:g");
// xpathSelectorAll("//svg:g[@id=('KM', 'ZN')]"); // illegal
// xpathSelectorAll("//svg:g[@id='KM' or @id='ZN']");
// xpathSelectorAll("/svg:svg/svg:g[@id='KM' or @id='ZN']");

function getZone(zn_uid: string)
{
    return document.querySelector('path[data-uid="' + zn_uid.toLowerCase() + '"]');
}


function getCommunication(km_uid: string)
{
    return document.querySelector('g[data-uid="' + km_uid.toLowerCase() + '"]');
}


function checkKeypair(km_uid: string, zn_uid: string)
{
    let phone = getCommunication(km_uid);
    let zone = getZone(zn_uid);
    console.log("pz", phone, zone);
}


// https://stackoverflow.com/questions/26049488/how-to-get-absolute-coordinates-of-object-inside-a-g-group/26053262
// https://stackoverflow.com/questions/3025885/xpath-1-0-to-find-if-an-elements-value-is-in-a-list-of-values/44967753#44967753
// https://stackoverflow.com/questions/25631577/what-is-the-fastest-way-to-get-svg-element-given-a-position-x-y
function getArray()
{
    // document.querySelectorAll('svg > g:not([id="ZN"]')
    // document.querySelectorAll('svg > g:not([id="KM"]')
    // document.querySelectorAll('svg > g:not([id="ZN"]:not([id="KM"])')


    // wtf ? https://css-tricks.com/css-not-with-multiple-classes/
    // document.querySelectorAll('svg > g[id]:not(#ZN):not(#KM)')
    // document.querySelectorAll('svg > g:not([id="ZN"]:not([id="KM"])')
    // OHNE ID ATTRIBUT ! document.querySelectorAll('svg > g:not(#KM):not(#ZN)')

    // https://stackoverflow.com/questions/33496188/select-elements-with-attribute-value-in-a-list-of-values
    // Array.prototype.slice.call(document.querySelectorAll('svg > g')).filter(function (a) { var s = a.getAttribute("id"); return s != "KM" && s != "ZN"; });

    let allLayersExceptKMandZN = xpathSelectorAll("/svg:svg/svg:g[not(@id='KM' or @id='ZN')]");

    for (let i = 0; i < allLayersExceptKMandZN.length; ++i)
    {
        allLayersExceptKMandZN[i].parentNode.removeChild(allLayersExceptKMandZN[i]);
    }


    let kmObjects:SVGElement[] = Array.prototype.slice.call(document.querySelectorAll("g#KM > g"));


    // Make the elements you want elementFromPoint to ignore pointer-events="none"
    // https://developer.mozilla.org/en-US/docs/Web/CSS/pointer-events
    for (let i = 0; i < kmObjects.length; ++i)
    {
        let style = kmObjects[i].getAttribute("style");
        if (style == null)
            style = "";

        style += "; pointer-events: none;";
        kmObjects[i].setAttribute("style", style)
    }

    let objs: { [key: string]: string }[] = [];

    for (let i = 0; i < kmObjects.length; ++i)
    {
        let km_uid = kmObjects[i].getAttribute("data-uid");

        // https://stackoverflow.com/questions/33688549/getbbox-vs-getboundingclientrect-vs-getclientrects
        // getBBox is defined in the SVG specification it returns coordinates in the local coordinate system after the application of transforms.
        // getBoundingClientRect and getClientRects are defined in the CSSOM specification.Their main difference is that they return coordinates in the outer SVG coordinate system.
        // getBoundingClientRect returns a single rect that is the union of all the rects that getClientRect would return.
        let rect = kmObjects[i].getBoundingClientRect();
        let pointToCheck = { x: rect.x + rect.height / 2, y: rect.y + rect.width / 2 };
        // let zone = document.elementFromPoint(rect.x, rect.y);
        let zone = document.elementFromPoint(pointToCheck.x, pointToCheck.y);
        // console.log(zone);

        let layer = zone.parentElement ? zone.parentElement.id : null;

        if (layer == "ZN" && zone != null)
        {
            let zn_uid = zone.getAttribute("data-uid");
            objs.push({ "km_uid": km_uid, "zn_uid": zn_uid });

            // console.log(zone);
            // console.log("km: ", km_uid, "zn: ", zn_uid);
        }
        else console.log("error", i, kmObjects[i]);
    }

    return objs;
}


console.log(JSON.stringify(getArray(), null, "  "));

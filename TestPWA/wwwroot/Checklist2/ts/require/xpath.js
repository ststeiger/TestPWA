"use strict";
function nsResolver(prefix) {
    var ns = {
        "xhtml": "http://www.w3.org/1999/xhtml",
        "mathml": "http://www.w3.org/1998/Math/MathML",
        "svg": "http://www.w3.org/2000/svg"
    };
    return ns[prefix] || null;
}
function xpathSelector(path) {
    return document.evaluate(path, document, nsResolver, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
}
function xpathSelectorAll(xpathToExecute) {
    var result = [];
    var nodesSnapshot = document.evaluate(xpathToExecute, document, nsResolver, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);
    for (var i = 0; i < nodesSnapshot.snapshotLength; i++) {
        result.push(nodesSnapshot.snapshotItem(i));
    }
    return result;
}
function getZone(zn_uid) {
    return document.querySelector('path[data-uid="' + zn_uid.toLowerCase() + '"]');
}
function getCommunication(km_uid) {
    return document.querySelector('g[data-uid="' + km_uid.toLowerCase() + '"]');
}
function checkKeypair(km_uid, zn_uid) {
    var phone = getCommunication(km_uid);
    var zone = getZone(zn_uid);
    console.log("pz", phone, zone);
}
function getArray() {
    var allLayersExceptKMandZN = xpathSelectorAll("/svg:svg/svg:g[not(@id='KM' or @id='ZN')]");
    for (var i = 0; i < allLayersExceptKMandZN.length; ++i) {
        allLayersExceptKMandZN[i].parentNode.removeChild(allLayersExceptKMandZN[i]);
    }
    var kmObjects = Array.prototype.slice.call(document.querySelectorAll("g#KM > g"));
    for (var i = 0; i < kmObjects.length; ++i) {
        var style = kmObjects[i].getAttribute("style");
        if (style == null)
            style = "";
        style += "; pointer-events: none;";
        kmObjects[i].setAttribute("style", style);
    }
    var objs = [];
    for (var i = 0; i < kmObjects.length; ++i) {
        var km_uid = kmObjects[i].getAttribute("data-uid");
        var rect = kmObjects[i].getBoundingClientRect();
        var pointToCheck = { x: rect.x + rect.height / 2, y: rect.y + rect.width / 2 };
        var zone = document.elementFromPoint(pointToCheck.x, pointToCheck.y);
        var layer = zone.parentElement ? zone.parentElement.id : null;
        if (layer == "ZN" && zone != null) {
            var zn_uid = zone.getAttribute("data-uid");
            objs.push({ "km_uid": km_uid, "zn_uid": zn_uid });
        }
        else
            console.log("error", i, kmObjects[i]);
    }
    return objs;
}
console.log(JSON.stringify(getArray(), null, "  "));

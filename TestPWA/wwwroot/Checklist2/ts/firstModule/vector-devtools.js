"use strict";
var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
var Vec2D = (function () {
    function Vec2D(x, y) {
        this.x = x;
        this.y = y;
    }
    return Vec2D;
}());
var VectorFormatter = (function () {
    function VectorFormatter(vectorType) {
        this.vectorType = vectorType;
    }
    VectorFormatter.prototype.header = function (value) {
        if (!(value instanceof this.vectorType))
            return null;
        function createJsonML(tagName, props) {
            var children = [];
            for (var _i = 2; _i < arguments.length; _i++) {
                children[_i - 2] = arguments[_i];
            }
            if (children.length == 0)
                return [tagName, props];
            if (Array.isArray(children[0]))
                return __spreadArray([tagName, props], children, true);
            return [tagName, props, children[0]];
        }
        var viewStyle = "\n    width: 100px;\n    height: 100px;\n    border: 1px solid black;\n    position: relative;\n    overflow: hidden;\n    font-size: 10px;\n";
        var circleStyle = "\n    position: absolute;\n    top: 10px;\n    left: 10px;\n    width: calc(100% - 22px);\n    height: calc(100% - 22px);\n    border-radius: 50%;\n    border: 1px dashed red;\n";
        function textStyle(plus, vert) {
            return "\n        position: absolute;\n        top: ".concat(vert ? plus ? 100 : 0 : 50, "%;\n        left: ").concat(vert ? 50 : plus ? 100 : 0, "%;\n        transform: translate(").concat(vert ? -50 : plus ? -100 : 0, "%, ").concat(vert ? plus ? -100 : 0 : -50, "%);\n    ");
        }
        var plusYStyle = textStyle(true, true);
        var plusXStyle = textStyle(true, false);
        var minusYStyle = textStyle(false, true);
        var minusXStyle = textStyle(false, false);
        function vectorStyle(x, y) {
            var len = Math.sqrt(x * x + y * y);
            return "\n        position: absolute;\n        width: calc(".concat(len * 50, "% - 10px);\n        top: 50%;\n        left: 50%;\n        transform: rotate(").concat(Math.atan2(y, x), "rad);\n        transform-origin: left;\n    ");
        }
        var vectorBarStyle = "\n    width: 100%;\n    border-bottom: 1px solid red;\n";
        var vectorArrowStyle = "\n    position: absolute;\n    left: calc(100% - 6px);\n    top: -4px;\n    border-top: 4px solid transparent;\n    border-left: 6px solid red;\n    border-bottom: 4px solid transparent;\n";
        var jsonML = createJsonML("div", {
            class: "vector-view",
            style: viewStyle
        }, createJsonML("div", {
            class: "circle",
            style: circleStyle
        }), createJsonML("span", {
            style: plusYStyle
        }, "+y"), createJsonML("span", {
            style: plusXStyle
        }, "+x"), createJsonML("span", {
            style: minusYStyle
        }, "-y"), createJsonML("span", {
            style: minusXStyle
        }, "-x"), createJsonML("div", {
            class: "vector",
            style: vectorStyle(value.x, value.y)
        }, createJsonML("div", {
            class: "vector-bar",
            style: vectorBarStyle
        }), createJsonML("div", {
            class: "vector-arrow",
            style: vectorArrowStyle
        })));
        return jsonML;
    };
    VectorFormatter.prototype.hasBody = function () {
        return false;
    };
    VectorFormatter.prototype.body = function () {
        return null;
    };
    return VectorFormatter;
}());
window.devtoolsFormatters = [new VectorFormatter(Vec2D)];
setInterval(function () {
    var t = Date.now() / 1000;
    var len = Math.sin(t * 2);
    console.log(Math.cos(t), Math.sin(t));
    console.log(new Vec2D(Math.cos(t) * len, Math.sin(t) * len));
}, 100);
function myFormatter() {
    window.devtoolsFormatters = [{
            header: function (obj) {
                return ["div", { "style": "background-color: red;" }, ["span", { "style": "font-style: italic;" }, "Hey"]];
            },
            hasBody: function () { return false; }
        }];
}
function setAttributes(tag, props) {
    var ele = document.createElement(tag);
    Object.keys(props).forEach(function (propName) {
        if (propName !== 'children') {
            ele.setAttribute(propName, props[propName]);
        }
    });
}

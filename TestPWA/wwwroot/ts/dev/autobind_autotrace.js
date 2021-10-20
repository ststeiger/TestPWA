"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.autoTrace = exports.autoBind = void 0;
function autoBind(self) {
    for (var _i = 0, _a = Object.getOwnPropertyNames(self.constructor.prototype); _i < _a.length; _i++) {
        var key = _a[_i];
        if (key !== 'constructor') {
            var desc = Object.getOwnPropertyDescriptor(self.constructor.prototype, key);
            self.defineProperty;
            if (desc != null) {
                if (!desc.configurable) {
                    console.log("AUTOBIND-WARNING: Property \"" + key + "\" not configurable ! (" + self.constructor.name + ")");
                    continue;
                }
                var g = desc.get != null;
                var s = desc.set != null;
                if (g || s) {
                    var newDescriptor = {};
                    newDescriptor.enumerable = desc.enumerable;
                    newDescriptor.configurable = desc.configurable;
                    if (g)
                        newDescriptor.get = desc.get.bind(self);
                    if (s)
                        newDescriptor.set = desc.set.bind(self);
                    Object.defineProperty(self, key, newDescriptor);
                    continue;
                }
            }
            if (typeof (self[key]) === 'function') {
                var val = self[key];
                self[key] = val.bind(self);
            }
        }
    }
    return self;
}
exports.autoBind = autoBind;
function autoTrace(self) {
    function getLoggableFunction_old(func, type, name) {
        return function () {
            var args = [];
            for (var _i = 0; _i < arguments.length; _i++) {
                args[_i] = arguments[_i];
            }
            var logText = name + '(';
            for (var i = 0; i < args.length; i++) {
                if (i > 0) {
                    logText += ', ';
                }
                logText += args[i];
            }
            logText += ');';
            console.log(type + " " + logText);
            return func.apply(self, args);
        };
    }
    function getLoggableFunction(func, type, name) {
        return function () {
            var args = [];
            for (var _i = 0; _i < arguments.length; _i++) {
                args[_i] = arguments[_i];
            }
            var logText = name + '(';
            for (var i = 0; i < args.length; i++) {
                if (i > 0) {
                    logText += ', ';
                }
                logText += args[i];
            }
            logText += ')';
            console.log("Pre " + type + " " + logText + "; ");
            var res = func.apply(self, args);
            console.log("Post " + type + " " + logText + ":", res);
            return res;
        };
    }
    for (var _i = 0, _a = Object.getOwnPropertyNames(self.constructor.prototype); _i < _a.length; _i++) {
        var key = _a[_i];
        if (key !== 'constructor') {
            var desc = Object.getOwnPropertyDescriptor(self.constructor.prototype, key);
            if (desc != null) {
                if (!desc.configurable) {
                    console.log("AUTOTRACE-WARNING: Property \"" + key + "\" not configurable ! (" + self.constructor.name + ")");
                    continue;
                }
                var g = desc.get != null;
                var s = desc.set != null;
                if (g || s) {
                    var newDescriptor = {};
                    newDescriptor.enumerable = desc.enumerable;
                    newDescriptor.configurable = desc.configurable;
                    if (g)
                        newDescriptor.get = getLoggableFunction(desc.get.bind(self), "Property", "get_" + key);
                    if (s)
                        newDescriptor.set = getLoggableFunction(desc.set.bind(self), "Property", "set_" + key);
                    Object.defineProperty(self, key, newDescriptor);
                    continue;
                }
            }
            if (typeof (self[key]) === 'function') {
                var val = self[key];
                self[key] = getLoggableFunction(val.bind(self), "Function", key);
            }
        }
    }
    return self;
}
exports.autoTrace = autoTrace;

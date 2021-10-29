var AJAXException = (function () {
    function AJAXException(message, exBaseException) {
        this.m_Exception = exBaseException;
        this.message = message;
    }
    Object.defineProperty(AJAXException.prototype, "originalMessage", {
        get: function () {
            if (this.m_Exception) {
                if (this.m_Exception.Message)
                    return this.m_Exception.Message;
            }
            return "";
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(AJAXException.prototype, "source", {
        get: function () {
            if (this.m_Exception) {
                if (this.m_Exception.Source)
                    return this.m_Exception.Source;
            }
            return "";
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(AJAXException.prototype, "stackTrace", {
        get: function () {
            if (this.m_Exception) {
                if (this.m_Exception.StackTrace)
                    return this.m_Exception.StackTrace;
            }
            return "";
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(AJAXException.prototype, "innerException", {
        get: function () {
            return this.m_Exception;
        },
        enumerable: false,
        configurable: true
    });
    return AJAXException;
}());
var cAjaxResult = (function () {
    function cAjaxResult() {
    }
    Object.defineProperty(cAjaxResult.prototype, "hasError", {
        get: function () {
            if (this.error)
                return true;
            return false;
        },
        enumerable: false,
        configurable: true
    });
    return cAjaxResult;
}());

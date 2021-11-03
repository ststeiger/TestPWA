"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TableWrapper = exports.GroupedTableWrapper = exports.GroupedData = void 0;
var linq_js_1 = require("./linq.js");
var autobind_autotrace_js_1 = require("./autobind_autotrace.js");
var GroupedData = (function () {
    function GroupedData(key, columns, columnMap, data) {
        (0, autobind_autotrace_js_1.autoBind)(this);
        var that = this;
        this.m_accessor = {};
        this.m_key = key;
        this.m_columns = columns;
        this.m_columnMap = columnMap;
        this.m_groupedData = data || null;
        var _loop_1 = function (i) {
            var propName = that.columns[i];
            Object.defineProperty(that.m_accessor, propName, {
                get: function () {
                    if (that.m_groupedData == null)
                        return null;
                    var currentRow = that.m_groupedData[that.m_i];
                    return currentRow == null ? currentRow : currentRow[i];
                }.bind(that),
                set: function (value) {
                    if (that.m_groupedData == null)
                        that.m_groupedData = [];
                    var currentRow = that.m_groupedData[that.m_i];
                    if (currentRow != null)
                        currentRow[i] = value;
                }.bind(that),
                enumerable: true,
                configurable: true
            });
        };
        for (var i = 0; i < that.columns.length; ++i) {
            _loop_1(i);
        }
    }
    Object.defineProperty(GroupedData.prototype, "key", {
        get: function () {
            return this.m_key;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(GroupedData.prototype, "columns", {
        get: function () {
            return this.m_columns;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(GroupedData.prototype, "rows", {
        get: function () {
            if (this.m_groupedData == null)
                return [];
            return this.m_groupedData;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(GroupedData.prototype, "rowCount", {
        get: function () {
            if (this.m_groupedData == null)
                return 0;
            return this.m_groupedData.length;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(GroupedData.prototype, "columnMap", {
        get: function () {
            return this.m_columnMap;
        },
        enumerable: false,
        configurable: true
    });
    GroupedData.prototype.row = function (i) {
        this.m_i = i;
        return this.m_accessor;
    };
    GroupedData.prototype.getIndex = function (name) {
        return this.m_columnMap[name];
    };
    return GroupedData;
}());
exports.GroupedData = GroupedData;
var GroupedTableWrapper = (function () {
    function GroupedTableWrapper(tw, propertyToGroupBy) {
        var that = this;
        (0, autobind_autotrace_js_1.autoBind)(this);
        this.m_columnMap = tw.columnMap;
        this.m_columns = tw.columns;
        this.m_columnLength = tw.columns.length;
        this.m_groupedData = (0, linq_js_1.groupBy)(tw.rows, function (item) {
            return item[tw.getIndex(propertyToGroupBy)];
        });
        this.m_accessor = {};
        var _loop_2 = function (i) {
            var propName = this_1.m_columns[i];
            Object.defineProperty(this_1.m_accessor, propName, {
                get: function () {
                    var currentRow = that.m_groupedData[that.m_id];
                    return currentRow == null ? null : currentRow[i];
                }.bind(that),
                set: function (value) {
                    if (that.m_groupedData[that.m_id] == null)
                        that.m_groupedData[that.m_id] = [];
                    that.m_groupedData[that.m_id][i] = value;
                }.bind(that),
                enumerable: true,
                configurable: true
            });
        };
        var this_1 = this;
        for (var i = 0; i < this.m_columnLength; ++i) {
            _loop_2(i);
        }
    }
    Object.defineProperty(GroupedTableWrapper.prototype, "columnCount", {
        get: function () {
            return this.m_columns.length;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(GroupedTableWrapper.prototype, "columns", {
        get: function () {
            return this.m_columns;
        },
        enumerable: false,
        configurable: true
    });
    GroupedTableWrapper.prototype.getGroup = function (id) {
        return new GroupedData(id, this.columns, this.m_columnMap, this.m_groupedData[id]);
    };
    GroupedTableWrapper.prototype.getIndex = function (name) {
        return this.m_columnMap[name];
    };
    return GroupedTableWrapper;
}());
exports.GroupedTableWrapper = GroupedTableWrapper;
var TableWrapper = (function () {
    function TableWrapper(columns, data, ignoreCase) {
        var that = this;
        (0, autobind_autotrace_js_1.autoBind)(this);
        if (ignoreCase == null)
            ignoreCase = true;
        for (var i = 0; i < columns.length; ++i) {
            if (ignoreCase)
                columns[i] = columns[i].toLowerCase();
        }
        this.rows = data;
        this.setColumns(columns);
        this.m_accessor = {};
        var _loop_3 = function (i) {
            var propName = columns[i];
            Object.defineProperty(this_2.m_accessor, propName, {
                get: function () {
                    var currentRow = that.rows[that.m_i];
                    return currentRow == null ? null : currentRow[i];
                }.bind(that),
                set: function (value) {
                    if (that.rows[that.m_i] == null)
                        that.rows[that.m_i] = [];
                    that.rows[that.m_i][i] = value;
                }.bind(that),
                enumerable: true,
                configurable: true
            });
        };
        var this_2 = this;
        for (var i = 0; i < columns.length; ++i) {
            _loop_3(i);
        }
    }
    Object.defineProperty(TableWrapper.prototype, "columnMap", {
        get: function () {
            return this.m_columnMap;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(TableWrapper.prototype, "rowCount", {
        get: function () {
            return this.rows.length;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(TableWrapper.prototype, "columnCount", {
        get: function () {
            return this.m_columns.length;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(TableWrapper.prototype, "columns", {
        get: function () {
            return this.m_columns;
        },
        enumerable: false,
        configurable: true
    });
    TableWrapper.prototype.setColumns = function (cols) {
        this.m_columnLength = cols.length;
        this.m_columnMap = null;
        this.m_columnMap = {};
        for (var i = 0; i < this.m_columnLength; ++i) {
            this.m_columnMap[cols[i]] = i;
        }
        this.m_columns = cols;
    };
    TableWrapper.prototype.row = function (i) {
        this.m_i = i;
        return this.m_accessor;
    };
    TableWrapper.prototype.getIndex = function (name) {
        return this.m_columnMap[name];
    };
    TableWrapper.prototype.addRow = function (dat) {
        this.rows.push(dat);
        return this;
    };
    TableWrapper.prototype.removeRow = function (i) {
        this.rows.splice(i, 1);
        return this;
    };
    TableWrapper.prototype.groupBy = function (key) {
        return new GroupedTableWrapper(this, key);
    };
    return TableWrapper;
}());
exports.TableWrapper = TableWrapper;

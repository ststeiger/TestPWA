"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TableWrapper = void 0;
var TableWrapper = (function () {
    function TableWrapper(columns, data, ignoreCase) {
        if (ignoreCase == null)
            ignoreCase = true;
        for (var i = 0; i < columns.length; ++i) {
            if (ignoreCase)
                columns[i] = columns[i].toLowerCase();
        }
        var that = this;
        this.getIndex.bind(this);
        this.setColumns.bind(this);
        this.row.bind(this);
        this.addRow.bind(this);
        this.removeRow.bind(this);
        this.rows = data;
        this.setColumns(columns);
        this.m_accessor = {};
        var _loop_1 = function (i) {
            var propName = columns[i];
            Object.defineProperty(this_1.m_accessor, propName, {
                get: function () {
                    var currentRow = that.rows[that.m_i];
                    return currentRow == null ? currentRow : currentRow[i];
                },
                set: function (value) {
                    var currentRow = that.rows[that.m_i];
                    if (currentRow != null)
                        currentRow[i] = value;
                },
                enumerable: true,
                configurable: true
            });
        };
        var this_1 = this;
        for (var i = 0; i < columns.length; ++i) {
            _loop_1(i);
        }
    }
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
    return TableWrapper;
}());
exports.TableWrapper = TableWrapper;

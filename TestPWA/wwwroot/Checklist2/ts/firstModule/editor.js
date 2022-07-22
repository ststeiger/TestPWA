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
;
(function (ns) {
    'use strict';
    var _activeCell = null;
    var _clipboardedCell = null;
    var _clipboardType = null;
    var _Key = null;
    var _Script = document.currentScript;
    var _Sheet = null;
    function _addSheetBoundariesToStyleSheet(ev) {
        _Sheet.querySelectorAll('table.Excel').forEach(function (table) {
            if (!table.hasAttribute('data-excel-id')) {
                table.dataset.excelId = "_".concat(+new Date);
            }
            ;
            var tExcelId = table.dataset.excelId;
            var tStylesheet = document.getElementById(tExcelId);
            if (!tStylesheet) {
                tStylesheet = table.appendChild(document.createElement('style'));
                tStylesheet.id = tExcelId;
                tStylesheet.type = 'text/css';
            }
            ;
            tStylesheet.textContent = '';
            var tContent = [];
            table.querySelectorAll('thead th').forEach(function (th, index) {
                var tWidth = th.offsetWidth;
                var tTextarea = th.querySelector('textarea');
                if (tTextarea) {
                    tWidth = tTextarea.offsetWidth;
                }
                ;
                tContent.push("table.Excel[data-excel-id=\"".concat(tExcelId, "\"] tr td:nth-of-type(").concat(index + 1, "){max-width: ").concat(tWidth, "px; white-space: nowrap}"));
            });
            tStylesheet.textContent = tContent.join('');
        });
    }
    ;
    function _addToClipboard(cell, type) {
        _clipboardedCell = cell;
        _clipboardType = type;
        _clipboardedCell.classList.add('Clipboarded');
        window.postMessage('Basic.CKLEditor.onClipboardAdd', '*');
    }
    ;
    function _copyCell(cell) {
        _emptyClipboard();
        _addToClipboard(cell || _activeCell, 'c');
    }
    ;
    function _cutCell(cell) {
        _emptyClipboard();
        _addToClipboard(cell || _activeCell, 'x');
    }
    ;
    function _createCell(col, row, tab) {
        var tTD = document.createElement('td');
        tTD.classList.add('Selectable');
        tTD.contentEditable = "true";
        tTD.onfocus = _onFocusCell;
        tTD.ondrop = _onDropCell;
        tTD.ondragover = _onDragoverCell;
        tTD.ondragenter = _onDragenterCell;
        tTD.onpaste = _onPasteCell;
        if (!isNaN(col)) {
            tTD.setAttribute('data-column-index', col.toString());
        }
        ;
        if (!isNaN(row)) {
            tTD.setAttribute('data-row-index', row.toString());
        }
        ;
        if (!isNaN(tab)) {
            tTD.tabIndex = tab;
        }
        ;
        return tTD;
    }
    ;
    function _createImage(options) {
        var tImage = document.createElement('img');
        tImage.title = 'Bild kann per Doppelklick entfernt werden';
        tImage.src = options.src;
        tImage.style.cssText = "z-index: 3; position: absolute; left: 0; top: 0; left: ".concat(options.offsetLeft, "px; top: ").concat(options.offsetTop, "px");
        tImage.draggable = false;
        tImage.ondblclick = function () { this.remove(); };
        tImage.onmousedown = function (event) {
            (this.parentNode).onmousemove = function (offsetX, offsetY, startX, startY, event) {
                this.style.left = (offsetX + event.clientX - startX) + 'px';
                this.style.top = (offsetY + event.clientY - startY) + 'px';
            }.bind(this, this.offsetLeft, this.offsetTop, event.clientX, event.clientY);
            (tImage.parentNode).onmouseup = tImage.onmouseleave = function (ev) {
                this.onmousemove = null;
                this.onmouseup = null;
                this.onmouseleave = null;
            };
        };
        return tImage;
    }
    ;
    function _createPreview(data) {
        var tTable = document.createElement('table');
        if (data) {
            var tColumns = data.maxColumnIndex + 1, tRows = data.maxRowIndex + 1;
            tTable.classList.add('Excel');
            if (data.images) {
                data.images.forEach(function (img) {
                    document.body.appendChild(_createImage({
                        src: img.src,
                        offsetLeft: img.offsetLeft - 26,
                        offsetTop: img.offsetTop - 20
                    }));
                });
            }
            ;
            var _loop_1 = function (r) {
                var tRow = tTable.appendChild(document.createElement('tr'));
                var _loop_2 = function (c_1) {
                    var tCell = tRow.appendChild(document.createElement('td'));
                    tCell.dataset.columnIndex = c_1;
                    tCell.dataset.rowIndex = r;
                    tCell.style.height = "".concat(data.rows[r].heightInMM, "mm");
                    tCell.style.minWidth = tCell.style.maxWidth = tCell.style.width = "".concat(data.columns[c_1].widthInMM2, "mm");
                    tCell.style.whiteSpace = 'nowrap';
                    var tData = data.cells.find(function (item) { return item.Column === c_1 && item.Row === r; });
                    if (tData) {
                        tCell.innerHTML = tData.innerHTML;
                        if (tData.colSpan > 1) {
                            tCell.colSpan = tData.colSpan;
                        }
                        ;
                        if (tData.rowSpan > 1) {
                            tCell.rowSpan = tData.rowSpan;
                        }
                        ;
                        if (tData.Style) {
                            tCell.style.cssText = "".concat(tData.Style, ";").concat(tCell.style.cssText);
                        }
                        ;
                        if (tData.Definition) {
                            if (tCell.firstElementChild) {
                                tCell.firstElementChild.style.pointerEvents = '';
                            }
                        }
                    }
                };
                for (var c_1 = 0; c_1 < tColumns; c_1++) {
                    _loop_2(c_1);
                }
            };
            for (var r = 0; r < tRows; r++) {
                _loop_1(r);
            }
            ;
            tTable.querySelectorAll('td[rowSpan], td[colSpan]').forEach(function (td) {
                _That.mergeCells(td, td.colSpan, td.rowSpan);
            });
        }
        ;
        return tTable;
    }
    ;
    function _createTable(columns, rows) {
        var tTable = document.createElement('table'), tColumns = Number(columns) || 5, tRows = Number(rows) || 5;
        tTable.classList.add('Excel');
        tTable.onkeydown = _onKeyDownTable;
        tTable.onkeyup = _onKeyUpTable;
        tTable.onmousedown = _onMouseDownTable;
        var tHead = tTable.appendChild(document.createElement('thead')), tHeader = tHead.appendChild(document.createElement('tr'));
        var tTHF = tHeader.appendChild(document.createElement('th'));
        for (var c_2 = 0; c_2 < tColumns; c_2++) {
            var tTH = tHeader.appendChild(document.createElement('th'));
            var tTextarea = tTH.appendChild(document.createElement('textarea'));
            tTextarea.readOnly = true;
            tTextarea.value = _getExcelColumnName(c_2 + 1);
            tTextarea.onmouseup = _addSheetBoundariesToStyleSheet;
            if (c_2 >= 26) {
                tTH.textContent = _getExcelColumnName(c_2 + 1);
            }
        }
        ;
        var tBody = tTable.appendChild(document.createElement('tbody'));
        for (var r = 0; r < tRows; r++) {
            var tRow = tBody.appendChild(document.createElement('tr'));
            var tTDF = tRow.appendChild(document.createElement('td'));
            tTDF.dataset.rowNumber = r + 1;
            for (var c_3 = 0; c_3 < tColumns; c_3++) {
                tRow.appendChild(_createCell(c_3, r, r * tColumns + (c_3 + 1)));
            }
        }
        ;
        return tTable;
    }
    ;
    function _displayPreview() {
        try {
            _storeInStorage();
            window.open("Preview.html?Cache=".concat(+new Date), 'Preview', 'scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,width=600,height=300,left=100,top=100');
        }
        catch (err) {
            alert('Es kann keine Vorschau erstellt werden!');
            console.log(err);
        }
    }
    ;
    function _emptyClipboard() {
        _clipboardedCell = null;
        _clipboardType = null;
        _Sheet.querySelectorAll('td.Clipboarded').forEach(function (td) {
            td.classList.remove('Clipboarded');
        });
        window.postMessage('Basic.CKLEditor.onClipboardClear', '*');
    }
    ;
    function _emptyCell(cell) {
        if (cell) {
            delete cell.dataset.namespace;
            while (cell.firstChild)
                cell.firstChild.remove();
            cell.contentEditable = "true";
            window.postMessage('Basic.CKLEditor.onEmptyCell', '*');
        }
    }
    ;
    function _formatCell(cell) {
        _emptyClipboard();
        _addToClipboard(cell || _activeCell, 'f');
    }
    ;
    function _getKey() {
        var tURL = new URL(window.location.href);
        return tURL.searchParams.get('uid');
    }
    ;
    function _empty(ele) {
        if (Element.prototype.replaceChildren) {
            ele.replaceChildren();
            return;
        }
        if ('firstChild' in Element.prototype && 'lastChild' in Element.prototype) {
            while (ele.firstChild) {
                ele.removeChild(ele.lastChild);
            }
            return;
        }
        ele.innerHTML = "";
    }
    function _newid() {
        return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b) {
            var c = parseInt(b);
            return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16);
        });
    }
    function _uidToLower(text) {
        if (text == null || text == "null")
            return _newid().toLowerCase();
        return text.toLowerCase();
    }
    function _compareStrings(string1, string2, ignoreCase, useLocale) {
        if (string1 == null && string2 == null)
            return true;
        if (string1 == null || string2 == null)
            return false;
        if (ignoreCase) {
            if (useLocale) {
                string1 = string1.toLocaleLowerCase();
                string2 = string2.toLocaleLowerCase();
            }
            else {
                string1 = string1.toLowerCase();
                string2 = string2.toLowerCase();
            }
        }
        return string1 === string2;
    }
    function _maxExtends(data) {
        var maxRow = 0;
        var maxColumn = 0;
        for (var i = 0; i < data.length; ++i) {
            if (data[i].ELE_RowNumber > maxRow)
                maxRow = data[i].ELE_RowNumber;
            if (data[i].ELE_ColumnNumber > maxColumn)
                maxColumn = data[i].ELE_ColumnNumber;
        }
        return { maxRow: maxRow, maxColumn: maxColumn };
    }
    function _getExcelColumnName(columnNumber) {
        var columnName = "";
        while (columnNumber > 0) {
            var modulo = (columnNumber - 1) % 26;
            columnName = String.fromCharCode('A'.charCodeAt(0) + modulo) + columnName;
            columnNumber = Math.floor((columnNumber - modulo) / 26);
        }
        return columnName;
    }
    function _getExcelColumnNumber(excelColumnName) {
        excelColumnName = excelColumnName.toUpperCase();
        var number = 0;
        var pow = 1;
        for (var i = excelColumnName.length - 1; i >= 0; i--) {
            number += (excelColumnName.charCodeAt(i) - 'A'.charCodeAt(0) + 1) * pow;
            pow *= 26;
        }
        return number;
    }
    function _isChredge() {
        if (!window.chrome)
            return false;
        if (navigator.userAgentData) {
            var vendors = window.navigator.userAgentData.brands;
            if (vendors.filter(function (e) { return e.brand === 'Microsoft Edge'; }).length > 0)
                return true;
        }
        var ua = navigator.userAgent;
        if (ua == null)
            return false;
        ua = ua.toLowerCase();
        return (ua.indexOf(" edg/") != -1);
    }
    function setAttributes(ele, attrs) {
        for (var name_1 in attrs) {
            if (attrs.hasOwnProperty(name_1)) {
                ele.setAttribute(name_1, attrs[name_1]);
            }
        }
    }
    function _loadData2(data) {
        var maxExtends = _maxExtends(data);
        var tTable = _Sheet.querySelector('table.Excel');
        var frag = document.createDocumentFragment();
        var appendRoot;
        var rowNum = 0;
        var tabIndex = 0;
        var columnNum = 0;
        var colGroupCount = 0;
        var table = null;
        var thead = null;
        var titleRow = null;
        for (var i = 0; i < data.length; ++i) {
            var attrs = JSON.parse(data[i].ELE_Attributes);
            if (data[i].ELE_Parent_UID) {
                appendRoot = frag.getElementById("_" + _uidToLower(data[i].ELE_Parent_UID));
            }
            else
                appendRoot = frag;
            if (_compareStrings(data[i].ELE_TagName, "colgroup", true, false)) {
                var width = parseInt(attrs["width"], 10);
                var span = parseInt(attrs["span"], 10);
                span = span || 1;
                width = width / span;
                for (var j = 0; j < span; ++j) {
                    colGroupCount++;
                    var th = document.createElement("th");
                    var ta = document.createElement("textarea");
                    ta.readOnly = true;
                    ta.onmouseup = _addSheetBoundariesToStyleSheet;
                    ta.value = _getExcelColumnName(colGroupCount);
                    th.style.maxWidth = "".concat(width, "px");
                    th.style.minWidth = "".concat(width, "px");
                    th.style.width = "".concat(width, "px");
                    th.appendChild(ta);
                    titleRow.appendChild(th);
                }
                continue;
            }
            var ele = null;
            if (_compareStrings(data[i].ELE_TagName, "td", true, false)) {
                ++tabIndex;
                ++columnNum;
                ele = _createCell(columnNum, rowNum, tabIndex);
            }
            else
                ele = document.createElement(data[i].ELE_TagName);
            ele.setAttribute("id", "_" + _uidToLower(data[i].ELE_UID));
            setAttributes(ele, attrs);
            if (_compareStrings(data[i].ELE_TagName, "table", true, false)) {
                ele.classList.add("Excel");
                ele.setAttribute("data-excel-id", "WAT_ISSN_DAT_???");
                ele.onkeydown = _onKeyDownTable;
                ele.onkeyup = _onKeyUpTable;
                ele.onmousedown = _onMouseDownTable;
                table = ele;
                thead = document.createElement("thead");
                titleRow = document.createElement("tr");
                titleRow.style = titleRow.style + "; border-left: 2px solid black; ";
                var corner = document.createElement("th");
                titleRow.appendChild(corner);
                corner.setAttribute("style", "min-width: 6.88mm/*26px - 96dpi*/;");
                thead.appendChild(titleRow);
            }
            if (_compareStrings(data[i].ELE_TagName, "tbody", true, false)) {
                table.appendChild(thead);
            }
            if (_compareStrings(data[i].ELE_TagName, "input", true, false)) {
            }
            if (data[i].ELE_InnerHtml) {
                ele.innerHTML = data[i].ELE_InnerHtml;
            }
            if (appendRoot != null)
                appendRoot.appendChild(ele);
            else {
                console.log("ERROR");
            }
            if (_compareStrings(data[i].ELE_TagName, "tr", true, false)) {
                rowNum++;
                columnNum = 0;
                var rowLabel = document.createElement("td");
                rowLabel.setAttribute("data-row-number", rowNum.toString());
                ele.style = ele.style + "; border-left: 2px solid black; ";
                ele.appendChild(rowLabel);
            }
        }
        _Sheet.appendChild(frag);
    }
    function _loadData(data) {
        if (data) {
            var tTable_1 = _Sheet.querySelector('table.Excel');
            if (tTable_1) {
                if (data.images) {
                    data.images.forEach(function (img) {
                        _Sheet.appendChild(_createImage(img));
                    });
                }
                ;
                if (data.columns &&
                    data.columns.length) {
                    var tColumns_1 = tTable_1.querySelectorAll('thead th > textarea');
                    data.columns.forEach(function (column, index) {
                        var tTextarea = tColumns_1[index];
                        if (tTextarea) {
                            tTextarea.style.width = "".concat(column.widthInPixel, "px");
                        }
                    });
                }
                ;
                if (data.rows &&
                    data.rows.length) {
                    var tRows_1 = tTable_1.querySelectorAll('tbody > tr');
                    data.rows.forEach(function (row, index) {
                        var tRow = tRows_1[index];
                        if (tRow) {
                            tRow.style.height = "".concat(row.heightInPixel, "px");
                        }
                    });
                }
                ;
                if (data.cells &&
                    data.cells.length) {
                    data.cells.forEach(function (item) {
                        var _a;
                        var tCell = tTable_1.querySelector("td.Selectable[data-column-index='".concat(item.Column, "'][data-row-index='").concat(item.Row, "']"));
                        if (tCell) {
                            if (item.innerHTML) {
                                tCell.innerHTML = item.innerHTML;
                            }
                            ;
                            if (item.Style) {
                                tCell.style.cssText = item.Style;
                            }
                            ;
                            if (item.className) {
                                (_a = tCell.classList).add.apply(_a, item.className.split(' '));
                            }
                            ;
                            if (item.Definition) {
                                tCell.dataset.namespace = item.Definition;
                            }
                            ;
                            if (item.colSpan > 1) {
                                tCell.colSpan = item.colSpan;
                            }
                            ;
                            if (item.rowSpan > 1) {
                                tCell.rowSpan = item.rowSpan;
                            }
                        }
                    });
                }
                ;
                tTable_1.querySelectorAll('td[rowSpan], td[colSpan]').forEach(function (td) {
                    _That.mergeCells(td, td.colSpan, td.rowSpan);
                });
            }
        }
    }
    ;
    function _loadFromDatabase(key) {
        console.log("_loadFromDatabase [key]:", key);
        if (typeof Basic.AJAX !== 'undefined') {
            Basic.AJAX.Get("data/Vorlage.ashx?Key=".concat(key), function (xhr) {
                var tData = JSON.parse(xhr.responseText);
                if (tData && tData.length) {
                    _loadData2(tData);
                }
            });
        }
    }
    ;
    function _loadFromStorage() {
        _loadData(JSON.parse(window.sessionStorage.getItem('CKL')));
    }
    ;
    function _markCells(a, b) {
        if (a && b) {
            var tTable_2 = a.closest('table');
            _unmarkMarkedCells();
            var tMaxColumn = Math.max(Number(a.dataset.columnIndex) + a.colSpan - 1, Number(b.dataset.columnIndex) + b.colSpan - 1), tMaxRow = Math.max(Number(a.dataset.rowIndex) + a.rowSpan - 1, Number(b.dataset.rowIndex) + b.rowSpan - 1), tMinColumn = Math.min(Number(a.dataset.columnIndex), Number(b.dataset.columnIndex)), tMinRow = Math.min(Number(a.dataset.rowIndex), Number(b.dataset.rowIndex));
            var tFindMin = function (minCol, maxCol, minRow, maxRow) {
                var tMaxColumn = maxCol, tMaxRow = maxRow, tMinColumn = minCol, tMinRow = minRow;
                for (var row = minRow; row <= maxRow; row++) {
                    for (var column = minCol; column <= maxCol; column++) {
                        if (!tTable_2.querySelector("td.Selectable[data-row-index='".concat(row, "'][data-column-index='").concat(column, "']"))) {
                            var tTempCell = null;
                            var tRow = row - 1;
                            while (!tTempCell && tRow > 0) {
                                tTempCell = tTable_2.querySelector("td.Selectable[rowspan][data-row-index='".concat(tRow, "'][data-column-index='").concat(column, "']"));
                                tRow--;
                            }
                            ;
                            var tColumn = column - 1;
                            while (!tTempCell && tColumn > 0) {
                                tTempCell = tTable_2.querySelector("td.Selectable[colspan][data-row-index='".concat(row, "'][data-column-index='").concat(tColumn, "']"));
                                tColumn--;
                            }
                            ;
                            if (tTempCell) {
                                if (tTempCell.rowSpan > 1) {
                                    tMinRow = Math.min(tMinRow, Number(tTempCell.dataset.rowIndex));
                                    tMaxRow = Math.max(tMaxRow, Number(tTempCell.dataset.rowIndex) + tTempCell.rowSpan - 1);
                                }
                                ;
                                if (tTempCell.colSpan > 1) {
                                    tMinColumn = Math.min(tMinColumn, Number(tTempCell.dataset.columnIndex));
                                    tMaxColumn = Math.max(tMaxColumn, Number(tTempCell.dataset.columnIndex) + tTempCell.colSpan - 1);
                                }
                            }
                        }
                    }
                }
                ;
                return {
                    maxCol: tMaxColumn,
                    maxRow: tMaxRow,
                    minCol: tMinColumn,
                    minRow: tMinRow
                };
            };
            var tBounds = tFindMin(tMinColumn, tMaxColumn, tMinRow, tMaxRow);
            for (var row = tBounds.minRow; row <= tBounds.maxRow; row++) {
                for (var column = tBounds.minCol; column <= tBounds.maxCol; column++) {
                    var tCell = tTable_2.querySelector("td.Selectable[data-row-index='".concat(row, "'][data-column-index='").concat(column, "']"));
                    if (tCell) {
                        if (column === tBounds.minCol) {
                            tCell.dataset.boundsLeft = true;
                        }
                        ;
                        if (column === tBounds.maxCol) {
                            tCell.dataset.boundsRight = true;
                        }
                        ;
                        if (row === tBounds.minRow) {
                            tCell.dataset.boundsTop = true;
                        }
                        ;
                        if (row === tBounds.maxRow) {
                            tCell.dataset.boundsBottom = true;
                        }
                        ;
                        if (tCell !== _activeCell) {
                            tCell.classList.add('Marked');
                        }
                        ;
                        if ((column === tBounds.minCol) ||
                            (row === tBounds.minRow)) {
                            _markHeaders(tCell);
                        }
                    }
                }
            }
        }
    }
    ;
    function _markHeaders(cell) {
        if (cell) {
            var tRowSpan = 0;
            var tRow = cell.parentElement;
            while (tRowSpan < cell.rowSpan) {
                tRow.querySelector('td').classList.add('Marked');
                tRow = tRow.nextElementSibling;
                tRowSpan++;
            }
            ;
            var tColumnSpan = 0;
            var tColumn = cell.closest('table').querySelectorAll('th')[+cell.dataset.columnIndex + 1];
            while (tColumnSpan < cell.colSpan) {
                tColumn.classList.add('Marked');
                tColumn = tColumn.nextElementSibling;
                tColumnSpan++;
            }
        }
    }
    ;
    function _onDragenterCell(event) {
        _removeDragover(this);
        this.classList.add('Dragover');
    }
    ;
    function _onDragoverCell(event) {
        event.preventDefault();
        event.dataTransfer.dropEffect = 'copy';
    }
    ;
    function _onDropCell(event) {
        event.preventDefault();
        _removeDragover();
        this.contentEditable = "false";
        this.focus();
        var tNamespace = event.dataTransfer.getData('application/my-app'), tFile = event.dataTransfer.files[0];
        if (tNamespace) {
            window.postMessage("Basic.CKLEditor.".concat(tNamespace, ".onDrop"), '*');
        }
        else if (tFile) {
            if (tFile.type.startsWith('image')) {
                var tReader_1 = new FileReader();
                tReader_1.onload = function (offsetLeft, offsetTop) {
                    _Sheet.appendChild(_createImage({
                        src: tReader_1.result,
                        offsetLeft: offsetLeft,
                        offsetTop: offsetTop
                    }));
                }.bind(this, event.clientX, event.clientY - _Sheet.offsetTop);
                tReader_1.readAsDataURL(tFile);
            }
        }
    }
    ;
    function _onFocusCell() {
        var _a;
        var tElement = this;
        window.postMessage('Basic.CKLEditor.onFocusCell', '*');
        if (tElement &&
            !tElement.classList.contains('Active')) {
            _Sheet.querySelectorAll('td.Active, td.Marked, th.Marked').forEach(function (element) {
                element.classList.remove('Active', 'Marked');
                delete element.dataset.boundsLeft;
                delete element.dataset.boundsRight;
                delete element.dataset.boundsTop;
                delete element.dataset.boundsBottom;
            });
            tElement.classList.add('Active');
            _activeCell = tElement;
            _markHeaders(tElement);
        }
        ;
        var tNamespace = (_a = tElement === null || tElement === void 0 ? void 0 : tElement.dataset) === null || _a === void 0 ? void 0 : _a.namespace;
        if (tNamespace) {
            window.postMessage("Basic.CKLEditor.".concat(tNamespace, ".onFocus"), '*');
        }
    }
    ;
    function _onKeyDownTable(event) {
        var tReturn = true;
        if (_activeCell) {
            var tCurrentRow = _activeCell.parentNode, tIndex = _activeCell.dataset.columnIndex;
            var tCell = void 0;
            switch (event.key) {
                case 'ArrowDown':
                    if (tCurrentRow.nextElementSibling &&
                        tCurrentRow.nextElementSibling !== tCurrentRow) {
                        tCell = tCurrentRow.nextElementSibling.querySelector("[data-column-index='".concat(tIndex, "']"));
                    }
                    ;
                    break;
                case 'ArrowLeft':
                    tCell = _activeCell.previousElementSibling;
                    break;
                case 'ArrowRight':
                    tCell = _activeCell.nextElementSibling;
                    break;
                case 'ArrowUp':
                    if (tCurrentRow.previousElementSibling &&
                        tCurrentRow.previousElementSibling !== tCurrentRow) {
                        tCell = tCurrentRow.previousElementSibling.querySelector("[data-column-index='".concat(tIndex, "']"));
                    }
                    ;
                    break;
                case 'Enter':
                    if (!event.altKey) {
                        if (event.shiftKey) {
                            if (tCurrentRow.previousElementSibling &&
                                tCurrentRow.previousElementSibling !== tCurrentRow) {
                                tCell = tCurrentRow.previousElementSibling.querySelector("[data-column-index='".concat(tIndex, "']"));
                            }
                        }
                        else {
                            if (tCurrentRow.nextElementSibling &&
                                tCurrentRow.nextElementSibling !== tCurrentRow) {
                                tCell = tCurrentRow.nextElementSibling.querySelector("[data-column-index='".concat(tIndex, "']"));
                            }
                        }
                    }
                    ;
                    break;
                case 'c':
                case 'C':
                    if (event.ctrlKey) {
                        _copyCell(_activeCell);
                    }
                    ;
                    break;
                case 'x':
                case 'X':
                    if (event.ctrlKey) {
                        _cutCell(_activeCell);
                    }
                    ;
                    break;
                case 'f':
                case 'F':
                    if (event.ctrlKey) {
                        _formatCell(_activeCell);
                        tReturn = false;
                    }
                    ;
                    break;
                case 'v':
                case 'V':
                    if (event.ctrlKey && _clipboardedCell) {
                        tCell = _pasteCell(_activeCell);
                        tCell.blur();
                    }
                    ;
                    break;
                case 'Escape':
                    _emptyClipboard();
            }
            ;
            if (tCell) {
                tReturn = false;
                tCell.focus();
            }
        }
        ;
        if (!tReturn) {
            event.preventDefault();
        }
        ;
        console.log(76.1, event.key);
        return tReturn;
    }
    ;
    function _onKeyUpTable(event) {
        event.preventDefault();
        if (_activeCell) {
            switch (event.key) {
                case 'Delete':
                    var tCells_1 = _That.getActiveAndMarkedCells();
                    _emptyClipboard();
                    tCells_1.forEach(function (td) {
                        if (tCells_1.length > 1 ||
                            td.dataset.namespace) {
                            _emptyCell(td);
                        }
                    });
            }
        }
        ;
        console.log(76.2, event.key);
        return true;
    }
    ;
    function _onMessage(event) {
        switch (event.data.toString().toLowerCase()) {
            case 'basic.ckleditor.tools.onpaste':
                var tCell = _pasteCell();
                tCell.blur();
                tCell.focus();
                break;
            case 'basic.ckleditor.tools.oncut':
                _cutCell();
                break;
            case 'basic.ckleditor.tools.oncopy':
                _copyCell();
                break;
            case 'basic.ckleditor.tools.onformat':
                _formatCell();
                break;
            case 'basic.ckleditor.tools.onaftertriggered':
                _emptyClipboard();
                _activeCell === null || _activeCell === void 0 ? void 0 : _activeCell.focus();
                break;
            case 'basic.ckleditor.tools.ontogglesheetgrid':
                _Sheet.querySelectorAll('table.Excel').forEach(function (table) {
                    table.classList.toggle('noGrid');
                });
                break;
            case 'basic.ckleditor.tools.ontogglesheetlabels':
                _Sheet.querySelectorAll('table.Excel').forEach(function (table) {
                    table.classList.toggle('noLabels');
                });
                break;
            case 'basic.ckleditor.tools.ontogglesheeta4':
                _Sheet.querySelectorAll('table.Excel').forEach(function (table) {
                    table.classList.toggle('displayA4');
                });
                break;
            case 'basic.ckleditor.tools.ontogglescheme':
                document.body.classList.toggle('Black');
                window.postMessage('Basic.CKLEditor.Tools.onToggledScheme', '*');
                break;
            case 'basic.ckleditor.tools.onpreview':
                _displayPreview();
                break;
            case 'basic.request.cancel':
                _removeFromStorage();
                (event.source).postMessage({ Action: 'Basic.Form.closePage' }, '*');
                break;
            case 'basic.request.save':
                _storeInDatabase();
                _removeFromStorage();
                (event.source).postMessage({ Action: 'Basic.Form.closePage' }, '*');
        }
    }
    ;
    function _onMouseDownTable(event) {
        var _this = this;
        if (event.target &&
            event.target.tagName.toLowerCase() === 'td' &&
            event.target.classList.contains('Selectable')) {
            var tObject = { Down: event.target };
            this.onmousemove = (function (object, event) {
                if (event.target &&
                    event.target.tagName.toLowerCase() === 'td' &&
                    event.target.classList.contains('Selectable') &&
                    _activeCell !== event.target) {
                    object.Move = event.target;
                }
                else {
                    delete object.Move;
                }
                ;
                if (object.Move &&
                    object.Move !== object.lastMarked) {
                    object.lastMarked = object.Move;
                    _markCells(object.Down, object.Move);
                }
            }).bind(null, tObject);
            this.onmouseleave = this.onmouseup = (function (object, event) {
                _this.onmouseleave = _this.onmousemove = _this.onmouseup = null;
            }).bind(null, tObject);
        }
    }
    ;
    function _onPasteCell(event) {
        event.preventDefault();
        if (_activeCell) {
            _activeCell.appendChild(document.createTextNode(event.clipboardData.getData('text/plain')));
        }
    }
    ;
    function _pasteCell(cell) {
        if (_clipboardedCell) {
            var tActiveCell_1 = cell || _activeCell;
            if (_clipboardType === 'c' ||
                _clipboardType === 'x') {
                tActiveCell_1.innerHTML = _clipboardedCell.innerHTML;
                tActiveCell_1.title = _clipboardedCell.title;
            }
            ;
            if (_clipboardedCell.dataset.namespace) {
                tActiveCell_1.dataset.namespace = _clipboardedCell.dataset.namespace;
            }
            ;
            _clipboardedCell.classList.forEach(function (key) {
                if (key.startsWith('t')) {
                    tActiveCell_1.classList.add(key);
                }
            });
            if (_clipboardedCell.hasAttribute('style')) {
                tActiveCell_1.setAttribute('style', _clipboardedCell.getAttribute('style'));
            }
            ;
            if (_clipboardType === 'x') {
                if (_clipboardedCell !== tActiveCell_1) {
                    _clipboardedCell.removeAttribute('style');
                    _emptyCell(_clipboardedCell);
                }
                ;
                _emptyClipboard();
            }
            ;
            return tActiveCell_1;
        }
    }
    ;
    function _removeDragover(exception) {
        _Sheet.querySelectorAll('.Selectable.Dragover').forEach(function (element) {
            if (exception !== element) {
                element.classList.remove('Dragover');
            }
        });
    }
    ;
    function _removeFromStorage() {
        try {
            window.sessionStorage.removeItem('CKL');
        }
        catch (err) {
            console.log(err);
        }
    }
    ;
    function _storeInDatabase() {
    }
    ;
    function _storeInStorage() {
        try {
            window.sessionStorage.removeItem('CKL');
            window.sessionStorage.setItem('CKL', JSON.stringify(_toJSON()));
        }
        catch (err) {
            console.log(err);
        }
    }
    ;
    function _isNullOrWhitespace(input) {
        return (typeof input === 'undefined' || input == null)
            || input.replace(/\s/g, '').length < 1;
    }
    function _getDimensions() {
        var tTable = document.querySelector('table.Excel');
        var thead = document.querySelector('table.Excel > thead');
        var tbody = document.querySelector('table.Excel > tbody');
        var maxRows = 0;
        var maxColumns = 0;
        for (var rowIndex = 0; rowIndex < tbody.children.length; ++rowIndex) {
            var currentRow = tbody.children[rowIndex];
            var columns = currentRow.children;
            var foundSomethingInColumn = false;
            for (var columnIndex = 1; columnIndex < columns.length; ++columnIndex) {
                var currentColumn = columns[columnIndex];
                if (!_isNullOrWhitespace(currentColumn.style.cssText) || !_isNullOrWhitespace(currentColumn.innerHTML)) {
                    foundSomethingInColumn = true;
                    if (columnIndex > maxColumns)
                        maxColumns = columnIndex;
                }
            }
            if (foundSomethingInColumn)
                maxRows = rowIndex;
        }
        return { maxRows: maxRows, maxColumns: maxColumns };
    }
    function gaterSaveData() {
        var dimensions = _getDimensions();
        console.log("dimensions", dimensions);
        var tTable = document.querySelector('table.Excel');
    }
    function _toJSON() {
        var tJSON = {
            columns: [],
            rows: [],
            cells: [],
            images: []
        }, tTable = _Sheet.querySelector('table.Excel');
        tTable.querySelectorAll('thead th:not(:first-of-type)').forEach(function (th, index) {
            var tTextarea = th.firstChild, tIsEmpty = !__spreadArray([], Array.prototype.slice.call(tTable.querySelectorAll("td.Selectable[data-column-index='".concat(index, "']"))), true).filter(function (td) { return td.style.cssText || td.innerHTML; }).length;
            tJSON.columns.push({
                isEmpty: tIsEmpty,
                Label: th.firstChild.value,
                widthInMM: tTextarea.offsetWidth * (25.4 / 96),
                widthInMM2: th.offsetWidth * (25.4 / 96),
                widthInPixel: tTextarea.offsetWidth
            });
            if (!tIsEmpty) {
                tJSON.maxColumnIndex = Math.max(~~tJSON.maxColumnIndex, index);
            }
        });
        tTable.querySelectorAll('tbody tr td:first-of-type').forEach(function (td, index) {
            var tIsEmpty = !__spreadArray([], Array.prototype.slice.call(td.parentNode.querySelectorAll('td.Selectable')), true).filter(function (td) { return td.style.cssText || td.innerHTML; }).length;
            tJSON.rows.push({
                Label: td.dataset.rowNumber,
                heightInMM: td.offsetHeight * (25.4 / 96),
                heightInPixel: td.offsetHeight,
                isEmpty: tIsEmpty
            });
            if (!tIsEmpty) {
                tJSON.maxRowIndex = Math.max(~~tJSON.maxRowIndex, index);
            }
        });
        tTable.querySelectorAll('tbody td.Selectable').forEach(function (td) {
            if (td.innerHTML ||
                td.style.cssText) {
                tJSON.cells.push({
                    className: td.className,
                    Column: Number(td.dataset.columnIndex),
                    colSpan: td.colSpan,
                    Definition: td.dataset.namespace,
                    innerHTML: td.innerHTML,
                    Row: Number(td.dataset.rowIndex),
                    rowSpan: td.rowSpan,
                    Style: td.style.cssText
                });
            }
        });
        _Sheet.querySelectorAll(':scope > img').forEach(function (img) {
            tJSON.images.push({
                src: img.src,
                offsetTop: img.offsetTop,
                offsetLeft: img.offsetLeft
            });
        });
        return tJSON;
    }
    ;
    function _unmarkMarkedCells() {
        _Sheet.querySelectorAll('th.Marked, td.Marked, td.Selectable[data-bounds-left], td.Selectable[data-bounds-right], td.Selectable[data-bounds-top], td.Selectable[data-bounds-bottom]').forEach(function (td) {
            td.classList.remove('Marked');
            delete td.dataset.boundsLeft;
            delete td.dataset.boundsRight;
            delete td.dataset.boundsTop;
            delete td.dataset.boundsBottom;
        });
    }
    ;
    var _That = ns.CKLEditor = {
        Init: function () {
            var _a, _b;
            if (window.document.documentMode) {
                document.write('Dieser Browser ist veraltet.');
            }
            else {
                switch ((_b = (_a = _Script === null || _Script === void 0 ? void 0 : _Script.dataset) === null || _a === void 0 ? void 0 : _a.mode) === null || _b === void 0 ? void 0 : _b.toLowerCase()) {
                    case 'preview':
                        document.body.appendChild(_createPreview(JSON.parse(window.sessionStorage.getItem('CKL'))));
                        break;
                    default:
                        _Key = _getKey();
                        _Sheet = document.getElementById('Sheet');
                        if (_Key == null) {
                            _Sheet.appendChild(_createTable(26, 200));
                            _loadFromStorage();
                        }
                        else {
                            _loadFromDatabase(_Key);
                        }
                        _addSheetBoundariesToStyleSheet(null);
                        if (window.location.search.toLowerCase().indexOf('debug=true') !== -1) {
                            document.body.classList.add('Debug');
                        }
                        ;
                        window.addEventListener('beforeunload', _storeInStorage);
                        window.addEventListener('message', _onMessage, false);
                        window.postMessage('Basic.CKLEditor.Init', '*');
                }
            }
        },
        createCell: function (col, row, tab) {
            return _createCell(col, row, tab);
        },
        getActiveCell: function () {
            return _activeCell;
        },
        getActiveAndMarkedCells: function () {
            return _Sheet.querySelectorAll('td.Selectable.Active, td.Selectable.Marked');
        },
        getMarkedCells: function () {
            return _Sheet.querySelectorAll('td.Selectable.Marked');
        },
        markCells: function (a, b) {
            return _markCells(a, b);
        },
        mergeCells: function (cell, colSpan, rowSpan) {
            var tListOfRemovedCells = [];
            try {
                var tRowSpan = rowSpan;
                var tCurrentRow = null;
                var tStartingCell = null;
                while (tRowSpan > 0) {
                    var tColumnSpan = colSpan;
                    tCurrentRow = (tCurrentRow ? tCurrentRow.nextElementSibling : cell.parentNode);
                    tStartingCell = tCurrentRow.querySelector("[data-column-index='".concat(cell.dataset.columnIndex, "']"));
                    if (tCurrentRow === cell.parentNode) {
                        tColumnSpan--;
                        tStartingCell = (tStartingCell.nextElementSibling);
                    }
                    ;
                    while (tColumnSpan > 0) {
                        tListOfRemovedCells.push({
                            Element: tStartingCell,
                            Parent: tStartingCell.parentNode,
                            Ref: tStartingCell.nextElementSibling
                        });
                        var tNextElementSibling = tStartingCell.nextElementSibling;
                        tStartingCell.remove();
                        tStartingCell = tNextElementSibling;
                        tColumnSpan--;
                    }
                    ;
                    tRowSpan--;
                }
                ;
                cell.colSpan = colSpan;
                cell.rowSpan = rowSpan;
            }
            catch (err) {
                tListOfRemovedCells.forEach(function (item) {
                    item.Parent.insertBefore(item.Element, item.Ref);
                });
                alert('Diese Zellen können nicht verbunden werden!');
                throw err;
            }
        }
    };
    window.addEventListener('DOMContentLoaded', _That.Init);
}(window.Basic = window.Basic || {}));

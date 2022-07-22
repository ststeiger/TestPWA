
"use strict";


/***
* Offene Punkte/Fehler:
* - Animation der Zelle im Zustand "c", "x" und/oder "f" ist noch nicht identisch mit dem Excel
* - Die Formatierung "tRotation2" verursacht Probleme mit Rähmen, welche mit rotiert werden
* - Bei verbundenen Zellen gibt es Probleme mit dem Rahmen auf der rechten Seite
*/

/***
* Offene Probleme im Firefox:
* - Unterstützt kein css-resize auf <td/> für das Verschieben der Zeilenhöhe
* - Berechnung von "maxRowIndex" und "maxColumnIndex" scheint inkorrekt
*/

/***
* Ausstehend:
* - Browsertest ([x] Chrome; [x] Firefox; [] MSEdge; [] IPad)
* - Code-Review * Code-Dokumentation
* - #Tools CSS in drei Klassen/Gruppen unterteilen
* - Anleitung des Editors mit Fabio
* - Anleitung des Moduls mit Fabio
*/





interface IAJAX
{
    // Basic..Get(`data/Vorlage.ashx?Key=${key}`, xhr =>
    Get: (url: string, callback: any) => void;
}

interface ICKLEditor
{

}


interface IBasic
{
    AJAX?: IAJAX
    CKLEditor?: ICKLEditor;
}

declare let Basic: IBasic;


interface Document
{
    documentMode: any;
}


interface Window
{
    Basic: IBasic;
    msCrypto: any;
    chrome: any;
}


interface Navigator
{
    userAgentData: any;

}


interface Element
{
    dataset: any;
    offsetWidth: number;
    offsetHeight: number;

    offsetLeft: number;
    offsetTop: number;
    contentEditable: string;

    focus: () => void;
}


interface IImageOptions
{
    src: string;
    offsetLeft: number;
    offsetTop: number;
}



interface IChecklistColumn
{
    isEmpty: boolean;
    Label: string;
    widthInMM: number;
    widthInMM2: number;
    widthInPixel: number;
}


interface IChecklistRow
{
    Label: string;
    widthInMM?: number;
    heightInMM?: number;

    heightInPixel: number;
    isEmpty: boolean;
}


interface IChecklistCell
{
    Column: number;
    Row: number;


    Definition: string; // Namespace ??? 


    colSpan: number;
    rowSpan: number;

    className: string;

    Style: string;
    innerHTML: string;
}



interface IModuleChecklistData
{
    columns: IChecklistColumn[];
    rows: IChecklistRow[];
    cells: IChecklistCell[];

    images: any[];
    maxColumnIndex?: number; // zero-based
    maxRowIndex?: number; // zero-based
}



interface IMouseMarkData
{
    Down: EventTarget;
    Move?: EventTarget;
    lastMarked?: EventTarget;
}



type ClipboardType_t = "c" | "x" | "f";

; (function (ns)
{
    'use strict';

    //REM: Aktive Zelle
    let _activeCell: HTMLTableCellElement = null;

    //REM: Zelle in der Zwischenablage
    let _clipboardedCell: HTMLTableCellElement = null;

    //REM: Typ der Zwischenablage (c || x || f)
    let _clipboardType: ClipboardType_t = null;


    //REM: Schlüssel
    // REM: Ja, das sieht man dem englischen Wort an.
    // Aber welcher Schlüssel, das müsste man wissen. 
    // Sagen wir, CLS_UID 
    // i++; increment i by one 
    let _Key = null;

    //REM: Script-Tag <script/>
    const _Script = document.currentScript;

    //REM: Arbeitsbereich
    let _Sheet: HTMLDivElement = null;


    // HTMLTableElement

    /***
    * [x] Fügt die Breite von Spalten <th/> einem Stylesheet hinzu,
    * damit das "overflow" Prinzip von Excel übernommen werden kann
    */
    // REM: table is actually never used ...
    // function _addSheetBoundariesToStyleSheet(table:HTMLTableElement)
    function _addSheetBoundariesToStyleSheet(ev: MouseEvent)
    {
        _Sheet.querySelectorAll('table.Excel').forEach((table) =>
        {
            //REM: "excelId", falls fehlt
            if (!table.hasAttribute('data-excel-id'))
            {
                table.dataset.excelId = `_${+new Date}`;
            };

            const tExcelId = table.dataset.excelId;

            //REM: Stylesheet
            let tStylesheet: HTMLStyleElement = <HTMLStyleElement>document.getElementById(tExcelId);
            if (!tStylesheet)
            {
                tStylesheet = table.appendChild(document.createElement('style'));
                tStylesheet.id = tExcelId;
                tStylesheet.type = 'text/css';
            };
            tStylesheet.textContent = '';

            //REM: Inhalt erstellen
            const tContent: string[] = [];
            table.querySelectorAll('thead th').forEach((th, index) =>
            {
                let tWidth = th.offsetWidth;
                const tTextarea = th.querySelector('textarea');

                if (tTextarea)
                {
                    tWidth = tTextarea.offsetWidth;
                };

                tContent.push(`table.Excel[data-excel-id="${tExcelId}"] tr td:nth-of-type(${index + 1}){max-width: ${tWidth}px; white-space: nowrap}`);
            });

            //REM: Inhalt setzen
            tStylesheet.textContent = tContent.join('');
        })
    };

    /***
    * [x] Nimmt den Inhalt in die Zwischenablage auf
    */
    function _addToClipboard(cell: HTMLTableCellElement, type: ClipboardType_t)
    {
        _clipboardedCell = cell;
        _clipboardType = type;

        //REM: Zelle entsprechend markieren
        _clipboardedCell.classList.add('Clipboarded');

        //REM: Ereignisweitergabe 
        window.postMessage('Basic.CKLEditor.onClipboardAdd', '*');
    };

    /***
    * [x] Kopiert die übergebene Zelle in die Zwischenablage
    */
    function _copyCell(cell?: HTMLTableCellElement)
    {
        _emptyClipboard();
        _addToClipboard(cell || _activeCell, 'c');
    };

    /***
    * [x] Schneidet die übergebene Zelle in die Zwischenablage
    */
    function _cutCell(cell?: HTMLTableCellElement)
    {
        _emptyClipboard();
        _addToClipboard(cell || _activeCell, 'x');
    };

    /***
    * [x] Erstellt eine leere Zelle <td/> und gibt diese zurück
    */
    function _createCell(col: number, row: number, tab: number)
    {
        var tTD = document.createElement('td');
        tTD.classList.add('Selectable');
        tTD.contentEditable = "true";
        tTD.onfocus = _onFocusCell;
        tTD.ondrop = _onDropCell;
        tTD.ondragover = _onDragoverCell;
        tTD.ondragenter = _onDragenterCell;
        tTD.onpaste = _onPasteCell;

        if (!isNaN(col))
        {
            tTD.setAttribute('data-column-index', col.toString());
        };

        if (!isNaN(row))
        {
            tTD.setAttribute('data-row-index', row.toString());
        };

        if (!isNaN(tab))
        {
            tTD.tabIndex = tab;
        };

        return tTD;
    };

    /***
    * [x] Erstellt ein verschiebbares Bild, welches keiner Zelle zugeordnet ist
    */
    function _createImage(options: IImageOptions)
    {
        const tImage = document.createElement('img');
        tImage.title = 'Bild kann per Doppelklick entfernt werden';
        tImage.src = options.src;
        tImage.style.cssText = `z-index: 3; position: absolute; left: 0; top: 0; left: ${options.offsetLeft}px; top: ${options.offsetTop}px`;
        tImage.draggable = false;

        //REM: Bild entfernen
        tImage.ondblclick = function () { (<HTMLElement><any>this).remove() };

        //REM: Bild schieben
        tImage.onmousedown = function (event)
        {
            (<HTMLElement>((<HTMLElement><any>this).parentNode)).onmousemove = function (offsetX: number, offsetY: number, startX: number, startY: number, event: MouseEvent)
            {
                this.style.left = (offsetX + event.clientX - startX) + 'px';
                this.style.top = (offsetY + event.clientY - startY) + 'px'
            }.bind(this, (<HTMLElement><any>this).offsetLeft, (<HTMLElement><any>this).offsetTop, event.clientX, event.clientY);


            (<HTMLElement>((<HTMLElement><any>tImage).parentNode)).onmouseup = tImage.onmouseleave = function (ev: MouseEvent)
            {
                this.onmousemove = null;
                this.onmouseup = null;
                this.onmouseleave = null;
            }
        };

        return tImage;
    };

    /***
    * [] Stellt die Tabelle für die Vorschau zur Verfügung
    */
    function _createPreview(data: IModuleChecklistData)
    {
        const tTable = document.createElement('table');

        if (data)
        {
            const
                tColumns = data.maxColumnIndex + 1, //data.columns.length,
                tRows = data.maxRowIndex + 1; //data.rows.length;

            //REM: Tabelle
            tTable.classList.add('Excel');

            //REM: Bilder
            if (data.images)
            {
                data.images.forEach(img =>
                {
                    document.body.appendChild(
                        _createImage({
                            src: img.src,
                            offsetLeft: img.offsetLeft - 26,
                            offsetTop: img.offsetTop - 20
                        })
                    )
                })
            };

            //REM: Zeilen...
            for (let r = 0; r < tRows; r++)
            {
                const tRow = tTable.appendChild(document.createElement('tr'));

                //REM: Spalten...
                for (let c = 0; c < tColumns; c++)
                {
                    //REM: Zelle
                    const tCell = tRow.appendChild(document.createElement('td'));
                    tCell.dataset.columnIndex = c;
                    tCell.dataset.rowIndex = r;
                    tCell.style.height = `${data.rows[r].heightInMM}mm`;
                    tCell.style.minWidth = tCell.style.maxWidth = tCell.style.width = `${data.columns[c].widthInMM2}mm`;
                    tCell.style.whiteSpace = 'nowrap';

                    //REM: Daten
                    const tData = data.cells.find(item => item.Column === c && item.Row === r);
                    if (tData)
                    {
                        tCell.innerHTML = tData.innerHTML;

                        if (tData.colSpan > 1)
                        {
                            tCell.colSpan = tData.colSpan;
                        };

                        if (tData.rowSpan > 1)
                        {
                            tCell.rowSpan = tData.rowSpan;
                        };

                        //REM: Formatierung
                        if (tData.Style)
                        {
                            tCell.style.cssText = `${tData.Style};${tCell.style.cssText}`;
                        };

                        //REM: Definition
                        if (tData.Definition)
                        {
                            if (tCell.firstElementChild)
                            {
                                (<HTMLElement>tCell.firstElementChild).style.pointerEvents = '';
                            }
                        }
                    }
                }
            };

            //REM: Verbundene Zellen
            tTable.querySelectorAll('td[rowSpan], td[colSpan]').forEach((td: HTMLTableCellElement) =>
            {
                _That.mergeCells(td, td.colSpan, td.rowSpan);
            })
        };

        return tTable;
    };

    /***
    * [x] Stellt die Tabelle / das Raster zur Verfügung
    */
    function _createTable(columns: number, rows: number)
    {
        const
            tTable = document.createElement('table'),
            tColumns = Number(columns) || 5,
            tRows = Number(rows) || 5;

        //REM: Tabelle
        tTable.classList.add('Excel');

        tTable.onkeydown = _onKeyDownTable;
        tTable.onkeyup = _onKeyUpTable;
        tTable.onmousedown = _onMouseDownTable;

        //REM: Kopfzeile
        const
            tHead = tTable.appendChild(document.createElement('thead')),
            tHeader = tHead.appendChild(document.createElement('tr'));

        //REM: Erste Spalte
        const tTHF = tHeader.appendChild(document.createElement('th'));

        for (let c = 0; c < tColumns; c++)
        {
            const tTH = tHeader.appendChild(document.createElement('th'));

            //REM: Aktueller Buchstabe in Textarea, damit das "resize" funktioniert
            const tTextarea = tTH.appendChild(document.createElement('textarea'));
            tTextarea.readOnly = true;
            // tTextarea.value = String.fromCharCode(65 + c % 26);
            tTextarea.value = _getExcelColumnName(c + 1);
            tTextarea.onmouseup = _addSheetBoundariesToStyleSheet;

            //REM: Bei mehr als 26
            if (c >= 26)
            {
                // tTH.textContent = String.fromCharCode(65 + (c / 26) - 1) + tTH.textContent
                tTH.textContent = _getExcelColumnName(c + 1);
            }
        };

        //REM: Inhalt
        const tBody = tTable.appendChild(document.createElement('tbody'));

        for (let r = 0; r < tRows; r++)
        {
            const tRow = tBody.appendChild(document.createElement('tr'));

            //REM: Erste Spalte
            const tTDF = tRow.appendChild(document.createElement('td'));
            tTDF.dataset.rowNumber = r + 1;

            for (let c = 0; c < tColumns; c++)
            {
                tRow.appendChild(_createCell(c, r, r * tColumns + (c + 1)))
            }
        };

        return tTable
    };

    /***
    * [x] Erstellt die Vorschau der aktuellen Ansicht
    */
    function _displayPreview()
    {
        try
        {
            _storeInStorage();
            window.open(`Preview.html?Cache=${+new Date}`, 'Preview', 'scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,width=600,height=300,left=100,top=100')
        }
        catch (err)
        {
            alert('Es kann keine Vorschau erstellt werden!');
            console.log(err)
        }
    };

    /***
    * [x] Leert die Zwischenablage
    */
    function _emptyClipboard()
    {
        _clipboardedCell = null;
        _clipboardType = null;

        //REM: Markierungen entfernen
        _Sheet.querySelectorAll('td.Clipboarded').forEach(td =>
        {
            td.classList.remove('Clipboarded')
        });

        //REM: Ereignisweitergabe
        window.postMessage('Basic.CKLEditor.onClipboardClear', '*')
    };

    /***
    * [x] Leert Inhalt und Funktionalität einer Zelle. Formatierungen bleiben erhalten
    */
    function _emptyCell(cell: Element)
    {
        if (cell)
        {
            delete cell.dataset.namespace;
            while (cell.firstChild) cell.firstChild.remove();
            cell.contentEditable = "true";

            //REM: Ereignisweitergabe, zum entfernen der Eigenschaften
            window.postMessage('Basic.CKLEditor.onEmptyCell', '*')
        }
    };

    /***
    * [x] Kopiert die Formatierung der übergebene Zelle in die Zwischenablage
    */
    function _formatCell(cell?: HTMLTableCellElement)
    {
        _emptyClipboard();
        _addToClipboard(cell || _activeCell, 'f')
    };

    /***
    * [x] Ermittelt den übergebenen Schlüssel
    */
    function _getKey()
    {
        const tURL = new URL(window.location.href);
        return tURL.searchParams.get('uid')
    };


    function _empty(ele: HTMLTableCellElement)
    {
        // container.replaceChildren(...arrayOfNewChildren);
        if (Element.prototype.replaceChildren)
        {
            ele.replaceChildren();
            return;
        }

        if ('firstChild' in Element.prototype && 'lastChild' in Element.prototype)
        {
            while (ele.firstChild)
            {
                ele.removeChild(ele.lastChild);
            }

            return;
        }

        ele.innerHTML = "";
    }


    function _newid()
    {
        return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b)
        {
            let c = parseInt(b);
            return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
        });
    }


    function _uidToLower(text: string)
    {
        if (text == null || text == "null")
            return _newid().toLowerCase();

        return text.toLowerCase();
    }



    function _compareStrings(string1: string, string2: string, ignoreCase?: boolean, useLocale?: boolean)
    {
        if (string1 == null && string2 == null)
            return true;

        if (string1 == null || string2 == null)
            return false;

        if (ignoreCase)
        {
            if (useLocale)
            {
                string1 = string1.toLocaleLowerCase();
                string2 = string2.toLocaleLowerCase();
            }
            else
            {
                string1 = string1.toLowerCase();
                string2 = string2.toLowerCase();
            }
        }

        return string1 === string2;
    } // End Function compareStrings



    function _maxExtends(data: any)
    {
        let maxRow = 0;
        let maxColumn = 0;

        for (let i = 0; i < data.length; ++i)
        {
            if (data[i].ELE_RowNumber > maxRow)
                maxRow = data[i].ELE_RowNumber;

            if (data[i].ELE_ColumnNumber > maxColumn)
                maxColumn = data[i].ELE_ColumnNumber;
        }

        return { maxRow, maxColumn };
    }


    // https://stackoverflow.com/questions/181596/how-to-convert-a-column-number-e-g-127-into-an-excel-column-e-g-aa
    //  It assumes Column A is columnNumber 1
    function _getExcelColumnName(columnNumber: number)
    {
        let columnName = "";

        while (columnNumber > 0)
        {
            let modulo = (columnNumber - 1) % 26;
            columnName = String.fromCharCode('A'.charCodeAt(0) + modulo) + columnName;

            // https://stackoverflow.com/questions/4228356/how-to-perform-an-integer-division-and-separately-get-the-remainder-in-javascr
            columnNumber = Math.floor((columnNumber - modulo) / 26);
        } // Whend 

        return columnName;
    } // End Function getExcelColumnName 


    // https://stackoverflow.com/questions/848147/how-to-convert-excel-sheet-column-names-into-numbers
    // getExcelColumnNumber("AA")
    // This function should work for an arbitrary length column name.
    function _getExcelColumnNumber(excelColumnName: string)
    {
        excelColumnName = excelColumnName.toUpperCase();

        let number = 0;
        let pow = 1;
        for (let i = excelColumnName.length - 1; i >= 0; i--)
        {
            number += (excelColumnName.charCodeAt(i) - 'A'.charCodeAt(0) + 1) * pow;
            pow *= 26;
        }

        return number;
    } // End Function getExcelColumnNumber



    function _isChredge()
    {
        if (!window.chrome)
            return false;

        if (navigator.userAgentData)
        {
            let vendors = window.navigator.userAgentData.brands;
            if (vendors.filter((e: any) => e.brand === 'Microsoft Edge').length > 0)
                return true;
        }

        let ua = navigator.userAgent;
        if (ua == null)
            return false;

        ua = ua.toLowerCase();
        return (ua.indexOf(" edg/") != -1);
    }


    function setAttributes(ele: Element, attrs: any)
    {
        // console.log("setAttributes", attrs);
        for (let name in attrs)
        {
            if (attrs.hasOwnProperty(name))
            {
                // console.log(name + " = '" + attrs[name] + "'");
                ele.setAttribute(name, attrs[name]);
            }
        }
    }


    function _loadData2(data: any)
    {
        let maxExtends = _maxExtends(data);
        const tTable = _Sheet.querySelector('table.Excel');


        let frag = document.createDocumentFragment();

        // console.log("data", data);
        // console.log("_Sheet", _Sheet);
        // console.log("maxExtends: ", maxExtends);

        let appendRoot;

        let rowNum = 0;
        let tabIndex = 0;
        let columnNum = 0;
        let colGroupCount = 0;

        let table: HTMLTableElement = null;
        let thead: HTMLTableSectionElement = null;
        let titleRow: HTMLTableRowElement = null;

        for (let i = 0; i < data.length; ++i)
        {
            // console.log("tData", data[i]);
            let attrs = JSON.parse(data[i].ELE_Attributes);

            if (data[i].ELE_Parent_UID)
            {
                appendRoot = frag.getElementById("_" + _uidToLower(data[i].ELE_Parent_UID));
            }
            else
                appendRoot = frag;

            if (_compareStrings(data[i].ELE_TagName, "colgroup", true, false))
            {
                let width = parseInt(attrs["width"], 10);
                let span = parseInt(attrs["span"], 10);
                span = span || 1;
                width = width / span;

                // if (width < 25) width = 10;

                for (let j = 0; j < span; ++j)
                {
                    colGroupCount++;

                    let th = document.createElement("th");
                    let ta = document.createElement("textarea");
                    // ta.setAttribute("readonly", "");

                    ta.readOnly = true;
                    ta.onmouseup = _addSheetBoundariesToStyleSheet;
                    ta.value = _getExcelColumnName(colGroupCount);
                    // console.log("attrs", ta.value, attrs);
                    // th.style.width = `${width}px`
                    // ta.style.width = `${width}px`
                    // th.setAttribute("style", `max-width: ${width}px;`);
                    th.style.maxWidth = `${width}px`
                    th.style.minWidth = `${width}px`
                    th.style.width = `${width}px`


                    th.appendChild(ta);
                    titleRow.appendChild(th);
                }

                continue;
            } // End colgroup


            let ele = null;

            if (_compareStrings(data[i].ELE_TagName, "td", true, false))
            {
                ++tabIndex;
                ++columnNum;

                ele = _createCell(columnNum, rowNum, tabIndex);
            } // End if td 
            else
                ele = document.createElement(data[i].ELE_TagName);

            ele.setAttribute("id", "_" + _uidToLower(data[i].ELE_UID));
            setAttributes(ele, attrs);

            if (_compareStrings(data[i].ELE_TagName, "table", true, false))
            {
                ele.classList.add("Excel");
                ele.setAttribute("data-excel-id", "WAT_ISSN_DAT_???");
                ele.onkeydown = _onKeyDownTable;
                ele.onkeyup = _onKeyUpTable;
                ele.onmousedown = _onMouseDownTable;

                table = ele;

                thead = document.createElement("thead");
                titleRow = document.createElement("tr");
                (<any>titleRow).style = titleRow.style + "; border-left: 2px solid black; ";

                let corner = document.createElement("th");
                titleRow.appendChild(corner);
                corner.setAttribute("style", "min-width: 6.88mm/*26px - 96dpi*/;");
                thead.appendChild(titleRow);
            } // End if table



            if (_compareStrings(data[i].ELE_TagName, "tbody", true, false))
            {
                table.appendChild(thead);
            }

            if (_compareStrings(data[i].ELE_TagName, "input", true, false))
            {
                ele.
            }


            if (data[i].ELE_InnerHtml)
            {
                ele.innerHTML = data[i].ELE_InnerHtml;
            }

            if (appendRoot != null)
                appendRoot.appendChild(ele);
            else
            {
                console.log("ERROR");
            }

            // Add a row-label column to each row
            if (_compareStrings(data[i].ELE_TagName, "tr", true, false))
            {
                rowNum++;
                columnNum = 0;
                let rowLabel = document.createElement("td");
                // rowLabel.setAttribute("id", "rowNo_" + rowNum.toString());
                rowLabel.setAttribute("data-row-number", rowNum.toString());
                // Hack: bad border left of row-label.
                // alläs isch schlächt, alläs is schlächt ...
                ele.style = ele.style + "; border-left: 2px solid black; ";

                ele.appendChild(rowLabel);
            } // End if tr 

        } // Next i

        //if (!_isChredge())
        //_empty(_Sheet);

        _Sheet.appendChild(frag);
    } // End function _loadData2 


    /***
    * [] Lädt eine bestehende Tabelle aus den übergebenen Daten
    */
    function _loadData(data: IModuleChecklistData)
    {
        if (data)
        {
            const tTable = _Sheet.querySelector('table.Excel');

            if (tTable)
            {
                //REM: Bilder
                if (data.images)
                {
                    data.images.forEach((img) =>
                    {
                        _Sheet.appendChild(
                            _createImage(img)
                        );
                    });
                };

                //REM: Spalten
                if (
                    data.columns &&
                    data.columns.length
                )
                {
                    const tColumns: NodeListOf<HTMLTextAreaElement> = tTable.querySelectorAll('thead th > textarea');

                    data.columns.forEach((column, index: number) =>
                    {
                        const tTextarea = tColumns[index];
                        if (tTextarea)
                        {
                            tTextarea.style.width = `${column.widthInPixel}px`;
                        }
                    })
                };

                //REM: Zeilen
                if (
                    data.rows &&
                    data.rows.length
                )
                {
                    const tRows: NodeListOf<HTMLTableRowElement> = tTable.querySelectorAll('tbody > tr');

                    data.rows.forEach((row: IChecklistRow, index: number) =>
                    {
                        const tRow = tRows[index];
                        if (tRow)
                        {
                            tRow.style.height = `${row.heightInPixel}px`;
                        }
                    })
                };

                //REM: Zellen
                if (
                    data.cells &&
                    data.cells.length
                )
                {
                    data.cells.forEach(item =>
                    {
                        const tCell: HTMLTableCellElement = tTable.querySelector(`td.Selectable[data-column-index='${item.Column}'][data-row-index='${item.Row}']`);

                        if (tCell)
                        {
                            //REM: Inhalt
                            if (item.innerHTML)
                            {
                                tCell.innerHTML = item.innerHTML
                            };

                            //REM: Formatierung
                            if (item.Style)
                            {
                                tCell.style.cssText = item.Style
                            };

                            //REM: Foramtierungsstatus
                            if (item.className)
                            {
                                tCell.classList.add(...item.className.split(' '))
                            };

                            //REM: Definition
                            if (item.Definition)
                            {
                                tCell.dataset.namespace = item.Definition
                            };

                            //REM: Verbundene Zellen
                            if (item.colSpan > 1)
                            {
                                tCell.colSpan = item.colSpan
                            };

                            if (item.rowSpan > 1)
                            {
                                tCell.rowSpan = item.rowSpan
                            }
                        }
                    })
                };

                //REM: Verbundene Zellen
                tTable.querySelectorAll('td[rowSpan], td[colSpan]').forEach((td: HTMLTableCellElement) =>
                {
                    _That.mergeCells(td, td.colSpan, td.rowSpan)
                })
            }
        }
    };

    /***
    * [] Lädt die Zellen aus der Datenbank
    */
    function _loadFromDatabase(key: string)
    {
        console.log("_loadFromDatabase [key]:", key);

        if (typeof Basic.AJAX !== 'undefined')
        {
            Basic.AJAX.Get(`data/Vorlage.ashx?Key=${key}`, (xhr: XMLHttpRequest) =>
            {
                const tData = JSON.parse(xhr.responseText);

                // console.log("tData", JSON.stringify(tData, null, 2));

                if (tData && tData.length)
                {
                    //_loadData(tData[0])
                    _loadData2(tData);
                }
            })
        }
    };

    /***
    * [] Lädt die Zellen aus dem Storage
    */
    function _loadFromStorage()
    {
        _loadData(
            JSON.parse(window.sessionStorage.getItem('CKL'))
        )
    };

    /***
    * [x] Markiert die auswählbaren Zellen, welche in den Bereich Beginn / Ende fallen
    */
    function _markCells(a: HTMLTableCellElement, b: HTMLTableCellElement)
    {
        if (a && b)
        {
            //REM: Tabelle von a und b
            const tTable = a.closest('table');

            //REM: Vorhandene Markierungen entfernen
            _unmarkMarkedCells();

            //REM: Die kleinsten (oben nach unten / links nach rechts) und die grösste Koordinate
            const
                tMaxColumn = Math.max(Number(a.dataset.columnIndex) + a.colSpan - 1, Number(b.dataset.columnIndex) + b.colSpan - 1),
                tMaxRow = Math.max(Number(a.dataset.rowIndex) + a.rowSpan - 1, Number(b.dataset.rowIndex) + b.rowSpan - 1),
                tMinColumn = Math.min(Number(a.dataset.columnIndex), Number(b.dataset.columnIndex)),
                tMinRow = Math.min(Number(a.dataset.rowIndex), Number(b.dataset.rowIndex));

            /***
            * Ist bei mehreren verbundenen Zellen nicht wirklich konsequent, da stets zuerst in eine Richtung gesucht wird.
            * Andere Idee: input.hidden mit "data-column-index" und "data-row-index", welche auf die effektive Zelle verweisen.
            */

            //REM: Anpassungen für verbundene Zellen
            const tFindMin = (minCol: number, maxCol: number, minRow: number, maxRow: number) =>
            {
                let
                    tMaxColumn = maxCol,
                    tMaxRow = maxRow,
                    tMinColumn = minCol,
                    tMinRow = minRow;

                for (let row = minRow; row <= maxRow; row++)
                {
                    for (let column = minCol; column <= maxCol; column++)
                    {
                        if (!tTable.querySelector(`td.Selectable[data-row-index='${row}'][data-column-index='${column}']`))
                        {
                            let tTempCell: HTMLTableCellElement = null

                            //REM: Suche nach oben, weil verbundene Zelle stets von "oben-links" beginnen
                            let tRow = row - 1;
                            while (!tTempCell && tRow > 0)
                            {
                                tTempCell = tTable.querySelector(`td.Selectable[rowspan][data-row-index='${tRow}'][data-column-index='${column}']`);
                                tRow--
                            };

                            //REM: Suche nach links, weil verbundene Zelle stets von "oben-links" beginnen
                            let tColumn = column - 1;
                            while (!tTempCell && tColumn > 0)
                            {
                                tTempCell = tTable.querySelector(`td.Selectable[colspan][data-row-index='${row}'][data-column-index='${tColumn}']`);
                                tColumn--
                            };

                            if (tTempCell)
                            {
                                if (tTempCell.rowSpan > 1)
                                {
                                    tMinRow = Math.min(tMinRow, Number(tTempCell.dataset.rowIndex));
                                    tMaxRow = Math.max(tMaxRow, Number(tTempCell.dataset.rowIndex) + tTempCell.rowSpan - 1);
                                };

                                if (tTempCell.colSpan > 1)
                                {
                                    tMinColumn = Math.min(tMinColumn, Number(tTempCell.dataset.columnIndex));
                                    tMaxColumn = Math.max(tMaxColumn, Number(tTempCell.dataset.columnIndex) + tTempCell.colSpan - 1);
                                }
                            }
                        }
                    }
                };

                return {
                    maxCol: tMaxColumn,
                    maxRow: tMaxRow,
                    minCol: tMinColumn,
                    minRow: tMinRow
                }
            };

            const tBounds = tFindMin(tMinColumn, tMaxColumn, tMinRow, tMaxRow);

            //REM: Alle Zelle zwischen dem Bereich Min / Max markieren
            for (let row = tBounds.minRow; row <= tBounds.maxRow; row++)
            {
                for (let column = tBounds.minCol; column <= tBounds.maxCol; column++)
                {
                    const tCell = <HTMLTableCellElement>tTable.querySelector(`td.Selectable[data-row-index='${row}'][data-column-index='${column}']`);

                    if (tCell)
                    {
                        //REM: Falls äussere linke Grenze...
                        if (column === tBounds.minCol)
                        {
                            tCell.dataset.boundsLeft = true
                        };

                        //REM: Falls äussere rechte Grenze...
                        if (column === tBounds.maxCol)
                        {
                            tCell.dataset.boundsRight = true
                        };

                        //REM: Falls äussere obere Grenze...
                        if (row === tBounds.minRow)
                        {
                            tCell.dataset.boundsTop = true
                        };

                        //REM: Falls äussere untere Grenze...
                        if (row === tBounds.maxRow)
                        {
                            tCell.dataset.boundsBottom = true
                        };

                        //REM: Falls nicht aktiver Zelle entspricht...
                        if (tCell !== _activeCell)
                        {
                            //REM: ...als markiert setzen
                            tCell.classList.add('Marked')
                        };

                        //REM: Überschriften markieren
                        if (
                            (column === tBounds.minCol) ||
                            (row === tBounds.minRow)
                        )
                        {
                            _markHeaders(tCell)
                        }
                    }
                }
            }
        }
    };

    /***
    * [x] Markiert die Überschriften (Spalten und Zeilen) anhand der Zelle
    */
    function _markHeaders(cell: HTMLTableCellElement)
    {
        if (cell)
        {
            //REM: Bezeichnungen markieren
            //REM: --> Zeilen
            let tRowSpan = 0;
            let tRow = <HTMLTableRowElement>cell.parentElement;
            while (tRowSpan < cell.rowSpan)
            {
                tRow.querySelector('td').classList.add('Marked');
                tRow = <HTMLTableRowElement>tRow.nextElementSibling;
                tRowSpan++
            };

            //REM: --> Spalten
            let tColumnSpan = 0;
            let tColumn: HTMLTableCellElement = cell.closest('table').querySelectorAll('th')[+cell.dataset.columnIndex + 1];
            while (tColumnSpan < cell.colSpan)
            {
                tColumn.classList.add('Marked');
                tColumn = <HTMLTableCellElement>tColumn.nextElementSibling;
                tColumnSpan++
            }
        }
    };

    /***
    * [x] Beim Rüberfahren während dem Hereinziehen eines Bibliothek-Elements
    */
    function _onDragenterCell(event: DragEvent)
    {
        _removeDragover(this);
        this.classList.add('Dragover')
    };

    /***
    * [x] Beim Rüberfahren während dem Hereinziehen eines Bibliothek-Elements
    */
    function _onDragoverCell(event: DragEvent)
    {
        event.preventDefault();
        event.dataTransfer.dropEffect = 'copy'
    };

    /***
    * [x] Beim Fallenlassen eines Bibliothek-Elements
    */
    function _onDropCell(event: DragEvent)
    {
        event.preventDefault();

        //REM: Alle ".Dragover" entfernen
        _removeDragover();

        //REM: Zelle fokussieren
        this.contentEditable = "false";
        this.focus();

        //REM: Ereignis Abhandlung
        const
            tNamespace = event.dataTransfer.getData('application/my-app'),
            tFile = event.dataTransfer.files[0];

        //REM: Falls ein Namespace angegeben wurde, sprich eine Definition hereingezogen wurde
        if (tNamespace)
        {
            //REM: ...Ereignis  normal weitergeben
            window.postMessage(`Basic.CKLEditor.${tNamespace}.onDrop`, '*')
        }
        //REM: ...andernfalls, falls eine Datei übermittelt wurde
        //REM: https://stackoverflow.com/questions/6333814/how-does-the-paste-image-from-clipboard-functionality-work-in-gmail-and-google-c/6338207#6338207
        else if (tFile)
        {
            //REM: Falls es sich um ein Bild handelt...
            if (tFile.type.startsWith('image'))
            {
                //REM: ...wird das Bild eingefügt
                //REM: Dies ist KEINE Referenz zur Definition "img"
                const tReader = new FileReader();

                tReader.onload = function (offsetLeft: number, offsetTop: number)
                {
                    _Sheet.appendChild(
                        _createImage({
                            // REM-sts:
                            // An appropriate string or ArrayBuffer based on
                            // which of the reading methods was used to initiate the read operation.
                            // The value is null if the reading is not yet complete or was unsuccessful.
                            // readAsArrayBuffer()	The result is a JavaScript ArrayBuffer containing binary data.
                            // readAsBinaryString()	The result contains the raw binary data from the file in a string.
                            // readAsDataURL()	The result is a string with a data: URL representing the file's data.
                            // readAsText()	The result is text in a string.
                            src: <string>tReader.result,
                            offsetLeft,
                            offsetTop
                        })
                    )
                }.bind(this, event.clientX, event.clientY - _Sheet.offsetTop);

                tReader.readAsDataURL(tFile)
            }
        }
    };

    /***
    * [x] Beim Fokussieren einer Zelle
    */
    function _onFocusCell()
    {
        const tElement = this;

        //REM: Ereignisweitergabe, zum Entfernen der Eigenschaften
        window.postMessage('Basic.CKLEditor.onFocusCell', '*');

        //REM: Zelle aktivieren, sofern nicht schon als aktiv markiert
        if (
            tElement &&
            !tElement.classList.contains('Active')
        )
        {
            //REM: Vorhandene aktive und markierte Zellen entfernen
            _Sheet.querySelectorAll('td.Active, td.Marked, th.Marked').forEach(element =>
            {
                element.classList.remove('Active', 'Marked');

                delete element.dataset.boundsLeft;
                delete element.dataset.boundsRight;
                delete element.dataset.boundsTop;
                delete element.dataset.boundsBottom
            });

            //REM: Zelle als aktive Zelle setzen
            tElement.classList.add('Active');
            _activeCell = tElement;

            //REM: Bezeichnungen markieren
            _markHeaders(tElement)
        };

        //REM: Ereignis weitergeben
        const tNamespace = tElement?.dataset?.namespace;
        if (tNamespace)
        {
            window.postMessage(`Basic.CKLEditor.${tNamespace}.onFocus`, '*')
        }
    };

    /***
    * [x] Beim Herunterdrücken einer Taste über der Tabelle
    */
    function _onKeyDownTable(event: KeyboardEvent)
    {
        let tReturn = true;

        if (_activeCell)
        {
            const
                tCurrentRow: HTMLTableRowElement = <HTMLTableRowElement>_activeCell.parentNode,
                tIndex = _activeCell.dataset.columnIndex;

            //REM: Zu dieser Zelle soll navigiert werden
            let tCell;

            switch (event.key)
            {
                //REM: Navigiert eine Zeile nach unten.
                case 'ArrowDown':
                    if (
                        tCurrentRow.nextElementSibling &&
                        tCurrentRow.nextElementSibling !== tCurrentRow
                    )
                    {
                        tCell = tCurrentRow.nextElementSibling.querySelector(`[data-column-index='${tIndex}']`)
                    };
                    break
                //REM: Navigiert eine Zeile nach link.
                case 'ArrowLeft':
                    tCell = _activeCell.previousElementSibling;
                    break
                //REM: Navigiert eine Zeile nach rechts.
                case 'ArrowRight':
                    tCell = _activeCell.nextElementSibling;
                    break
                //REM: Navigiert eine Zeile nach oben.
                case 'ArrowUp':
                    if (
                        tCurrentRow.previousElementSibling &&
                        tCurrentRow.previousElementSibling !== tCurrentRow
                    )
                    {
                        tCell = tCurrentRow.previousElementSibling.querySelector(`[data-column-index='${tIndex}']`)
                    };
                    break
                //REM: Navigiert rauf / runter
                case 'Enter':
                    if (!event.altKey)
                    {
                        //REM: Navigiert eine Zeile nach oben.
                        if (event.shiftKey)
                        {
                            if (
                                tCurrentRow.previousElementSibling &&
                                tCurrentRow.previousElementSibling !== tCurrentRow
                            )
                            {
                                tCell = tCurrentRow.previousElementSibling.querySelector(`[data-column-index='${tIndex}']`)
                            }
                        }
                        //REM: Navigiert eine Zeile nach unten.
                        else
                        {
                            if (
                                tCurrentRow.nextElementSibling &&
                                tCurrentRow.nextElementSibling !== tCurrentRow
                            )
                            {
                                tCell = tCurrentRow.nextElementSibling.querySelector(`[data-column-index='${tIndex}']`)
                            }
                        }
                    };
                    break
                //REM: Speichert die aktive Zelle in der Zwischenablage als 'c'
                case 'c':
                case 'C':
                    if (event.ctrlKey)
                    {
                        _copyCell(_activeCell)
                    };
                    break
                //REM: Speichert die aktive Zelle in der Zwischenablage als 'x'
                case 'x':
                case 'X':
                    if (event.ctrlKey)
                    {
                        _cutCell(_activeCell)
                    };
                    break
                //REM: Speichert die aktive Zelle in der Zwischenablage als 'f'
                case 'f':
                case 'F':
                    if (event.ctrlKey)
                    {
                        _formatCell(_activeCell);
                        tReturn = false
                    };
                    break
                //REM: Zelle in der Zwischenablage auf aktive Zelle übertragen
                case 'v':
                case 'V':
                    if (event.ctrlKey && _clipboardedCell)
                    {
                        tCell = _pasteCell(_activeCell);
                        tCell.blur()
                    };
                    break
                //REM: Zwischenablage leeren
                case 'Escape':
                    _emptyClipboard()
            };

            //REM: Navigiert zur entsprechenden Zelle
            if (tCell)
            {
                tReturn = false;
                tCell.focus();
            }
        };

        if (!tReturn)
        {
            event.preventDefault()
        };

        console.log(76.1, event.key);
        return tReturn
    };

    /***
    * [x] Beim Loslassen einer Taste über der Tabelle
    */
    function _onKeyUpTable(event: KeyboardEvent)
    {
        event.preventDefault();

        if (_activeCell)
        {
            switch (event.key)
            {
                //REM: Löscht Zellen-Inhalte und macht Zellen wieder schreibbar, sofern von einer Referenz belegt
                case 'Delete':
                    const tCells = _That.getActiveAndMarkedCells();

                    //REM: Zwischenablage leeren
                    _emptyClipboard();

                    tCells.forEach(td =>
                    {
                        //REM: Falls nur eine Zelle aktiv+markiert ist, wird der Text-Inhalt NICHT mit "Delete" entfernt
                        if (
                            tCells.length > 1 ||
                            td.dataset.namespace
                        )
                        {
                            _emptyCell(td)
                        }
                    })
            }
        };

        console.log(76.2, event.key);
        return true
    };

    /***
    * [x] Beim Erhalten einer Nachricht...
    */
    function _onMessage(event: MessageEvent)
    {
        switch (event.data.toString().toLowerCase())
        {
            //REM: ...nach dem Klicken des Werkzeuges "Einfügen"
            case 'basic.ckleditor.tools.onpaste':
                const tCell = _pasteCell();
                tCell.blur();
                tCell.focus();
                break
            //REM: ...nach dem Klicken des Werkzeuges "Ausschneiden"
            case 'basic.ckleditor.tools.oncut':
                _cutCell();
                break
            //REM: ...nach dem Klicken des Werkzeuges "Kopieren"
            case 'basic.ckleditor.tools.oncopy':
                _copyCell();
                break
            //REM: ...nach dem Klicken des Werkzeuges "Format übertragen"
            case 'basic.ckleditor.tools.onformat':
                _formatCell();
                break
            //REM: ...nach dem Aktivieren/Deaktivieren eines Werkzeuges
            case 'basic.ckleditor.tools.onaftertriggered':
                _emptyClipboard();
                _activeCell?.focus();
                break
            //REM: ...nach dem Aktivieren/Deaktivieren des Gitternetzes
            case 'basic.ckleditor.tools.ontogglesheetgrid':
                _Sheet.querySelectorAll('table.Excel').forEach((table) =>
                {
                    table.classList.toggle('noGrid')
                });
                break
            //REM: ...nach dem Aktivieren/Deaktivieren der Überschriften
            case 'basic.ckleditor.tools.ontogglesheetlabels':
                _Sheet.querySelectorAll('table.Excel').forEach(table =>
                {
                    table.classList.toggle('noLabels')
                });
                break
            //REM: ...nach dem Aktivieren/Deaktivieren von A4
            case 'basic.ckleditor.tools.ontogglesheeta4':
                _Sheet.querySelectorAll('table.Excel').forEach(table =>
                {
                    table.classList.toggle('displayA4')
                });
                break
            //REM: ...nach dem Aktivieren/Deaktivieren von "Bunt"
            case 'basic.ckleditor.tools.ontogglescheme':
                document.body.classList.toggle('Black');
                window.postMessage('Basic.CKLEditor.Tools.onToggledScheme', '*');
                break
            //REM: ...nach dem Aktivieren/Deaktivieren von "Vorschau"
            case 'basic.ckleditor.tools.onpreview':
                _displayPreview();
                break
            //REM: ...beim "Abbrechen" durch anderen Formulare
            case 'basic.request.cancel':
                //REM: Entfernt den Zwischenspeicher
                _removeFromStorage();

                //REM: Kann geschlossen werden
                (<Window>(event.source)).postMessage({ Action: 'Basic.Form.closePage' }, '*');
                break
            //REM: ...beim "Speichern" durch anderen Formulare
            case 'basic.request.save':
                //REM: Speichert die Ansicht
                _storeInDatabase();

                //REM: Entfernt den Zwischenspeicher
                _removeFromStorage();

                //REM: Kann geschlossen werden
                // A MessageEventSource(which can be a WindowProxy, MessagePort, or ServiceWorker object) 
                // representing the message emitter.
                (<Window>(event.source)).postMessage({ Action: 'Basic.Form.closePage' }, '*');

            // postMessage(message: any, targetOrigin: string, transfer ?: Transferable[]): void;
            // postMessage(message: any, options ?: WindowPostMessageOptions): void;


        }
    };

    /***
    * [x] Drücken der Maustaste
    */
    function _onMouseDownTable(event: MouseEvent)
    {
        //REM: Falls es sich um eine fokussierbare Zelle handelt...
        if (
            event.target &&
            (<Element>event.target).tagName.toLowerCase() === 'td' &&
            (<Element>event.target).classList.contains('Selectable')
        )
        {
            const tObject: IMouseMarkData = { Down: event.target };

            //REM: ...Ereignis für das Markieren von weiteren Zellen
            this.onmousemove = ((object: IMouseMarkData, event: MouseEvent) =>
            {
                if (
                    event.target &&
                    (<Element>event.target).tagName.toLowerCase() === 'td' &&
                    (<Element>event.target).classList.contains('Selectable') &&
                    _activeCell !== event.target
                )
                {
                    object.Move = event.target
                }
                else
                {
                    delete object.Move
                };

                //REM: Falls neue Zellen markiert werden sollen...
                if (
                    object.Move &&
                    object.Move !== object.lastMarked
                )
                {
                    object.lastMarked = object.Move;
                    _markCells(<HTMLTableCellElement>object.Down, <HTMLTableCellElement>object.Move)
                }
            }).bind(null, tObject);

            //REM: ...Ereignis für das Beenden der Markierung
            this.onmouseleave = this.onmouseup = ((object: IMouseMarkData, event: MouseEvent) =>
            {
                this.onmouseleave = this.onmousemove = this.onmouseup = null
            }).bind(null, tObject)
        }
    };

    /***
    * [x] Einfügen ohne Formatierung
    */
    function _onPasteCell(event: ClipboardEvent)
    {
        event.preventDefault();

        if (_activeCell)
        {
            _activeCell.appendChild(
                document.createTextNode(
                    event.clipboardData.getData('text/plain')
                )
            )
        }
    };

    /***
    * [x] Fügt den Inhalt der Zwischenablage ein
    */
    function _pasteCell(cell?: HTMLTableCellElement)
    {
        if (_clipboardedCell)
        {
            const tActiveCell = cell || _activeCell;

            //REM: Falls "Ausschneiden" oder "Kopieren"...
            if (
                _clipboardType === 'c' ||
                _clipboardType === 'x'
            )
            {
                //REM: ...Inhalt übernehmen
                tActiveCell.innerHTML = _clipboardedCell.innerHTML;
                tActiveCell.title = _clipboardedCell.title
            };

            //REM: Funktionalität übernehmen
            if (_clipboardedCell.dataset.namespace)
            {
                tActiveCell.dataset.namespace = _clipboardedCell.dataset.namespace
            };

            //REM: Formate übernehmen
            _clipboardedCell.classList.forEach(key =>
            {
                if (key.startsWith('t'))
                {
                    tActiveCell.classList.add(key)
                }
            });

            //REM: Styles übernehmen
            if (_clipboardedCell.hasAttribute('style'))
            {
                tActiveCell.setAttribute(
                    'style',
                    _clipboardedCell.getAttribute('style')
                )
            };

            //REM: Falls "Ausschneiden"...
            if (_clipboardType === 'x')
            {
                //REM: ...falls aktive Zelle NICHT der ursprünglichen Zelle entspricht...
                if (_clipboardedCell !== tActiveCell)
                {
                    //REM: ...styles auf ursprünglicher Zelle entfernen
                    _clipboardedCell.removeAttribute('style');

                    //REM: ...ursprüngliche Zelle leeren
                    _emptyCell(_clipboardedCell)
                };

                //REM: ...Zwischenablage leeren
                _emptyClipboard()
            };

            return tActiveCell
        }
    };

    /***
    * [x] Alle ".Dragover" entfernen, ausser der Ausnahme
    */
    function _removeDragover(exception?: Element)
    {
        _Sheet.querySelectorAll('.Selectable.Dragover').forEach(element =>
        {
            if (exception !== element)
            {
                element.classList.remove('Dragover')
            }
        })
    };

    /***
    * [x] Entfernt die gespeicherte Ansicht aus dem SessionStorage
    */
    function _removeFromStorage()
    {
        try
        {
            window.sessionStorage.removeItem('CKL');
        }
        catch (err)
        {
            console.log(err)
        }
    };

    /***
    * [] Speichert die Ansicht in der Datenbank
    */
    function _storeInDatabase()
    {
        //Stefan
    };

    /***
    * [x] Speichert die Ansicht als JSON im SessionStorage
    */
    function _storeInStorage()
    {
        try
        {
            window.sessionStorage.removeItem('CKL');
            window.sessionStorage.setItem('CKL', JSON.stringify(_toJSON()))
        }
        catch (err)
        {
            console.log(err)
        }
    };


    function _isNullOrWhitespace(input: string)
    {
        return (typeof input === 'undefined' || input == null)
            || input.replace(/\s/g, '').length < 1;
    }


    function _getDimensions()
    {
        // let tTable = _Sheet.querySelector('table.Excel');
        var tTable: HTMLTableElement = document.querySelector('table.Excel');
        let thead: HTMLTableSectionElement = document.querySelector('table.Excel > thead');
        let tbody: HTMLTableSectionElement = document.querySelector('table.Excel > tbody');
        // tIsEmpty = ![...Array.prototype.slice.call(
        //.filter((td) => td.style.cssText || td.innerHTML).length;

        let maxRows = 0;
        let maxColumns = 0;

        for (let rowIndex = 0; rowIndex < tbody.children.length; ++rowIndex)
        {
            let currentRow = tbody.children[rowIndex];
            let columns = currentRow.children;

            let foundSomethingInColumn = false;

            for (let columnIndex = 1; columnIndex < columns.length; ++columnIndex)
            {
                let currentColumn = columns[columnIndex];

                if (!_isNullOrWhitespace((<any>currentColumn).style.cssText) || !_isNullOrWhitespace(currentColumn.innerHTML))
                {
                    foundSomethingInColumn = true;

                    if (columnIndex > maxColumns)
                        maxColumns = columnIndex;
                }

            } // Next columnIndex

            if (foundSomethingInColumn)
                maxRows = rowIndex;
        } // Next rowIndex 

        return { maxRows, maxColumns };
    }

    function gaterSaveData()
    {
        let dimensions = _getDimensions();
        console.log("dimensions", dimensions);

        // let tTable = _Sheet.querySelector('table.Excel');
        var tTable: HTMLTableElement = document.querySelector('table.Excel');
    }



    /***
    * [x] Gibt die aktuelle Ansicht als JSON zurück
    */
    function _toJSON()
    {
        //REM: https://pixelsconverter.com/pixels-to-millimeters
        const
            tJSON: IModuleChecklistData = {
                columns: [],
                rows: [],
                cells: [],
                images: []
            },
            tTable = _Sheet.querySelector('table.Excel');

        //REM: Spalten
        tTable.querySelectorAll('thead th:not(:first-of-type)').forEach((th, index) =>
        {
            const
                tTextarea = <HTMLTextAreaElement>th.firstChild,
                tIsEmpty = ![...Array.prototype.slice.call(tTable.querySelectorAll(`td.Selectable[data-column-index='${index}']`))].filter((td: HTMLTableCellElement) => td.style.cssText || td.innerHTML).length;

            tJSON.columns.push({
                isEmpty: tIsEmpty,
                Label: (<HTMLTextAreaElement>th.firstChild).value,
                widthInMM: tTextarea.offsetWidth * (25.4 / 96),
                widthInMM2: th.offsetWidth * (25.4 / 96),
                widthInPixel: tTextarea.offsetWidth
            });

            if (!tIsEmpty)
            {
                tJSON.maxColumnIndex = Math.max(~~tJSON.maxColumnIndex, index)
            }
        });

        //REM: Zeilen
        tTable.querySelectorAll('tbody tr td:first-of-type').forEach((td, index) =>
        {
            const tIsEmpty = ![...Array.prototype.slice.call(td.parentNode.querySelectorAll('td.Selectable'))].filter(td => td.style.cssText || td.innerHTML).length;

            tJSON.rows.push({
                Label: td.dataset.rowNumber,
                heightInMM: td.offsetHeight * (25.4 / 96),
                heightInPixel: td.offsetHeight,
                isEmpty: tIsEmpty
            });

            if (!tIsEmpty)
            {
                tJSON.maxRowIndex = Math.max(~~tJSON.maxRowIndex, index)
            }
        });

        //REM: Zellen welche Inhalte haben
        tTable.querySelectorAll('tbody td.Selectable').forEach((td: HTMLTableCellElement) =>
        {
            if (
                td.innerHTML ||
                td.style.cssText
            )
            {
                tJSON.cells.push({
                    className: td.className,
                    Column: Number(td.dataset.columnIndex),
                    colSpan: td.colSpan,
                    Definition: td.dataset.namespace,
                    innerHTML: td.innerHTML,
                    Row: Number(td.dataset.rowIndex),
                    rowSpan: td.rowSpan,
                    Style: td.style.cssText
                })
            }
        });

        //REM: Hereingezogene Bilder
        _Sheet.querySelectorAll(':scope > img').forEach((img: HTMLImageElement) =>
        {
            tJSON.images.push({
                src: img.src,
                offsetTop: img.offsetTop,
                offsetLeft: img.offsetLeft
            })
        });

        return tJSON
    };

    /***
    * [] Markierte Zellen "unmarkieren"
    */
    function _unmarkMarkedCells()
    {
        //REM: Vorhandene Markierungen entfernen
        _Sheet.querySelectorAll('th.Marked, td.Marked, td.Selectable[data-bounds-left], td.Selectable[data-bounds-right], td.Selectable[data-bounds-top], td.Selectable[data-bounds-bottom]').forEach(td =>
        {
            td.classList.remove('Marked');

            delete td.dataset.boundsLeft;
            delete td.dataset.boundsRight;
            delete td.dataset.boundsTop;
            delete td.dataset.boundsBottom
        })
    };


    var _That = ns.CKLEditor = {
        /***
        * [x] Initialisieren
        */
        Init: () =>
        {
            if (window.document.documentMode)
            {
                document.write('Dieser Browser ist veraltet.')
            }
            else
            {
                switch (_Script?.dataset?.mode?.toLowerCase())
                {
                    case 'preview':
                        //REM: Erstellt das Raster
                        document.body.appendChild(
                            _createPreview(
                                JSON.parse(window.sessionStorage.getItem('CKL'))
                            )
                        );
                        break
                    default:
                        //REM-sts: T_ChecklistVersion.CLV_UID 
                        _Key = _getKey();

                        //REM: Erstellt das Raster
                        _Sheet = <HTMLDivElement>document.getElementById('Sheet');
                        if (_Key == null)
                        {
                            _Sheet.appendChild(_createTable(26, 200));

                            //REM: Bestehende Daten laden
                            _loadFromStorage();
                        }
                        else
                        {
                            //REM: Bestehende Daten laden
                            // 
                            _loadFromDatabase(_Key);
                            // _Sheet.appendChild(_createTable(26, 200));
                        }

                        //REM: Spalten-Grösse über CSS für "overflow"
                        _addSheetBoundariesToStyleSheet(null);

                        //REM: Debug?
                        if (window.location.search.toLowerCase().indexOf('debug=true') !== -1)
                        {
                            document.body.classList.add('Debug')
                        };

                        //REM: Zwischenspeichern
                        window.addEventListener('beforeunload', _storeInStorage);

                        //REM: Ereignisse erhalten
                        window.addEventListener('message', _onMessage, false);

                        //REM: Ereignis weitergeben
                        window.postMessage('Basic.CKLEditor.Init', '*')
                }
            }
        },

        /***
        * [x] Erstellt eine leere Zelle <td/> und gibt diese zurück
        */
        createCell: (col: number, row: number, tab: number) =>
        {
            return _createCell(col, row, tab)
        },

        /***
        * [x] Gibt die aktive Zelle zurück
        */
        getActiveCell: () =>
        {
            return _activeCell
        },

        /***
        * [x] Gibt die aktive Zelle plus die markierten Zellen zurück
        */
        getActiveAndMarkedCells: () =>
        {
            return _Sheet.querySelectorAll('td.Selectable.Active, td.Selectable.Marked')
        },

        /***
        * [x] Gibt die markierten Zellen zurück
        */
        getMarkedCells: () =>
        {
            return _Sheet.querySelectorAll('td.Selectable.Marked')
        },

        /***
        * [x] Markiert die auswählbaren Zellen, welche in den Bereich Beginn / Ende fallen
        */
        markCells: (a: HTMLTableCellElement, b: HTMLTableCellElement) =>
        {
            return _markCells(a, b);
        },

        /***
        * [x] Verbindet die Zelle über die angegebene Strecke
        */
        mergeCells: (cell: HTMLTableCellElement, colSpan: number, rowSpan: number) =>
        {
            //REM: Liste der gelöschten Zellen, zum Rückgängig machen
            const tListOfRemovedCells = [];

            try
            {
                let tRowSpan = rowSpan;
                let tCurrentRow: HTMLTableRowElement = null;
                let tStartingCell: HTMLTableCellElement = null;

                //REM: Wiederholt den unteren Vorgang für die Anzahl "rowSpan" Zeilen
                while (tRowSpan > 0)
                {
                    let tColumnSpan = colSpan;

                    //REM: Setzt die aktuelle Reihe eine Reihe weiter oder zu Beginn auf diese von "cell"
                    tCurrentRow = <HTMLTableRowElement>(tCurrentRow ? tCurrentRow.nextElementSibling : cell.parentNode);
                    tStartingCell = tCurrentRow.querySelector(`[data-column-index='${cell.dataset.columnIndex}']`);

                    //REM: In der Reihe von "cell" wird eine Zelle weniger gelöscht, da der Ursprung bestehen bleibt
                    if (tCurrentRow === cell.parentNode)
                    {
                        tColumnSpan--;
                        tStartingCell = <HTMLTableCellElement>(tStartingCell.nextElementSibling);
                    };

                    //REM: Traversiert alle Spalten der Reihe "tCurrentRow" und löscht die Anzahl "colSpan" Zellen weg
                    while (tColumnSpan > 0)
                    {
                        tListOfRemovedCells.push({
                            Element: tStartingCell,
                            Parent: tStartingCell.parentNode,
                            Ref: tStartingCell.nextElementSibling
                        });

                        const tNextElementSibling = <HTMLTableCellElement>tStartingCell.nextElementSibling;
                        tStartingCell.remove();
                        tStartingCell = tNextElementSibling;
                        tColumnSpan--;
                    };

                    tRowSpan--;
                };

                //REM: colSpan und rowSpan auf der ursprünglichen Zelle setzen
                cell.colSpan = colSpan;
                cell.rowSpan = rowSpan;
            }
            catch (err)
            {
                //REM: Gelöschte Zellen wieder einfügen
                tListOfRemovedCells.forEach((item) =>
                {
                    item.Parent.insertBefore(item.Element, item.Ref)
                });

                alert('Diese Zellen können nicht verbunden werden!');
                throw err
            }
        }
    };

    window.addEventListener('DOMContentLoaded', _That.Init)
}(window.Basic = window.Basic || {}));

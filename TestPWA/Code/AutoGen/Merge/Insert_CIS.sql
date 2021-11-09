
IF OBJECT_ID(N'tempdb..#CheckListNodes') IS NOT NULL
BEGIN
	DROP TABLE #CheckListNodes; 
END


GO
 

DECLARE @numSortDigits int; 
SET @numSortDigits = 10; 


-- Required compatibility level
-- When DB is restored from SQL - Server < 2016
-- ALTER DATABASE < DB_Name > SET COMPATIBILITY_LEVEL = 130
-- ALTER DATABASE COR_Basic_Demo_V4 SET COMPATIBILITY_LEVEL = 130



DECLARE @json nvarchar(max) = N'{
  "uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
  "tagName": "table",
  "properties": [
    [
      "cellspacing",
      "0"
    ],
    [
      "border",
      "0"
    ],
    [
      "style",
      "border-collapse: collapse;"
    ]
  ],
  "children": [
    {
      "uuid": "7bbe1291-129c-4da5-83c5-e2005cfbadae",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "2"
        ],
        [
          "width",
          "100"
        ]
      ],
      "children": [],
      "sort": 0,
      "lvl": 0
    },
    {
      "uuid": "12a2172c-a399-4935-b15f-f31d54d159d0",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "50"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "f6942f8f-9892-40c1-8c62-041d050361a0",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "103"
        ]
      ],
      "children": [],
      "sort": 2,
      "lvl": 0
    },
    {
      "uuid": "1743f563-d609-4e32-875a-00b2bbadd162",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "69"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "6bd20eac-5892-4299-a58a-0d0c87c2647f",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "0cf43b47-98db-42c0-9078-1a46f74ae805",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "49"
        ]
      ],
      "children": [],
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "34a67f9e-b9e6-4fad-9792-290aa3814a68",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "4"
        ],
        [
          "width",
          "25"
        ]
      ],
      "children": [],
      "sort": 6,
      "lvl": 0
    },
    {
      "uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
      "parent_uuid": "01fdfd46-f32e-4ada-86e6-0030d8acb57a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "9083314a-e33e-45c1-9a65-851ccbf0f18a",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f70be4e1-f8fe-47d0-8d49-a5d87a10fc33",
              "parent_uuid": "9083314a-e33e-45c1-9a65-851ccbf0f18a",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5b153153-a701-458e-8a04-19d888d57c14",
              "parent_uuid": "9083314a-e33e-45c1-9a65-851ccbf0f18a",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "3494c4bf-3e9d-4bb6-a883-27168d7840f9",
              "parent_uuid": "9083314a-e33e-45c1-9a65-851ccbf0f18a",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d69e5084-7a47-4139-8844-d74844fedb52",
              "parent_uuid": "9083314a-e33e-45c1-9a65-851ccbf0f18a",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "<span>Bargeldgewerk: Münzinspektions- und Sortieranlage</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "2432156d-622a-4ba8-ad91-e8d2fc5b63d1",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5e5ba9fa-dd79-448d-92a0-506cc9e2f796",
              "parent_uuid": "2432156d-622a-4ba8-ad91-e8d2fc5b63d1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1a9a600b-ef1a-47bd-b928-57cd16dd5e91",
              "parent_uuid": "2432156d-622a-4ba8-ad91-e8d2fc5b63d1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "951b1119-5327-4b6e-bc69-4cc1daca14ae",
              "parent_uuid": "2432156d-622a-4ba8-ad91-e8d2fc5b63d1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "3cd7d57f-60a2-46df-a53d-9f7f5f28dd28",
              "parent_uuid": "2432156d-622a-4ba8-ad91-e8d2fc5b63d1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "\r\n                    <span>Servicetechniker:</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 1,
          "lvl": 0
        },
        {
          "uuid": "4469b27e-908d-4097-ba9e-a0ccfbfd5b2a",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0263bde8-346b-49cf-86ef-9df2140c154b",
              "parent_uuid": "4469b27e-908d-4097-ba9e-a0ccfbfd5b2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "143"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f8c3283d-2cde-4f5c-8475-395341aba6d6",
              "parent_uuid": "4469b27e-908d-4097-ba9e-a0ccfbfd5b2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "max-height: 4cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e6122819-9eb2-4963-bfaa-7d455c7df6e8",
              "parent_uuid": "4469b27e-908d-4097-ba9e-a0ccfbfd5b2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "f5593267-65a9-49fa-8a1e-639621ffb9f3",
              "parent_uuid": "4469b27e-908d-4097-ba9e-a0ccfbfd5b2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a7aa9ed1-ee04-470a-bcd7-625da1a3ae74",
              "parent_uuid": "4469b27e-908d-4097-ba9e-a0ccfbfd5b2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">erledigt</span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "1d50838b-2d93-475f-882f-81af1ca5eddd",
              "parent_uuid": "4469b27e-908d-4097-ba9e-a0ccfbfd5b2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">nicht vorhanden</span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "de787113-1ea2-461b-9dd9-167c819b10a6",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "77feaf42-16bd-4138-97be-fecff8d1832c",
              "parent_uuid": "de787113-1ea2-461b-9dd9-167c819b10a6",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "f7de62f7-2ce6-4348-a620-5764be81dd15",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae42b442-49fb-46f3-920a-6ef1d381e3c4",
              "parent_uuid": "f7de62f7-2ce6-4348-a620-5764be81dd15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Not-Halt Taster</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ecd9e328-ed94-4c6f-91af-c0db66528502",
              "parent_uuid": "f7de62f7-2ce6-4348-a620-5764be81dd15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "511834a8-2191-4904-86c4-993bc2c388f0",
              "parent_uuid": "f7de62f7-2ce6-4348-a620-5764be81dd15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "095e06dd-db6f-4598-aa0e-b2052db36c8c",
                  "parent_uuid": "511834a8-2191-4904-86c4-993bc2c388f0",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "685a35ab-8d82-4053-a06b-b6f2daa3b52f",
              "parent_uuid": "f7de62f7-2ce6-4348-a620-5764be81dd15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81516f84-5470-4606-99aa-a621b3fd4ed7",
                  "parent_uuid": "685a35ab-8d82-4053-a06b-b6f2daa3b52f",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "dd5688ab-ca49-4b00-b1a6-c32615ec7e6c",
              "parent_uuid": "f7de62f7-2ce6-4348-a620-5764be81dd15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2568fb0-8410-421f-875d-c841aeb4f0ea",
                  "parent_uuid": "dd5688ab-ca49-4b00-b1a6-c32615ec7e6c",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "38862366-8f5f-46b0-8daa-627c1a359f4a",
              "parent_uuid": "f7de62f7-2ce6-4348-a620-5764be81dd15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a728888d-9bb8-42e2-95e2-e6e429ebca70",
                  "parent_uuid": "38862366-8f5f-46b0-8daa-627c1a359f4a",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "c1ac94b6-b0e3-4c69-938d-0ca60df3d114",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4c0cd56-65d2-4c79-9720-3921e5106400",
              "parent_uuid": "c1ac94b6-b0e3-4c69-938d-0ca60df3d114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "34"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Transportbänder auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6d4fd42d-0b33-4e10-ade8-aa5c22184ad8",
              "parent_uuid": "c1ac94b6-b0e3-4c69-938d-0ca60df3d114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ebf130e2-29a1-49a9-a707-9ef46f5fff40",
              "parent_uuid": "c1ac94b6-b0e3-4c69-938d-0ca60df3d114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "369808b9-3ce0-4f3b-a0e6-c3136471d09f",
                  "parent_uuid": "ebf130e2-29a1-49a9-a707-9ef46f5fff40",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "534ea04d-230b-45d3-99eb-f95496a44ad5",
              "parent_uuid": "c1ac94b6-b0e3-4c69-938d-0ca60df3d114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5c238f6-9fed-469b-b3e4-b923cfddafe5",
                  "parent_uuid": "534ea04d-230b-45d3-99eb-f95496a44ad5",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "98459218-f1db-46f0-8f8b-599b428671eb",
              "parent_uuid": "c1ac94b6-b0e3-4c69-938d-0ca60df3d114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89769cf3-7fdc-4f4a-b902-09d95175b574",
                  "parent_uuid": "98459218-f1db-46f0-8f8b-599b428671eb",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "21e1e10a-3cf1-4b0c-9665-b430e85feb11",
              "parent_uuid": "c1ac94b6-b0e3-4c69-938d-0ca60df3d114",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bc4cbc2-2396-4d13-b400-dd1d4c39fc4f",
                  "parent_uuid": "21e1e10a-3cf1-4b0c-9665-b430e85feb11",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "b914c82d-bacd-4de1-9237-0a8c65aa3e64",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eedf7205-a0de-4626-8eb7-d80e1291be39",
              "parent_uuid": "b914c82d-bacd-4de1-9237-0a8c65aa3e64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "35"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen Sie alle bewegliche und schwingende Teile auf lose oder fehlende Schrauben.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "34a23d7c-d10c-4fb0-84f5-149b898e7099",
              "parent_uuid": "b914c82d-bacd-4de1-9237-0a8c65aa3e64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e634ed36-c7aa-40d3-8fea-fb0a91cfb69c",
              "parent_uuid": "b914c82d-bacd-4de1-9237-0a8c65aa3e64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f093a83b-51f1-4d16-aa77-3d4ebdf54bb0",
                  "parent_uuid": "e634ed36-c7aa-40d3-8fea-fb0a91cfb69c",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a97e0a77-45a2-4a15-a0f6-f8698dc19b2e",
              "parent_uuid": "b914c82d-bacd-4de1-9237-0a8c65aa3e64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca7c6b35-aea8-44f5-a42a-62a08a52c9f1",
                  "parent_uuid": "a97e0a77-45a2-4a15-a0f6-f8698dc19b2e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "19871681-4955-4424-b3b6-792dc68f0f31",
              "parent_uuid": "b914c82d-bacd-4de1-9237-0a8c65aa3e64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a73f61c8-1ef5-41cd-800b-191d441dc82a",
                  "parent_uuid": "19871681-4955-4424-b3b6-792dc68f0f31",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "8311c1db-fc31-4322-b403-224b124a69a2",
              "parent_uuid": "b914c82d-bacd-4de1-9237-0a8c65aa3e64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7247f498-7f97-4b9a-94e6-aed15132ad2d",
                  "parent_uuid": "8311c1db-fc31-4322-b403-224b124a69a2",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "d0936a5d-5908-4ef8-853d-5897925847b9",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7d2b49a-ce37-4ba6-b71b-dd8d75566607",
              "parent_uuid": "d0936a5d-5908-4ef8-853d-5897925847b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "34"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ebdcf5a9-f232-438d-962b-f9538281ee1a",
              "parent_uuid": "d0936a5d-5908-4ef8-853d-5897925847b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2ef9c7f2-9711-4732-9525-48ec6785b6bc",
              "parent_uuid": "d0936a5d-5908-4ef8-853d-5897925847b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "938eec79-8837-4444-ad9d-c36a281dd012",
                  "parent_uuid": "2ef9c7f2-9711-4732-9525-48ec6785b6bc",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "ee16a307-087f-4396-920d-21daaf84b745",
              "parent_uuid": "d0936a5d-5908-4ef8-853d-5897925847b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "026c975c-da96-4583-9055-a9967b9f8ed1",
                  "parent_uuid": "ee16a307-087f-4396-920d-21daaf84b745",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "23d79cba-fca1-4659-85b9-abb6d3455dca",
              "parent_uuid": "d0936a5d-5908-4ef8-853d-5897925847b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4953184-9205-470b-b655-4a1e1c5ce047",
                  "parent_uuid": "23d79cba-fca1-4659-85b9-abb6d3455dca",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "61ff163a-0b70-4c6c-a315-f85c17da1f0a",
              "parent_uuid": "d0936a5d-5908-4ef8-853d-5897925847b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a87ec0e-62ea-4bf4-8d26-67510785397e",
                  "parent_uuid": "61ff163a-0b70-4c6c-a315-f85c17da1f0a",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "2e10f2f7-e013-44ee-9694-a61eb38886c5",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b4b528d1-05e7-430c-90ed-6763f3deab33",
              "parent_uuid": "2e10f2f7-e013-44ee-9694-a61eb38886c5",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "27509f72-f530-49ac-8e6e-22e777557b21",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "641a3225-6749-4781-b5c3-9d07fc5dc40a",
              "parent_uuid": "27509f72-f530-49ac-8e6e-22e777557b21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span><b>Gesamte Anlage reinigen:</b><br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "736dc86b-8515-490f-95e1-53d45d113cae",
              "parent_uuid": "27509f72-f530-49ac-8e6e-22e777557b21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>W</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "39a25883-0200-4062-99c5-62fbda8e49ea",
              "parent_uuid": "27509f72-f530-49ac-8e6e-22e777557b21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa364f02-72f1-4b2f-927a-ea1c299e9f7b",
                  "parent_uuid": "39a25883-0200-4062-99c5-62fbda8e49ea",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "393b2752-948b-4015-9a15-8d6cd91585d2",
              "parent_uuid": "27509f72-f530-49ac-8e6e-22e777557b21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acfefc12-6067-4946-9bd5-b1448576d4d4",
                  "parent_uuid": "393b2752-948b-4015-9a15-8d6cd91585d2",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "2bcf4100-be07-4ea0-ac0c-755f2c01a00c",
              "parent_uuid": "27509f72-f530-49ac-8e6e-22e777557b21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d5692aa-8889-41fe-ac86-e04f0db5eb4d",
                  "parent_uuid": "2bcf4100-be07-4ea0-ac0c-755f2c01a00c",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "5d64c658-e73d-4812-87be-d7083eb21599",
              "parent_uuid": "27509f72-f530-49ac-8e6e-22e777557b21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "382fe5ff-27ab-4e43-a015-19c77957646f",
                  "parent_uuid": "5d64c658-e73d-4812-87be-d7083eb21599",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "2cd8ea37-a70a-48bb-871b-57a9c069ddba",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "836be3f6-6978-4070-9900-221e39c3e6d0",
              "parent_uuid": "2cd8ea37-a70a-48bb-871b-57a9c069ddba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Festsitzende Münzen in der Maschine überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "00a60e5a-b63c-441e-98cb-0ea70908218a",
              "parent_uuid": "2cd8ea37-a70a-48bb-871b-57a9c069ddba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ab36abf9-4f91-481c-8058-5e1b4eacd9c7",
              "parent_uuid": "2cd8ea37-a70a-48bb-871b-57a9c069ddba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd018c1a-b2b0-471f-844f-f561ddcf4149",
                  "parent_uuid": "ab36abf9-4f91-481c-8058-5e1b4eacd9c7",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9c75ec3e-49b5-4676-a553-a1c44a10f596",
              "parent_uuid": "2cd8ea37-a70a-48bb-871b-57a9c069ddba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58c9f021-7c67-46e5-a6be-2cd186797dc7",
                  "parent_uuid": "9c75ec3e-49b5-4676-a553-a1c44a10f596",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "8485b2b9-86c0-4d56-b3ab-685188e3447e",
              "parent_uuid": "2cd8ea37-a70a-48bb-871b-57a9c069ddba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f4b6417-715e-4f73-9024-1bc1e80e2793",
                  "parent_uuid": "8485b2b9-86c0-4d56-b3ab-685188e3447e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "f3563456-159c-4c3d-8855-2db08a88618c",
              "parent_uuid": "2cd8ea37-a70a-48bb-871b-57a9c069ddba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae1b0875-de3e-43c8-b58b-4c82fa822774",
                  "parent_uuid": "f3563456-159c-4c3d-8855-2db08a88618c",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "76b97e6a-2f9a-4d27-b813-9619037ef2a6",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8cfc61d5-b7c4-4230-b27c-6094e98a935a",
              "parent_uuid": "76b97e6a-2f9a-4d27-b813-9619037ef2a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "35"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Sichtfenster reinigen mit lauwarmes Wasser sowie ein wenig Spülmittel aus. <br>Verwenden dabei ein Mikrofasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8962ebf6-0811-4723-8969-830b4fcde38b",
              "parent_uuid": "76b97e6a-2f9a-4d27-b813-9619037ef2a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7a0d4e3a-8402-47fc-9ec0-369a3bb2a14d",
              "parent_uuid": "76b97e6a-2f9a-4d27-b813-9619037ef2a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fe05da3-368c-4426-a706-cfe2af7416c3",
                  "parent_uuid": "7a0d4e3a-8402-47fc-9ec0-369a3bb2a14d",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "59018cfe-7815-420b-ad9a-7f7672ebe187",
              "parent_uuid": "76b97e6a-2f9a-4d27-b813-9619037ef2a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3be6abc-4277-4fae-8661-b85de52a29c8",
                  "parent_uuid": "59018cfe-7815-420b-ad9a-7f7672ebe187",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b3361b0f-2074-4138-afba-99e5d135ad61",
              "parent_uuid": "76b97e6a-2f9a-4d27-b813-9619037ef2a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bf855e2-f0ae-4fee-9b4c-eef508df4256",
                  "parent_uuid": "b3361b0f-2074-4138-afba-99e5d135ad61",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "877d15cc-d9e0-441e-8900-5975e95833cd",
              "parent_uuid": "76b97e6a-2f9a-4d27-b813-9619037ef2a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "338a0e90-006d-42e2-9708-bc8a0c4ea527",
                  "parent_uuid": "877d15cc-d9e0-441e-8900-5975e95833cd",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "520408fa-c2bb-4461-9861-494b499ad36c",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3337e97a-9d18-4f30-9265-a4a7dc76bc36",
              "parent_uuid": "520408fa-c2bb-4461-9861-494b499ad36c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Not-Aus-Taster, Kontrolllampen und Anzeigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "79a0120c-ab67-434f-bff6-27e0d5ce3d8c",
              "parent_uuid": "520408fa-c2bb-4461-9861-494b499ad36c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "416401be-c4e9-4cdc-925a-2c52a7bfeba2",
              "parent_uuid": "520408fa-c2bb-4461-9861-494b499ad36c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c186d533-cd0e-4b28-a41d-066b7345272f",
                  "parent_uuid": "416401be-c4e9-4cdc-925a-2c52a7bfeba2",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "59dbe5bc-3b22-4327-9695-2891312706d7",
              "parent_uuid": "520408fa-c2bb-4461-9861-494b499ad36c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9230403b-5a40-4d3c-adb9-7014c4b5c97e",
                  "parent_uuid": "59dbe5bc-3b22-4327-9695-2891312706d7",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "561301f7-2f82-4686-ade7-8d933fffdb26",
              "parent_uuid": "520408fa-c2bb-4461-9861-494b499ad36c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd6e5413-7b44-4206-9690-7290f4656527",
                  "parent_uuid": "561301f7-2f82-4686-ade7-8d933fffdb26",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "f4c53ffa-3f80-4a8f-b7d6-18a9fea990fd",
              "parent_uuid": "520408fa-c2bb-4461-9861-494b499ad36c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3e726a4-43e0-454b-a893-f8284ba0a48e",
                  "parent_uuid": "f4c53ffa-3f80-4a8f-b7d6-18a9fea990fd",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "f9f98f87-abc4-4f79-8488-95b701e61349",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "048987d0-5b6d-4192-88f4-4c67e008dcc5",
              "parent_uuid": "f9f98f87-abc4-4f79-8488-95b701e61349",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "105"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span><b>Transportriemen gross reinigen:</b><br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2eff93a3-c799-493c-8625-7ea5106e14b4",
              "parent_uuid": "f9f98f87-abc4-4f79-8488-95b701e61349",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "77271349-8100-4a09-94c4-690956fb8ffc",
              "parent_uuid": "f9f98f87-abc4-4f79-8488-95b701e61349",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ab6c0a0-9361-464c-ac9c-88f35ecbae2b",
                  "parent_uuid": "77271349-8100-4a09-94c4-690956fb8ffc",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c0df7864-b9cd-44b7-9b8e-2b7f83d24ac5",
              "parent_uuid": "f9f98f87-abc4-4f79-8488-95b701e61349",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d98e73a7-6ced-4ea2-b1d2-6726c5f28fc4",
                  "parent_uuid": "c0df7864-b9cd-44b7-9b8e-2b7f83d24ac5",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "8f56dea3-875d-4483-b57d-0b6723d7438d",
              "parent_uuid": "f9f98f87-abc4-4f79-8488-95b701e61349",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fef35657-27f7-41f3-942c-3f3534d15c0c",
                  "parent_uuid": "8f56dea3-875d-4483-b57d-0b6723d7438d",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "3b0e8426-11b7-40ac-958a-a17b0c6b66ca",
              "parent_uuid": "f9f98f87-abc4-4f79-8488-95b701e61349",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da2855a7-ddfe-4e69-bfca-ea1db7c598dd",
                  "parent_uuid": "3b0e8426-11b7-40ac-958a-a17b0c6b66ca",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "e1d4dda8-4244-43ce-bb67-0ec8b4f3c377",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fba3ebf4-8c86-4b68-a43a-266afc3d5504",
              "parent_uuid": "e1d4dda8-4244-43ce-bb67-0ec8b4f3c377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "121"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span><b>Transportriemen klein reinigen:</b><br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4aea7600-805d-4490-a0ac-35509e74cd88",
              "parent_uuid": "e1d4dda8-4244-43ce-bb67-0ec8b4f3c377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1f332997-5168-481e-8312-71ebcaf3192b",
              "parent_uuid": "e1d4dda8-4244-43ce-bb67-0ec8b4f3c377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73bfe51d-4b36-41b3-b980-fe6934fb4864",
                  "parent_uuid": "1f332997-5168-481e-8312-71ebcaf3192b",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "8d7e4d9c-0f33-4e1a-8a34-8fe3f4357ef8",
              "parent_uuid": "e1d4dda8-4244-43ce-bb67-0ec8b4f3c377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4507017-44ea-46e6-bb68-f1276a7d1f44",
                  "parent_uuid": "8d7e4d9c-0f33-4e1a-8a34-8fe3f4357ef8",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "8b04f31e-6b03-4ec2-8e5a-d93c00ac8ec5",
              "parent_uuid": "e1d4dda8-4244-43ce-bb67-0ec8b4f3c377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f02142e7-4a40-4080-8c87-6a04135a55a8",
                  "parent_uuid": "8b04f31e-6b03-4ec2-8e5a-d93c00ac8ec5",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "002e85c5-265d-485c-bbba-295369d5705b",
              "parent_uuid": "e1d4dda8-4244-43ce-bb67-0ec8b4f3c377",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "607959f8-4790-427b-a71e-a0fdad540b64",
                  "parent_uuid": "002e85c5-265d-485c-bbba-295369d5705b",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "1db0bf6f-537d-4f82-88a4-4fdba3b3d30a",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e2a32db-fb81-4611-bae3-5524fdd503ca",
              "parent_uuid": "1db0bf6f-537d-4f82-88a4-4fdba3b3d30a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span><b>Spannung Transporriemen gross überprüfen:</b><br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d92a2258-80ad-4201-a14e-b7ce055f2211",
              "parent_uuid": "1db0bf6f-537d-4f82-88a4-4fdba3b3d30a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "rowspan",
                  "3"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f2a7ba21-dbc6-48bd-8f2d-acd2d6137f96",
              "parent_uuid": "1db0bf6f-537d-4f82-88a4-4fdba3b3d30a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c98c8369-ba61-4b54-8b87-3dbb27dbb7a1",
                  "parent_uuid": "f2a7ba21-dbc6-48bd-8f2d-acd2d6137f96",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "2e248c97-e820-46d7-af85-999d2268858e",
              "parent_uuid": "1db0bf6f-537d-4f82-88a4-4fdba3b3d30a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "782da63b-0cb9-4273-bb99-79621d8a3b33",
                  "parent_uuid": "2e248c97-e820-46d7-af85-999d2268858e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "8c282aae-7f4a-45a5-82ae-8d304c3aac3b",
              "parent_uuid": "1db0bf6f-537d-4f82-88a4-4fdba3b3d30a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e27e99c3-dc3c-46d2-b16e-ed1c8c82bd8b",
                  "parent_uuid": "8c282aae-7f4a-45a5-82ae-8d304c3aac3b",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "8e6fe984-e812-4068-b6b8-8d3ee1b3e4d8",
              "parent_uuid": "1db0bf6f-537d-4f82-88a4-4fdba3b3d30a",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c77f5f2-0355-495e-a467-9efcf08f78e7",
                  "parent_uuid": "8e6fe984-e812-4068-b6b8-8d3ee1b3e4d8",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f33189a2-8263-4161-b150-dfe2a44879d3",
              "parent_uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "18"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "51e21a4d-f066-4d5a-aa11-b19d05d4cd1a",
              "parent_uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0d2bec9c-b2ef-4db2-9e3e-91fe1b290bb0",
              "parent_uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "88f2d30c-f40e-4181-ad9f-c63c2f646ef4",
              "parent_uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d1cefe7-06a8-4921-99ca-343458719900",
                  "parent_uuid": "88f2d30c-f40e-4181-ad9f-c63c2f646ef4",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "37c633f4-b1cd-4e71-b612-c570db23586d",
              "parent_uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24bdf193-e7a8-43fa-9678-8d8f89e9c9a1",
                  "parent_uuid": "37c633f4-b1cd-4e71-b612-c570db23586d",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "da0580d3-4f0b-4325-aa57-46f64e4b5416",
              "parent_uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe677136-0858-4394-a529-c94c12f7873a",
                  "parent_uuid": "da0580d3-4f0b-4325-aa57-46f64e4b5416",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "e63b2d0a-5373-4bc6-80eb-84c6858bdf72",
              "parent_uuid": "cd2af175-2fab-435e-88f2-c279d92dda40",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05bcd202-b526-4ef3-b3ac-b519013bf82c",
                  "parent_uuid": "e63b2d0a-5373-4bc6-80eb-84c6858bdf72",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fa2a4ca-fbb0-4006-a63a-23f1cec5bbba",
              "parent_uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "21"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>-Die Distanz von Punkt zu Punkt sollte 102cm betragen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c185bb57-451e-451f-a153-430d6cc46312",
              "parent_uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>&lt;102cm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "556c6de6-f3a5-417e-9998-ed681e1b7067",
              "parent_uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "269d576f-00e0-4ced-be8c-a873c93c28b6",
                  "parent_uuid": "556c6de6-f3a5-417e-9998-ed681e1b7067",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "width: 100%; display: block; box-sizing: border-box;"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9030dda0-9562-4cd0-8819-09860c132b33",
              "parent_uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d673a5f-2bd6-46a4-84b8-92e80d73a832",
                  "parent_uuid": "9030dda0-9562-4cd0-8819-09860c132b33",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a6784f19-6893-4eee-8cb2-0a88fa146c24",
              "parent_uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92c7de24-e77c-4350-a48c-65e6ffe1e389",
                  "parent_uuid": "a6784f19-6893-4eee-8cb2-0a88fa146c24",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "3505a619-a53e-481b-a324-ca18561973f6",
              "parent_uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b6bf16e-347c-45ed-9e9e-a7665aa0ec03",
                  "parent_uuid": "3505a619-a53e-481b-a324-ca18561973f6",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "893b501a-0711-4a21-8b76-c176f83d117b",
              "parent_uuid": "5a290d6b-26ee-436a-bbec-77e6fe9ff4b2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01f472fa-0bfb-4d80-9c7a-6a18bda5b361",
                  "parent_uuid": "893b501a-0711-4a21-8b76-c176f83d117b",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "50cf45e8-268d-4d06-9105-615ea5af1dfd",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "751453e4-eb1a-4a81-b2a2-4e3c2ce7edc9",
              "parent_uuid": "50cf45e8-268d-4d06-9105-615ea5af1dfd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "36"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e6253346-213e-4a48-b2c8-eba1f55cff13",
              "parent_uuid": "50cf45e8-268d-4d06-9105-615ea5af1dfd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1d7cb995-cfa1-470b-bee0-034275b3daf6",
              "parent_uuid": "50cf45e8-268d-4d06-9105-615ea5af1dfd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a027377-2bf8-4666-bd11-92955ce64c30",
                  "parent_uuid": "1d7cb995-cfa1-470b-bee0-034275b3daf6",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "42b79c06-8e52-424a-96c5-8d88aeb3bb22",
              "parent_uuid": "50cf45e8-268d-4d06-9105-615ea5af1dfd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01108da2-4dda-48ef-9e82-439259731f50",
                  "parent_uuid": "42b79c06-8e52-424a-96c5-8d88aeb3bb22",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "f813ad6a-3193-4ab6-9553-5de335ad7590",
              "parent_uuid": "50cf45e8-268d-4d06-9105-615ea5af1dfd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d4918b1-6f70-47b1-b4e3-2173bd138977",
                  "parent_uuid": "f813ad6a-3193-4ab6-9553-5de335ad7590",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "ce5e80d9-0854-4b43-a197-971534764656",
              "parent_uuid": "50cf45e8-268d-4d06-9105-615ea5af1dfd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48b6512b-4bd8-4ca6-b323-c40c0e32e57b",
                  "parent_uuid": "ce5e80d9-0854-4b43-a197-971534764656",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "1394a6b9-9887-49e6-8c40-57ba2d5f1ad7",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfcb8ace-1ae1-4888-b7ae-e962b7376fb2",
              "parent_uuid": "1394a6b9-9887-49e6-8c40-57ba2d5f1ad7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Lichtschranken und Sensoren mit einem weichen Reinigungstuch.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d5ada2e5-0a9a-4508-8304-1f3732dc8491",
              "parent_uuid": "1394a6b9-9887-49e6-8c40-57ba2d5f1ad7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "324c5de8-5e1d-4b7b-9862-f2b76317fba6",
              "parent_uuid": "1394a6b9-9887-49e6-8c40-57ba2d5f1ad7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01da6af6-5e74-4105-b7ba-8753c5ea61bf",
                  "parent_uuid": "324c5de8-5e1d-4b7b-9862-f2b76317fba6",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "61314cd1-c65d-43f3-b626-1a96fd155839",
              "parent_uuid": "1394a6b9-9887-49e6-8c40-57ba2d5f1ad7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3237f69-df11-41ba-9d44-494f29647793",
                  "parent_uuid": "61314cd1-c65d-43f3-b626-1a96fd155839",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "706d2796-0d69-47a6-8bba-7eadd96c29bd",
              "parent_uuid": "1394a6b9-9887-49e6-8c40-57ba2d5f1ad7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80203a80-b1e1-43bd-b253-1cfffcdfd343",
                  "parent_uuid": "706d2796-0d69-47a6-8bba-7eadd96c29bd",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "4c729988-397e-4308-90ac-5cc6e2ee21f7",
              "parent_uuid": "1394a6b9-9887-49e6-8c40-57ba2d5f1ad7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b90a1e72-0870-4baa-a731-1743ac943521",
                  "parent_uuid": "4c729988-397e-4308-90ac-5cc6e2ee21f7",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "a89f05ac-cd86-4ea5-92b4-e46726ed11cb",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1ce1651-71c8-4098-ab39-20ed2f618c23",
              "parent_uuid": "a89f05ac-cd86-4ea5-92b4-e46726ed11cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Beide Server PC-Filter überprüfen und reinigen oder austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "71442d0d-93fd-442a-94c5-02b342149936",
              "parent_uuid": "a89f05ac-cd86-4ea5-92b4-e46726ed11cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ff8cd696-c929-4324-9601-aed6d9898ee9",
              "parent_uuid": "a89f05ac-cd86-4ea5-92b4-e46726ed11cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54f0128f-d302-4a32-a1b6-a1d5a6d2428f",
                  "parent_uuid": "ff8cd696-c929-4324-9601-aed6d9898ee9",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "3b95d658-1008-44aa-82ef-fe6a2c17ff26",
              "parent_uuid": "a89f05ac-cd86-4ea5-92b4-e46726ed11cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6440c94b-7923-4985-9fd6-c5b18f817682",
                  "parent_uuid": "3b95d658-1008-44aa-82ef-fe6a2c17ff26",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b95c78fc-32fa-49ca-8424-2e45f3c073ef",
              "parent_uuid": "a89f05ac-cd86-4ea5-92b4-e46726ed11cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "281916af-2da5-4002-bd6c-15d659869d35",
                  "parent_uuid": "b95c78fc-32fa-49ca-8424-2e45f3c073ef",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "77dbf937-ab85-422a-aa0c-d3a58698d5fc",
              "parent_uuid": "a89f05ac-cd86-4ea5-92b4-e46726ed11cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d062994-11a9-4c9e-a598-d0afe5578cc9",
                  "parent_uuid": "77dbf937-ab85-422a-aa0c-d3a58698d5fc",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "d4ce7952-6c98-4a40-8405-c93d8322b5bb",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d6c0667-f38e-41dc-afeb-656214e04cd7",
              "parent_uuid": "d4ce7952-6c98-4a40-8405-c93d8322b5bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "52"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kühlaggregat reinigen<br>  -Nehmen Sie vorsichtig die Abdeckung des Kühlaggregats ab.<br>  -Reinigen Sie die Lamellen vorsichtig mit einem Staubsauger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9d01ba73-5024-4ca2-afbb-a1c653774ef4",
              "parent_uuid": "d4ce7952-6c98-4a40-8405-c93d8322b5bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8b69060b-54fd-4d29-8e54-59bb29f49cdc",
              "parent_uuid": "d4ce7952-6c98-4a40-8405-c93d8322b5bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be312f2d-78a2-4af5-a2b2-1be252a01673",
                  "parent_uuid": "8b69060b-54fd-4d29-8e54-59bb29f49cdc",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d064f859-4f4e-4e42-895a-ab04ee2e729e",
              "parent_uuid": "d4ce7952-6c98-4a40-8405-c93d8322b5bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7254c24e-66c4-4b24-89dd-fe5d1347227e",
                  "parent_uuid": "d064f859-4f4e-4e42-895a-ab04ee2e729e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b88c1fce-9f31-43b5-8cb7-6961bace2499",
              "parent_uuid": "d4ce7952-6c98-4a40-8405-c93d8322b5bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c116a4f4-d4d3-4a48-8f71-caca03fd86e9",
                  "parent_uuid": "b88c1fce-9f31-43b5-8cb7-6961bace2499",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "ba7ceebd-4b49-4520-9b6d-4e7077b75c02",
              "parent_uuid": "d4ce7952-6c98-4a40-8405-c93d8322b5bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "753d46c0-df53-4e53-887d-f8c48b1991fc",
                  "parent_uuid": "ba7ceebd-4b49-4520-9b6d-4e7077b75c02",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "4b9d3492-5061-4ef4-bc73-dfcaed9da8f5",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1ec8f4fb-4ff4-4c13-a85a-70aa6140afd7",
              "parent_uuid": "4b9d3492-5061-4ef4-bc73-dfcaed9da8f5",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "ac434bd7-fb1d-4768-9a90-cc79f81f64a3",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3598272-b840-4ff7-8161-8ed82d2111d0",
              "parent_uuid": "ac434bd7-fb1d-4768-9a90-cc79f81f64a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Schwingplatte<br>  -Der Talkbelag der Schwingplatte wird mit einem Spachtel gelöst.<br>  -Anschliessend kann mit einem Reinigungstuch und Bremsreiniger der übrige Schmutz entfernt werden</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fb8bca13-5d5b-4604-a5f3-58bec201f882",
              "parent_uuid": "ac434bd7-fb1d-4768-9a90-cc79f81f64a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c67404dc-ecd8-4a92-b692-3a2235c53cf1",
              "parent_uuid": "ac434bd7-fb1d-4768-9a90-cc79f81f64a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d8a0f99-938e-4559-b961-3e4e0a43601e",
                  "parent_uuid": "c67404dc-ecd8-4a92-b692-3a2235c53cf1",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "dcf13e43-6b7b-4b87-9954-e813f3a7688f",
              "parent_uuid": "ac434bd7-fb1d-4768-9a90-cc79f81f64a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "934a4589-c365-4708-a215-cfd39e161b8e",
                  "parent_uuid": "dcf13e43-6b7b-4b87-9954-e813f3a7688f",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a96489f5-1261-44db-a5e2-7ae319becc41",
              "parent_uuid": "ac434bd7-fb1d-4768-9a90-cc79f81f64a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d189191-7cdf-4817-8f50-1d15ee54571e",
                  "parent_uuid": "a96489f5-1261-44db-a5e2-7ae319becc41",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "e48c7920-cfce-42d9-8b17-8e2f1b1f7b0e",
              "parent_uuid": "ac434bd7-fb1d-4768-9a90-cc79f81f64a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad472534-b483-4ed3-947a-2694af4bf86c",
                  "parent_uuid": "e48c7920-cfce-42d9-8b17-8e2f1b1f7b0e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "60a89ec1-be6b-41f1-b338-70ee82e810d1",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb097738-0b6b-4b4d-84f4-5b242f589ccd",
              "parent_uuid": "60a89ec1-be6b-41f1-b338-70ee82e810d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "21"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Prüfen Sie die Abscheider und Bürsten auf Verschleiß.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9bfb318e-fe85-4553-b933-7ddb6af70712",
              "parent_uuid": "60a89ec1-be6b-41f1-b338-70ee82e810d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6dd5339c-b000-4460-90a3-c4ef0cf04a81",
              "parent_uuid": "60a89ec1-be6b-41f1-b338-70ee82e810d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e38aab2b-1daa-435b-a752-c4a943c98627",
                  "parent_uuid": "6dd5339c-b000-4460-90a3-c4ef0cf04a81",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "7e44cbe5-fd9e-48a1-b986-cec3c43bf7e0",
              "parent_uuid": "60a89ec1-be6b-41f1-b338-70ee82e810d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05c55373-c76d-48d0-8bd3-24b2e78582ba",
                  "parent_uuid": "7e44cbe5-fd9e-48a1-b986-cec3c43bf7e0",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b88acc39-7a5d-40fe-b371-5d020131602e",
              "parent_uuid": "60a89ec1-be6b-41f1-b338-70ee82e810d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cc85e07-4d0e-425f-9c39-b99e718a91da",
                  "parent_uuid": "b88acc39-7a5d-40fe-b371-5d020131602e",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "cecdc632-97a2-4d37-8c63-932943d69794",
              "parent_uuid": "60a89ec1-be6b-41f1-b338-70ee82e810d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bc7d918-7bfc-468b-8f79-d0a6679c01af",
                  "parent_uuid": "cecdc632-97a2-4d37-8c63-932943d69794",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "40b5da26-9995-4011-b682-74e833f8d81a",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eff4a5cd-3c6e-4706-9a85-a89113ef2912",
              "parent_uuid": "40b5da26-9995-4011-b682-74e833f8d81a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "51"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Vision-Einheiten<br>  -Reinigen Sie die Oberfläche der Abdeckung vorsichtig mit dem Staubsauger und  mit einem Microphasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "472a477e-aec7-41f7-9cd1-fe3a9f338906",
              "parent_uuid": "40b5da26-9995-4011-b682-74e833f8d81a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d4d8b590-7120-419c-aa51-4f536aecef42",
              "parent_uuid": "40b5da26-9995-4011-b682-74e833f8d81a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da6da139-715b-4422-9806-0efb89186710",
                  "parent_uuid": "d4d8b590-7120-419c-aa51-4f536aecef42",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "20c3acef-5814-46d7-9b51-c502a4b30bfd",
              "parent_uuid": "40b5da26-9995-4011-b682-74e833f8d81a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b52114c-62e8-4b4e-8d68-76371d10d207",
                  "parent_uuid": "20c3acef-5814-46d7-9b51-c502a4b30bfd",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1073c4dc-522f-475a-9d50-30fafa13c26d",
              "parent_uuid": "40b5da26-9995-4011-b682-74e833f8d81a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6507ae19-1aee-42b6-8cd3-a8144daa1c2e",
                  "parent_uuid": "1073c4dc-522f-475a-9d50-30fafa13c26d",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "6119218a-55a9-489d-a9df-7bd48b88ec11",
              "parent_uuid": "40b5da26-9995-4011-b682-74e833f8d81a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d288f49-d34a-4430-868e-07d5194d258a",
                  "parent_uuid": "6119218a-55a9-489d-a9df-7bd48b88ec11",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "6793f713-49df-4558-9017-505794be3410",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d9d4884-1c8c-415c-a66d-d1b2b665da4a",
              "parent_uuid": "6793f713-49df-4558-9017-505794be3410",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "86"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Vision-Linsen<br>  -Reinige die Oberfläche der Linse vorsichtig mit dem Staubsauger/Druckluftpistole und mit einem Microphasertuch.<br>  -Bei Flecken auf der Linse, muss ein Microphasertuch mit wenig Senorreiniger angewendet werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "46ae49dc-6e2d-4e27-8106-5e47666f225b",
              "parent_uuid": "6793f713-49df-4558-9017-505794be3410",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e2753641-6101-4666-91ad-b6f764952989",
              "parent_uuid": "6793f713-49df-4558-9017-505794be3410",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90043d38-0356-469d-91e2-6d24e825c68a",
                  "parent_uuid": "e2753641-6101-4666-91ad-b6f764952989",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "34fab7c5-cd6b-43bf-902f-75977a6352dd",
              "parent_uuid": "6793f713-49df-4558-9017-505794be3410",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cfa7e2e-8220-4584-9f12-477fb1335821",
                  "parent_uuid": "34fab7c5-cd6b-43bf-902f-75977a6352dd",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "75604153-6ad5-418b-bca0-aa90fd360d8c",
              "parent_uuid": "6793f713-49df-4558-9017-505794be3410",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0207d950-2683-4849-b202-2473afd0e0d6",
                  "parent_uuid": "75604153-6ad5-418b-bca0-aa90fd360d8c",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "ae2e5baf-2eac-437c-9a0d-fe100c702c6a",
              "parent_uuid": "6793f713-49df-4558-9017-505794be3410",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c741116-4c39-41e6-80a6-135fb1f63a24",
                  "parent_uuid": "ae2e5baf-2eac-437c-9a0d-fe100c702c6a",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "f5597e05-c9bf-4576-acbd-9d5fa92e8cb4",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac346848-05cf-421f-9b32-407abefedbcf",
              "parent_uuid": "f5597e05-c9bf-4576-acbd-9d5fa92e8cb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Speicherplatz<br>  -Überprüfe den Speicherplatz auf dem NAS, falls dieser überläuft können alte Daten gelöscht werden.<br>  -Überprüfen den Speicherplatz auf dem Lokalen Laufwerken, falls der überläuft können Logdateien gelöscht werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bd2c08ff-6e77-4f50-b02a-ce1f69c6db04",
              "parent_uuid": "f5597e05-c9bf-4576-acbd-9d5fa92e8cb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "616d1a44-15ed-45f7-94a7-087700959f3d",
              "parent_uuid": "f5597e05-c9bf-4576-acbd-9d5fa92e8cb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dabf55e0-5bde-4e29-9909-bf4896427b23",
                  "parent_uuid": "616d1a44-15ed-45f7-94a7-087700959f3d",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "27d23a6d-07ea-4412-a900-f07b545a8e7c",
              "parent_uuid": "f5597e05-c9bf-4576-acbd-9d5fa92e8cb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04de7498-b929-48ea-ab8a-4e6882578635",
                  "parent_uuid": "27d23a6d-07ea-4412-a900-f07b545a8e7c",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "6244de2d-0f5d-45e6-9571-de2baddbe9cd",
              "parent_uuid": "f5597e05-c9bf-4576-acbd-9d5fa92e8cb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4700303f-feef-4a86-8dc9-a5ed0cdeb86e",
                  "parent_uuid": "6244de2d-0f5d-45e6-9571-de2baddbe9cd",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "dd301321-9423-4aeb-b941-7a997c07fd79",
              "parent_uuid": "f5597e05-c9bf-4576-acbd-9d5fa92e8cb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9dfe35cc-8101-4978-b05c-f2fefc614fdc",
                  "parent_uuid": "dd301321-9423-4aeb-b941-7a997c07fd79",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "3814e26f-d317-4539-8a3b-d551cf3c9d14",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47bfec88-0952-427a-9471-8afef22e7a82",
              "parent_uuid": "3814e26f-d317-4539-8a3b-d551cf3c9d14",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "f8df34e5-6a9f-4910-85b9-49122f39fe12",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5563f47c-8a11-4a3c-acc0-8f0a05b0eed5",
              "parent_uuid": "f8df34e5-6a9f-4910-85b9-49122f39fe12",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "e85e7fd3-0066-406c-bf0c-456098ffc7bc",
          "parent_uuid": "7013c805-1e3b-4dac-a159-c2bc13ec0577",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3246bf66-3a4d-47e9-9f67-381521fc1da8",
              "parent_uuid": "e85e7fd3-0066-406c-bf0c-456098ffc7bc",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "top"
                ],
                [
                  "colspan",
                  "11"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "c47e56bb-5cca-4d65-9ae0-175faaf72e67",
                  "parent_uuid": "3246bf66-3a4d-47e9-9f67-381521fc1da8",
                  "tagName": "textarea",
                  "properties": [
                    [
                      "class",
                      "notes"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 30,
          "lvl": 0
        }
      ],
      "sort": 7,
      "lvl": 0
    }
  ],
  "sort": 0,
  "lvl": 0
}'





;WITH CTE AS
(
    SELECT
         tJson.uuid 
		,tJson.parent_uuid AS parent_uuid 
		,tJson.tagName 
		,tJson.properties 
		,tJson.children 
		,tJson.innerHtml 
		,tJson.sort 
		,0 AS lvl 
		,CAST(RIGHT(REPLICATE('0', @numSortDigits) + CAST(tJson.sort AS varchar(36) ), @numSortDigits) AS varchar(MAX)) AS recsort 
    FROM OPENJSON(@json, '$') 
	WITH 
	( 
         uuid varchar(36) 
		,parent_uuid varchar(36) 
		,tagName nvarchar(100) 
		,properties nvarchar(MAX) AS json 
		,children nvarchar(MAX) AS json 
		,innerHtml nvarchar(MAX) 
		,sort int 
    ) AS tJson 

    UNION ALL

    SELECT
         tJson.uuid 
		,CTE.uuid 
		,tJson.tagName 
		,tJson.properties 
		,tJson.children 
		,tJson.innerHtml 
		,tJson.sort 
		,CTE.lvl + 1 AS lvl 
		,CAST(CTE.recsort + '.' + RIGHT(REPLICATE('0', @numSortDigits) + CAST(tJson.sort AS varchar(36) ), @numSortDigits) AS varchar(MAX)) AS recsort 
    FROM CTE 

    CROSS APPLY OPENJSON(CTE.children) 
	WITH 
	( 
         uuid varchar(36) 
		,parent_uuid varchar(36) 
		,tagName nvarchar(100) 
		,properties nvarchar(MAX) AS json 
		,children nvarchar(MAX) AS json 
		,innerHtml nvarchar(MAX) 
		,sort int 
    ) AS tJson 
)
SELECT
     CTE.uuid
	,CTE.tagName
	,CTE.parent_uuid
	-- ,CTE.children
	-- ,CTE.innerHtml 
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 




DECLARE @allChecklists TABLE ( CL_UID uniqueidentifier NOT NULL PRIMARY KEY(CL_UID), CL_Name nvarchar(256) NULL, CL_Title nvarchar(256) NULL, CL_Sort int NULL ); 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'eb159a9c-e69f-49f4-b10e-3a4825973e46', N'Schüttgutcontainer', N'Wartungscheckliste MUVE', 1); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'1f6bee57-38a8-4b29-9986-bfad7d107215', N'EVA', N'Wartungscheckliste MUVE', 2); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'58a6d34c-2d4b-4f8a-b831-60488591aedc', N'CIS', N'Wartungscheckliste MUVE', 3); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'da19d272-9439-47a7-9749-153dafab2b69', N'VHP', N'Wartungscheckliste MUVE', 4); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'698ea23d-485a-4cee-9b06-2e130a3a5626', N'NPL', N'Wartungscheckliste NPL', 5); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'f1a2dd8a-2d11-496e-9b14-13559405089f', N'BPS_M7', N'Wartungscheckliste BPS M7 500 und 1000 Stunden', 6); 
INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Title, CL_Sort) VALUES (N'ddada097-1bb4-46d5-9ee5-7bb28dd3201b', N'BPS_1020', N'Wartungscheckliste BPS 1020 500 und 1000 Stunden', 7); 

-- SELECT * FROM @allChecklists ORDER BY CL_Sort; 



;WITH CTE AS 
( 
	SELECT * FROM @allChecklists 
) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_Checklist AS A 
USING CTE ON CTE.CL_UID = A.CL_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.CL_Name = CTE.CL_Name 
            ,A.CL_Title = CTE.CL_Title 


WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         CL_UID 
        ,CL_Name 
        ,CL_Title 
    ) 
    VALUES 
    ( 
         CTE.CL_UID 
        ,CTE.CL_Name 
        ,CTE.CL_Title 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;

-- SELECT * FROM dbo.T_Checklist; 
;





-- DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 
-- DELETE FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
-- DELETE FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 




-- T_ChecklistElements

;WITH CTE AS 
( 
	SELECT 
		 uuid AS ELE_UID -- uniqueidentifier
		,parent_uuid AS ELE_Parent_UID -- uniqueidentifier
		,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS ELE_CL_UID -- uniqueidentifier
		,tagName AS ELE_TagName -- nvarchar(256)
		,lvl AS ELE_Level -- int 
		,sort AS ELE_Sort -- int 
		,recsort AS ELE_RecSort -- varchar(max) 
		,innerHtml AS ELE_InnerHtml -- nvarchar(max) 
	FROM #CheckListNodes 

) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_ChecklistElements AS A 
USING CTE ON CTE.ELE_UID = A.ELE_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.ELE_Parent_UID = CTE.ELE_Parent_UID 
            ,A.ELE_CL_UID = CTE.ELE_CL_UID 
            ,A.ELE_TagName = CTE.ELE_TagName 
            ,A.ELE_Level = CTE.ELE_Level 
            ,A.ELE_Sort = CTE.ELE_Sort 
            ,A.ELE_RecSort = CTE.ELE_RecSort 
            ,A.ELE_InnerHtml = CTE.ELE_InnerHtml 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         ELE_UID 
        ,ELE_Parent_UID 
        ,ELE_CL_UID 
        ,ELE_TagName 
        ,ELE_Level 
        ,ELE_Sort 
        ,ELE_RecSort 
        ,ELE_InnerHtml 
    ) 
    VALUES 
    ( 
         CTE.ELE_UID 
        ,CTE.ELE_Parent_UID 
        ,CTE.ELE_CL_UID 
        ,CTE.ELE_TagName 
        ,CTE.ELE_Level 
        ,CTE.ELE_Sort 
        ,CTE.ELE_RecSort 
        ,CTE.ELE_InnerHtml 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
 WHEN NOT MATCHED BY SOURCE AND A.ELE_CL_UID IN(SELECT ELE_CL_UID FROM CTE WHERE ELE_CL_UID IS NOT NULL GROUP BY ELE_CL_UID) THEN DELETE;
;





;WITH CTE AS 
( 
	SELECT 
	-- -- prop_id	prop_name	prop_value	prop_ele_id
		 NEWID() AS PRO_UID 
		,tProperties.attributeName AS PRO_Name 
		,tProperties.attributeValue AS PRO_Value 
		,c.uuid AS PRO_ELE_UID 
		-- ,c.tagName 
		-- ,c.parent_uuid 
		-- ,c.innerHtml 
	FROM #CheckListNodes AS c 

	OUTER APPLY OPENJSON(c.properties) WITH 
	( 
		attributeName nvarchar(MAX)  '$[0]' 
	   ,attributeValue nvarchar(MAX) '$[1]' 
	) AS tProperties 

    WHERE (1=1) 
	-- AND uuid = 'A1191F10-B9BC-4F51-8A07-5D59E412537F'
) -- End CTE 
-- SELECT * FROM CTE 



MERGE INTO dbo.T_Checklist_ZO_ElementProperties AS A 
USING CTE ON CTE.PRO_UID = A.PRO_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.PRO_Name = CTE.PRO_Name 
            ,A.PRO_Value = CTE.PRO_Value 
            ,A.PRO_ELE_UID = CTE.PRO_ELE_UID 

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         PRO_UID 
        ,PRO_Name 
        ,PRO_Value 
        ,PRO_ELE_UID 
    ) 
    VALUES 
    ( 
         CTE.PRO_UID 
        ,CTE.PRO_Name 
        ,CTE.PRO_Value 
        ,CTE.PRO_ELE_UID 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
 WHEN NOT MATCHED BY SOURCE AND A.PRO_ELE_UID IN(SELECT PRO_ELE_UID FROM CTE WHERE PRO_ELE_UID IS NOT NULL GROUP BY PRO_ELE_UID) THEN DELETE;
;





IF OBJECT_ID(N'tempdb..#CheckListNodes') IS NOT NULL
BEGIN
	DROP TABLE #CheckListNodes; 
END


GO



DECLARE @__cl_uid uniqueidentifier; 
SET @__cl_uid = '58A6D34C-2D4B-4F8A-B831-60488591AEDC'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

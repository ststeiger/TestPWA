
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
  "uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
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
      "uuid": "32fcf72a-3c10-430d-98e4-6a1208ce6d36",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
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
      "uuid": "d50e4b20-0678-4cd3-b09e-b9f6b4d95ef2",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
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
      "uuid": "2da15def-e20e-423f-a816-b995f01105c2",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
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
      "uuid": "42139db4-8484-4cda-ad3e-03ddb9bd8548",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "88"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "d15796f1-7ce9-4d0c-bd08-3c51536a6d82",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "55"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "21bb20e6-0fd8-4e5a-baaa-dc4450039897",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
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
      "uuid": "f4e312c5-5418-43a0-847b-d646fc888097",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
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
      "uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
      "parent_uuid": "e15a6e55-2372-4122-b358-219e8c625f60",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "15c5725a-26b3-4f26-be58-929d1009c3d9",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a7360bea-9d41-42bd-9204-fcb231de4546",
              "parent_uuid": "15c5725a-26b3-4f26-be58-929d1009c3d9",
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
              "innerHtml": "\r\n                    <span>Datum:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e02b56fc-a228-4239-a9de-975196ea8b69",
              "parent_uuid": "15c5725a-26b3-4f26-be58-929d1009c3d9",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c91bc8c4-d562-4b30-991b-a778034347c4",
              "parent_uuid": "15c5725a-26b3-4f26-be58-929d1009c3d9",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a9302c8f-c16d-4025-a688-25c4b2857199",
              "parent_uuid": "15c5725a-26b3-4f26-be58-929d1009c3d9",
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
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Ent- und Verpackungsanlage</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "49db34c2-4d5b-4828-9008-7f0f723672b8",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "1862ab5b-1a02-44b1-b1b6-869e5cab29a1",
              "parent_uuid": "49db34c2-4d5b-4828-9008-7f0f723672b8",
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
              "uuid": "599988de-1521-4d94-bcd8-b6a5d7d80fb5",
              "parent_uuid": "49db34c2-4d5b-4828-9008-7f0f723672b8",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b10f86b7-3112-40c4-a129-2aa95b408aa5",
              "parent_uuid": "49db34c2-4d5b-4828-9008-7f0f723672b8",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "00bb749c-988c-4fdf-b181-d520349be978",
              "parent_uuid": "49db34c2-4d5b-4828-9008-7f0f723672b8",
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
          "uuid": "9f3ee476-d077-4537-a479-2d03ac9ad533",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf069466-9bf4-40fd-8ba3-18c058e6ea20",
              "parent_uuid": "9f3ee476-d077-4537-a479-2d03ac9ad533",
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
                  "center"
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
              "uuid": "27cf60a7-e5a7-4264-a545-81b32303eacc",
              "parent_uuid": "9f3ee476-d077-4537-a479-2d03ac9ad533",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4.5cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "75100c5c-afb4-432e-a6c6-b1b320529ee9",
              "parent_uuid": "9f3ee476-d077-4537-a479-2d03ac9ad533",
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
              "uuid": "a7c361e5-955c-413b-82b6-4483be628dd8",
              "parent_uuid": "9f3ee476-d077-4537-a479-2d03ac9ad533",
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
              "uuid": "ab53a84b-9dd8-489f-8c9e-42ae05b94358",
              "parent_uuid": "9f3ee476-d077-4537-a479-2d03ac9ad533",
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
              "uuid": "daec107c-817e-4134-bea6-89d42556fc2d",
              "parent_uuid": "9f3ee476-d077-4537-a479-2d03ac9ad533",
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
          "uuid": "64968b0f-b9c4-4e02-a790-1dde65073e21",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cd7feee6-6a2d-4ce3-a4ce-d518bbb3ab8c",
              "parent_uuid": "64968b0f-b9c4-4e02-a790-1dde65073e21",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
                ],
                [
                  "align",
                  "left"
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
          "uuid": "86ff793f-d6b4-42f3-9970-d4312b22c4bd",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "212180f6-b32d-4a0b-a4fa-769670ad0b6b",
              "parent_uuid": "86ff793f-d6b4-42f3-9970-d4312b22c4bd",
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
              "uuid": "7160b36f-f745-428f-92a7-e1f3736965de",
              "parent_uuid": "86ff793f-d6b4-42f3-9970-d4312b22c4bd",
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
              "uuid": "9cc0c769-4379-46b8-9d55-1c1e0acce01f",
              "parent_uuid": "86ff793f-d6b4-42f3-9970-d4312b22c4bd",
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
                  "uuid": "f6b3646a-3994-4e2c-a30e-c8c53101cc2d",
                  "parent_uuid": "9cc0c769-4379-46b8-9d55-1c1e0acce01f",
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
              "uuid": "457c6417-7c6c-4aba-ad7f-4d9ab1344af3",
              "parent_uuid": "86ff793f-d6b4-42f3-9970-d4312b22c4bd",
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
                  "uuid": "f2af99b3-8a6b-41ed-929d-c298b7f14bb6",
                  "parent_uuid": "457c6417-7c6c-4aba-ad7f-4d9ab1344af3",
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
              "uuid": "3b2111c5-f719-4e07-8bcc-3ccab758133e",
              "parent_uuid": "86ff793f-d6b4-42f3-9970-d4312b22c4bd",
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
                  "uuid": "70990e17-8b00-4c4a-9baf-b7e680488529",
                  "parent_uuid": "3b2111c5-f719-4e07-8bcc-3ccab758133e",
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
              "uuid": "c4c0d094-bdfb-4c83-9e0d-ab5d0ad1cb1b",
              "parent_uuid": "86ff793f-d6b4-42f3-9970-d4312b22c4bd",
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
                  "uuid": "497f0b9f-7316-4651-ab69-09e8b8a912fa",
                  "parent_uuid": "c4c0d094-bdfb-4c83-9e0d-ab5d0ad1cb1b",
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
          "uuid": "145a70ec-42e8-4932-b793-49c9aef7fc92",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c58f535e-fde7-42cb-8987-62194a8be15d",
              "parent_uuid": "145a70ec-42e8-4932-b793-49c9aef7fc92",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Sicherheitsschalter beim Steigband</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ade08d3a-8e23-42b0-b6b6-71e45dd80702",
              "parent_uuid": "145a70ec-42e8-4932-b793-49c9aef7fc92",
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
              "uuid": "db27d352-b70e-43f8-87f3-76ab1d889dee",
              "parent_uuid": "145a70ec-42e8-4932-b793-49c9aef7fc92",
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
                  "uuid": "c0a7b0a7-8c51-484c-a2c7-2457fb1a8337",
                  "parent_uuid": "db27d352-b70e-43f8-87f3-76ab1d889dee",
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
              "uuid": "655cc3f0-e07a-4124-9d39-c3eeb4c9c064",
              "parent_uuid": "145a70ec-42e8-4932-b793-49c9aef7fc92",
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
                  "uuid": "f04fefc1-bc91-493f-a3b7-3818609f825a",
                  "parent_uuid": "655cc3f0-e07a-4124-9d39-c3eeb4c9c064",
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
              "uuid": "07cc8757-adf3-4625-a16b-531042e881db",
              "parent_uuid": "145a70ec-42e8-4932-b793-49c9aef7fc92",
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
                  "uuid": "2479dbe2-dea4-4b72-bd0d-02345cba05e3",
                  "parent_uuid": "07cc8757-adf3-4625-a16b-531042e881db",
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
              "uuid": "8520b0d7-c584-4115-81ec-b9d9c8c5473c",
              "parent_uuid": "145a70ec-42e8-4932-b793-49c9aef7fc92",
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
                  "uuid": "e260b814-b727-4ea1-bf08-cb7be8da28b8",
                  "parent_uuid": "8520b0d7-c584-4115-81ec-b9d9c8c5473c",
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
          "uuid": "2df9a88d-349a-4bf2-809b-fc71105eb699",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5c1eae9-eb64-429c-a59a-fb7abfe6171e",
              "parent_uuid": "2df9a88d-349a-4bf2-809b-fc71105eb699",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b062abda-f57e-4154-91e4-3364e5f28688",
              "parent_uuid": "2df9a88d-349a-4bf2-809b-fc71105eb699",
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
              "uuid": "9bd139a7-fd2b-48ce-8075-ae8b72956925",
              "parent_uuid": "2df9a88d-349a-4bf2-809b-fc71105eb699",
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
                  "uuid": "a5c54c8d-0c68-49e9-adfa-a05e61bb1618",
                  "parent_uuid": "9bd139a7-fd2b-48ce-8075-ae8b72956925",
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
              "uuid": "30399bce-9c77-4cfc-ab19-46cc093b6666",
              "parent_uuid": "2df9a88d-349a-4bf2-809b-fc71105eb699",
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
                  "uuid": "be40edd9-38a5-497b-8c36-34e8eeb3e1d6",
                  "parent_uuid": "30399bce-9c77-4cfc-ab19-46cc093b6666",
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
              "uuid": "f8834916-fa28-43cd-bd6b-ccafa2869d7a",
              "parent_uuid": "2df9a88d-349a-4bf2-809b-fc71105eb699",
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
                  "uuid": "9e5f0019-37ef-4be3-bee3-3765781757ae",
                  "parent_uuid": "f8834916-fa28-43cd-bd6b-ccafa2869d7a",
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
              "uuid": "5cffe4dd-13e8-4c57-a32d-5da711530b62",
              "parent_uuid": "2df9a88d-349a-4bf2-809b-fc71105eb699",
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
                  "uuid": "68f4536c-76ff-46ce-a59b-a6c9676efedd",
                  "parent_uuid": "5cffe4dd-13e8-4c57-a32d-5da711530b62",
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
          "uuid": "28fd003c-ac92-470a-9d00-a90b1058ef1c",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d3afec5-d42e-4f2c-9439-c8ac35bfd0d7",
              "parent_uuid": "28fd003c-ac92-470a-9d00-a90b1058ef1c",
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
              "innerHtml": "\r\n                    <span>Geräteprüfung nach SNR 462638 durchgeführt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "23e48f6b-1ae6-48ac-972d-b727bde27c23",
              "parent_uuid": "28fd003c-ac92-470a-9d00-a90b1058ef1c",
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
              "innerHtml": "<span>2J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "59aed6dd-dee3-4cd1-aba7-98f192d03d99",
              "parent_uuid": "28fd003c-ac92-470a-9d00-a90b1058ef1c",
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
                  "uuid": "1f926969-170d-41e0-a2b4-86e335248da4",
                  "parent_uuid": "59aed6dd-dee3-4cd1-aba7-98f192d03d99",
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
              "uuid": "73b7b5e9-2f19-47d8-83b1-8eadd8bb5e35",
              "parent_uuid": "28fd003c-ac92-470a-9d00-a90b1058ef1c",
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
                  "uuid": "238b4584-b2ed-4518-b05a-f44c5cc2d3db",
                  "parent_uuid": "73b7b5e9-2f19-47d8-83b1-8eadd8bb5e35",
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
              "uuid": "45755854-3b28-4ecb-9696-9448a966b544",
              "parent_uuid": "28fd003c-ac92-470a-9d00-a90b1058ef1c",
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
                  "uuid": "a8aae75a-06f2-424f-8f6f-d964a037c676",
                  "parent_uuid": "45755854-3b28-4ecb-9696-9448a966b544",
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
              "uuid": "361af478-8ad4-4b87-a352-101e6c068753",
              "parent_uuid": "28fd003c-ac92-470a-9d00-a90b1058ef1c",
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
                  "uuid": "73ccc805-b9ad-407b-90aa-e839d7064f3e",
                  "parent_uuid": "361af478-8ad4-4b87-a352-101e6c068753",
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
          "uuid": "472f38fd-05b0-4701-a429-1a1378fdcf31",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68d7ca20-8493-4f1b-92d4-2800a1fdbede",
              "parent_uuid": "472f38fd-05b0-4701-a429-1a1378fdcf31",
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
              "innerHtml": "\r\n                    <span>Steigband auf Beschädigungen oder Risse prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6445c384-2891-4e42-94f8-5ca945252680",
              "parent_uuid": "472f38fd-05b0-4701-a429-1a1378fdcf31",
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
              "uuid": "911ea07a-ec51-4c54-a735-a4863c03a533",
              "parent_uuid": "472f38fd-05b0-4701-a429-1a1378fdcf31",
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
                  "uuid": "28ece847-3cf1-4512-b9a7-de074f3dea1a",
                  "parent_uuid": "911ea07a-ec51-4c54-a735-a4863c03a533",
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
              "uuid": "2df81e97-44bc-47de-8da4-2031473a2989",
              "parent_uuid": "472f38fd-05b0-4701-a429-1a1378fdcf31",
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
                  "uuid": "995a2929-016b-4558-b62d-9829936d9a74",
                  "parent_uuid": "2df81e97-44bc-47de-8da4-2031473a2989",
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
              "uuid": "9437a534-bb49-4b64-99d8-71e845aef1cd",
              "parent_uuid": "472f38fd-05b0-4701-a429-1a1378fdcf31",
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
                  "uuid": "7518d5a0-7347-46c2-b4b8-e3f6dd4afd91",
                  "parent_uuid": "9437a534-bb49-4b64-99d8-71e845aef1cd",
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
              "uuid": "af903f7a-3704-429d-86dc-7d403cb80519",
              "parent_uuid": "472f38fd-05b0-4701-a429-1a1378fdcf31",
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
                  "uuid": "b34eb209-8de1-4fbc-a2f4-5d1fa133e581",
                  "parent_uuid": "af903f7a-3704-429d-86dc-7d403cb80519",
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "32c13b10-52b0-4fa3-9b65-bc987bd2a8ef",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05cc8b2e-e16e-4ba8-a655-b4195cd28088",
              "parent_uuid": "32c13b10-52b0-4fa3-9b65-bc987bd2a8ef",
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
                  "37"
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
              "innerHtml": "\r\n                    <span>Steigband Zentrierung des Fördergurts prüfen. Der seitliche Abstand links/rechts sollte ca. identisch sein.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0bb4e61d-db2b-4964-a8c2-4c1cb0a184ed",
              "parent_uuid": "32c13b10-52b0-4fa3-9b65-bc987bd2a8ef",
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
              "uuid": "fadf2d09-d876-4661-8e0c-bddf0fc506e1",
              "parent_uuid": "32c13b10-52b0-4fa3-9b65-bc987bd2a8ef",
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
                  "uuid": "093fe6cb-05ae-464e-bd5b-978f7d330cb8",
                  "parent_uuid": "fadf2d09-d876-4661-8e0c-bddf0fc506e1",
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
              "uuid": "9a7a0067-9a68-4eb1-8770-1ab256c4b493",
              "parent_uuid": "32c13b10-52b0-4fa3-9b65-bc987bd2a8ef",
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
                  "uuid": "a3ea98fc-86be-4bb8-b8f3-414e2076c9c3",
                  "parent_uuid": "9a7a0067-9a68-4eb1-8770-1ab256c4b493",
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
              "uuid": "8805a96c-bc26-4428-8064-7c0b52b1dd78",
              "parent_uuid": "32c13b10-52b0-4fa3-9b65-bc987bd2a8ef",
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
                  "uuid": "f0bb7be0-7be2-4949-977c-b69dd2d40257",
                  "parent_uuid": "8805a96c-bc26-4428-8064-7c0b52b1dd78",
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
              "uuid": "362e505d-87ac-4c5f-98ea-c7628fe080a2",
              "parent_uuid": "32c13b10-52b0-4fa3-9b65-bc987bd2a8ef",
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
                  "uuid": "e25c5155-dc01-403c-914d-1b37471a3e7b",
                  "parent_uuid": "362e505d-87ac-4c5f-98ea-c7628fe080a2",
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
          "uuid": "d110431c-127d-4bba-9ef8-ff3b3823fca4",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "715868a8-c7e8-435a-a862-31c5451491cd",
              "parent_uuid": "d110431c-127d-4bba-9ef8-ff3b3823fca4",
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
                  "33"
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
              "innerHtml": "\r\n                    <span>Transferband auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e6cdd74a-1792-4bee-af3c-35955987e3c5",
              "parent_uuid": "d110431c-127d-4bba-9ef8-ff3b3823fca4",
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
              "uuid": "aedd1f9d-0c48-4e32-9db7-0de224ded740",
              "parent_uuid": "d110431c-127d-4bba-9ef8-ff3b3823fca4",
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
                  "uuid": "4573f065-8d45-4145-8286-d00bac6a6a05",
                  "parent_uuid": "aedd1f9d-0c48-4e32-9db7-0de224ded740",
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
              "uuid": "1b144b55-fd22-42d7-991a-43a7a37027a9",
              "parent_uuid": "d110431c-127d-4bba-9ef8-ff3b3823fca4",
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
                  "uuid": "efcb57a9-89c0-4ccb-860d-31f497202d74",
                  "parent_uuid": "1b144b55-fd22-42d7-991a-43a7a37027a9",
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
              "uuid": "5303f720-a494-4ed0-93ac-63be5a130c5a",
              "parent_uuid": "d110431c-127d-4bba-9ef8-ff3b3823fca4",
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
                  "uuid": "b3088c5f-ae5a-48d2-a248-d17f78afc597",
                  "parent_uuid": "5303f720-a494-4ed0-93ac-63be5a130c5a",
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
              "uuid": "c2615237-78b7-4deb-9b9f-b1747037019a",
              "parent_uuid": "d110431c-127d-4bba-9ef8-ff3b3823fca4",
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
                  "uuid": "bd5ace1b-d23f-4b51-b3ce-55047a5e8ac3",
                  "parent_uuid": "c2615237-78b7-4deb-9b9f-b1747037019a",
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
          "uuid": "41570bab-39e1-4ed9-a11c-7e9b8d8072af",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ea4c79f-1b74-4220-ae86-8fddf23f61ca",
              "parent_uuid": "41570bab-39e1-4ed9-a11c-7e9b8d8072af",
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
                  "37"
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
              "innerHtml": "\r\n                    <span>Alle Mitnehmerstege auf den Förderbändern mechanisch prüfen und fixieren wenn gelockert</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f9ae2205-3a1a-4284-aca6-61034e1c3d59",
              "parent_uuid": "41570bab-39e1-4ed9-a11c-7e9b8d8072af",
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
              "uuid": "57ee8ad6-b0bc-44b6-bdac-18e3f7fa86a7",
              "parent_uuid": "41570bab-39e1-4ed9-a11c-7e9b8d8072af",
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
                  "uuid": "c6413e35-bcc2-4a86-abda-3d2f8d716abc",
                  "parent_uuid": "57ee8ad6-b0bc-44b6-bdac-18e3f7fa86a7",
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
              "uuid": "d5f24cd4-9a78-4720-bf84-5a2fe0d312bd",
              "parent_uuid": "41570bab-39e1-4ed9-a11c-7e9b8d8072af",
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
                  "uuid": "c6c08829-0bf7-4497-bd3d-b6e3410d5e21",
                  "parent_uuid": "d5f24cd4-9a78-4720-bf84-5a2fe0d312bd",
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
              "uuid": "c78342bd-b098-48ee-92ff-f8e6d3afc216",
              "parent_uuid": "41570bab-39e1-4ed9-a11c-7e9b8d8072af",
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
                  "uuid": "5b2cbedc-9d8a-42f4-a020-78d6522fbfc4",
                  "parent_uuid": "c78342bd-b098-48ee-92ff-f8e6d3afc216",
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
              "uuid": "c404d8c5-c781-4fab-bc92-1cbf9d5de3d3",
              "parent_uuid": "41570bab-39e1-4ed9-a11c-7e9b8d8072af",
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
                  "uuid": "51501d67-cbea-473b-8d34-aa174285e925",
                  "parent_uuid": "c404d8c5-c781-4fab-bc92-1cbf9d5de3d3",
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
          "uuid": "257447aa-80f9-4b97-a7c2-538c622466e1",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c478015-8c37-4e85-943f-3f518452921f",
              "parent_uuid": "257447aa-80f9-4b97-a7c2-538c622466e1",
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
                  "37"
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
              "innerHtml": "\r\n                    <span>Antriebsmotoren für die Transportbänder prüfen (Geräusche, Laufruhe, Lager, Kabelanschlüsse, Schraubenkontrolle)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4e0cf692-e197-4af8-8c0a-ff882332d352",
              "parent_uuid": "257447aa-80f9-4b97-a7c2-538c622466e1",
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
              "uuid": "93ce8787-e7c4-451b-b0c7-8c5db12af31a",
              "parent_uuid": "257447aa-80f9-4b97-a7c2-538c622466e1",
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
                  "uuid": "800058ff-a534-4f6a-8d0b-3813e1e5cfca",
                  "parent_uuid": "93ce8787-e7c4-451b-b0c7-8c5db12af31a",
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
              "uuid": "2fff43cf-f70b-4e0e-8279-923da0ab2654",
              "parent_uuid": "257447aa-80f9-4b97-a7c2-538c622466e1",
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
                  "uuid": "266239fc-b4a0-46d7-a004-8a6c2877bf76",
                  "parent_uuid": "2fff43cf-f70b-4e0e-8279-923da0ab2654",
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
              "uuid": "b319979b-71b3-4e54-bbac-6e12ae4a28da",
              "parent_uuid": "257447aa-80f9-4b97-a7c2-538c622466e1",
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
                  "uuid": "bb98d7a9-d854-455c-a0dd-c07323214b63",
                  "parent_uuid": "b319979b-71b3-4e54-bbac-6e12ae4a28da",
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
              "uuid": "fce8ffcf-73ff-4e64-a56b-844186920530",
              "parent_uuid": "257447aa-80f9-4b97-a7c2-538c622466e1",
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
                  "uuid": "78c29036-95ec-4162-864e-dcb436ed0741",
                  "parent_uuid": "fce8ffcf-73ff-4e64-a56b-844186920530",
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
          "uuid": "5e0fec33-4011-4268-88f8-f9eae98691c6",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae6f92af-3e85-49b5-a9a9-6f48afe19597",
              "parent_uuid": "5e0fec33-4011-4268-88f8-f9eae98691c6",
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
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rollenförderer bei Ent- und Verpackungsstation auf Beschädigungen prüfen (Laufruhe, Geräusche, Riemen, Anschlusskabel)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6c61dba0-2533-46f3-9a0b-3ad2c0be405a",
              "parent_uuid": "5e0fec33-4011-4268-88f8-f9eae98691c6",
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
              "uuid": "e53f6e5b-7fd0-472f-8b3e-51416b49dc74",
              "parent_uuid": "5e0fec33-4011-4268-88f8-f9eae98691c6",
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
                  "uuid": "8e9e99ce-0799-444a-b4d9-0bbc0d761232",
                  "parent_uuid": "e53f6e5b-7fd0-472f-8b3e-51416b49dc74",
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
              "uuid": "c6c0d947-acde-481a-aeee-ac3dae9d7d8f",
              "parent_uuid": "5e0fec33-4011-4268-88f8-f9eae98691c6",
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
                  "uuid": "c836f7e4-5f57-4dd2-ad2f-6f11eaf9e5bc",
                  "parent_uuid": "c6c0d947-acde-481a-aeee-ac3dae9d7d8f",
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
              "uuid": "1b348f1f-1cad-47a9-a083-23fe1c014875",
              "parent_uuid": "5e0fec33-4011-4268-88f8-f9eae98691c6",
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
                  "uuid": "0b69d7a7-9abb-42d9-97e1-8c10068fdb10",
                  "parent_uuid": "1b348f1f-1cad-47a9-a083-23fe1c014875",
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
              "uuid": "afcbd370-4299-4dc9-8614-e3dc634158b2",
              "parent_uuid": "5e0fec33-4011-4268-88f8-f9eae98691c6",
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
                  "uuid": "2e14000d-9706-4144-901c-554d0dcc2dc4",
                  "parent_uuid": "afcbd370-4299-4dc9-8614-e3dc634158b2",
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
          "uuid": "e244d8a5-4e6f-4359-b2bd-8f48a775f87a",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d162bbf-8b58-4389-beb8-158d5ff96715",
              "parent_uuid": "e244d8a5-4e6f-4359-b2bd-8f48a775f87a",
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
                  "37"
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
              "innerHtml": "\r\n                    <span>Ausrichtung der Sensoren prüfen (Lichtschranke, Positionsschalter,Reflektoren, Füllstandssensor)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3e452960-d848-496c-aa29-c367e2de0fae",
              "parent_uuid": "e244d8a5-4e6f-4359-b2bd-8f48a775f87a",
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
              "uuid": "6a03ea45-3485-40a5-a85c-1eb4f0808398",
              "parent_uuid": "e244d8a5-4e6f-4359-b2bd-8f48a775f87a",
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
                  "uuid": "ca81b882-a21a-465d-971e-0993289c729c",
                  "parent_uuid": "6a03ea45-3485-40a5-a85c-1eb4f0808398",
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
              "uuid": "72ad17be-01ea-4b29-a370-3b4cbd4da50d",
              "parent_uuid": "e244d8a5-4e6f-4359-b2bd-8f48a775f87a",
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
                  "uuid": "f52c01ce-191b-4eb0-84d4-c5cc76dcdfc5",
                  "parent_uuid": "72ad17be-01ea-4b29-a370-3b4cbd4da50d",
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
              "uuid": "82817007-3a57-46a1-823f-9f784f9db4d9",
              "parent_uuid": "e244d8a5-4e6f-4359-b2bd-8f48a775f87a",
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
                  "uuid": "aa1a9517-9d59-4d8f-90d1-96920e4cf37a",
                  "parent_uuid": "82817007-3a57-46a1-823f-9f784f9db4d9",
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
              "uuid": "15e50194-90af-40b7-957e-ef0f535a0b61",
              "parent_uuid": "e244d8a5-4e6f-4359-b2bd-8f48a775f87a",
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
                  "uuid": "06a7401a-33c0-405e-a297-c517ab3a94f3",
                  "parent_uuid": "15e50194-90af-40b7-957e-ef0f535a0b61",
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
          "uuid": "bfd59c2e-13a0-4ea2-84af-cebf620aa037",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7a81a1bf-9ff8-4b56-a8fe-ca599f8d4957",
              "parent_uuid": "bfd59c2e-13a0-4ea2-84af-cebf620aa037",
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
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Linearantriebe bei Befüllung Münzrollierer und Schüttgutcontainer prüfen (Bewegungen, Positionierung, Geräusche)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "33dfb89f-90f4-41d5-8cd7-e1446629e29b",
              "parent_uuid": "bfd59c2e-13a0-4ea2-84af-cebf620aa037",
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
              "uuid": "1df3cddf-9572-4a07-bf89-8c36ffc4fcfb",
              "parent_uuid": "bfd59c2e-13a0-4ea2-84af-cebf620aa037",
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
                  "uuid": "8bcedaed-40ea-40c2-a4d9-1148ad60fc60",
                  "parent_uuid": "1df3cddf-9572-4a07-bf89-8c36ffc4fcfb",
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
              "uuid": "94b7c6ef-fa66-4780-9c35-79d64f89f073",
              "parent_uuid": "bfd59c2e-13a0-4ea2-84af-cebf620aa037",
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
                  "uuid": "018fc867-0495-4f3d-8189-4be339497746",
                  "parent_uuid": "94b7c6ef-fa66-4780-9c35-79d64f89f073",
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
              "uuid": "ce021a43-96d8-4754-8d43-7b265f01c83e",
              "parent_uuid": "bfd59c2e-13a0-4ea2-84af-cebf620aa037",
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
                  "uuid": "c1977647-13a8-4f18-8105-3590da326fd0",
                  "parent_uuid": "ce021a43-96d8-4754-8d43-7b265f01c83e",
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
              "uuid": "2809435e-6654-499a-aedd-3adb94db05e1",
              "parent_uuid": "bfd59c2e-13a0-4ea2-84af-cebf620aa037",
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
                  "uuid": "21458255-c3be-41e2-8e68-3b4d0d919620",
                  "parent_uuid": "2809435e-6654-499a-aedd-3adb94db05e1",
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
          "uuid": "fabb569b-8492-4350-a1d7-8f5f3d9d7f5c",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aec79405-2297-4b6c-9443-93f2b3ff1992",
              "parent_uuid": "fabb569b-8492-4350-a1d7-8f5f3d9d7f5c",
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
                  "70"
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
              "innerHtml": "\r\n                    <span>Zustand der zwei Pneumatikeinheiten kontrollieren<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "88cb4df4-455a-41fd-aec3-6bdbd617d688",
              "parent_uuid": "fabb569b-8492-4350-a1d7-8f5f3d9d7f5c",
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
              "uuid": "8c78c9b6-527b-46a7-8b8f-776ee42a51db",
              "parent_uuid": "fabb569b-8492-4350-a1d7-8f5f3d9d7f5c",
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
                  "uuid": "1f9a02c9-b319-4a65-80a4-f17ab16fc47e",
                  "parent_uuid": "8c78c9b6-527b-46a7-8b8f-776ee42a51db",
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
              "uuid": "5912f9e2-88e2-44ca-809d-c8be3f436bca",
              "parent_uuid": "fabb569b-8492-4350-a1d7-8f5f3d9d7f5c",
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
                  "uuid": "952a1e99-283e-4767-96df-4f5bb5c1c7d9",
                  "parent_uuid": "5912f9e2-88e2-44ca-809d-c8be3f436bca",
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
              "uuid": "55549ae0-b2d0-44b5-8ed9-b5f6b7662f5f",
              "parent_uuid": "fabb569b-8492-4350-a1d7-8f5f3d9d7f5c",
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
                  "uuid": "f028ae9a-9d5e-40da-ac8b-627aa1e32ee6",
                  "parent_uuid": "55549ae0-b2d0-44b5-8ed9-b5f6b7662f5f",
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
              "uuid": "b199b2c6-3647-4a64-b50d-030aef3bdd5b",
              "parent_uuid": "fabb569b-8492-4350-a1d7-8f5f3d9d7f5c",
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
                  "uuid": "acc575c0-8fdf-4fe7-97cb-6314307cb871",
                  "parent_uuid": "b199b2c6-3647-4a64-b50d-030aef3bdd5b",
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
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "89aef4b7-15bd-4889-acec-2a9d5257eb72",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa817c14-599e-4f81-94a1-06e54cfede33",
              "parent_uuid": "89aef4b7-15bd-4889-acec-2a9d5257eb72",
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
                  "73"
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
              "innerHtml": "\r\n                    <span>Mechanische Kontrolle der pneumatischen Stopper, Zentrierer, Abschieber bei Münzverpacker prüfen<br>- Bewegungsgeschwindigkeit, Druck<br>- Endanschlag</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "985dd71b-9217-4755-82f3-c277af15c042",
              "parent_uuid": "89aef4b7-15bd-4889-acec-2a9d5257eb72",
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
              "uuid": "f94afe3c-7754-4b39-9e9c-b4960f4b50bf",
              "parent_uuid": "89aef4b7-15bd-4889-acec-2a9d5257eb72",
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
                  "uuid": "dff518b3-3274-4aad-909b-3caafd5225bb",
                  "parent_uuid": "f94afe3c-7754-4b39-9e9c-b4960f4b50bf",
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
              "uuid": "fa24c31b-f7e7-4da4-9acb-231c7a2b235e",
              "parent_uuid": "89aef4b7-15bd-4889-acec-2a9d5257eb72",
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
                  "uuid": "08fe1add-2224-484a-9c47-970b7c2e9137",
                  "parent_uuid": "fa24c31b-f7e7-4da4-9acb-231c7a2b235e",
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
              "uuid": "90a5745d-3524-4f10-97f7-0c1beb60cb68",
              "parent_uuid": "89aef4b7-15bd-4889-acec-2a9d5257eb72",
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
                  "uuid": "e93494bf-c9dd-4301-bc57-8a5cdaaf0d7d",
                  "parent_uuid": "90a5745d-3524-4f10-97f7-0c1beb60cb68",
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
              "uuid": "47893a34-7174-41fa-a799-101949f30b81",
              "parent_uuid": "89aef4b7-15bd-4889-acec-2a9d5257eb72",
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
                  "uuid": "573caf53-9bca-430e-a159-29887dabb1f4",
                  "parent_uuid": "47893a34-7174-41fa-a799-101949f30b81",
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "86200671-f6e3-4327-9e6c-4aee9b9a20c8",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bed2c359-97eb-4f74-b38e-01120fc7ee15",
              "parent_uuid": "86200671-f6e3-4327-9e6c-4aee9b9a20c8",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "0f57e092-7f53-4bc0-842a-2a94f12649e4",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "769e8798-c5a0-4517-acc5-8bbf62bf0072",
              "parent_uuid": "0f57e092-7f53-4bc0-842a-2a94f12649e4",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "e7c1d86f-41b4-4c97-90e1-c191bc55c446",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6c1349b-4455-44ca-bdb5-c31eaa58656c",
              "parent_uuid": "e7c1d86f-41b4-4c97-90e1-c191bc55c446",
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
                  "72"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kartonverdichter, Wasserstopp Schlauchplatzsicherung prüfen.<br>-Wasserhahn bei Kartonverdichter schliessen<br>-Wasser Auffanggefäss unter Wasserhahn stellen<br>-Wasserhahn sprunghaft voll öffnen. </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a1ee37de-36fc-4e99-a027-49c0e68ca0dc",
              "parent_uuid": "e7c1d86f-41b4-4c97-90e1-c191bc55c446",
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
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "97fa95da-2e3d-4df7-bbf2-9c2812c5e6c0",
              "parent_uuid": "e7c1d86f-41b4-4c97-90e1-c191bc55c446",
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
                  "uuid": "a418b773-6eae-44f2-a792-ed91d8263087",
                  "parent_uuid": "97fa95da-2e3d-4df7-bbf2-9c2812c5e6c0",
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
              "uuid": "c625d157-d903-45fc-9ca1-79ef183131ea",
              "parent_uuid": "e7c1d86f-41b4-4c97-90e1-c191bc55c446",
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
                  "uuid": "abe83a05-2287-491e-a6e3-bb0785a71f64",
                  "parent_uuid": "c625d157-d903-45fc-9ca1-79ef183131ea",
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
              "uuid": "6e3b3ec6-b125-4cc3-87cf-252c76b5fd2a",
              "parent_uuid": "e7c1d86f-41b4-4c97-90e1-c191bc55c446",
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
                  "uuid": "dfa04a92-f67d-417a-88a8-bc9983008dd3",
                  "parent_uuid": "6e3b3ec6-b125-4cc3-87cf-252c76b5fd2a",
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
              "uuid": "5abf2612-bf32-44c6-800c-2457a2d9c98a",
              "parent_uuid": "e7c1d86f-41b4-4c97-90e1-c191bc55c446",
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
                  "uuid": "864a5728-21c5-4626-bcec-ad814762c9fa",
                  "parent_uuid": "5abf2612-bf32-44c6-800c-2457a2d9c98a",
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
          "uuid": "50fcdb08-5881-47e7-a5e7-b63c681254f8",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37e6cb60-213f-469f-b8d9-fc127c6ec160",
              "parent_uuid": "50fcdb08-5881-47e7-a5e7-b63c681254f8",
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
              "innerHtml": "\r\n                    <span>Filtermatten an den Schaltschränken bei starker Verschmutzung austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ef57939a-a30a-409a-9cb2-c1c5a4418908",
              "parent_uuid": "50fcdb08-5881-47e7-a5e7-b63c681254f8",
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
              "uuid": "44895586-9604-44d8-b266-363c69150195",
              "parent_uuid": "50fcdb08-5881-47e7-a5e7-b63c681254f8",
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
                  "uuid": "3cce403e-9cbf-4a32-9313-3712f3740a7a",
                  "parent_uuid": "44895586-9604-44d8-b266-363c69150195",
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
              "uuid": "698d4f5b-a24d-4df8-b2a7-6f671ec213d6",
              "parent_uuid": "50fcdb08-5881-47e7-a5e7-b63c681254f8",
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
                  "uuid": "e2f32708-3394-470e-aad0-9758197f104a",
                  "parent_uuid": "698d4f5b-a24d-4df8-b2a7-6f671ec213d6",
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
              "uuid": "e0fefb4f-8e98-4a23-976e-60bcdccc55d8",
              "parent_uuid": "50fcdb08-5881-47e7-a5e7-b63c681254f8",
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
                  "uuid": "413daf5a-5d5c-4733-b8f9-e360433edbd2",
                  "parent_uuid": "e0fefb4f-8e98-4a23-976e-60bcdccc55d8",
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
              "uuid": "fe81bd9b-f2bf-40f6-b254-04bf231e3ecb",
              "parent_uuid": "50fcdb08-5881-47e7-a5e7-b63c681254f8",
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
                  "uuid": "f7425995-b4c2-41b1-adc4-b9931f6f7b05",
                  "parent_uuid": "fe81bd9b-f2bf-40f6-b254-04bf231e3ecb",
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
          "uuid": "38c24d52-1978-478f-b3a9-2ff0dca03210",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e84e190-e411-41f6-b07f-5b825557b259",
              "parent_uuid": "38c24d52-1978-478f-b3a9-2ff0dca03210",
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
              "innerHtml": "\r\n                    <span>Sensoren mit trockenem, fusselfreien Tuch reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "da94b2ff-e422-42a3-8416-2636412de4ca",
              "parent_uuid": "38c24d52-1978-478f-b3a9-2ff0dca03210",
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
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9b781a7e-b5f6-4459-9429-fe73a88131e9",
              "parent_uuid": "38c24d52-1978-478f-b3a9-2ff0dca03210",
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
                  "uuid": "3cb80cc6-8014-4862-8378-1a7037d8cce0",
                  "parent_uuid": "9b781a7e-b5f6-4459-9429-fe73a88131e9",
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
              "uuid": "971fd6f8-a670-47a8-8aec-f5c5ee794b55",
              "parent_uuid": "38c24d52-1978-478f-b3a9-2ff0dca03210",
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
                  "uuid": "6e948606-48d4-4805-aa7b-f500d363c27d",
                  "parent_uuid": "971fd6f8-a670-47a8-8aec-f5c5ee794b55",
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
              "uuid": "fe66a85c-692d-42b9-b194-c34037576709",
              "parent_uuid": "38c24d52-1978-478f-b3a9-2ff0dca03210",
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
                  "uuid": "41fe57ac-b62c-4150-a209-d68d38bf754f",
                  "parent_uuid": "fe66a85c-692d-42b9-b194-c34037576709",
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
              "uuid": "c48840bb-db5a-4c28-b573-c69b56c109f6",
              "parent_uuid": "38c24d52-1978-478f-b3a9-2ff0dca03210",
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
                  "uuid": "9980b81b-a210-4b2e-b0e9-f4e83dd8f50f",
                  "parent_uuid": "c48840bb-db5a-4c28-b573-c69b56c109f6",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "70f05223-4180-4ba0-bda6-06ea6eefb688",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "badbcd4a-1bec-45b3-8ea6-66dd987edfa5",
              "parent_uuid": "70f05223-4180-4ba0-bda6-06ea6eefb688",
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
              "innerHtml": "\r\n                    <span>Förderstrecken reinigen (Münzablagerungen, Papierresten)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "490c1dc6-c478-4235-83a7-b0d552bb1df9",
              "parent_uuid": "70f05223-4180-4ba0-bda6-06ea6eefb688",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "13ac83f9-802e-43d9-b570-87a7bbfa8759",
              "parent_uuid": "70f05223-4180-4ba0-bda6-06ea6eefb688",
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
                  "uuid": "314216b5-bf64-488f-9e6b-79ffa9721c7e",
                  "parent_uuid": "13ac83f9-802e-43d9-b570-87a7bbfa8759",
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
              "uuid": "b4dee4f1-8fa8-45bf-828f-67ee48ea8935",
              "parent_uuid": "70f05223-4180-4ba0-bda6-06ea6eefb688",
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
                  "uuid": "9be50663-991f-4a43-b7ce-39316b10914f",
                  "parent_uuid": "b4dee4f1-8fa8-45bf-828f-67ee48ea8935",
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
              "uuid": "583fa178-04b6-4d75-adf2-6bbe102da24d",
              "parent_uuid": "70f05223-4180-4ba0-bda6-06ea6eefb688",
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
                  "uuid": "f3ad2d05-865e-4b7e-aad4-522998f29062",
                  "parent_uuid": "583fa178-04b6-4d75-adf2-6bbe102da24d",
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
              "uuid": "f9edbec0-98df-48b9-9743-eafe10800525",
              "parent_uuid": "70f05223-4180-4ba0-bda6-06ea6eefb688",
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
                  "uuid": "f6f240fa-0002-4048-b82d-ad67fa01cb5e",
                  "parent_uuid": "f9edbec0-98df-48b9-9743-eafe10800525",
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
          "uuid": "04016b17-9760-4da8-bd92-fb1769b474f4",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb5ed2d9-31be-4240-ba70-6b67d0e117f8",
              "parent_uuid": "04016b17-9760-4da8-bd92-fb1769b474f4",
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
              "innerHtml": "\r\n                    <span>Roboterbereiche von Roboter 1-5 von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c766d9ff-7372-4652-b23f-8e51b3d84f32",
              "parent_uuid": "04016b17-9760-4da8-bd92-fb1769b474f4",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ee71635b-fcc9-4c7b-958b-504747289de4",
              "parent_uuid": "04016b17-9760-4da8-bd92-fb1769b474f4",
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
                  "uuid": "e0fadd95-944a-4a13-abfa-4eb527706de2",
                  "parent_uuid": "ee71635b-fcc9-4c7b-958b-504747289de4",
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
              "uuid": "864203f9-ded5-46cb-9c69-4c9332c4de98",
              "parent_uuid": "04016b17-9760-4da8-bd92-fb1769b474f4",
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
                  "uuid": "b907fa74-8b2b-4879-ba62-7a3095ace70c",
                  "parent_uuid": "864203f9-ded5-46cb-9c69-4c9332c4de98",
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
              "uuid": "f102afab-4bdf-4700-b198-9a7f453ec4f2",
              "parent_uuid": "04016b17-9760-4da8-bd92-fb1769b474f4",
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
                  "uuid": "3335dbd5-d8dc-4ebd-bd9c-c10fedc5fbea",
                  "parent_uuid": "f102afab-4bdf-4700-b198-9a7f453ec4f2",
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
              "uuid": "03a169a2-857e-4e4d-8195-128b2b5a3766",
              "parent_uuid": "04016b17-9760-4da8-bd92-fb1769b474f4",
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
                  "uuid": "73e66f77-7a9a-4f38-a7cd-aed3fa5ad733",
                  "parent_uuid": "03a169a2-857e-4e4d-8195-128b2b5a3766",
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
          "uuid": "370122cf-75fa-4d88-83ef-762f2380634e",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb27906a-d2c7-4c31-a86f-7d72c3b912e3",
              "parent_uuid": "370122cf-75fa-4d88-83ef-762f2380634e",
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
              "innerHtml": "\r\n                    <span>Alle drei Münzrollierer von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a43ad49c-7c50-4df9-ab2d-9e7f2449f426",
              "parent_uuid": "370122cf-75fa-4d88-83ef-762f2380634e",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "00689808-0e7a-423b-90d5-52efdb367bc0",
              "parent_uuid": "370122cf-75fa-4d88-83ef-762f2380634e",
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
                  "uuid": "b7ffe0bb-afd2-42e8-a88d-beea5f636e96",
                  "parent_uuid": "00689808-0e7a-423b-90d5-52efdb367bc0",
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
              "uuid": "345f58d5-8935-4d3c-a7e8-d714495f7f7f",
              "parent_uuid": "370122cf-75fa-4d88-83ef-762f2380634e",
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
                  "uuid": "b89c8886-03da-4628-9438-58a6b3653db2",
                  "parent_uuid": "345f58d5-8935-4d3c-a7e8-d714495f7f7f",
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
              "uuid": "cc43584d-df41-4436-92d7-867168bbb79f",
              "parent_uuid": "370122cf-75fa-4d88-83ef-762f2380634e",
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
                  "uuid": "44908692-ea4a-4295-90f0-7ccb3ca71e27",
                  "parent_uuid": "cc43584d-df41-4436-92d7-867168bbb79f",
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
              "uuid": "68ca8794-70ab-4ffc-8e52-175113eb9555",
              "parent_uuid": "370122cf-75fa-4d88-83ef-762f2380634e",
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
                  "uuid": "b2f38ba7-50d0-4990-b8ec-06d6876f9b49",
                  "parent_uuid": "68ca8794-70ab-4ffc-8e52-175113eb9555",
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
          "uuid": "7cb8a626-2920-4812-90ea-a16601ce4c8e",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8ded9c6c-c09d-4f91-b5c7-02695be03e20",
              "parent_uuid": "7cb8a626-2920-4812-90ea-a16601ce4c8e",
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
              "innerHtml": "\r\n                    <span>Kartonsverschliesser von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "35f17a35-2789-44e4-846c-2e29a2e39b49",
              "parent_uuid": "7cb8a626-2920-4812-90ea-a16601ce4c8e",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "65a7cfa7-13fb-4b0a-8410-b43a73b09a07",
              "parent_uuid": "7cb8a626-2920-4812-90ea-a16601ce4c8e",
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
                  "uuid": "2663baf3-0596-433b-9cd8-61c2c2525a5f",
                  "parent_uuid": "65a7cfa7-13fb-4b0a-8410-b43a73b09a07",
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
              "uuid": "a13e0622-9a05-4767-82d1-7ed7baeaf25a",
              "parent_uuid": "7cb8a626-2920-4812-90ea-a16601ce4c8e",
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
                  "uuid": "f8c8e0b6-67a9-4ab5-92ac-9a17eddd63fa",
                  "parent_uuid": "a13e0622-9a05-4767-82d1-7ed7baeaf25a",
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
              "uuid": "c2bf253c-939a-4af4-93e6-edb56d047458",
              "parent_uuid": "7cb8a626-2920-4812-90ea-a16601ce4c8e",
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
                  "uuid": "1b38b2e2-50cc-4467-b91a-2623171720aa",
                  "parent_uuid": "c2bf253c-939a-4af4-93e6-edb56d047458",
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
              "uuid": "bd67e8cc-edda-43f6-9b4c-fe6f30265139",
              "parent_uuid": "7cb8a626-2920-4812-90ea-a16601ce4c8e",
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
                  "uuid": "5aca55aa-8ad8-44ba-8e9d-398fd7f00a88",
                  "parent_uuid": "bd67e8cc-edda-43f6-9b4c-fe6f30265139",
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
          "uuid": "05ca850c-0168-4321-9d88-31730e5232a6",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16ac2cb8-fd71-4628-aa5e-ae175d9fd69b",
              "parent_uuid": "05ca850c-0168-4321-9d88-31730e5232a6",
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
              "innerHtml": "\r\n                    <span>Bereich der Strapex Bindegeräte von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "046f1521-e434-4982-9985-7f4a40729511",
              "parent_uuid": "05ca850c-0168-4321-9d88-31730e5232a6",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d8610d7d-4e35-462f-89ec-0b0f298d8768",
              "parent_uuid": "05ca850c-0168-4321-9d88-31730e5232a6",
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
                  "uuid": "62e699a6-19ad-4e60-ae75-14b24febe38f",
                  "parent_uuid": "d8610d7d-4e35-462f-89ec-0b0f298d8768",
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
              "uuid": "5f7ab559-ed9d-409c-9bb9-8a52f8179f34",
              "parent_uuid": "05ca850c-0168-4321-9d88-31730e5232a6",
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
                  "uuid": "ca4091ba-29fe-43e7-96ce-273dcdf80bd9",
                  "parent_uuid": "5f7ab559-ed9d-409c-9bb9-8a52f8179f34",
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
              "uuid": "5dbe6b40-56ea-4b71-a71e-84ae330b045a",
              "parent_uuid": "05ca850c-0168-4321-9d88-31730e5232a6",
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
                  "uuid": "75b02c25-2df1-4632-95af-1e8291baf3f4",
                  "parent_uuid": "5dbe6b40-56ea-4b71-a71e-84ae330b045a",
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
              "uuid": "763aab3d-9d6f-4e31-be5d-4a05b44dd16a",
              "parent_uuid": "05ca850c-0168-4321-9d88-31730e5232a6",
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
                  "uuid": "54ca7550-ab88-4d10-b295-a6cfeb579070",
                  "parent_uuid": "763aab3d-9d6f-4e31-be5d-4a05b44dd16a",
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
          "uuid": "59747c55-c8d5-405f-b77d-4941c8465264",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9242e04c-9f87-4966-a482-73a625fe1142",
              "parent_uuid": "59747c55-c8d5-405f-b77d-4941c8465264",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "9a1f9ef8-c3d7-4df6-b3a3-4e1f3043c790",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e9de2c3d-53a5-413f-abf8-412e61b0d6ed",
              "parent_uuid": "9a1f9ef8-c3d7-4df6-b3a3-4e1f3043c790",
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
              "innerHtml": "\r\n                    <span>Etikettierer von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "06a05445-657d-4d9d-80a7-7e0ba2515827",
              "parent_uuid": "9a1f9ef8-c3d7-4df6-b3a3-4e1f3043c790",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ef2af523-485f-49d5-9bfe-f5118e1bd753",
              "parent_uuid": "9a1f9ef8-c3d7-4df6-b3a3-4e1f3043c790",
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
                  "uuid": "0f059057-02d9-45c9-afa8-d33305d55a68",
                  "parent_uuid": "ef2af523-485f-49d5-9bfe-f5118e1bd753",
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
              "uuid": "b9a46e3d-c6d5-4ae0-b52f-bdefb6e072bb",
              "parent_uuid": "9a1f9ef8-c3d7-4df6-b3a3-4e1f3043c790",
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
                  "uuid": "c64c64ad-ce16-44a9-8901-ce6919c99b2d",
                  "parent_uuid": "b9a46e3d-c6d5-4ae0-b52f-bdefb6e072bb",
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
              "uuid": "6e09c726-fbd0-47f1-affa-c0bf4571b68b",
              "parent_uuid": "9a1f9ef8-c3d7-4df6-b3a3-4e1f3043c790",
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
                  "uuid": "84fbcac8-8333-41bf-83ee-afd155a5d6fb",
                  "parent_uuid": "6e09c726-fbd0-47f1-affa-c0bf4571b68b",
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
              "uuid": "8a2343db-9b35-43c1-833f-f89bfb121caa",
              "parent_uuid": "9a1f9ef8-c3d7-4df6-b3a3-4e1f3043c790",
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
                  "uuid": "b2e8ee88-3bae-4cae-a6d7-7f37afb250d5",
                  "parent_uuid": "8a2343db-9b35-43c1-833f-f89bfb121caa",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "1544cf81-2140-474e-afb5-783dec0c136b",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85a42dc7-d2f6-4d35-9229-fae507b50fe6",
              "parent_uuid": "1544cf81-2140-474e-afb5-783dec0c136b",
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
                  "38"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen ob die Daten auf der Datenablage auf dem NAS abgelegt werden, Speicher-platzbelegung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "20b4cc72-4f58-412a-914b-e8d59b5b58fa",
              "parent_uuid": "1544cf81-2140-474e-afb5-783dec0c136b",
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
              "innerHtml": "\r\n                    <span>1M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c8eff797-4e6e-4746-85ab-6c906b7e353d",
              "parent_uuid": "1544cf81-2140-474e-afb5-783dec0c136b",
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
                  "uuid": "422a7869-2680-4dcc-855d-f33df53d99bb",
                  "parent_uuid": "c8eff797-4e6e-4746-85ab-6c906b7e353d",
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
              "uuid": "955f6cf2-e193-4970-8e5d-b1cdaec1f553",
              "parent_uuid": "1544cf81-2140-474e-afb5-783dec0c136b",
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
                  "uuid": "358ab755-b2d0-45c0-bece-bc48d95b2819",
                  "parent_uuid": "955f6cf2-e193-4970-8e5d-b1cdaec1f553",
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
              "uuid": "1ab6abcd-b24b-4a41-9a68-401e7510ed80",
              "parent_uuid": "1544cf81-2140-474e-afb5-783dec0c136b",
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
                  "uuid": "44505708-7616-489a-a1fa-33f14dd74c50",
                  "parent_uuid": "1ab6abcd-b24b-4a41-9a68-401e7510ed80",
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
              "uuid": "a460ac5c-cd99-4cf8-821a-53cf8382f27a",
              "parent_uuid": "1544cf81-2140-474e-afb5-783dec0c136b",
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
                  "uuid": "c46653d4-17d5-4e57-b8cc-c6e7d0d2b378",
                  "parent_uuid": "a460ac5c-cd99-4cf8-821a-53cf8382f27a",
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "3f78ae97-7aa6-4e32-aefc-331f75aa85a6",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f52452a-c124-48d4-bbe5-223b55661317",
              "parent_uuid": "3f78ae97-7aa6-4e32-aefc-331f75aa85a6",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "023bdb94-703a-4604-a6ac-9a1d0a651e50",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "171a7d38-7a12-47f0-9387-7d8bde73d44a",
              "parent_uuid": "023bdb94-703a-4604-a6ac-9a1d0a651e50",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "8756a9ff-a9d0-41bc-a8cc-55c68c47acba",
          "parent_uuid": "094f5f6b-c1ab-402c-9220-5022afb54170",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "645b867d-afc8-4edf-9a8a-5c8cc7838775",
              "parent_uuid": "8756a9ff-a9d0-41bc-a8cc-55c68c47acba",
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
                  "uuid": "c3d4991f-34a3-46b1-aa7f-cd3e253e41f0",
                  "parent_uuid": "645b867d-afc8-4edf-9a8a-5c8cc7838775",
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
          "sort": 33,
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
    ,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS cl_uid 
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
		,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '1F6BEE57-38A8-4B29-9986-BFAD7D107215'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

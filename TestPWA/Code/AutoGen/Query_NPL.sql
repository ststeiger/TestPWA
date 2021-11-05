
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
  "uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "fa0ea405-3de4-4fec-879f-8d518fec4581",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "a7663d42-bebc-42f8-959e-92616f10bfeb",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "86cef8ef-800a-4ee2-bc96-12094a2b2fdb",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "119d8065-af40-4ca1-a12f-831ba4a2764f",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "cb84cdc2-5c14-4660-8bef-b9924a7944e6",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "a8557612-d569-4ab3-bdf4-0a7f9659b770",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "efb0f0f0-7940-471a-b825-777ee1231eb4",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
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
      "uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
      "parent_uuid": "725aad8a-96f1-4109-af0b-d6a43acdf1b6",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "11a18bbb-2aef-4699-8f3f-848f6db7d684",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "6a10ba57-a199-412c-93c8-d886e68dd61b",
              "parent_uuid": "11a18bbb-2aef-4699-8f3f-848f6db7d684",
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
              "uuid": "309ed472-05f8-4863-bc92-51455bf4c21f",
              "parent_uuid": "11a18bbb-2aef-4699-8f3f-848f6db7d684",
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
              "uuid": "3bfd582f-8741-4584-b3ae-f82e4b5e22eb",
              "parent_uuid": "11a18bbb-2aef-4699-8f3f-848f6db7d684",
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
              "uuid": "6d09f515-a77c-430a-ba36-1f244bb6d53a",
              "parent_uuid": "11a18bbb-2aef-4699-8f3f-848f6db7d684",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "8"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Notenpufferlager</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "d1716bfb-becb-4c0d-8ef8-d438510dcfd8",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "6f92e8a6-ddee-462b-a0d4-b267482b3c44",
              "parent_uuid": "d1716bfb-becb-4c0d-8ef8-d438510dcfd8",
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
              "uuid": "b6f723c5-0d25-4bea-8cc0-0bcf3f116962",
              "parent_uuid": "d1716bfb-becb-4c0d-8ef8-d438510dcfd8",
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
              "uuid": "bc97e103-3a23-48cb-8795-6e06c72850ea",
              "parent_uuid": "d1716bfb-becb-4c0d-8ef8-d438510dcfd8",
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
              "uuid": "c0481a25-446b-4783-9614-a7f1bf161ebd",
              "parent_uuid": "d1716bfb-becb-4c0d-8ef8-d438510dcfd8",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "8"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#EDEDED"
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
          "uuid": "e5a69df9-6bbd-47e9-b0c2-e8cb69904764",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f6535e8-050a-4b86-95a5-63c7ecf6b43f",
              "parent_uuid": "e5a69df9-6bbd-47e9-b0c2-e8cb69904764",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8e8f2252-118e-4d87-8199-23bcb172fbe2",
              "parent_uuid": "e5a69df9-6bbd-47e9-b0c2-e8cb69904764",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4cm;"
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
              "uuid": "0db40410-cd51-4ea4-aa0f-b86d67bf3b97",
              "parent_uuid": "e5a69df9-6bbd-47e9-b0c2-e8cb69904764",
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
              "uuid": "e3880262-d4a4-45a2-a210-ac989bb05f9a",
              "parent_uuid": "e5a69df9-6bbd-47e9-b0c2-e8cb69904764",
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
              "uuid": "89a50a02-497c-410f-bc48-f2808f2cdbc5",
              "parent_uuid": "e5a69df9-6bbd-47e9-b0c2-e8cb69904764",
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
              "uuid": "0d5e0224-6bae-479e-b278-e9df2ee8d3ed",
              "parent_uuid": "e5a69df9-6bbd-47e9-b0c2-e8cb69904764",
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
          "uuid": "6b45c9f1-b49d-40cb-912b-545df9beb5d2",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "7a85677f-2baf-483d-b89c-d82620025532",
              "parent_uuid": "6b45c9f1-b49d-40cb-912b-545df9beb5d2",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Prüfarbeiten / Funktionskontrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "8757b936-7cfc-48b2-8510-5d97fffe0d57",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ede3aa8f-debb-4026-8822-e65593b58f8a",
              "parent_uuid": "8757b936-7cfc-48b2-8510-5d97fffe0d57",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Not-Halt Taster (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9eb44a1b-80cd-499f-92c1-b0b4ee34fae5",
              "parent_uuid": "8757b936-7cfc-48b2-8510-5d97fffe0d57",
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
              "uuid": "bf6dd4ef-b4ec-4f46-b279-6b1151ef631b",
              "parent_uuid": "8757b936-7cfc-48b2-8510-5d97fffe0d57",
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
                  "uuid": "b0077872-1ed2-4a9b-8a15-ad8b596a8eef",
                  "parent_uuid": "bf6dd4ef-b4ec-4f46-b279-6b1151ef631b",
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
              "uuid": "5374586f-64a9-4210-9ed9-e9e333e0c3ce",
              "parent_uuid": "8757b936-7cfc-48b2-8510-5d97fffe0d57",
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
                  "uuid": "e997dafa-da54-4f58-a1d6-ea45b41b74d9",
                  "parent_uuid": "5374586f-64a9-4210-9ed9-e9e333e0c3ce",
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
              "uuid": "81791cd6-d192-4d2d-8bf4-8456a3e0c7b1",
              "parent_uuid": "8757b936-7cfc-48b2-8510-5d97fffe0d57",
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
                  "uuid": "0170b6e3-fc26-4cb7-bd7b-63747875a5ee",
                  "parent_uuid": "81791cd6-d192-4d2d-8bf4-8456a3e0c7b1",
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
              "uuid": "64ef0556-0391-45a9-8d45-f7a0b0d5df8b",
              "parent_uuid": "8757b936-7cfc-48b2-8510-5d97fffe0d57",
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
                  "uuid": "84cc7e89-8e5f-43da-9374-8d7bcceab572",
                  "parent_uuid": "64ef0556-0391-45a9-8d45-f7a0b0d5df8b",
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
          "uuid": "cf5652dc-d35d-4870-951c-9f0f3c55af09",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e26372fc-84cc-4991-a488-94cdfba2a0f6",
              "parent_uuid": "cf5652dc-d35d-4870-951c-9f0f3c55af09",
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
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e9a4439e-9059-430c-9eef-cdb5ae479c39",
              "parent_uuid": "cf5652dc-d35d-4870-951c-9f0f3c55af09",
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
              "uuid": "24ea0a9c-b23d-48c4-b7fd-226df1794ffb",
              "parent_uuid": "cf5652dc-d35d-4870-951c-9f0f3c55af09",
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
                  "uuid": "12a783d3-ab01-4e6c-a00b-66679bc058b5",
                  "parent_uuid": "24ea0a9c-b23d-48c4-b7fd-226df1794ffb",
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
              "uuid": "28c1284a-f87a-4942-ad93-0490b85e0109",
              "parent_uuid": "cf5652dc-d35d-4870-951c-9f0f3c55af09",
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
                  "uuid": "97bfdf07-8404-4d66-9a1c-1408a9c956f3",
                  "parent_uuid": "28c1284a-f87a-4942-ad93-0490b85e0109",
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
              "uuid": "27c06055-7235-4477-ac03-f1e2244a7863",
              "parent_uuid": "cf5652dc-d35d-4870-951c-9f0f3c55af09",
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
                  "uuid": "ab003f7a-af5b-4150-bcfc-72f8758df838",
                  "parent_uuid": "27c06055-7235-4477-ac03-f1e2244a7863",
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
              "uuid": "a7f7dec7-879c-4d29-a8da-a97601d43121",
              "parent_uuid": "cf5652dc-d35d-4870-951c-9f0f3c55af09",
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
                  "uuid": "1b7ab59f-9ef3-4800-b435-389537c8e576",
                  "parent_uuid": "a7f7dec7-879c-4d29-a8da-a97601d43121",
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
          "uuid": "f1d8c8a4-d6b3-480d-8ce6-451454e69cf2",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2fa0ca4c-fa23-4379-8b53-43dfa5e474ce",
              "parent_uuid": "f1d8c8a4-d6b3-480d-8ce6-451454e69cf2",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Funktionstest Brandschutztore bei Wareneingang / Warenausgang / Verarbeitung<br>- Brandschutztor 101 (2x) <br>- Brandschutztor 102 (2x)<br>- Prüfpunkte: Laufverhalten, Endlagen, Abdichtung, Geräusche, Steuerungsanzeige, Abnutzungsescheinungen, </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "dde1e835-cfbf-4e4a-b1e8-f61d8913dfa0",
              "parent_uuid": "f1d8c8a4-d6b3-480d-8ce6-451454e69cf2",
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
              "uuid": "1135768c-2db9-411c-8df1-9034cbefbb6d",
              "parent_uuid": "f1d8c8a4-d6b3-480d-8ce6-451454e69cf2",
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
                  "uuid": "bda37e72-fb3a-4af1-95f7-7b8c5729b5a5",
                  "parent_uuid": "1135768c-2db9-411c-8df1-9034cbefbb6d",
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
              "uuid": "34301344-5735-4e8d-8a0d-03e1cd938e7c",
              "parent_uuid": "f1d8c8a4-d6b3-480d-8ce6-451454e69cf2",
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
                  "uuid": "0726191e-7724-403a-b606-2fe6ce5334eb",
                  "parent_uuid": "34301344-5735-4e8d-8a0d-03e1cd938e7c",
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
              "uuid": "8e855a21-b2ba-425c-a29e-681633dc61a3",
              "parent_uuid": "f1d8c8a4-d6b3-480d-8ce6-451454e69cf2",
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
                  "uuid": "5314d774-d82a-47d7-80ac-21bf299e83d7",
                  "parent_uuid": "8e855a21-b2ba-425c-a29e-681633dc61a3",
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
              "uuid": "5e495d03-063b-4a76-a7db-e848a6018e1c",
              "parent_uuid": "f1d8c8a4-d6b3-480d-8ce6-451454e69cf2",
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
                  "uuid": "20e8eaf5-0ade-42a7-8a7a-2369fb734d78",
                  "parent_uuid": "5e495d03-063b-4a76-a7db-e848a6018e1c",
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
          "uuid": "5914d9d2-8896-4673-bf19-6e378ee79973",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8ba31e6-30b2-40ab-b4aa-329c7785c994",
              "parent_uuid": "5914d9d2-8896-4673-bf19-6e378ee79973",
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
              "innerHtml": "\r\n                    <span>Zustandsprüfung <b>IT Infrastruktur</b> gemäss Wartungsdokument <br>\"Service- und Wartungsplan IT Infrastruktur\"</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b1617d66-188a-4cf0-b94a-1e8504d1f9e1",
              "parent_uuid": "5914d9d2-8896-4673-bf19-6e378ee79973",
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
              "uuid": "2b701288-db1a-4ef5-8099-6b9d6dc66a5a",
              "parent_uuid": "5914d9d2-8896-4673-bf19-6e378ee79973",
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
                  "uuid": "077c700a-ea11-4da0-8269-5821791e2b0f",
                  "parent_uuid": "2b701288-db1a-4ef5-8099-6b9d6dc66a5a",
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
              "uuid": "5a479994-8e9c-4173-aa09-31ba458030e4",
              "parent_uuid": "5914d9d2-8896-4673-bf19-6e378ee79973",
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
                  "uuid": "21d87e17-5715-4814-b339-b0615bd81fed",
                  "parent_uuid": "5a479994-8e9c-4173-aa09-31ba458030e4",
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
              "uuid": "7a33fd15-48dd-480b-9245-627679b83216",
              "parent_uuid": "5914d9d2-8896-4673-bf19-6e378ee79973",
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
                  "uuid": "18397270-4394-4f11-9a22-f6d81d27e14a",
                  "parent_uuid": "7a33fd15-48dd-480b-9245-627679b83216",
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
              "uuid": "9fac89ad-c062-4298-b2e1-718883e990a3",
              "parent_uuid": "5914d9d2-8896-4673-bf19-6e378ee79973",
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
                  "uuid": "324f45d2-4cc4-4d2c-9770-97282061c5e4",
                  "parent_uuid": "9fac89ad-c062-4298-b2e1-718883e990a3",
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
          "uuid": "2960e73c-c8f6-4762-9cd1-e81bbdd139d6",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9cea598-5a36-42f1-bfb5-a2778af58920",
              "parent_uuid": "2960e73c-c8f6-4762-9cd1-e81bbdd139d6",
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
                  "88"
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
              "innerHtml": "\r\n                    <span><b>Pneumatikzentrale</b> für alle unterschiedlichen Anlagebereiche in Steigzone auf Funktion, genügend Druck, Dichtheit prüfen<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "63e0e822-1b96-436b-8bcc-457c95023622",
              "parent_uuid": "2960e73c-c8f6-4762-9cd1-e81bbdd139d6",
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
              "uuid": "15ae8af7-7e87-4efb-b599-88cdc2d0af47",
              "parent_uuid": "2960e73c-c8f6-4762-9cd1-e81bbdd139d6",
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
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3800ba5c-2b59-4270-b108-095cfff0fa61",
                  "parent_uuid": "15ae8af7-7e87-4efb-b599-88cdc2d0af47",
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
              "uuid": "0a23d0be-753e-42d6-917a-3007238b8988",
              "parent_uuid": "2960e73c-c8f6-4762-9cd1-e81bbdd139d6",
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
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0d96322-1d0e-43d3-81da-60985b8c965c",
                  "parent_uuid": "0a23d0be-753e-42d6-917a-3007238b8988",
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
              "uuid": "9f53bc52-5fdd-4984-b301-33548f834bb2",
              "parent_uuid": "2960e73c-c8f6-4762-9cd1-e81bbdd139d6",
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
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1988f659-64c1-44f5-b1d6-acc4a045a087",
                  "parent_uuid": "9f53bc52-5fdd-4984-b301-33548f834bb2",
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
              "uuid": "e49bd0bc-d445-4942-8f94-aca8758fe7ab",
              "parent_uuid": "2960e73c-c8f6-4762-9cd1-e81bbdd139d6",
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
                  "valign",
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6db4ae97-ad51-4460-a6dd-f09a925fa937",
                  "parent_uuid": "e49bd0bc-d445-4942-8f94-aca8758fe7ab",
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
          "uuid": "1cdfcac2-e148-4f01-a525-d501482af88b",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad386975-15c6-4663-8d2c-179e19740f91",
              "parent_uuid": "1cdfcac2-e148-4f01-a525-d501482af88b",
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
                  "74"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Rollenantriebe in der <b>Fördertechnik</b> prüfen<br>- Antriebsriemen (Risse, Abnutzung)<br>- Motorrollen (Laufruhe, Leichtgängigkeit, Lagerzustand)<br>- Befestigung (Klipp, Verschraubung)<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "42928080-fa36-4c5f-a0ae-574cd01fb361",
              "parent_uuid": "1cdfcac2-e148-4f01-a525-d501482af88b",
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
              "uuid": "5f4a722e-71cd-48e2-b116-3eed6cf249c7",
              "parent_uuid": "1cdfcac2-e148-4f01-a525-d501482af88b",
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
                  "uuid": "ab128d9b-db05-497d-8d17-897f13020628",
                  "parent_uuid": "5f4a722e-71cd-48e2-b116-3eed6cf249c7",
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
              "uuid": "565767f1-c2b4-4f0f-ae5f-de00466560cf",
              "parent_uuid": "1cdfcac2-e148-4f01-a525-d501482af88b",
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
                  "uuid": "eb570a3e-4e4b-4b97-a14f-0af6f96acf4a",
                  "parent_uuid": "565767f1-c2b4-4f0f-ae5f-de00466560cf",
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
              "uuid": "17c692a7-de54-45e1-8efe-8839a7dc2e9f",
              "parent_uuid": "1cdfcac2-e148-4f01-a525-d501482af88b",
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
                  "uuid": "67f9720b-4b57-440a-8d0d-e598af28c911",
                  "parent_uuid": "17c692a7-de54-45e1-8efe-8839a7dc2e9f",
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
              "uuid": "fb4b74a1-cc38-4ed7-953c-0550712648bb",
              "parent_uuid": "1cdfcac2-e148-4f01-a525-d501482af88b",
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
                  "uuid": "e8304bbd-521a-43ee-8d8e-9ff2b13d3918",
                  "parent_uuid": "fb4b74a1-cc38-4ed7-953c-0550712648bb",
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
          "uuid": "39ee87e3-1fd4-41b3-b11d-e502c2395c4d",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c4fd28f9-599f-497b-a970-700a8ebcc2de",
              "parent_uuid": "39ee87e3-1fd4-41b3-b11d-e502c2395c4d",
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
                  "53"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Hubstopper</b> in der Fördetechnik prüfen<br>- Dichtheit der Ventile<br>- Bewegungsgeschwindigkeit, Endanschlag des Balkens (Pneumatikzylinder)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e2aa6485-3503-4c8f-ade9-23d298654e07",
              "parent_uuid": "39ee87e3-1fd4-41b3-b11d-e502c2395c4d",
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
              "uuid": "e13a0d32-bf7b-4e89-b073-2012c26b2493",
              "parent_uuid": "39ee87e3-1fd4-41b3-b11d-e502c2395c4d",
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
                  "uuid": "31fb2d60-12bc-4cbb-94e7-4bd78e1df670",
                  "parent_uuid": "e13a0d32-bf7b-4e89-b073-2012c26b2493",
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
              "uuid": "25a6c6c7-f0e6-4ab9-9218-95018c1b891d",
              "parent_uuid": "39ee87e3-1fd4-41b3-b11d-e502c2395c4d",
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
                  "uuid": "55aba33d-a21e-4c74-8e86-56b41538a32c",
                  "parent_uuid": "25a6c6c7-f0e6-4ab9-9218-95018c1b891d",
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
              "uuid": "ae749391-cecf-448e-aaa9-5a5781af0924",
              "parent_uuid": "39ee87e3-1fd4-41b3-b11d-e502c2395c4d",
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
                  "uuid": "e5bb4703-6547-45f5-b579-28e478076cac",
                  "parent_uuid": "ae749391-cecf-448e-aaa9-5a5781af0924",
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
              "uuid": "f13be140-3e79-440b-831f-12c9268eac63",
              "parent_uuid": "39ee87e3-1fd4-41b3-b11d-e502c2395c4d",
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
                  "uuid": "13f5e9ce-af49-4985-a531-a804a7e09b95",
                  "parent_uuid": "f13be140-3e79-440b-831f-12c9268eac63",
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
          "uuid": "ba6aebbe-1dc9-4e2b-a963-098b774b2534",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a46b4bea-ffac-4d6e-9e16-f32a806404ee",
              "parent_uuid": "ba6aebbe-1dc9-4e2b-a963-098b774b2534",
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
                  "139"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Gurtumsetzer</b> prüfen<br>- Mechanische Spannung der Antriebsriemen beim Schwert (Flachriemen)<br>- Dichtheit der Ventile<br>- Mechanische Bewegung der einzelnen Schwerter (Pneumatikzylinder)<br>- Antriebsketten der Schwerter<br>- Antriebsriemen<br>- Asynchronmotor inkl. Mechanik (Kann manuell per Schütz angesteuert werden)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "007b1f27-b5d0-4730-ac7b-916ac77b9cf4",
              "parent_uuid": "ba6aebbe-1dc9-4e2b-a963-098b774b2534",
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
              "uuid": "a320dfc1-c9bc-4769-a41a-c6ef8ba40524",
              "parent_uuid": "ba6aebbe-1dc9-4e2b-a963-098b774b2534",
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
                  "uuid": "8841ed0e-72b9-4297-b079-89421874c969",
                  "parent_uuid": "a320dfc1-c9bc-4769-a41a-c6ef8ba40524",
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
              "uuid": "1b82dfc1-b3cd-4c9c-a81b-ccf0ae6fda6c",
              "parent_uuid": "ba6aebbe-1dc9-4e2b-a963-098b774b2534",
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
                  "uuid": "c381a264-7545-4400-91d9-f3053d8c6007",
                  "parent_uuid": "1b82dfc1-b3cd-4c9c-a81b-ccf0ae6fda6c",
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
              "uuid": "c69a0fde-0d35-4674-859b-ca958ad13cbd",
              "parent_uuid": "ba6aebbe-1dc9-4e2b-a963-098b774b2534",
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
                  "uuid": "0c1c6cea-70db-4757-89db-415ee7fabb71",
                  "parent_uuid": "c69a0fde-0d35-4674-859b-ca958ad13cbd",
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
              "uuid": "b9c35369-58bc-4a59-a3c3-0a1026539b79",
              "parent_uuid": "ba6aebbe-1dc9-4e2b-a963-098b774b2534",
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
                  "uuid": "9abfff0f-e595-4363-a1e7-a64d607297be",
                  "parent_uuid": "b9c35369-58bc-4a59-a3c3-0a1026539b79",
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
          "uuid": "a210deae-3cc6-45d9-aecf-13964f7e5a72",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7355a01d-2354-4157-af64-a2f05ad1903f",
              "parent_uuid": "a210deae-3cc6-45d9-aecf-13964f7e5a72",
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
                  "110"
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
              "innerHtml": "\r\n                    <span>Zustand, Funktion, Ausrichtung aller <b>Sensoren</b> auf Reflektoren, Sicherheits-Lichtgitter kontrollieren<br>- Fördertechnik<br>- OSR<br>- Behälterlifte<br>- OSR-Lifte</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ec69d954-cc1e-411b-b29f-13146a999414",
              "parent_uuid": "a210deae-3cc6-45d9-aecf-13964f7e5a72",
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
              "uuid": "59e66208-ac00-4746-99af-d3245ddfdd09",
              "parent_uuid": "a210deae-3cc6-45d9-aecf-13964f7e5a72",
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
                  "uuid": "d4907f46-8560-477b-ab6d-0135854143f3",
                  "parent_uuid": "59e66208-ac00-4746-99af-d3245ddfdd09",
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
              "uuid": "bd1768fc-a910-4d43-92ba-f12d3a569ccd",
              "parent_uuid": "a210deae-3cc6-45d9-aecf-13964f7e5a72",
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
                  "uuid": "4b7ea9fc-3325-43da-a349-01975b7be8cc",
                  "parent_uuid": "bd1768fc-a910-4d43-92ba-f12d3a569ccd",
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
              "uuid": "14a00723-d01f-4f59-b9b2-471a9fa763d6",
              "parent_uuid": "a210deae-3cc6-45d9-aecf-13964f7e5a72",
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
                  "uuid": "abe965d7-a0f5-4511-8189-a420ee74798e",
                  "parent_uuid": "14a00723-d01f-4f59-b9b2-471a9fa763d6",
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
              "uuid": "774caaec-ddf8-4e3c-b297-e566fbf3918e",
              "parent_uuid": "a210deae-3cc6-45d9-aecf-13964f7e5a72",
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
                  "uuid": "25053bd5-8a94-4238-9387-994cf25f33a8",
                  "parent_uuid": "774caaec-ddf8-4e3c-b297-e566fbf3918e",
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
          "uuid": "0d32bf60-e870-496d-97a8-b7bbce874756",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c996c93f-6082-48b7-89a0-a8f647488805",
              "parent_uuid": "0d32bf60-e870-496d-97a8-b7bbce874756",
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion des <b>EBG/Shuttleliftes</b> für Shuttletausch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "939eb4e2-394b-4c10-9e61-ef5cb26cfa87",
              "parent_uuid": "0d32bf60-e870-496d-97a8-b7bbce874756",
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
              "uuid": "e9bf8978-971a-4df6-ae4e-7c509c6c7e85",
              "parent_uuid": "0d32bf60-e870-496d-97a8-b7bbce874756",
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
                  "uuid": "b4e21b5c-fe81-4042-b0b3-f09455c5b326",
                  "parent_uuid": "e9bf8978-971a-4df6-ae4e-7c509c6c7e85",
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
              "uuid": "00f5348f-0d56-4f44-8070-18ab82bf302b",
              "parent_uuid": "0d32bf60-e870-496d-97a8-b7bbce874756",
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
                  "uuid": "6857e776-853c-4709-8684-819a1a3b1789",
                  "parent_uuid": "00f5348f-0d56-4f44-8070-18ab82bf302b",
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
              "uuid": "14dabd6c-a8aa-41a7-af4b-f73b69ae1256",
              "parent_uuid": "0d32bf60-e870-496d-97a8-b7bbce874756",
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
                  "uuid": "df32702c-4444-4d73-b84a-91b5e9031601",
                  "parent_uuid": "14dabd6c-a8aa-41a7-af4b-f73b69ae1256",
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
              "uuid": "1e0b93fa-e5dc-46ef-9dc8-9609601db331",
              "parent_uuid": "0d32bf60-e870-496d-97a8-b7bbce874756",
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
                  "uuid": "4a8042d9-0c93-4985-a30c-05d882862816",
                  "parent_uuid": "1e0b93fa-e5dc-46ef-9dc8-9609601db331",
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
          "uuid": "ad8d6e99-f31a-4612-b9be-9d49fdd0c589",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4d76da7-116c-4e8c-a0dd-73ccfde1993a",
              "parent_uuid": "ad8d6e99-f31a-4612-b9be-9d49fdd0c589",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>OSR-Lifte</b><br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c9dd17e2-6a92-4a17-adf9-a7f5677398b5",
              "parent_uuid": "ad8d6e99-f31a-4612-b9be-9d49fdd0c589",
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
              "uuid": "f0198a14-2c5f-46aa-8719-8238f1aa72e3",
              "parent_uuid": "ad8d6e99-f31a-4612-b9be-9d49fdd0c589",
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
                  "uuid": "24683e2f-683e-4bef-8124-cad114e7bb61",
                  "parent_uuid": "f0198a14-2c5f-46aa-8719-8238f1aa72e3",
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
              "uuid": "b7cc2348-34ff-4aee-8f54-4c9065ee706e",
              "parent_uuid": "ad8d6e99-f31a-4612-b9be-9d49fdd0c589",
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
                  "uuid": "00ba3ca0-3e25-46b2-9476-8b6cd10db72e",
                  "parent_uuid": "b7cc2348-34ff-4aee-8f54-4c9065ee706e",
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
              "uuid": "823ba91e-5d11-47eb-8bf3-278215aaac4b",
              "parent_uuid": "ad8d6e99-f31a-4612-b9be-9d49fdd0c589",
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
                  "uuid": "13b2b3d0-17c1-4e65-a110-4af9b03e3bc6",
                  "parent_uuid": "823ba91e-5d11-47eb-8bf3-278215aaac4b",
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
              "uuid": "5d1c946d-6032-4021-8b33-22069bca32ff",
              "parent_uuid": "ad8d6e99-f31a-4612-b9be-9d49fdd0c589",
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
                  "uuid": "5b4b75ed-ec27-468d-9ae7-a2c6cc7938b7",
                  "parent_uuid": "5d1c946d-6032-4021-8b33-22069bca32ff",
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
          "uuid": "7776b4b2-7fac-4876-9c8a-a466665e1000",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bfabb65b-0a40-4055-9bb3-a1b51c845458",
              "parent_uuid": "7776b4b2-7fac-4876-9c8a-a466665e1000",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>Behälterlift/Liftplattform</b><br>- Bewegung Liftplattform (Laufruhe, Vibrationen, Geräusche)<br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5dde56bb-c7dc-440c-b86f-ee326d687853",
              "parent_uuid": "7776b4b2-7fac-4876-9c8a-a466665e1000",
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
              "uuid": "17d968af-e09f-4333-968a-90bbdef7f19c",
              "parent_uuid": "7776b4b2-7fac-4876-9c8a-a466665e1000",
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
                  "uuid": "271699a8-76a3-4f0d-8a99-6fd145e907ce",
                  "parent_uuid": "17d968af-e09f-4333-968a-90bbdef7f19c",
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
              "uuid": "ab820ccd-acd1-409d-9a07-f3954e0b4773",
              "parent_uuid": "7776b4b2-7fac-4876-9c8a-a466665e1000",
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
                  "uuid": "2fa7721c-fa74-4297-8d50-331e7e890741",
                  "parent_uuid": "ab820ccd-acd1-409d-9a07-f3954e0b4773",
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
              "uuid": "d0539032-0712-4336-adf5-406f748a0a0e",
              "parent_uuid": "7776b4b2-7fac-4876-9c8a-a466665e1000",
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
                  "uuid": "0c6ae1ab-3de4-4ede-8b64-99a78e74be2a",
                  "parent_uuid": "d0539032-0712-4336-adf5-406f748a0a0e",
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
              "uuid": "bb27cbd8-c746-4eb8-b917-ea8d5653512c",
              "parent_uuid": "7776b4b2-7fac-4876-9c8a-a466665e1000",
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
                  "uuid": "64639b5e-894e-47a7-a846-0cf6279b415a",
                  "parent_uuid": "bb27cbd8-c746-4eb8-b917-ea8d5653512c",
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
          "uuid": "30ab733d-bdb7-44ae-9997-f6302956c851",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ad79669-52ac-484e-8a40-c3821d5bfcfb",
              "parent_uuid": "30ab733d-bdb7-44ae-9997-f6302956c851",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Distanzen<br>- Laufräder für Längs- und Querfahrwerk, Seitenführungsrad (Lagerung, Laufruhe)<br>- Teleskoparme, Antriebkette<br>- Drehgeber, Induktivgeber<br>- Gassenfahrt, Quergassenfahrt, Behälterentnahme, Behältereinlagerung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "78a302af-77f1-4c91-af97-3684fe83c856",
              "parent_uuid": "30ab733d-bdb7-44ae-9997-f6302956c851",
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
              "uuid": "1a15cea7-1030-49ae-aa6c-5e99f712d0b4",
              "parent_uuid": "30ab733d-bdb7-44ae-9997-f6302956c851",
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
                  "uuid": "bc080dfe-54fc-4fa0-b8ee-80c81f5fe852",
                  "parent_uuid": "1a15cea7-1030-49ae-aa6c-5e99f712d0b4",
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
              "uuid": "6552580f-3283-4d19-ab3c-8f032099eebe",
              "parent_uuid": "30ab733d-bdb7-44ae-9997-f6302956c851",
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
                  "uuid": "a3c7fa3c-b567-46f7-bcf6-bce69691b884",
                  "parent_uuid": "6552580f-3283-4d19-ab3c-8f032099eebe",
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
              "uuid": "8e0022a6-c30f-4eb1-b77c-f9251207a2ac",
              "parent_uuid": "30ab733d-bdb7-44ae-9997-f6302956c851",
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
                  "uuid": "57b0f933-68c5-44b2-b0d0-c48e9f5eb7be",
                  "parent_uuid": "8e0022a6-c30f-4eb1-b77c-f9251207a2ac",
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
              "uuid": "7bf188b9-2017-4dbe-a261-58c93397ae98",
              "parent_uuid": "30ab733d-bdb7-44ae-9997-f6302956c851",
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
                  "uuid": "981edb69-93b3-4375-b523-964d8c07cad6",
                  "parent_uuid": "7bf188b9-2017-4dbe-a261-58c93397ae98",
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
          "uuid": "2d945abd-f66d-4eb8-8d9c-c9e45905d9ef",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e3412cb4-13e4-47de-b5e8-705b60f8ff1b",
              "parent_uuid": "2d945abd-f66d-4eb8-8d9c-c9e45905d9ef",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand und Funktion der <b>Schutzvorrichtung</b> zu den Gassenbereichen<br>- Knapp-Lock<br>- Not-Halt Taster<br>- Schutzzaun, Schutzabdeckung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b6f0cc45-27e6-4900-8407-a4a2366a3c3c",
              "parent_uuid": "2d945abd-f66d-4eb8-8d9c-c9e45905d9ef",
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
              "uuid": "00d5e480-888f-4764-9ee4-2f7d7cb553e7",
              "parent_uuid": "2d945abd-f66d-4eb8-8d9c-c9e45905d9ef",
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
                  "uuid": "8f967fdd-8b43-4cca-b81c-f4032d5f324b",
                  "parent_uuid": "00d5e480-888f-4764-9ee4-2f7d7cb553e7",
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
              "uuid": "0948492f-29dc-40f4-aa42-9329a0453a13",
              "parent_uuid": "2d945abd-f66d-4eb8-8d9c-c9e45905d9ef",
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
                  "uuid": "7ed4d04b-2927-468f-bf51-65e0b3c56d45",
                  "parent_uuid": "0948492f-29dc-40f4-aa42-9329a0453a13",
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
              "uuid": "275574e0-dc45-49e5-a2d8-b345d1cc8312",
              "parent_uuid": "2d945abd-f66d-4eb8-8d9c-c9e45905d9ef",
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
                  "uuid": "f88cb87e-95ca-46bb-94a0-1965b9f806e3",
                  "parent_uuid": "275574e0-dc45-49e5-a2d8-b345d1cc8312",
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
              "uuid": "4747f2fe-16e7-4c4d-b90e-74c61284e584",
              "parent_uuid": "2d945abd-f66d-4eb8-8d9c-c9e45905d9ef",
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
                  "uuid": "5e3d9d35-a55c-4764-ba29-ac250f003971",
                  "parent_uuid": "4747f2fe-16e7-4c4d-b90e-74c61284e584",
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
          "uuid": "9a7c2c77-89e2-49d0-8e2f-827c2d1ecf43",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "ae820df5-e662-4161-9602-0d81ccced598",
              "parent_uuid": "9a7c2c77-89e2-49d0-8e2f-827c2d1ecf43",
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "034f9860-cf60-4d50-aa3b-5a198516918c",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb0a2d72-6857-44a1-92a7-2ffa2eb970b4",
              "parent_uuid": "034f9860-cf60-4d50-aa3b-5a198516918c",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "672035cc-1301-4747-8d48-809c4e3ed8bc",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4b04921-74e4-4d3d-bc87-828a3d933a8b",
              "parent_uuid": "672035cc-1301-4747-8d48-809c4e3ed8bc",
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
                  "uuid": "e58c404e-ef2e-4e48-a7ec-fdd5e1c5cd85",
                  "parent_uuid": "d4b04921-74e4-4d3d-bc87-828a3d933a8b",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "1db979c1-ec33-4481-80d6-6d5e6d884a68",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ecfc9c59-95ba-4d11-9ba8-8956596d492b",
              "parent_uuid": "1db979c1-ec33-4481-80d6-6d5e6d884a68",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000"
                ],
                [
                  "height",
                  "30"
                ],
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "079641eb-7235-4186-8003-b4c1895c332f",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b1c3000f-918a-42f6-b47e-5ec1cd0d1711",
              "parent_uuid": "079641eb-7235-4186-8003-b4c1895c332f",
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
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten TK01.01 / .02 / .03</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "ea6bbc3a-b160-4461-bddb-2ac153816e84",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b71c22ed-9595-4aa4-be28-50b280e5b033",
              "parent_uuid": "ea6bbc3a-b160-4461-bddb-2ac153816e84",
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
                  "109"
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
              "innerHtml": "\r\n                    <span>Reinigung der Fördertechnik<br>- Barcodescanner (mittels trockenem, fusselfreiem Tuch)<br>- Optische Sensoren / Reflektoren (mittels trockenem, fusselfreiem Tuch)<br>- Antriebsriemen<br>- Antriebsrollen<br>- Gurtumsetzer</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "288159bd-ea18-452d-a0c4-8e29bc96d123",
              "parent_uuid": "ea6bbc3a-b160-4461-bddb-2ac153816e84",
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
              "uuid": "49c21832-7939-40a6-9485-eea0e649552c",
              "parent_uuid": "ea6bbc3a-b160-4461-bddb-2ac153816e84",
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
                  "uuid": "d250f3df-faca-4aa6-a676-9e86b8574e61",
                  "parent_uuid": "49c21832-7939-40a6-9485-eea0e649552c",
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
              "uuid": "041349cd-af4f-433d-8e15-a665cc52c83b",
              "parent_uuid": "ea6bbc3a-b160-4461-bddb-2ac153816e84",
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
                  "uuid": "87d1a89d-d1e3-4751-9803-6a1fe783a12e",
                  "parent_uuid": "041349cd-af4f-433d-8e15-a665cc52c83b",
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
              "uuid": "cd8d590d-d18c-4331-a494-b96ba2abe69e",
              "parent_uuid": "ea6bbc3a-b160-4461-bddb-2ac153816e84",
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
                  "uuid": "0d1c70b8-f860-4b08-9598-6c88de286e82",
                  "parent_uuid": "cd8d590d-d18c-4331-a494-b96ba2abe69e",
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
              "uuid": "5a40935c-165a-47ff-9104-1e17e1923d29",
              "parent_uuid": "ea6bbc3a-b160-4461-bddb-2ac153816e84",
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
                  "uuid": "88879a46-5221-4bde-b21e-b9e23999e23c",
                  "parent_uuid": "5a40935c-165a-47ff-9104-1e17e1923d29",
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
          "uuid": "b0d1cb8e-766c-4955-9ee7-90ec5a5e7630",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52598788-79d3-4512-8c63-d388d7f8583c",
              "parent_uuid": "b0d1cb8e-766c-4955-9ee7-90ec5a5e7630",
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
                  "115"
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
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschränke mittels Staubsauger, Filtermattenaustausch<br>- VERW: F01.GB01<br>- WA: F01.GB02<br>- WE: F01.GB03<br>- Steigzone: F01.GB04 / F01.GB05 / F01.1 / F01.2</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7f2ce51a-70d5-4fe8-8033-895ca7486849",
              "parent_uuid": "b0d1cb8e-766c-4955-9ee7-90ec5a5e7630",
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
              "uuid": "08794a59-c2fe-4a5d-a61e-dd278c82553d",
              "parent_uuid": "b0d1cb8e-766c-4955-9ee7-90ec5a5e7630",
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
                  "uuid": "8590193e-3848-40d6-a835-14280fc5e565",
                  "parent_uuid": "08794a59-c2fe-4a5d-a61e-dd278c82553d",
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
              "uuid": "205bec8d-dde8-4b25-baec-e20704f351a4",
              "parent_uuid": "b0d1cb8e-766c-4955-9ee7-90ec5a5e7630",
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
                  "uuid": "7dc9aeee-fda6-427b-a61f-391934659999",
                  "parent_uuid": "205bec8d-dde8-4b25-baec-e20704f351a4",
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
              "uuid": "25f2fe32-e2ad-4308-b674-f6a162c702a5",
              "parent_uuid": "b0d1cb8e-766c-4955-9ee7-90ec5a5e7630",
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
                  "uuid": "c25d7463-e97a-4e73-89ff-0cfeb84bbbf9",
                  "parent_uuid": "25f2fe32-e2ad-4308-b674-f6a162c702a5",
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
              "uuid": "298ca448-97cf-4ca0-b58c-bd0c8d49a6db",
              "parent_uuid": "b0d1cb8e-766c-4955-9ee7-90ec5a5e7630",
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
                  "uuid": "48f2bcb7-3c8d-4e7e-aa5c-03a3c1909070",
                  "parent_uuid": "298ca448-97cf-4ca0-b58c-bd0c8d49a6db",
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
          "uuid": "55c2d292-e787-42f5-b3fb-e580a8b50140",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07a91b68-7515-483e-b491-e678bd8012c2",
              "parent_uuid": "55c2d292-e787-42f5-b3fb-e580a8b50140",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Brandschutztore (Stöbich)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7057472a-4bca-49a1-81e3-59177dc8b777",
              "parent_uuid": "55c2d292-e787-42f5-b3fb-e580a8b50140",
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
              "uuid": "55c3c600-822b-4389-a488-87b738b9ce89",
              "parent_uuid": "55c2d292-e787-42f5-b3fb-e580a8b50140",
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
                  "uuid": "40bbdc96-6396-49c8-8720-dd604c1a23da",
                  "parent_uuid": "55c3c600-822b-4389-a488-87b738b9ce89",
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
              "uuid": "2d2aa50a-035b-4f0c-bc98-a7166894e279",
              "parent_uuid": "55c2d292-e787-42f5-b3fb-e580a8b50140",
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
                  "uuid": "5abbe4db-901a-46c1-960f-6377928f7b23",
                  "parent_uuid": "2d2aa50a-035b-4f0c-bc98-a7166894e279",
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
              "uuid": "fe6c95f9-83e1-4127-b7ba-5dcc361e6678",
              "parent_uuid": "55c2d292-e787-42f5-b3fb-e580a8b50140",
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
                  "uuid": "0e8e5044-33e4-4870-a4fb-19016acecdb9",
                  "parent_uuid": "fe6c95f9-83e1-4127-b7ba-5dcc361e6678",
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
              "uuid": "c5fa6cfe-14f1-4ad1-8c9d-0a03e50fa887",
              "parent_uuid": "55c2d292-e787-42f5-b3fb-e580a8b50140",
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
                  "uuid": "bdc938ec-6aaf-47f4-bd8c-adbc74de6096",
                  "parent_uuid": "c5fa6cfe-14f1-4ad1-8c9d-0a03e50fa887",
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
          "uuid": "b120cafa-6091-4a3d-bb21-45309c157d66",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a3530365-cadf-4eff-9790-17f38e218a1b",
              "parent_uuid": "b120cafa-6091-4a3d-bb21-45309c157d66",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Tresorschieber (Hügli)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ed83dcd1-1c39-4053-a351-0a3a162bea04",
              "parent_uuid": "b120cafa-6091-4a3d-bb21-45309c157d66",
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
              "uuid": "a91e56c3-1d40-4384-b0ad-c559b1479772",
              "parent_uuid": "b120cafa-6091-4a3d-bb21-45309c157d66",
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
                  "uuid": "3bfdec6c-c0ba-4f70-a77f-c320e63559d2",
                  "parent_uuid": "a91e56c3-1d40-4384-b0ad-c559b1479772",
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
              "uuid": "243b3a21-782b-4bdc-968b-518a51b69e44",
              "parent_uuid": "b120cafa-6091-4a3d-bb21-45309c157d66",
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
                  "uuid": "cda58fb4-0bd2-427c-94a3-fd78095cbd25",
                  "parent_uuid": "243b3a21-782b-4bdc-968b-518a51b69e44",
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
              "uuid": "31df28fc-6270-42f1-9485-02ee32c82efb",
              "parent_uuid": "b120cafa-6091-4a3d-bb21-45309c157d66",
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
                  "uuid": "cd046c82-ed5f-45b8-b909-a7e100dd3610",
                  "parent_uuid": "31df28fc-6270-42f1-9485-02ee32c82efb",
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
              "uuid": "c7dee8ca-ce87-4c67-8071-509d832c4f25",
              "parent_uuid": "b120cafa-6091-4a3d-bb21-45309c157d66",
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
                  "uuid": "235dbac7-db48-4f55-85a8-2b1bbf89266b",
                  "parent_uuid": "c7dee8ca-ce87-4c67-8071-509d832c4f25",
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
          "uuid": "7f384048-00cf-4c44-b0f9-89c5be80b12c",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6e81630d-9e71-45a0-9d20-68ff21def129",
              "parent_uuid": "7f384048-00cf-4c44-b0f9-89c5be80b12c",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten OSR U30</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "75700604-4a48-434a-9c8c-73b1bc846ac0",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0bda284e-d0b8-4e2d-88ef-fa136140d052",
              "parent_uuid": "75700604-4a48-434a-9c8c-73b1bc846ac0",
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
              "innerHtml": "\r\n                    <span>Reinigung <b>dezentraler Steuerschränke</b> mittels Staubsauger, Filtermattenaustausch<br>- SH01.04+BHLF1<br>- SH01.01+F1<br>- SH01.01+SUV01<br>- SH01.02+SUV01<br>- SH01.03+SUV01<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "79c8918c-2fb1-4486-a98b-e0e1daf54f5d",
              "parent_uuid": "75700604-4a48-434a-9c8c-73b1bc846ac0",
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
              "uuid": "b30fbb73-bef7-46d0-be9b-089f1ff02cab",
              "parent_uuid": "75700604-4a48-434a-9c8c-73b1bc846ac0",
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
                  "uuid": "03ce4e78-daea-42b9-902d-79767b399d81",
                  "parent_uuid": "b30fbb73-bef7-46d0-be9b-089f1ff02cab",
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
              "uuid": "e228285c-f125-4927-b406-2cbceee77a2f",
              "parent_uuid": "75700604-4a48-434a-9c8c-73b1bc846ac0",
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
                  "uuid": "aeaed19a-a584-4069-82be-bd55ffcb6a59",
                  "parent_uuid": "e228285c-f125-4927-b406-2cbceee77a2f",
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
              "uuid": "9d514085-42ec-4128-9c76-ff24d891bb55",
              "parent_uuid": "75700604-4a48-434a-9c8c-73b1bc846ac0",
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
                  "uuid": "879e107c-6ae4-4c38-b86a-c7a74ff8792d",
                  "parent_uuid": "9d514085-42ec-4128-9c76-ff24d891bb55",
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
              "uuid": "7cf9e01e-15f6-4530-a2c3-d2cc7c71983f",
              "parent_uuid": "75700604-4a48-434a-9c8c-73b1bc846ac0",
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
                  "uuid": "aaf30f42-4757-4b6f-b0cd-8f7d66b38c9b",
                  "parent_uuid": "7cf9e01e-15f6-4530-a2c3-d2cc7c71983f",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "7f2b2d5b-6931-45d0-a085-506c46205fc1",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9cc38015-1709-485d-b122-f0720241382d",
              "parent_uuid": "7f2b2d5b-6931-45d0-a085-506c46205fc1",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten in den <b>Gassenbereichen</b><br>- Knapp-Lock<br>- Quergangüberwachungssensoren<br>- Reflektorfolien<br>- Fahrprofil<br>- Stromschienen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2d90ffa5-d5c7-4aa8-8bef-e667e3f6c076",
              "parent_uuid": "7f2b2d5b-6931-45d0-a085-506c46205fc1",
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
              "uuid": "3807ae08-ef59-4d47-9290-fe0554eeb6dc",
              "parent_uuid": "7f2b2d5b-6931-45d0-a085-506c46205fc1",
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
                  "uuid": "65a4a7a2-2a35-433b-ad47-eab9deecf946",
                  "parent_uuid": "3807ae08-ef59-4d47-9290-fe0554eeb6dc",
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
              "uuid": "2e4a946f-031e-4a35-88f5-ba7ed9469ba5",
              "parent_uuid": "7f2b2d5b-6931-45d0-a085-506c46205fc1",
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
                  "uuid": "4a326d2a-2598-46b9-97c5-0f947d69a7ee",
                  "parent_uuid": "2e4a946f-031e-4a35-88f5-ba7ed9469ba5",
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
              "uuid": "5e3f272a-d534-4e7c-a8ae-070b29450673",
              "parent_uuid": "7f2b2d5b-6931-45d0-a085-506c46205fc1",
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
                  "uuid": "3aedc8bb-ccc2-4949-90ff-30191dd5382d",
                  "parent_uuid": "5e3f272a-d534-4e7c-a8ae-070b29450673",
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
              "uuid": "4e4a1c56-60ae-40f1-b942-9fdca8efc488",
              "parent_uuid": "7f2b2d5b-6931-45d0-a085-506c46205fc1",
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
                  "uuid": "0deac954-4976-4d05-9ab9-a3df24aae208",
                  "parent_uuid": "4e4a1c56-60ae-40f1-b942-9fdca8efc488",
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
          "uuid": "2c991953-e937-47cc-9b4c-356a0a774ba5",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e29012fb-db3a-435e-88d8-efcaf7b1426b",
              "parent_uuid": "2c991953-e937-47cc-9b4c-356a0a774ba5",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten im <b>OSR Shuttle-Lift Zwischenpuffer</b><br>- Optische Sensoren, Reflektoren<br>- Gabellichtschranke<br>- Sicherheitslichtgitter<br>- Keilrippenriemen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "859a2a87-66b9-426d-96f4-8dbeb5a4151a",
              "parent_uuid": "2c991953-e937-47cc-9b4c-356a0a774ba5",
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
              "uuid": "f698b872-fe0f-483d-83f3-177387851efa",
              "parent_uuid": "2c991953-e937-47cc-9b4c-356a0a774ba5",
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
                  "uuid": "ba773a68-6615-4748-b808-7e6b0984b54f",
                  "parent_uuid": "f698b872-fe0f-483d-83f3-177387851efa",
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
              "uuid": "234aa78b-e891-4393-b9e3-cdf5b110ab71",
              "parent_uuid": "2c991953-e937-47cc-9b4c-356a0a774ba5",
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
                  "uuid": "dd2130d0-a0fb-4fd1-8962-d8ee6261039f",
                  "parent_uuid": "234aa78b-e891-4393-b9e3-cdf5b110ab71",
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
              "uuid": "f3fa0436-d883-4fd0-8141-0b221b42a849",
              "parent_uuid": "2c991953-e937-47cc-9b4c-356a0a774ba5",
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
                  "uuid": "75181c4d-8079-4dcf-b894-41a63518a361",
                  "parent_uuid": "f3fa0436-d883-4fd0-8141-0b221b42a849",
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
              "uuid": "5953402f-e508-450b-b8e0-22ccc8f88144",
              "parent_uuid": "2c991953-e937-47cc-9b4c-356a0a774ba5",
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
                  "uuid": "a2eda4b8-6142-42ad-b484-fc9779e7d0d4",
                  "parent_uuid": "5953402f-e508-450b-b8e0-22ccc8f88144",
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
          "uuid": "e4198c56-d66d-4021-b9aa-675e71454ebc",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be906249-8235-4734-8e9e-0f0db06d8e46",
              "parent_uuid": "e4198c56-d66d-4021-b9aa-675e71454ebc",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Reflektoren<br>- Gleitleiste, Schleifer, Laufräder<br>- LED-Steifen, Shuttlegehäuse<br>- Teleskoparme, Antriebkette</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bd70cad5-1a2f-4df0-8343-54f029979de6",
              "parent_uuid": "e4198c56-d66d-4021-b9aa-675e71454ebc",
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
              "uuid": "73a937e1-8b57-4a58-b615-1624cf4e0c9a",
              "parent_uuid": "e4198c56-d66d-4021-b9aa-675e71454ebc",
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
                  "uuid": "fab4ae07-15a0-49ae-a28a-a8223ddf89a9",
                  "parent_uuid": "73a937e1-8b57-4a58-b615-1624cf4e0c9a",
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
              "uuid": "ff6c8694-c25f-48d9-a838-29c2714daff7",
              "parent_uuid": "e4198c56-d66d-4021-b9aa-675e71454ebc",
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
                  "uuid": "bda4feea-9b31-4fc1-a37d-a06c1f25ee6a",
                  "parent_uuid": "ff6c8694-c25f-48d9-a838-29c2714daff7",
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
              "uuid": "07e02a97-1d2a-4054-84c2-c35622b36dfa",
              "parent_uuid": "e4198c56-d66d-4021-b9aa-675e71454ebc",
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
                  "uuid": "83f3a7ed-3ae2-44a9-925a-8bc09719d9f0",
                  "parent_uuid": "07e02a97-1d2a-4054-84c2-c35622b36dfa",
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
              "uuid": "1e47dd96-b971-4d58-bc52-1789a8f70e3a",
              "parent_uuid": "e4198c56-d66d-4021-b9aa-675e71454ebc",
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
                  "uuid": "0795d5e6-36d8-4e49-ac96-319e8f0ed4e0",
                  "parent_uuid": "1e47dd96-b971-4d58-bc52-1789a8f70e3a",
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
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "dcb5f8d0-0482-4ba5-a78b-232fe0c95504",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8436a37-2677-4db6-9e57-d451d9f8f983",
              "parent_uuid": "dcb5f8d0-0482-4ba5-a78b-232fe0c95504",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "cf509fb9-3d36-4709-9e3f-24b194f35954",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6b1aafe-3133-46a7-963f-0d3927825cec",
              "parent_uuid": "cf509fb9-3d36-4709-9e3f-24b194f35954",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "c219a7ac-ad4f-4199-82c3-28c02357e401",
          "parent_uuid": "047ee102-2686-46ca-b37d-07a98ae4c715",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f51a1b5-182c-492f-ab56-e8e710a090b0",
              "parent_uuid": "c219a7ac-ad4f-4199-82c3-28c02357e401",
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
                  "uuid": "6806c6cf-2971-4971-a4ec-0edff52d442e",
                  "parent_uuid": "2f51a1b5-182c-492f-ab56-e8e710a090b0",
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
          "sort": 34,
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

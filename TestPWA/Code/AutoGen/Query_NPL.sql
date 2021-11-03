
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
  "uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "13f514e8-2dc7-48c2-acfb-97afe332041d",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "bc711c42-b905-405f-a1ea-f1278e61fa6b",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "ee806480-aeb2-4a2b-8915-9d16637e9800",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "d6635796-7b96-41c9-9649-2a200f39b9ad",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "197c6efd-622b-454c-a4dd-4d0c5c6d3b38",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "613b66b0-12c3-49ce-a3e9-61c93014b1f6",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "0bb4534e-e7fb-461f-90d6-74f02358e2d5",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
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
      "uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
      "parent_uuid": "aea463b9-499b-4b48-92a5-bfeffeb4ed39",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7c2852d9-ae76-4f23-8acf-88fb05520bd5",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "0c28f737-5540-4ad9-a225-9657d1260db3",
              "parent_uuid": "7c2852d9-ae76-4f23-8acf-88fb05520bd5",
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
              "uuid": "2b025d9f-fe53-4eb1-8f5c-c2934139868e",
              "parent_uuid": "7c2852d9-ae76-4f23-8acf-88fb05520bd5",
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
              "uuid": "e5861bf2-0f01-45c3-9157-a49c3990977b",
              "parent_uuid": "7c2852d9-ae76-4f23-8acf-88fb05520bd5",
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
              "uuid": "2e2018fb-d6ed-4ac3-be3f-681fda985352",
              "parent_uuid": "7c2852d9-ae76-4f23-8acf-88fb05520bd5",
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
          "uuid": "4fbbc182-7a09-4e90-b544-8c533c690b86",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "c55d1d8b-f677-4a85-82b7-504cdb226f30",
              "parent_uuid": "4fbbc182-7a09-4e90-b544-8c533c690b86",
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
              "uuid": "8ba61401-e967-4458-8e57-bb55813478ad",
              "parent_uuid": "4fbbc182-7a09-4e90-b544-8c533c690b86",
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
              "uuid": "cc8e06e6-00dc-4ba4-a120-7bb53d92a8a9",
              "parent_uuid": "4fbbc182-7a09-4e90-b544-8c533c690b86",
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
              "uuid": "8d1a87f7-1d8f-4a02-a4b7-22775fb0ed54",
              "parent_uuid": "4fbbc182-7a09-4e90-b544-8c533c690b86",
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
          "uuid": "a702daf2-5a20-48cd-b731-430d488055a1",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eded6f06-e47e-4bb8-9af4-4d6e634898fe",
              "parent_uuid": "a702daf2-5a20-48cd-b731-430d488055a1",
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
              "uuid": "bfcdb9d4-e324-4ffa-8592-dfb9fdde44e6",
              "parent_uuid": "a702daf2-5a20-48cd-b731-430d488055a1",
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
              "uuid": "6bc2a6b5-b504-4c47-90dc-4c8d8b9873ce",
              "parent_uuid": "a702daf2-5a20-48cd-b731-430d488055a1",
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
              "uuid": "4b9e8385-0f2e-4119-b6f7-8960b8d85f98",
              "parent_uuid": "a702daf2-5a20-48cd-b731-430d488055a1",
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
              "uuid": "fb7cd552-b408-434b-80ee-3ec8dead820a",
              "parent_uuid": "a702daf2-5a20-48cd-b731-430d488055a1",
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
              "uuid": "170e9205-d219-4791-810a-ff584bcfb7c7",
              "parent_uuid": "a702daf2-5a20-48cd-b731-430d488055a1",
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
          "uuid": "dcc28581-828a-4185-9e6e-cbf23244965c",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "21e12907-9aec-4682-a698-106ae8abbbd8",
              "parent_uuid": "dcc28581-828a-4185-9e6e-cbf23244965c",
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
          "uuid": "8c0366e9-1b84-4b3a-8936-27ebb25489ef",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f30d65f-d2de-4eaf-be1d-aebd5587cb90",
              "parent_uuid": "8c0366e9-1b84-4b3a-8936-27ebb25489ef",
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
              "uuid": "3ccd03d2-537f-4131-9db7-ba99541b5dc9",
              "parent_uuid": "8c0366e9-1b84-4b3a-8936-27ebb25489ef",
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
              "uuid": "6de1d5fc-69e0-401b-9456-03608e75cc61",
              "parent_uuid": "8c0366e9-1b84-4b3a-8936-27ebb25489ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "31a34c45-4dcd-4c01-9896-78ad70ed8f7a",
                  "parent_uuid": "6de1d5fc-69e0-401b-9456-03608e75cc61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39f8cb72-1c1c-42d4-9fac-066123ec7c4e",
              "parent_uuid": "8c0366e9-1b84-4b3a-8936-27ebb25489ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "30590620-3bc7-40c6-b074-49bc8f159654",
                  "parent_uuid": "39f8cb72-1c1c-42d4-9fac-066123ec7c4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8908fe72-2c9c-4430-b1aa-e2963e5b6f52",
              "parent_uuid": "8c0366e9-1b84-4b3a-8936-27ebb25489ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a7a349fe-ce6c-4eed-b02a-935395304bb2",
                  "parent_uuid": "8908fe72-2c9c-4430-b1aa-e2963e5b6f52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50d0365a-e639-4d1d-95f9-92ccfe7e490c",
              "parent_uuid": "8c0366e9-1b84-4b3a-8936-27ebb25489ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3ee69736-4066-4726-b07f-635cbee77bc5",
                  "parent_uuid": "50d0365a-e639-4d1d-95f9-92ccfe7e490c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fbf872f8-4071-4398-8590-6d7a0d2dae47",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e3a2db44-426a-4b82-a865-2e34a28cdf2d",
              "parent_uuid": "fbf872f8-4071-4398-8590-6d7a0d2dae47",
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
              "uuid": "6d4f4f50-75b1-406f-afd3-4081253c5246",
              "parent_uuid": "fbf872f8-4071-4398-8590-6d7a0d2dae47",
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
              "uuid": "a45b13b7-07b5-43be-ad63-5261a2b27797",
              "parent_uuid": "fbf872f8-4071-4398-8590-6d7a0d2dae47",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6d2bd621-8501-41bd-bfa7-510af74298bb",
                  "parent_uuid": "a45b13b7-07b5-43be-ad63-5261a2b27797",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e59c20b4-2b53-41b3-b2ed-b86049ac40a1",
              "parent_uuid": "fbf872f8-4071-4398-8590-6d7a0d2dae47",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4bfdfe97-b298-4f8b-b369-e096cb97bd23",
                  "parent_uuid": "e59c20b4-2b53-41b3-b2ed-b86049ac40a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d232dd3e-3420-4fd5-b5f4-df5e08f186e7",
              "parent_uuid": "fbf872f8-4071-4398-8590-6d7a0d2dae47",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4f383eda-c489-425e-b998-9a6c5101997e",
                  "parent_uuid": "d232dd3e-3420-4fd5-b5f4-df5e08f186e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1fea48bb-4f1b-4d0a-b9db-d9fecfdbf3c8",
              "parent_uuid": "fbf872f8-4071-4398-8590-6d7a0d2dae47",
              "tagName": "td",
              "properties": [
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
                  "uuid": "30cf6df8-4969-4c69-afc1-634e93e2f19c",
                  "parent_uuid": "1fea48bb-4f1b-4d0a-b9db-d9fecfdbf3c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a61f664-d62c-4de5-a8a7-1e417b626667",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0bc7884a-9462-42f8-8634-14d936deb40d",
              "parent_uuid": "8a61f664-d62c-4de5-a8a7-1e417b626667",
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
              "uuid": "1a985cab-00b3-4cbb-8aca-04fcbe586bb5",
              "parent_uuid": "8a61f664-d62c-4de5-a8a7-1e417b626667",
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
              "uuid": "85915146-fc0d-4837-a7ad-2edc26fd695e",
              "parent_uuid": "8a61f664-d62c-4de5-a8a7-1e417b626667",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bdd40772-2d0d-422c-9767-5587258e4e6f",
                  "parent_uuid": "85915146-fc0d-4837-a7ad-2edc26fd695e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3186a959-93c6-4436-881f-9542dac6859d",
              "parent_uuid": "8a61f664-d62c-4de5-a8a7-1e417b626667",
              "tagName": "td",
              "properties": [
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
                  "uuid": "410b4e73-74b0-464b-818e-78be05c9d625",
                  "parent_uuid": "3186a959-93c6-4436-881f-9542dac6859d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81d6263f-fd39-45c5-9490-de951911ec8f",
              "parent_uuid": "8a61f664-d62c-4de5-a8a7-1e417b626667",
              "tagName": "td",
              "properties": [
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
                  "uuid": "88705cb9-4680-40cc-9a67-874c07e2985b",
                  "parent_uuid": "81d6263f-fd39-45c5-9490-de951911ec8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f573dcda-482a-44a6-b7dc-e28af1530dfe",
              "parent_uuid": "8a61f664-d62c-4de5-a8a7-1e417b626667",
              "tagName": "td",
              "properties": [
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
                  "uuid": "03c4d2ba-64d4-4009-b646-2d13633d8d64",
                  "parent_uuid": "f573dcda-482a-44a6-b7dc-e28af1530dfe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4690a74a-bffa-4d53-af9c-5dc9badaa697",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59ace68a-1032-49c5-97ab-0cbe5672e856",
              "parent_uuid": "4690a74a-bffa-4d53-af9c-5dc9badaa697",
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
              "uuid": "249b8cf5-f4f1-4f70-814c-a1347a196c18",
              "parent_uuid": "4690a74a-bffa-4d53-af9c-5dc9badaa697",
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
              "uuid": "a95312e8-9ae8-4d03-ab80-5bb235ed79d5",
              "parent_uuid": "4690a74a-bffa-4d53-af9c-5dc9badaa697",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b6745ad2-8820-41a9-ac15-14fc32c1c159",
                  "parent_uuid": "a95312e8-9ae8-4d03-ab80-5bb235ed79d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b672ccb-b1d5-4a51-8d11-de27dc50f2b7",
              "parent_uuid": "4690a74a-bffa-4d53-af9c-5dc9badaa697",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c901ba60-bb23-45ff-b2f8-373877654b5c",
                  "parent_uuid": "1b672ccb-b1d5-4a51-8d11-de27dc50f2b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5282e50-79c9-4292-a880-4fecc3c2732e",
              "parent_uuid": "4690a74a-bffa-4d53-af9c-5dc9badaa697",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0d6adb4d-7bf4-4cad-a1d7-c5a02412b5de",
                  "parent_uuid": "b5282e50-79c9-4292-a880-4fecc3c2732e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a046029-4dbf-4735-b4bc-799a0ad3be6c",
              "parent_uuid": "4690a74a-bffa-4d53-af9c-5dc9badaa697",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6ed4ac0f-bda8-4508-b6ea-e66e87beebdc",
                  "parent_uuid": "0a046029-4dbf-4735-b4bc-799a0ad3be6c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "69e1056e-6a4a-4ffe-85d3-831b9c434d50",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50811b09-dcf8-4f14-a531-de347a69c20e",
              "parent_uuid": "69e1056e-6a4a-4ffe-85d3-831b9c434d50",
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
              "uuid": "e8e73b99-54e0-4cf2-836e-f2ffcbbdb29d",
              "parent_uuid": "69e1056e-6a4a-4ffe-85d3-831b9c434d50",
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
              "uuid": "d217c440-73d9-4dd7-b5a4-d3490c429ee2",
              "parent_uuid": "69e1056e-6a4a-4ffe-85d3-831b9c434d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e5300d47-3997-430a-845d-5798e3b15898",
                  "parent_uuid": "d217c440-73d9-4dd7-b5a4-d3490c429ee2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "489aeff8-756a-4d12-877d-a39d70812f3c",
              "parent_uuid": "69e1056e-6a4a-4ffe-85d3-831b9c434d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5bc44a60-cd78-4be1-bf9f-2fa809d212ee",
                  "parent_uuid": "489aeff8-756a-4d12-877d-a39d70812f3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61b64cc1-3c4a-4eb4-bdcf-c828796ef5ed",
              "parent_uuid": "69e1056e-6a4a-4ffe-85d3-831b9c434d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a6982141-b387-44ae-9a5f-b603873421eb",
                  "parent_uuid": "61b64cc1-3c4a-4eb4-bdcf-c828796ef5ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecbac531-5089-4954-b686-636c8741a3b5",
              "parent_uuid": "69e1056e-6a4a-4ffe-85d3-831b9c434d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bea2c081-ee99-41a5-9601-f8e6e02cd4e0",
                  "parent_uuid": "ecbac531-5089-4954-b686-636c8741a3b5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f126f544-9554-4137-a293-96faf571adb7",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e6b2b47-b8a0-4f53-90f0-803f1e21d2fe",
              "parent_uuid": "f126f544-9554-4137-a293-96faf571adb7",
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
              "uuid": "6c58c4f3-ab24-4c31-9f58-b4f76e234582",
              "parent_uuid": "f126f544-9554-4137-a293-96faf571adb7",
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
              "uuid": "31c9f88a-8a00-4b41-a900-7cc2ccd99844",
              "parent_uuid": "f126f544-9554-4137-a293-96faf571adb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f668cc9c-3103-4dfb-a124-cdf8c7b8762a",
                  "parent_uuid": "31c9f88a-8a00-4b41-a900-7cc2ccd99844",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad694e3d-0eaf-4291-bdcd-3dc75a3857f5",
              "parent_uuid": "f126f544-9554-4137-a293-96faf571adb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ffdcb1ca-8a11-45c7-9b16-714ed9159c01",
                  "parent_uuid": "ad694e3d-0eaf-4291-bdcd-3dc75a3857f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9334403-3723-497b-abca-7981e1ebf945",
              "parent_uuid": "f126f544-9554-4137-a293-96faf571adb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4ed6a3dc-7031-421a-b42a-0cca222d4d54",
                  "parent_uuid": "f9334403-3723-497b-abca-7981e1ebf945",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8139fda4-d6df-4393-a335-9f2cb7765167",
              "parent_uuid": "f126f544-9554-4137-a293-96faf571adb7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b75a5d57-85a3-4e65-9ec0-ab7bcc6f611f",
                  "parent_uuid": "8139fda4-d6df-4393-a335-9f2cb7765167",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd119ea5-d706-4973-9071-898e35893480",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1c7f034-38f4-4147-ac39-436c24fca2e4",
              "parent_uuid": "fd119ea5-d706-4973-9071-898e35893480",
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
              "uuid": "96c94a76-4a96-4bb0-9776-e9fd5a8566b3",
              "parent_uuid": "fd119ea5-d706-4973-9071-898e35893480",
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
              "uuid": "eed23658-d495-4320-8df0-a421936f1d44",
              "parent_uuid": "fd119ea5-d706-4973-9071-898e35893480",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fc65e604-6366-45a9-a156-ca66f8bcbbe5",
                  "parent_uuid": "eed23658-d495-4320-8df0-a421936f1d44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75b0f099-7168-4e34-9acd-3ef23ea42c9b",
              "parent_uuid": "fd119ea5-d706-4973-9071-898e35893480",
              "tagName": "td",
              "properties": [
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
                  "uuid": "50554290-9ffc-4e02-b160-8014c58f05f7",
                  "parent_uuid": "75b0f099-7168-4e34-9acd-3ef23ea42c9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8514483a-d926-4102-8662-e02363402339",
              "parent_uuid": "fd119ea5-d706-4973-9071-898e35893480",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7a23413f-8c9a-4b16-9a43-81ec99388e10",
                  "parent_uuid": "8514483a-d926-4102-8662-e02363402339",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "785a7b92-b482-4bb2-88ff-5acbb4e73507",
              "parent_uuid": "fd119ea5-d706-4973-9071-898e35893480",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5fe25a9a-b30e-4d8e-8daf-578f9bf5f482",
                  "parent_uuid": "785a7b92-b482-4bb2-88ff-5acbb4e73507",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d5329c21-3da0-4883-ac11-f9f473352f7e",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dbbc2485-a98f-4c1c-9aeb-4497aca85d72",
              "parent_uuid": "d5329c21-3da0-4883-ac11-f9f473352f7e",
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
              "uuid": "059d6c6c-0b33-4417-8e5f-1777dbc6db32",
              "parent_uuid": "d5329c21-3da0-4883-ac11-f9f473352f7e",
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
              "uuid": "318262f2-655d-4373-bfa1-24ca0db830fc",
              "parent_uuid": "d5329c21-3da0-4883-ac11-f9f473352f7e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c2aafbe4-84be-44f9-9e4e-4dc1ab1caeb7",
                  "parent_uuid": "318262f2-655d-4373-bfa1-24ca0db830fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2617437-8d93-40a2-98cf-cacadb953e44",
              "parent_uuid": "d5329c21-3da0-4883-ac11-f9f473352f7e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5cd9d398-e794-4d62-ada7-8ab1f9b00d35",
                  "parent_uuid": "f2617437-8d93-40a2-98cf-cacadb953e44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b52e6094-1054-4952-bdac-a246ed7e3943",
              "parent_uuid": "d5329c21-3da0-4883-ac11-f9f473352f7e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5e0a43a7-d969-4eec-b4e5-909e7387ec5d",
                  "parent_uuid": "b52e6094-1054-4952-bdac-a246ed7e3943",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f6bfa37-79d1-44b8-97a4-cfe4b76f01fe",
              "parent_uuid": "d5329c21-3da0-4883-ac11-f9f473352f7e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e19df8e0-6768-47f0-ad7b-b75b709110c4",
                  "parent_uuid": "4f6bfa37-79d1-44b8-97a4-cfe4b76f01fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e56c824-ce88-483c-b116-abe52ba66cbf",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4698bd7b-da0e-47ec-9b2f-0d7b73809f3b",
              "parent_uuid": "7e56c824-ce88-483c-b116-abe52ba66cbf",
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
              "uuid": "9197623b-e6c7-44bb-acf7-fd4dc60def04",
              "parent_uuid": "7e56c824-ce88-483c-b116-abe52ba66cbf",
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
              "uuid": "c2a7f5e0-9151-4738-a5eb-d9f83e67fa7a",
              "parent_uuid": "7e56c824-ce88-483c-b116-abe52ba66cbf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9362668e-da79-425f-b61d-acf5d2e8894b",
                  "parent_uuid": "c2a7f5e0-9151-4738-a5eb-d9f83e67fa7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a703295-c099-491a-920f-9baf430dd8f5",
              "parent_uuid": "7e56c824-ce88-483c-b116-abe52ba66cbf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c5cc37c-4928-47d9-933c-1d57c5ce1d24",
                  "parent_uuid": "4a703295-c099-491a-920f-9baf430dd8f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a622df97-3e6d-4e92-95b3-f53417397a47",
              "parent_uuid": "7e56c824-ce88-483c-b116-abe52ba66cbf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3e646c83-c93a-4301-ab71-2f10b92c478a",
                  "parent_uuid": "a622df97-3e6d-4e92-95b3-f53417397a47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94a57615-c681-484b-a276-9d30e8f0792f",
              "parent_uuid": "7e56c824-ce88-483c-b116-abe52ba66cbf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2625670c-4048-4974-96e0-b503d9d99e97",
                  "parent_uuid": "94a57615-c681-484b-a276-9d30e8f0792f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "27e64a98-ff6d-4514-8ff1-81d7e0206252",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32feb86d-3932-462b-bdc2-bb8a41d9e2f2",
              "parent_uuid": "27e64a98-ff6d-4514-8ff1-81d7e0206252",
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
              "uuid": "b0351996-57bc-4278-a9ee-12d4c7e8ca67",
              "parent_uuid": "27e64a98-ff6d-4514-8ff1-81d7e0206252",
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
              "uuid": "6a334614-7d02-49b5-a78f-13f89871042a",
              "parent_uuid": "27e64a98-ff6d-4514-8ff1-81d7e0206252",
              "tagName": "td",
              "properties": [
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
                  "uuid": "03da14c2-cf47-4e70-b6ca-5e7a94a21463",
                  "parent_uuid": "6a334614-7d02-49b5-a78f-13f89871042a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49fc4d31-b0e8-4a2d-9be3-168df02c4121",
              "parent_uuid": "27e64a98-ff6d-4514-8ff1-81d7e0206252",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5adae5a3-214b-47bd-a8f8-4db35d1a7fc4",
                  "parent_uuid": "49fc4d31-b0e8-4a2d-9be3-168df02c4121",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76ef6237-5b8f-451e-a509-e7f61e7fd41a",
              "parent_uuid": "27e64a98-ff6d-4514-8ff1-81d7e0206252",
              "tagName": "td",
              "properties": [
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
                  "uuid": "88d80e19-39c0-4de0-b5c7-a070c4e80ab8",
                  "parent_uuid": "76ef6237-5b8f-451e-a509-e7f61e7fd41a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9067eea8-e596-4b44-b6bd-383d6405f49d",
              "parent_uuid": "27e64a98-ff6d-4514-8ff1-81d7e0206252",
              "tagName": "td",
              "properties": [
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
                  "uuid": "840a216c-7f07-4248-bc28-1f1964f12987",
                  "parent_uuid": "9067eea8-e596-4b44-b6bd-383d6405f49d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7ce21f01-b434-499f-b63c-e4c73672bdc4",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d80f6c34-e359-465b-9379-d22e57ec87ba",
              "parent_uuid": "7ce21f01-b434-499f-b63c-e4c73672bdc4",
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
              "uuid": "8cd3e83c-d8cf-4056-9d58-9c13d4efb161",
              "parent_uuid": "7ce21f01-b434-499f-b63c-e4c73672bdc4",
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
              "uuid": "12098c3e-97c2-4403-adcf-b53f5a3af970",
              "parent_uuid": "7ce21f01-b434-499f-b63c-e4c73672bdc4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f8724a1a-ef93-429c-ac14-fe75099e9ce3",
                  "parent_uuid": "12098c3e-97c2-4403-adcf-b53f5a3af970",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71b4428d-28a1-47ea-a1a0-6d20b038830f",
              "parent_uuid": "7ce21f01-b434-499f-b63c-e4c73672bdc4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "45cfed0f-1b5a-401d-9df9-d27653236724",
                  "parent_uuid": "71b4428d-28a1-47ea-a1a0-6d20b038830f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cefc388d-b622-4508-8ff3-7ceaaf6fe2e2",
              "parent_uuid": "7ce21f01-b434-499f-b63c-e4c73672bdc4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "13a0adf8-d566-43ed-bc47-ef88b324c9a2",
                  "parent_uuid": "cefc388d-b622-4508-8ff3-7ceaaf6fe2e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05aeb503-b08a-48cd-91f7-a06e28f841d9",
              "parent_uuid": "7ce21f01-b434-499f-b63c-e4c73672bdc4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d4c55f06-aa07-4c46-a25b-205de9e72175",
                  "parent_uuid": "05aeb503-b08a-48cd-91f7-a06e28f841d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "61c2ff96-52ac-45b8-a6cb-faf7f387727d",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "506d59c7-3ace-4e9c-ba6a-948ff749f01b",
              "parent_uuid": "61c2ff96-52ac-45b8-a6cb-faf7f387727d",
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
              "uuid": "e5587d17-5be3-4f9a-b490-e99ed26de3f4",
              "parent_uuid": "61c2ff96-52ac-45b8-a6cb-faf7f387727d",
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
              "uuid": "4a898cf6-892a-438e-aafc-aec3d9720aca",
              "parent_uuid": "61c2ff96-52ac-45b8-a6cb-faf7f387727d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "45bfbfa5-7d5d-4569-92ab-da1c7a4a5be6",
                  "parent_uuid": "4a898cf6-892a-438e-aafc-aec3d9720aca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b34b0bd6-0b93-4bdd-b2ea-838c727d0de4",
              "parent_uuid": "61c2ff96-52ac-45b8-a6cb-faf7f387727d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "61021661-cbd7-4e86-b1e2-f8eaa5babd12",
                  "parent_uuid": "b34b0bd6-0b93-4bdd-b2ea-838c727d0de4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6deb3d6a-7196-49ca-a66a-618553f8b823",
              "parent_uuid": "61c2ff96-52ac-45b8-a6cb-faf7f387727d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "68bdbbb8-467b-4a0c-a52d-f744a23e821a",
                  "parent_uuid": "6deb3d6a-7196-49ca-a66a-618553f8b823",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5aa1cb3b-6645-43a5-b37d-7e2fe26d03f0",
              "parent_uuid": "61c2ff96-52ac-45b8-a6cb-faf7f387727d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "01ab8bb6-129c-4fdc-8d2e-be70e37f7671",
                  "parent_uuid": "5aa1cb3b-6645-43a5-b37d-7e2fe26d03f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d492ce9-ba54-47a6-8d52-043c845f6912",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2f42717-77dc-4e04-b4c4-2d22211e734b",
              "parent_uuid": "7d492ce9-ba54-47a6-8d52-043c845f6912",
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
              "uuid": "e576b578-64ab-4a19-8cd8-7d4e88246658",
              "parent_uuid": "7d492ce9-ba54-47a6-8d52-043c845f6912",
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
              "uuid": "4693edab-2c27-4f55-a834-5807cab19d38",
              "parent_uuid": "7d492ce9-ba54-47a6-8d52-043c845f6912",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dc58fa7a-f3e9-40a3-baca-de73c29c108a",
                  "parent_uuid": "4693edab-2c27-4f55-a834-5807cab19d38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9dba3e6-c94a-49bd-97a9-0cb5d6923335",
              "parent_uuid": "7d492ce9-ba54-47a6-8d52-043c845f6912",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bf047a66-b02e-432d-b4da-1393791645f4",
                  "parent_uuid": "d9dba3e6-c94a-49bd-97a9-0cb5d6923335",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86acbd2f-a74b-4bd7-9800-a0e0efb1369d",
              "parent_uuid": "7d492ce9-ba54-47a6-8d52-043c845f6912",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c388973-1883-4ee6-b727-52f33c4a9218",
                  "parent_uuid": "86acbd2f-a74b-4bd7-9800-a0e0efb1369d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e30bffe-cb41-4349-b21e-286ded7f3124",
              "parent_uuid": "7d492ce9-ba54-47a6-8d52-043c845f6912",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d1aa678-0024-43ab-8a65-9a557a353d25",
                  "parent_uuid": "5e30bffe-cb41-4349-b21e-286ded7f3124",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c088f898-49da-40cf-9c0c-dea614008d23",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff8407eb-5c0b-4fe0-b47b-8a68e25aba50",
              "parent_uuid": "c088f898-49da-40cf-9c0c-dea614008d23",
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
              "uuid": "81684592-7ebc-4fe5-8d8d-ea794a018854",
              "parent_uuid": "c088f898-49da-40cf-9c0c-dea614008d23",
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
              "uuid": "aafe4c63-2bfa-43b3-ae12-7264af50225b",
              "parent_uuid": "c088f898-49da-40cf-9c0c-dea614008d23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2ea1c012-ec7a-4199-b302-b193ed8ab92c",
                  "parent_uuid": "aafe4c63-2bfa-43b3-ae12-7264af50225b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc23bcf2-7930-4d32-8735-e0e3459c44cf",
              "parent_uuid": "c088f898-49da-40cf-9c0c-dea614008d23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3abd3213-0bdc-4970-a47f-0dc22d61ccc4",
                  "parent_uuid": "dc23bcf2-7930-4d32-8735-e0e3459c44cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6691b3b-6a08-42ad-8bc1-665fc974cef5",
              "parent_uuid": "c088f898-49da-40cf-9c0c-dea614008d23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c50ad8c5-0faf-40b6-8a69-31b3582602ce",
                  "parent_uuid": "c6691b3b-6a08-42ad-8bc1-665fc974cef5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa754b47-9725-4e99-8019-2fdf1d0d69d3",
              "parent_uuid": "c088f898-49da-40cf-9c0c-dea614008d23",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bd927602-8ca8-4655-88e4-cfdd83120454",
                  "parent_uuid": "aa754b47-9725-4e99-8019-2fdf1d0d69d3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d2e81176-ebdd-458d-bfe5-7c48f21124ab",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "599305a7-cdb8-43ed-8150-9bc57d98ad30",
              "parent_uuid": "d2e81176-ebdd-458d-bfe5-7c48f21124ab",
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
          "uuid": "ea1ee265-1a05-4137-90f1-e92db3959153",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19b65bb8-9c86-4013-9ff7-1051f4447aeb",
              "parent_uuid": "ea1ee265-1a05-4137-90f1-e92db3959153",
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
          "uuid": "17050df1-9515-43ee-8cf5-4e79a6005799",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee1379ae-8812-42d7-9318-296cba0d137f",
              "parent_uuid": "17050df1-9515-43ee-8cf5-4e79a6005799",
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
                  "uuid": "87d8652f-ba49-42d4-af48-8cd5146ee69b",
                  "parent_uuid": "ee1379ae-8812-42d7-9318-296cba0d137f",
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
          "uuid": "471053a3-c710-4448-beec-b0bbb7e1c94b",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4c4d251-ed74-4fba-ba44-b56d0d20bd03",
              "parent_uuid": "471053a3-c710-4448-beec-b0bbb7e1c94b",
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
          "uuid": "d00285e1-9d15-44e5-b147-4003bcc24167",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0e48b443-f8a3-40de-b530-ccc8e24f98d0",
              "parent_uuid": "d00285e1-9d15-44e5-b147-4003bcc24167",
              "tagName": "td",
              "properties": [
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
          "uuid": "47375a97-89d1-4051-83ba-650e3f737cef",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "73de96be-c5c4-4c98-94bd-f11fe3112c18",
              "parent_uuid": "47375a97-89d1-4051-83ba-650e3f737cef",
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
              "uuid": "6b5278ae-6c0b-4a8a-90c6-07fa93f2fc45",
              "parent_uuid": "47375a97-89d1-4051-83ba-650e3f737cef",
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
              "uuid": "9d6747fd-70f9-4ba5-ba20-d2b62aff070e",
              "parent_uuid": "47375a97-89d1-4051-83ba-650e3f737cef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4fcc99ec-dba5-413c-9bb9-58a744010b22",
                  "parent_uuid": "9d6747fd-70f9-4ba5-ba20-d2b62aff070e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67db98e5-ff7e-4d26-93e4-613fff619df2",
              "parent_uuid": "47375a97-89d1-4051-83ba-650e3f737cef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ce625f5f-590b-4513-8bf9-981a00b5888a",
                  "parent_uuid": "67db98e5-ff7e-4d26-93e4-613fff619df2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32a840d1-c53a-4d43-b343-5770d9bef0bd",
              "parent_uuid": "47375a97-89d1-4051-83ba-650e3f737cef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dd6d01f8-f4df-4576-b22c-5fde9df7afbd",
                  "parent_uuid": "32a840d1-c53a-4d43-b343-5770d9bef0bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6417b8a-0933-4fb5-ab50-7cf168196b7e",
              "parent_uuid": "47375a97-89d1-4051-83ba-650e3f737cef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ae64d777-1ed9-4f86-872b-d63a0016fd74",
                  "parent_uuid": "f6417b8a-0933-4fb5-ab50-7cf168196b7e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5c27fdbe-e712-4b0c-b147-39b58ed6c1dd",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b4dbf47-4673-43b4-ba3b-fdce3cd938b5",
              "parent_uuid": "5c27fdbe-e712-4b0c-b147-39b58ed6c1dd",
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
              "uuid": "e3ebc3be-66db-4475-8e90-e93423418224",
              "parent_uuid": "5c27fdbe-e712-4b0c-b147-39b58ed6c1dd",
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
              "uuid": "e55f64c7-b95b-4529-8ba1-0f468f517dac",
              "parent_uuid": "5c27fdbe-e712-4b0c-b147-39b58ed6c1dd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fe6f646b-b62f-44f0-b9b1-72799cf53787",
                  "parent_uuid": "e55f64c7-b95b-4529-8ba1-0f468f517dac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39823b41-e3c7-4e06-b1a1-b30517bf3880",
              "parent_uuid": "5c27fdbe-e712-4b0c-b147-39b58ed6c1dd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8fc59a3a-4985-48ee-a0e0-3a3a6490aa1d",
                  "parent_uuid": "39823b41-e3c7-4e06-b1a1-b30517bf3880",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d464fed-50e7-4bfd-8280-3412041247db",
              "parent_uuid": "5c27fdbe-e712-4b0c-b147-39b58ed6c1dd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9a6bbea7-c9d5-491f-8019-afcba6b7258f",
                  "parent_uuid": "9d464fed-50e7-4bfd-8280-3412041247db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a451197-1f1c-4418-9f2a-64e7c43c496f",
              "parent_uuid": "5c27fdbe-e712-4b0c-b147-39b58ed6c1dd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3d4f9255-37ee-4527-98e7-ace91eb6c701",
                  "parent_uuid": "0a451197-1f1c-4418-9f2a-64e7c43c496f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aa803e3d-2c22-44cb-8805-79ec44246bb9",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ba04374-94f9-40c0-a1bf-fc524fc7a729",
              "parent_uuid": "aa803e3d-2c22-44cb-8805-79ec44246bb9",
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
              "uuid": "435a515c-bdd4-4a2a-b229-01b96fb7e53b",
              "parent_uuid": "aa803e3d-2c22-44cb-8805-79ec44246bb9",
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
              "uuid": "9e9b9366-60c5-45f9-94a0-3e710b2cd2e3",
              "parent_uuid": "aa803e3d-2c22-44cb-8805-79ec44246bb9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1c582261-6b29-402e-a62a-af9ed424d067",
                  "parent_uuid": "9e9b9366-60c5-45f9-94a0-3e710b2cd2e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "898cdf71-2a95-4900-94a2-94d90582f602",
              "parent_uuid": "aa803e3d-2c22-44cb-8805-79ec44246bb9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "042de7b3-bc1f-4b14-9d73-07de425f27c0",
                  "parent_uuid": "898cdf71-2a95-4900-94a2-94d90582f602",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e322900b-c35b-4a9e-9362-db0970134265",
              "parent_uuid": "aa803e3d-2c22-44cb-8805-79ec44246bb9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e2b5313f-3025-4027-9234-956060c25e7c",
                  "parent_uuid": "e322900b-c35b-4a9e-9362-db0970134265",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2967361-a469-4f5e-9921-b1d2467662b8",
              "parent_uuid": "aa803e3d-2c22-44cb-8805-79ec44246bb9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04938f29-d88f-4a1e-8181-d55767f22225",
                  "parent_uuid": "a2967361-a469-4f5e-9921-b1d2467662b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd90c881-f7a3-4f62-8ede-2dd5d5b73f29",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d4bf943-988e-4d4c-a284-b21264896ebb",
              "parent_uuid": "fd90c881-f7a3-4f62-8ede-2dd5d5b73f29",
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
              "uuid": "0a70d445-42c7-48b8-9646-c30d6c5e9358",
              "parent_uuid": "fd90c881-f7a3-4f62-8ede-2dd5d5b73f29",
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
              "uuid": "fc3d7910-bf28-4a70-9268-72ab7a013d3b",
              "parent_uuid": "fd90c881-f7a3-4f62-8ede-2dd5d5b73f29",
              "tagName": "td",
              "properties": [
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
                  "uuid": "63e384d3-c3b7-4d0a-b855-e6f038b03256",
                  "parent_uuid": "fc3d7910-bf28-4a70-9268-72ab7a013d3b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3530d60-5afb-45da-9f99-b4989e9e97ac",
              "parent_uuid": "fd90c881-f7a3-4f62-8ede-2dd5d5b73f29",
              "tagName": "td",
              "properties": [
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
                  "uuid": "241af2a7-0303-4324-b6af-66fc59eb2272",
                  "parent_uuid": "c3530d60-5afb-45da-9f99-b4989e9e97ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43395529-fedc-446d-a334-44086643d079",
              "parent_uuid": "fd90c881-f7a3-4f62-8ede-2dd5d5b73f29",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d117b1cf-17a4-452e-afae-4fb3ee2fb2a9",
                  "parent_uuid": "43395529-fedc-446d-a334-44086643d079",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8d80628-f53b-46d2-bc50-634b6f91cb50",
              "parent_uuid": "fd90c881-f7a3-4f62-8ede-2dd5d5b73f29",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8834a0ea-b712-4da7-9d90-48679b93f839",
                  "parent_uuid": "f8d80628-f53b-46d2-bc50-634b6f91cb50",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f29377a6-d324-4f00-a650-376676ecd248",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0afe63b0-ef45-41ae-8768-984844b50987",
              "parent_uuid": "f29377a6-d324-4f00-a650-376676ecd248",
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
          "uuid": "edf11413-4abf-464a-b607-19daa98df49e",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9628abf6-3919-4df0-aaf8-89596e45205f",
              "parent_uuid": "edf11413-4abf-464a-b607-19daa98df49e",
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
              "uuid": "aed1e4a2-e556-4310-856d-e3069e07be2f",
              "parent_uuid": "edf11413-4abf-464a-b607-19daa98df49e",
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
              "uuid": "115b5188-a97f-4e20-9d39-1fbe33cae37d",
              "parent_uuid": "edf11413-4abf-464a-b607-19daa98df49e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c6808de8-4e86-4dca-a665-a7559e6418df",
                  "parent_uuid": "115b5188-a97f-4e20-9d39-1fbe33cae37d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f854ec4f-b8b3-4e65-bbc8-f22833f2d84e",
              "parent_uuid": "edf11413-4abf-464a-b607-19daa98df49e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b1355dc8-6506-45f7-9c24-bbd04cb52258",
                  "parent_uuid": "f854ec4f-b8b3-4e65-bbc8-f22833f2d84e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d48e6114-9527-4eed-bedb-3c9f2f28d0c5",
              "parent_uuid": "edf11413-4abf-464a-b607-19daa98df49e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ad9b2c39-21b7-4d75-8642-3b2260a0f3a2",
                  "parent_uuid": "d48e6114-9527-4eed-bedb-3c9f2f28d0c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2ac34b0-2c6c-4f2b-8aea-758af8d9f769",
              "parent_uuid": "edf11413-4abf-464a-b607-19daa98df49e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bf97b9ba-6ae2-4604-a76b-dca19fa8b69e",
                  "parent_uuid": "c2ac34b0-2c6c-4f2b-8aea-758af8d9f769",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "91c7c6a4-b407-4098-a828-520261cfcc8c",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9febfec8-3622-4c0a-8e6c-d15d7c8e64c8",
              "parent_uuid": "91c7c6a4-b407-4098-a828-520261cfcc8c",
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
              "uuid": "e25f4d65-2523-421c-a5c6-2782f97ca1b4",
              "parent_uuid": "91c7c6a4-b407-4098-a828-520261cfcc8c",
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
              "uuid": "df5bdddb-6f8f-427a-b0ea-b08d608155dc",
              "parent_uuid": "91c7c6a4-b407-4098-a828-520261cfcc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a6372ca6-b74b-4dc3-a871-8c85dd59bfcd",
                  "parent_uuid": "df5bdddb-6f8f-427a-b0ea-b08d608155dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5c08e02-9579-4168-93bf-a9161a3bd5bf",
              "parent_uuid": "91c7c6a4-b407-4098-a828-520261cfcc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "37b89cc7-7158-4efc-bd03-cb0b7ca0d4ec",
                  "parent_uuid": "f5c08e02-9579-4168-93bf-a9161a3bd5bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ede267d-3b45-42ec-90b7-2eff3b94e8c6",
              "parent_uuid": "91c7c6a4-b407-4098-a828-520261cfcc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3e4ffa49-08dc-4267-94f3-0f370ccb41f2",
                  "parent_uuid": "6ede267d-3b45-42ec-90b7-2eff3b94e8c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22207ae2-7aa2-4e2f-bd29-c0ea435bd81e",
              "parent_uuid": "91c7c6a4-b407-4098-a828-520261cfcc8c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a526ace4-e142-4189-8589-7d7c10ad80bb",
                  "parent_uuid": "22207ae2-7aa2-4e2f-bd29-c0ea435bd81e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dc1e6665-2693-47e1-9341-0d5a90e3171c",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3bc1631b-c622-4258-b3c4-54f82a94b2d4",
              "parent_uuid": "dc1e6665-2693-47e1-9341-0d5a90e3171c",
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
              "uuid": "413462ee-27f3-4031-96ca-ccd237fe6726",
              "parent_uuid": "dc1e6665-2693-47e1-9341-0d5a90e3171c",
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
              "uuid": "3b0f2a70-309d-4032-b665-e75b448a939d",
              "parent_uuid": "dc1e6665-2693-47e1-9341-0d5a90e3171c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "66daf09a-8b3c-4240-8c40-cf77b6e87dc4",
                  "parent_uuid": "3b0f2a70-309d-4032-b665-e75b448a939d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b9b9978-24cb-49f8-9e05-58805de45216",
              "parent_uuid": "dc1e6665-2693-47e1-9341-0d5a90e3171c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2b1c2f8c-ff4b-4d9d-b52a-f0eb73c0156b",
                  "parent_uuid": "8b9b9978-24cb-49f8-9e05-58805de45216",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62cda5f8-b775-47c3-bcec-2843ace7a51a",
              "parent_uuid": "dc1e6665-2693-47e1-9341-0d5a90e3171c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a19a8992-f2de-41dc-98f7-0fc98987f123",
                  "parent_uuid": "62cda5f8-b775-47c3-bcec-2843ace7a51a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8cdce133-0961-40c5-ae43-0a43a0cb7471",
              "parent_uuid": "dc1e6665-2693-47e1-9341-0d5a90e3171c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8f742003-0c15-4d8d-93ae-c9fa2e4a0aef",
                  "parent_uuid": "8cdce133-0961-40c5-ae43-0a43a0cb7471",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "07449a23-dce4-40c5-a3e8-e0e1cafa1a65",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7e75b0a-b293-40c2-bcf1-28a11291b3aa",
              "parent_uuid": "07449a23-dce4-40c5-a3e8-e0e1cafa1a65",
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
              "uuid": "2cb5cf04-3d21-4aa8-9337-ec310cbb0ae5",
              "parent_uuid": "07449a23-dce4-40c5-a3e8-e0e1cafa1a65",
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
              "uuid": "ee699c55-24f6-425e-9d1c-83944f853d0c",
              "parent_uuid": "07449a23-dce4-40c5-a3e8-e0e1cafa1a65",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bae6d6b8-9f5c-44de-8fff-9dc8c0f57e15",
                  "parent_uuid": "ee699c55-24f6-425e-9d1c-83944f853d0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92318258-bb0c-45a6-b031-2ce65155e838",
              "parent_uuid": "07449a23-dce4-40c5-a3e8-e0e1cafa1a65",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6f217dbc-7838-4ab9-b612-3aed11d7e9cd",
                  "parent_uuid": "92318258-bb0c-45a6-b031-2ce65155e838",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3bb2afd9-c19f-4a29-bd35-f930b08ba8e3",
              "parent_uuid": "07449a23-dce4-40c5-a3e8-e0e1cafa1a65",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4bb63459-386c-4919-acf0-1d23815e4886",
                  "parent_uuid": "3bb2afd9-c19f-4a29-bd35-f930b08ba8e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "854faf23-7b22-4f7c-856f-18a3ffc4151e",
              "parent_uuid": "07449a23-dce4-40c5-a3e8-e0e1cafa1a65",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2d428352-3466-45a6-9e77-beaf664cc786",
                  "parent_uuid": "854faf23-7b22-4f7c-856f-18a3ffc4151e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "33e8dd8d-10bd-444a-859b-d2583ad49772",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d694f941-a606-4b09-a438-556c5ac70e36",
              "parent_uuid": "33e8dd8d-10bd-444a-859b-d2583ad49772",
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
          "uuid": "d911a08e-58c6-488c-99be-23e181193c9e",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c116adf-866d-4318-ae04-a3357609309d",
              "parent_uuid": "d911a08e-58c6-488c-99be-23e181193c9e",
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
          "uuid": "4bd6c4d2-1118-4184-b7ac-7f55ef63b4ad",
          "parent_uuid": "38ea093e-0cef-42eb-bc6f-5b9aceae9d97",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8cb1e814-2023-4557-87d0-3ab6d751e843",
              "parent_uuid": "4bd6c4d2-1118-4184-b7ac-7f55ef63b4ad",
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
                  "uuid": "b6d1d293-7a83-4ed4-a609-cb30fa8df280",
                  "parent_uuid": "8cb1e814-2023-4557-87d0-3ab6d751e843",
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


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
  "uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "8a84f58f-7a48-48fa-807c-ef2c7a0f44c1",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "ba648efc-ae41-4774-a50d-e9807583f267",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "f0731ba3-9726-4b84-bf3a-eed59fbe36ab",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "b6cc8cd3-6c1f-48a0-8753-3c6076bd6d18",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "90afaa68-42f8-427e-b3ea-66a3d4459f70",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "27519cf2-d4da-4967-9981-592d6803a872",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "efbbd5f7-5e8f-46b3-8861-b4452a47567d",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
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
      "uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
      "parent_uuid": "dd9763c0-ca98-4e1c-8b3a-de6d5f4ac7f4",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "d9ba6d67-046a-46a1-8ea8-b1e724755579",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "70d9766c-75b1-424b-977d-1bf6be4a0315",
              "parent_uuid": "d9ba6d67-046a-46a1-8ea8-b1e724755579",
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
              "uuid": "659eebba-62ce-43ac-a5e5-6d2b10c593eb",
              "parent_uuid": "d9ba6d67-046a-46a1-8ea8-b1e724755579",
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
              "uuid": "1c306325-ab77-4b74-a128-43ae05f2e340",
              "parent_uuid": "d9ba6d67-046a-46a1-8ea8-b1e724755579",
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
              "uuid": "dd23ce7f-e9ad-4e96-972a-08310581a7f5",
              "parent_uuid": "d9ba6d67-046a-46a1-8ea8-b1e724755579",
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
          "uuid": "2c0f4c3f-3738-4e56-a6fb-9bbf0ab5952f",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a364ab00-f2bd-4428-8457-f04f25952c60",
              "parent_uuid": "2c0f4c3f-3738-4e56-a6fb-9bbf0ab5952f",
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
              "uuid": "d8990545-c1e8-4d82-aa41-b3383d4cb55a",
              "parent_uuid": "2c0f4c3f-3738-4e56-a6fb-9bbf0ab5952f",
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
              "uuid": "e9ebed06-9825-4230-9461-5b5dfd30c956",
              "parent_uuid": "2c0f4c3f-3738-4e56-a6fb-9bbf0ab5952f",
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
              "uuid": "df81bd8e-53c9-439f-b67a-98feb940e025",
              "parent_uuid": "2c0f4c3f-3738-4e56-a6fb-9bbf0ab5952f",
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
          "uuid": "c3bdf9c0-82b7-4650-9b21-5fac697d6f52",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ae3549d-88c9-49af-8ab1-f6d7a8bb9168",
              "parent_uuid": "c3bdf9c0-82b7-4650-9b21-5fac697d6f52",
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
              "uuid": "66f6d340-c6f8-4e08-adc8-dc16e083e538",
              "parent_uuid": "c3bdf9c0-82b7-4650-9b21-5fac697d6f52",
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
              "uuid": "45c4a919-8ed8-430b-ba4a-398c38f6da98",
              "parent_uuid": "c3bdf9c0-82b7-4650-9b21-5fac697d6f52",
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
              "uuid": "8c48be9b-6c0a-4509-8eca-f4b278ac5dfb",
              "parent_uuid": "c3bdf9c0-82b7-4650-9b21-5fac697d6f52",
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
              "uuid": "cb7e83bb-91d9-446d-92c4-c0aec2c90498",
              "parent_uuid": "c3bdf9c0-82b7-4650-9b21-5fac697d6f52",
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
              "uuid": "850aefa2-aaf9-4e17-a493-3b1db809a380",
              "parent_uuid": "c3bdf9c0-82b7-4650-9b21-5fac697d6f52",
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
          "uuid": "dc00a2ff-e5d1-455c-ba81-de3543b7d2df",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8d1119d9-50bb-4cc6-a8c9-1c929d8efc32",
              "parent_uuid": "dc00a2ff-e5d1-455c-ba81-de3543b7d2df",
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
          "uuid": "26ba1d44-9c75-4703-b338-01bcbb488f7d",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50506b5d-3710-4760-b8ad-bd5f697fa4eb",
              "parent_uuid": "26ba1d44-9c75-4703-b338-01bcbb488f7d",
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
              "uuid": "7e52a5da-fefd-47f0-96eb-206019717c77",
              "parent_uuid": "26ba1d44-9c75-4703-b338-01bcbb488f7d",
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
              "uuid": "27bd8ed6-eb8d-4544-a681-e5cce27537bc",
              "parent_uuid": "26ba1d44-9c75-4703-b338-01bcbb488f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09498821-65ef-4cdd-96cb-f1d31cbe5252",
                  "parent_uuid": "27bd8ed6-eb8d-4544-a681-e5cce27537bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "508f4d8d-6e11-4ae2-b426-1b7fd11a429f",
              "parent_uuid": "26ba1d44-9c75-4703-b338-01bcbb488f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d17050ff-e295-46a1-9abb-d8966cf40687",
                  "parent_uuid": "508f4d8d-6e11-4ae2-b426-1b7fd11a429f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ada45f25-ba81-4e29-9e82-a0185e939db1",
              "parent_uuid": "26ba1d44-9c75-4703-b338-01bcbb488f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e24e645-ed86-4790-898b-d46af1f1596c",
                  "parent_uuid": "ada45f25-ba81-4e29-9e82-a0185e939db1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb34ae63-6c0d-42a6-9834-c6b09644ef3c",
              "parent_uuid": "26ba1d44-9c75-4703-b338-01bcbb488f7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8966f92-6d6f-4e3b-b1a3-4147993a0a96",
                  "parent_uuid": "cb34ae63-6c0d-42a6-9834-c6b09644ef3c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b93b1568-f0d2-4922-8bc5-fb07ec824385",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fba50f14-a298-45b8-9c19-d598cc9cfb06",
              "parent_uuid": "b93b1568-f0d2-4922-8bc5-fb07ec824385",
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
              "uuid": "2d3b36b0-7875-434b-b7da-af81bf605ae9",
              "parent_uuid": "b93b1568-f0d2-4922-8bc5-fb07ec824385",
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
              "uuid": "96507f4e-40f0-4eef-ba89-a16055b71082",
              "parent_uuid": "b93b1568-f0d2-4922-8bc5-fb07ec824385",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3503c394-83b1-4a4c-8d4f-9ccc4b9956ce",
                  "parent_uuid": "96507f4e-40f0-4eef-ba89-a16055b71082",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e6e5d85-7138-4523-bb14-ab7fce5b2472",
              "parent_uuid": "b93b1568-f0d2-4922-8bc5-fb07ec824385",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2017c1f0-afdb-42ec-8c11-46d36ec52680",
                  "parent_uuid": "8e6e5d85-7138-4523-bb14-ab7fce5b2472",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4183119-481c-4b72-b201-dbf504265714",
              "parent_uuid": "b93b1568-f0d2-4922-8bc5-fb07ec824385",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c714075b-e9bf-42ab-9092-fe509efb1410",
                  "parent_uuid": "c4183119-481c-4b72-b201-dbf504265714",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f96c3755-89cd-466d-93f7-d00e85fdf05e",
              "parent_uuid": "b93b1568-f0d2-4922-8bc5-fb07ec824385",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e481d38d-3e98-4643-af91-be9fbd9fd636",
                  "parent_uuid": "f96c3755-89cd-466d-93f7-d00e85fdf05e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79b01a60-cda4-4b41-aec0-081b2bfed196",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db656c5f-42e0-49d1-a7ab-71d16301b66b",
              "parent_uuid": "79b01a60-cda4-4b41-aec0-081b2bfed196",
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
              "uuid": "73374a0f-a6c1-496d-9079-3ce5fdc171f8",
              "parent_uuid": "79b01a60-cda4-4b41-aec0-081b2bfed196",
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
              "uuid": "a27e0ddb-00d5-400c-9a40-11a2d8e5a6cd",
              "parent_uuid": "79b01a60-cda4-4b41-aec0-081b2bfed196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "168a11cf-c427-4c7e-9c72-b06c5c173716",
                  "parent_uuid": "a27e0ddb-00d5-400c-9a40-11a2d8e5a6cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e596c3cd-bdd0-408f-9787-b4306bcd0a54",
              "parent_uuid": "79b01a60-cda4-4b41-aec0-081b2bfed196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24710f45-991b-4fec-b1ca-f8bbcc2b6936",
                  "parent_uuid": "e596c3cd-bdd0-408f-9787-b4306bcd0a54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f95ae293-8ca2-421b-af7b-82a7dc6df69e",
              "parent_uuid": "79b01a60-cda4-4b41-aec0-081b2bfed196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c5bf034-3e49-4a23-b9c6-9c4851071707",
                  "parent_uuid": "f95ae293-8ca2-421b-af7b-82a7dc6df69e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47dc3c20-bfb6-44d2-8845-232a6ae8c0c1",
              "parent_uuid": "79b01a60-cda4-4b41-aec0-081b2bfed196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc4ef0e6-2cf4-4bc6-b258-23a5eee445a0",
                  "parent_uuid": "47dc3c20-bfb6-44d2-8845-232a6ae8c0c1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "85c05cfa-c928-48fe-be6f-49451a6f6b51",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb3e3413-c60d-4105-ba5e-66752d936d7b",
              "parent_uuid": "85c05cfa-c928-48fe-be6f-49451a6f6b51",
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
              "uuid": "0a468afd-5b3e-4284-babb-0a67ad30dcef",
              "parent_uuid": "85c05cfa-c928-48fe-be6f-49451a6f6b51",
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
              "uuid": "08df557e-51a3-47ef-ba8f-9dced46d38f8",
              "parent_uuid": "85c05cfa-c928-48fe-be6f-49451a6f6b51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8ac6c1d-06f0-4520-bb09-6e473a1f3485",
                  "parent_uuid": "08df557e-51a3-47ef-ba8f-9dced46d38f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f18617d6-7430-43b7-9f93-7bc73d4b8804",
              "parent_uuid": "85c05cfa-c928-48fe-be6f-49451a6f6b51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fcf23ff-9d48-490f-85bf-1c5bffe1355a",
                  "parent_uuid": "f18617d6-7430-43b7-9f93-7bc73d4b8804",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afb27cb0-7b5f-4264-b4b1-6cceba380b37",
              "parent_uuid": "85c05cfa-c928-48fe-be6f-49451a6f6b51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "289a691e-2e89-45c5-a597-8a3f174ea32c",
                  "parent_uuid": "afb27cb0-7b5f-4264-b4b1-6cceba380b37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d942055e-6fa3-47fe-8397-6fff7a408ef6",
              "parent_uuid": "85c05cfa-c928-48fe-be6f-49451a6f6b51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65d35d96-317f-49ba-8d5e-fea2b2d93124",
                  "parent_uuid": "d942055e-6fa3-47fe-8397-6fff7a408ef6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "36ca21e4-5569-4b9b-8c01-9db9102d6763",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d41bfd28-8a75-462d-bdb4-e7439472dfdd",
              "parent_uuid": "36ca21e4-5569-4b9b-8c01-9db9102d6763",
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
          "uuid": "ec7211d4-1c88-4090-b7f3-3047c07e0aa0",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7bd38b5-78dc-43f8-8aed-3d0e15f5292d",
              "parent_uuid": "ec7211d4-1c88-4090-b7f3-3047c07e0aa0",
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
              "uuid": "f51514a7-e022-4a45-87fc-ed149789dbc6",
              "parent_uuid": "ec7211d4-1c88-4090-b7f3-3047c07e0aa0",
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
              "uuid": "c4dd8bee-30bf-4cd1-945c-4476e7354e50",
              "parent_uuid": "ec7211d4-1c88-4090-b7f3-3047c07e0aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a6d4e3d-946c-4298-9ed9-68e9bd298289",
                  "parent_uuid": "c4dd8bee-30bf-4cd1-945c-4476e7354e50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4884a9c2-7790-4c43-b8e6-033f995d4f97",
              "parent_uuid": "ec7211d4-1c88-4090-b7f3-3047c07e0aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c8876d1-f87e-4f4e-99be-43e3495b221a",
                  "parent_uuid": "4884a9c2-7790-4c43-b8e6-033f995d4f97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2a66acd-dbfe-47b0-aa2e-288f588ef141",
              "parent_uuid": "ec7211d4-1c88-4090-b7f3-3047c07e0aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fd67719-016f-404f-a1fe-3cfa54c6f9d2",
                  "parent_uuid": "a2a66acd-dbfe-47b0-aa2e-288f588ef141",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbcd7d79-f1f5-4d9d-bcf0-86aa5f704af9",
              "parent_uuid": "ec7211d4-1c88-4090-b7f3-3047c07e0aa0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd283fa0-f582-4903-bd75-234075d5d1ee",
                  "parent_uuid": "dbcd7d79-f1f5-4d9d-bcf0-86aa5f704af9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "904c3bd2-319e-46b4-bf5e-34c56c8ef9d6",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f38dfac1-b04a-4a72-9df7-54d6d8c99d2c",
              "parent_uuid": "904c3bd2-319e-46b4-bf5e-34c56c8ef9d6",
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
              "uuid": "ee12ed3c-bb7f-41ea-ac51-4621e8852d33",
              "parent_uuid": "904c3bd2-319e-46b4-bf5e-34c56c8ef9d6",
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
              "uuid": "8b4081c8-f65b-4f68-81c7-8db8e069ba35",
              "parent_uuid": "904c3bd2-319e-46b4-bf5e-34c56c8ef9d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c471004f-809a-462b-8811-45080179b028",
                  "parent_uuid": "8b4081c8-f65b-4f68-81c7-8db8e069ba35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6f0cfca-d349-4374-98a9-89362cd8ce0b",
              "parent_uuid": "904c3bd2-319e-46b4-bf5e-34c56c8ef9d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42965b3b-50b4-4a99-a082-ce189fbf60fe",
                  "parent_uuid": "b6f0cfca-d349-4374-98a9-89362cd8ce0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "125f337a-7e23-480a-8022-58a2885151b1",
              "parent_uuid": "904c3bd2-319e-46b4-bf5e-34c56c8ef9d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7a712ba-4636-4661-bcc8-3d49bee289a8",
                  "parent_uuid": "125f337a-7e23-480a-8022-58a2885151b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c949fa7f-8478-40e1-86dc-b20ecdf30b48",
              "parent_uuid": "904c3bd2-319e-46b4-bf5e-34c56c8ef9d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42dbde09-e9f3-4545-b90f-7e390a9c68c2",
                  "parent_uuid": "c949fa7f-8478-40e1-86dc-b20ecdf30b48",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0a8795c1-8145-4a9e-88c0-09c33402f856",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "964da5c8-0489-4798-a6b9-cabff3917898",
              "parent_uuid": "0a8795c1-8145-4a9e-88c0-09c33402f856",
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
              "uuid": "697b7456-90e9-4a40-8082-e26320314edf",
              "parent_uuid": "0a8795c1-8145-4a9e-88c0-09c33402f856",
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
              "uuid": "639ed5e3-db5b-4742-949c-59c05737a36a",
              "parent_uuid": "0a8795c1-8145-4a9e-88c0-09c33402f856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e3ccf44-c959-46da-85f2-07081c124d72",
                  "parent_uuid": "639ed5e3-db5b-4742-949c-59c05737a36a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a39080cc-434c-453f-a36d-d00f7cdacfa7",
              "parent_uuid": "0a8795c1-8145-4a9e-88c0-09c33402f856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "128a2f8e-bb9c-4104-99ff-4543d248ee81",
                  "parent_uuid": "a39080cc-434c-453f-a36d-d00f7cdacfa7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d26ed49-bfa0-416b-ab91-a211083c08ae",
              "parent_uuid": "0a8795c1-8145-4a9e-88c0-09c33402f856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5205dac1-ba12-4d51-ac64-9122df256c1b",
                  "parent_uuid": "9d26ed49-bfa0-416b-ab91-a211083c08ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0770e8e3-1709-4dd5-b35e-cc3cf743b372",
              "parent_uuid": "0a8795c1-8145-4a9e-88c0-09c33402f856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21e96778-2092-4e1d-aab0-4443d1785006",
                  "parent_uuid": "0770e8e3-1709-4dd5-b35e-cc3cf743b372",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2c8dcfa0-69c2-444c-9a49-635272d8d770",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d842b29e-07fe-4d12-b266-fb4111229bad",
              "parent_uuid": "2c8dcfa0-69c2-444c-9a49-635272d8d770",
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
              "uuid": "230a1ac6-9c58-435d-8d82-8270eaf99eca",
              "parent_uuid": "2c8dcfa0-69c2-444c-9a49-635272d8d770",
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
              "uuid": "517b1ce0-0411-4e81-8929-30b97ee91345",
              "parent_uuid": "2c8dcfa0-69c2-444c-9a49-635272d8d770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33982102-6a6d-43de-a27c-42d2a0356239",
                  "parent_uuid": "517b1ce0-0411-4e81-8929-30b97ee91345",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3638038a-b5ae-49d2-bf43-bb4911bf2596",
              "parent_uuid": "2c8dcfa0-69c2-444c-9a49-635272d8d770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c4e02d8-b217-4ed8-9f3d-1a00d6bd0fb9",
                  "parent_uuid": "3638038a-b5ae-49d2-bf43-bb4911bf2596",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ba81fdc-4794-4df9-8a48-2eee3b571a2e",
              "parent_uuid": "2c8dcfa0-69c2-444c-9a49-635272d8d770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd3afdac-7db2-43b6-8d3d-a9234729f6ce",
                  "parent_uuid": "8ba81fdc-4794-4df9-8a48-2eee3b571a2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fed0188a-164d-44f0-88b9-d30fb50e9e9a",
              "parent_uuid": "2c8dcfa0-69c2-444c-9a49-635272d8d770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb6863fe-1adb-4b91-a4ce-1caf20faaab3",
                  "parent_uuid": "fed0188a-164d-44f0-88b9-d30fb50e9e9a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "082e102c-0640-4471-bed3-66b36201efa8",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b5beb6d6-6a1d-4f7c-ac3b-616dde12563a",
              "parent_uuid": "082e102c-0640-4471-bed3-66b36201efa8",
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
              "uuid": "3d1b8bb0-6064-45ab-8daf-638da8d5e1ff",
              "parent_uuid": "082e102c-0640-4471-bed3-66b36201efa8",
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
              "uuid": "2453d067-7458-40f6-919b-504b02308c77",
              "parent_uuid": "082e102c-0640-4471-bed3-66b36201efa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e8d6dce-84e8-493c-9478-eb11d6b0e992",
                  "parent_uuid": "2453d067-7458-40f6-919b-504b02308c77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03d76c36-a56d-4f3c-bcb3-1ce0d1d8364c",
              "parent_uuid": "082e102c-0640-4471-bed3-66b36201efa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6931a65f-f1b1-46ab-ada2-228a0008feac",
                  "parent_uuid": "03d76c36-a56d-4f3c-bcb3-1ce0d1d8364c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec19bd24-9af1-4b6e-a621-a1aec75e7439",
              "parent_uuid": "082e102c-0640-4471-bed3-66b36201efa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "987b1c57-5aae-4036-80e0-5a79d7ca5a97",
                  "parent_uuid": "ec19bd24-9af1-4b6e-a621-a1aec75e7439",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb86adba-7fea-41db-a0c3-b82e6325cb42",
              "parent_uuid": "082e102c-0640-4471-bed3-66b36201efa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a0f097c-5e2f-4c7b-be3f-5e58b205ece5",
                  "parent_uuid": "eb86adba-7fea-41db-a0c3-b82e6325cb42",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4422f5d6-806e-4220-92b5-e43405d4a0b4",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c91f55d-70ef-4754-b04a-6a69da166094",
              "parent_uuid": "4422f5d6-806e-4220-92b5-e43405d4a0b4",
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
              "uuid": "8579c1cc-6575-48f9-a3aa-6ddd1d3b4643",
              "parent_uuid": "4422f5d6-806e-4220-92b5-e43405d4a0b4",
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
              "uuid": "5351f724-3390-4853-bd6d-28f2f4363a6d",
              "parent_uuid": "4422f5d6-806e-4220-92b5-e43405d4a0b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02c4f691-ebca-4e95-83fe-5d75031551ac",
                  "parent_uuid": "5351f724-3390-4853-bd6d-28f2f4363a6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fc452f8-853f-40ef-8261-5ac6181537af",
              "parent_uuid": "4422f5d6-806e-4220-92b5-e43405d4a0b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0194f6dc-0d29-41f0-980a-b7e56d2600d9",
                  "parent_uuid": "6fc452f8-853f-40ef-8261-5ac6181537af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "326ec75e-04e6-4cef-a142-362ecc135106",
              "parent_uuid": "4422f5d6-806e-4220-92b5-e43405d4a0b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0378abc9-351e-449c-8544-d67cf4e75938",
                  "parent_uuid": "326ec75e-04e6-4cef-a142-362ecc135106",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "886a54db-270a-4134-ac03-90cfe2fa291e",
              "parent_uuid": "4422f5d6-806e-4220-92b5-e43405d4a0b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fedc2d4e-6032-4293-9c2b-79fef65e5317",
                  "parent_uuid": "886a54db-270a-4134-ac03-90cfe2fa291e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eef9864a-1138-476a-af4c-9d95c9a6061e",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec83be41-903f-4704-a89e-64621d0ee29c",
              "parent_uuid": "eef9864a-1138-476a-af4c-9d95c9a6061e",
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
              "uuid": "6c28ae9b-ac23-4a82-908a-f5db2b16f932",
              "parent_uuid": "eef9864a-1138-476a-af4c-9d95c9a6061e",
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
              "uuid": "1ef30ed7-b86d-4120-9008-331367b89c5b",
              "parent_uuid": "eef9864a-1138-476a-af4c-9d95c9a6061e",
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
                  "uuid": "4a6bfa6f-6568-4f7a-81a3-083409fa7c6c",
                  "parent_uuid": "1ef30ed7-b86d-4120-9008-331367b89c5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72311444-75c0-48b6-939a-5a148e4a8fd6",
              "parent_uuid": "eef9864a-1138-476a-af4c-9d95c9a6061e",
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
                  "uuid": "e31151c9-af47-4f55-acf4-a1d4b3a6e225",
                  "parent_uuid": "72311444-75c0-48b6-939a-5a148e4a8fd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f8e2870-8361-4a12-a253-72bee84a935b",
              "parent_uuid": "eef9864a-1138-476a-af4c-9d95c9a6061e",
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
                  "uuid": "34402c23-575d-4af5-87be-e748c75b6638",
                  "parent_uuid": "7f8e2870-8361-4a12-a253-72bee84a935b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "067328ea-9a33-4fba-b68d-ed82f61fc2ef",
              "parent_uuid": "eef9864a-1138-476a-af4c-9d95c9a6061e",
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
                  "uuid": "92e0fc1d-6b5b-4e58-96a2-0858fe0487b0",
                  "parent_uuid": "067328ea-9a33-4fba-b68d-ed82f61fc2ef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a91a4b94-1632-4952-923c-61f28f29630d",
              "parent_uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
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
              "uuid": "360f0bc7-1b14-4b6a-ae61-bde31d3a5624",
              "parent_uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
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
              "uuid": "aa161fde-b930-4358-9f69-18e38cf15bdd",
              "parent_uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
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
              "uuid": "3c844abe-3fcb-44eb-a3c9-83b9b7f652d6",
              "parent_uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
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
                  "uuid": "edc11625-dafa-4c52-a3c0-5ace94d44cb1",
                  "parent_uuid": "3c844abe-3fcb-44eb-a3c9-83b9b7f652d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b2433f8-230d-4854-ab20-332b7e20e554",
              "parent_uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
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
                  "uuid": "829fd945-089d-4392-bd4b-49d903f37112",
                  "parent_uuid": "3b2433f8-230d-4854-ab20-332b7e20e554",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbe754b5-2b9b-4ffb-8cc6-7d5c0e2dc001",
              "parent_uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
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
                  "uuid": "3d2a1da3-ebf9-4fec-9cb7-f8aa2dddc5c9",
                  "parent_uuid": "dbe754b5-2b9b-4ffb-8cc6-7d5c0e2dc001",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0323bfa-bb4b-44b2-8ff8-05cdda57af45",
              "parent_uuid": "eac7e489-85a4-47e7-abb8-4a1747a72299",
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
                  "uuid": "50613406-1976-4d9c-a55b-b7c79a467465",
                  "parent_uuid": "d0323bfa-bb4b-44b2-8ff8-05cdda57af45",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5a65123-e626-4093-a9d6-9ef664b5ad04",
              "parent_uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
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
              "uuid": "99f27824-80fd-47b7-9fad-d867da3e83f9",
              "parent_uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
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
              "uuid": "d8a8b215-dafe-4a65-a834-801bb8d70f49",
              "parent_uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
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
                  "uuid": "d34d890c-1a47-41f2-9371-30b543232724",
                  "parent_uuid": "d8a8b215-dafe-4a65-a834-801bb8d70f49",
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
              "uuid": "dce4307a-1c81-43b5-b2fa-cb9a6bbc9d98",
              "parent_uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
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
                  "uuid": "a3bbaa22-9309-43fd-96d7-715a6e33ce36",
                  "parent_uuid": "dce4307a-1c81-43b5-b2fa-cb9a6bbc9d98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6187da61-59af-41a1-9a77-8a6fbe7eaccd",
              "parent_uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
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
                  "uuid": "5ca0eb20-bad2-46d6-8743-959bc3408fb9",
                  "parent_uuid": "6187da61-59af-41a1-9a77-8a6fbe7eaccd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdc3238e-3c65-45c5-a0d0-eabb1ddd1502",
              "parent_uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
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
                  "uuid": "b8f58516-2ab6-4a4c-abe3-a8e8620eca63",
                  "parent_uuid": "fdc3238e-3c65-45c5-a0d0-eabb1ddd1502",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c271a5cf-d88b-40f2-b60e-3e064b69744e",
              "parent_uuid": "ec81e293-0df2-44b9-82d8-5298a4dbb8fd",
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
                  "uuid": "1445000d-b3f5-4463-b9fc-a22e72bcc355",
                  "parent_uuid": "c271a5cf-d88b-40f2-b60e-3e064b69744e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a93c5d7e-5e34-41f1-8a29-18b8411a0a7d",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba555cb1-7e9f-495a-8eb5-b513db63cd2e",
              "parent_uuid": "a93c5d7e-5e34-41f1-8a29-18b8411a0a7d",
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
              "uuid": "429c1270-26c0-470e-9290-bf763f0cd988",
              "parent_uuid": "a93c5d7e-5e34-41f1-8a29-18b8411a0a7d",
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
              "uuid": "8b1815f2-7f13-4da0-8f98-7f9635388687",
              "parent_uuid": "a93c5d7e-5e34-41f1-8a29-18b8411a0a7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26be2ec0-ada9-4935-9be0-96da6d7599f4",
                  "parent_uuid": "8b1815f2-7f13-4da0-8f98-7f9635388687",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0b9a3b9-57cf-49f9-b5d9-a8be42c20da6",
              "parent_uuid": "a93c5d7e-5e34-41f1-8a29-18b8411a0a7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "468ceab7-1422-4eca-8d96-250ea293d3fb",
                  "parent_uuid": "a0b9a3b9-57cf-49f9-b5d9-a8be42c20da6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07067ce8-0021-4f28-8fd2-72869fdafe8f",
              "parent_uuid": "a93c5d7e-5e34-41f1-8a29-18b8411a0a7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fdb89e5-9799-4a80-9362-a8d79b752b4b",
                  "parent_uuid": "07067ce8-0021-4f28-8fd2-72869fdafe8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d5cf154-04f2-4589-9f5f-268ac4662e00",
              "parent_uuid": "a93c5d7e-5e34-41f1-8a29-18b8411a0a7d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddece8a5-9c5f-4ddc-ba6c-5eab8aadae80",
                  "parent_uuid": "5d5cf154-04f2-4589-9f5f-268ac4662e00",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "257324bc-cd4a-49ff-82a9-20bbc1ef3a37",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b5b0421-7f0d-4835-a4ca-103163cdf3fd",
              "parent_uuid": "257324bc-cd4a-49ff-82a9-20bbc1ef3a37",
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
              "uuid": "2671a366-cace-4cf3-85df-b6649516e35c",
              "parent_uuid": "257324bc-cd4a-49ff-82a9-20bbc1ef3a37",
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
              "uuid": "c1e67039-8308-49f8-b3c6-4e0ac00ecac7",
              "parent_uuid": "257324bc-cd4a-49ff-82a9-20bbc1ef3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a05a7f8-a100-481a-9875-e97bacfacd00",
                  "parent_uuid": "c1e67039-8308-49f8-b3c6-4e0ac00ecac7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bb93e96-f3bd-4777-a601-31fb95172674",
              "parent_uuid": "257324bc-cd4a-49ff-82a9-20bbc1ef3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a86b64d-6dce-4744-a983-f4dff8b349ca",
                  "parent_uuid": "1bb93e96-f3bd-4777-a601-31fb95172674",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5260611c-c06d-4fe5-a262-0fde91071c26",
              "parent_uuid": "257324bc-cd4a-49ff-82a9-20bbc1ef3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "308d934f-b881-4e1e-a748-25c2c0c2de84",
                  "parent_uuid": "5260611c-c06d-4fe5-a262-0fde91071c26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83b6069a-8bac-4db2-9cd1-a55bfcd005e1",
              "parent_uuid": "257324bc-cd4a-49ff-82a9-20bbc1ef3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63604e12-f5b0-4786-a192-9c93eeb6dcd8",
                  "parent_uuid": "83b6069a-8bac-4db2-9cd1-a55bfcd005e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af4cd9ed-d1d9-45e1-8678-cf8fcb4afad9",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd275fc1-2ebc-4f28-8880-e0259165edab",
              "parent_uuid": "af4cd9ed-d1d9-45e1-8678-cf8fcb4afad9",
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
              "uuid": "9ce15072-7ccd-4480-bb7c-858e61176367",
              "parent_uuid": "af4cd9ed-d1d9-45e1-8678-cf8fcb4afad9",
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
              "uuid": "41cd39aa-6b46-42fd-9e2e-92c2dc6bc64f",
              "parent_uuid": "af4cd9ed-d1d9-45e1-8678-cf8fcb4afad9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48573d27-15e9-4114-bb7c-239ecca9260a",
                  "parent_uuid": "41cd39aa-6b46-42fd-9e2e-92c2dc6bc64f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87e9f80d-c61d-4476-9c96-61fa07049f08",
              "parent_uuid": "af4cd9ed-d1d9-45e1-8678-cf8fcb4afad9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11130afd-6b50-460f-81ee-2bd7f9cb3685",
                  "parent_uuid": "87e9f80d-c61d-4476-9c96-61fa07049f08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "181166e4-357d-40ff-b36c-b6a1183a520f",
              "parent_uuid": "af4cd9ed-d1d9-45e1-8678-cf8fcb4afad9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "073c84b2-38c8-4810-bff8-20f6b4082b84",
                  "parent_uuid": "181166e4-357d-40ff-b36c-b6a1183a520f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a1da445-8c56-42e5-8cf7-b77dc8bd87d2",
              "parent_uuid": "af4cd9ed-d1d9-45e1-8678-cf8fcb4afad9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebef155a-e278-4ea0-afec-90179edcf17a",
                  "parent_uuid": "6a1da445-8c56-42e5-8cf7-b77dc8bd87d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "88a75a37-aa56-467f-a71e-f15c03672ade",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4728765-5e34-4d8f-a1e9-a1b164ca395e",
              "parent_uuid": "88a75a37-aa56-467f-a71e-f15c03672ade",
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
              "uuid": "51cc74e2-fc33-429f-838b-d4261139bd82",
              "parent_uuid": "88a75a37-aa56-467f-a71e-f15c03672ade",
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
              "uuid": "e0e8e2d5-b676-40c2-9cb8-dbefa265986e",
              "parent_uuid": "88a75a37-aa56-467f-a71e-f15c03672ade",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1df33c64-825f-4da5-a284-2ece9833b7e6",
                  "parent_uuid": "e0e8e2d5-b676-40c2-9cb8-dbefa265986e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce4b4201-397e-463e-b4df-679badba4c36",
              "parent_uuid": "88a75a37-aa56-467f-a71e-f15c03672ade",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "571ba857-c81a-40ed-8fdb-6d614379b99f",
                  "parent_uuid": "ce4b4201-397e-463e-b4df-679badba4c36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ee32d2d-822f-43f3-a346-217ef8a7395e",
              "parent_uuid": "88a75a37-aa56-467f-a71e-f15c03672ade",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79700254-b2cb-43a6-838f-bf5c6743d73e",
                  "parent_uuid": "3ee32d2d-822f-43f3-a346-217ef8a7395e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edb74a23-1f4f-4a0f-be22-ed86eaaac0d7",
              "parent_uuid": "88a75a37-aa56-467f-a71e-f15c03672ade",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5da3c54-f2bc-42b3-9b9d-6e5c7a262ee3",
                  "parent_uuid": "edb74a23-1f4f-4a0f-be22-ed86eaaac0d7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e0a5f23-eecb-4992-babd-59a725c312fc",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e1e775da-764d-4228-acbe-26fb9745e95b",
              "parent_uuid": "7e0a5f23-eecb-4992-babd-59a725c312fc",
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
          "uuid": "1906e323-56d5-4073-89bd-5aa8db22ec72",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a671e452-4baa-422c-b332-e33cdbc93095",
              "parent_uuid": "1906e323-56d5-4073-89bd-5aa8db22ec72",
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
              "uuid": "24068551-5981-4bb0-bca8-912f119cd7d8",
              "parent_uuid": "1906e323-56d5-4073-89bd-5aa8db22ec72",
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
              "uuid": "6aeefc49-b6dc-4566-9c57-5bf857491c01",
              "parent_uuid": "1906e323-56d5-4073-89bd-5aa8db22ec72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1248a86-2953-4ec2-a67c-986dfb97c6b4",
                  "parent_uuid": "6aeefc49-b6dc-4566-9c57-5bf857491c01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56c8d731-ddf8-4240-bab8-e079e544a5bc",
              "parent_uuid": "1906e323-56d5-4073-89bd-5aa8db22ec72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54c7fc7a-9b07-43e8-a306-bf7452040673",
                  "parent_uuid": "56c8d731-ddf8-4240-bab8-e079e544a5bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10cd5776-293c-463b-8bb7-67a430119f76",
              "parent_uuid": "1906e323-56d5-4073-89bd-5aa8db22ec72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b52c2bd-fc91-4e9d-9d93-83c7dd103818",
                  "parent_uuid": "10cd5776-293c-463b-8bb7-67a430119f76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ae6f96e-fcb6-41ea-be9c-026fda7d88ca",
              "parent_uuid": "1906e323-56d5-4073-89bd-5aa8db22ec72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e50569e-2342-417d-a2c3-134106a2e087",
                  "parent_uuid": "5ae6f96e-fcb6-41ea-be9c-026fda7d88ca",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "656526c0-05a1-451a-b274-9fb3a85371c4",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d301106e-8738-4fc6-bcbe-eda492bcbf2a",
              "parent_uuid": "656526c0-05a1-451a-b274-9fb3a85371c4",
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
              "uuid": "6d82867b-7cb2-4c1d-a8b0-145621ae193a",
              "parent_uuid": "656526c0-05a1-451a-b274-9fb3a85371c4",
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
              "uuid": "3b6511bd-9681-4e9c-bbe0-f43669cfbda2",
              "parent_uuid": "656526c0-05a1-451a-b274-9fb3a85371c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f964b7a-8c36-437f-aea9-b5d363dbef33",
                  "parent_uuid": "3b6511bd-9681-4e9c-bbe0-f43669cfbda2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22455cdf-b14d-4f86-a941-d6119e16ef0e",
              "parent_uuid": "656526c0-05a1-451a-b274-9fb3a85371c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "409832ad-8673-4acf-a269-8432fefd244b",
                  "parent_uuid": "22455cdf-b14d-4f86-a941-d6119e16ef0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13f2f72b-79cc-4b3d-b550-a991d1ab253b",
              "parent_uuid": "656526c0-05a1-451a-b274-9fb3a85371c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95e70be4-9676-4880-b823-251e99f439fc",
                  "parent_uuid": "13f2f72b-79cc-4b3d-b550-a991d1ab253b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6946d63-8a3c-46c3-aa44-eca6175ec81b",
              "parent_uuid": "656526c0-05a1-451a-b274-9fb3a85371c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f45ad6d9-691e-4612-bce1-29521d83fa6e",
                  "parent_uuid": "f6946d63-8a3c-46c3-aa44-eca6175ec81b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3fbd9cc7-dcbb-4865-8174-6a5f749cf464",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e25a01d8-1162-435d-839f-26d756915dff",
              "parent_uuid": "3fbd9cc7-dcbb-4865-8174-6a5f749cf464",
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
              "uuid": "797fb093-3aa7-44e3-ba09-3fe0f473d6e7",
              "parent_uuid": "3fbd9cc7-dcbb-4865-8174-6a5f749cf464",
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
              "uuid": "fe387b57-4a91-48b5-b41f-30cd1f26bf6f",
              "parent_uuid": "3fbd9cc7-dcbb-4865-8174-6a5f749cf464",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcc8893f-9c64-4c64-9053-3fb73b2aefbf",
                  "parent_uuid": "fe387b57-4a91-48b5-b41f-30cd1f26bf6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c513f33a-34b1-49cd-80c4-403b9d9ba2fa",
              "parent_uuid": "3fbd9cc7-dcbb-4865-8174-6a5f749cf464",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c2f0ce6-7473-411e-b327-3e46c48880fe",
                  "parent_uuid": "c513f33a-34b1-49cd-80c4-403b9d9ba2fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf61fda9-df11-4be0-8122-6a17325c8ab1",
              "parent_uuid": "3fbd9cc7-dcbb-4865-8174-6a5f749cf464",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3df111f5-992e-4eb6-9f0e-787872af59da",
                  "parent_uuid": "bf61fda9-df11-4be0-8122-6a17325c8ab1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9544fe3d-455a-4614-be29-0584419a9270",
              "parent_uuid": "3fbd9cc7-dcbb-4865-8174-6a5f749cf464",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "783312fd-0dbd-464f-ad1d-924ba3007729",
                  "parent_uuid": "9544fe3d-455a-4614-be29-0584419a9270",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6a15176b-bb15-4f47-8a9c-73eb6d494730",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0c7607e-3f34-44a0-88ea-7aac01ba648c",
              "parent_uuid": "6a15176b-bb15-4f47-8a9c-73eb6d494730",
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
              "uuid": "a2d86b9d-98d5-4aa9-ae45-a8673ebcaed1",
              "parent_uuid": "6a15176b-bb15-4f47-8a9c-73eb6d494730",
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
              "uuid": "00e3dead-085c-4377-9124-90f5727f0e57",
              "parent_uuid": "6a15176b-bb15-4f47-8a9c-73eb6d494730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58aee617-9546-42b6-b9ad-9ba76d7cd2c2",
                  "parent_uuid": "00e3dead-085c-4377-9124-90f5727f0e57",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2163905-fd0f-4c1e-8946-bb7ea28c9cfe",
              "parent_uuid": "6a15176b-bb15-4f47-8a9c-73eb6d494730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5d23387-9048-4101-bd0e-c654eda64631",
                  "parent_uuid": "e2163905-fd0f-4c1e-8946-bb7ea28c9cfe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3b6c3cf-f0aa-49f2-8ef5-611b4ef69385",
              "parent_uuid": "6a15176b-bb15-4f47-8a9c-73eb6d494730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1dcef492-a0f8-488f-b5ec-e767b06de7f7",
                  "parent_uuid": "a3b6c3cf-f0aa-49f2-8ef5-611b4ef69385",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd9ef80c-476c-4c68-aaa5-61e33c23dd16",
              "parent_uuid": "6a15176b-bb15-4f47-8a9c-73eb6d494730",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f75308e7-20ad-4010-976c-a7383008e22d",
                  "parent_uuid": "fd9ef80c-476c-4c68-aaa5-61e33c23dd16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70d5c24b-c5ec-41ab-88f9-60103027252d",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e05c134-663e-45f4-a442-1721501301aa",
              "parent_uuid": "70d5c24b-c5ec-41ab-88f9-60103027252d",
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
              "uuid": "33f4cc83-4447-4064-8b83-ede10d18bca0",
              "parent_uuid": "70d5c24b-c5ec-41ab-88f9-60103027252d",
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
              "uuid": "e3999a11-39f9-47fa-94ba-31ab44d4a3c3",
              "parent_uuid": "70d5c24b-c5ec-41ab-88f9-60103027252d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ed17dd0-741e-4d94-87a9-7b4f3a36b03e",
                  "parent_uuid": "e3999a11-39f9-47fa-94ba-31ab44d4a3c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "467a6150-5a99-44fb-a064-d8fa1a76f6ab",
              "parent_uuid": "70d5c24b-c5ec-41ab-88f9-60103027252d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9576ed9-037d-4e04-9b5a-20afac98f73e",
                  "parent_uuid": "467a6150-5a99-44fb-a064-d8fa1a76f6ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3baf713c-69b5-405b-8351-0ad94d874016",
              "parent_uuid": "70d5c24b-c5ec-41ab-88f9-60103027252d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afbc6475-336f-40c3-87c2-a7c0cf7552d2",
                  "parent_uuid": "3baf713c-69b5-405b-8351-0ad94d874016",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bcdebfa5-4b5e-4a01-baf1-ef97cf84869f",
              "parent_uuid": "70d5c24b-c5ec-41ab-88f9-60103027252d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd201b17-98fd-4f4f-8240-1b8571463fe4",
                  "parent_uuid": "bcdebfa5-4b5e-4a01-baf1-ef97cf84869f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "032e811d-09df-4a44-8cb3-b7be20e4ecdc",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a59b21c-f34e-496d-a989-805390d9f314",
              "parent_uuid": "032e811d-09df-4a44-8cb3-b7be20e4ecdc",
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
          "uuid": "e943bf35-fd3d-4c2e-85a9-8a40ee3d02a5",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1ddeea55-ea96-4fd7-b676-72949655d35a",
              "parent_uuid": "e943bf35-fd3d-4c2e-85a9-8a40ee3d02a5",
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
          "uuid": "40f949f9-30bc-46bb-b05b-cac5a9c6757c",
          "parent_uuid": "25977e0e-0112-4805-a8d2-d404452eed2f",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df00ff49-d7b1-4619-988c-7f2aee73f550",
              "parent_uuid": "40f949f9-30bc-46bb-b05b-cac5a9c6757c",
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
                  "uuid": "3c029790-d912-453d-aab1-3b6d2eda1173",
                  "parent_uuid": "df00ff49-d7b1-4619-988c-7f2aee73f550",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

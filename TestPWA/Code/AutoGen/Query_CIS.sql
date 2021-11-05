
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
  "uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "8ff6e192-d2ad-411c-980d-9f1c6c3158f0",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "6f8e95ba-3222-4214-8daf-20702e38914a",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "673c47b9-a913-4b29-b5d9-e8060c092bf2",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "873fc96f-ee80-4a54-b806-cde3d4a41597",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "1dced0f6-bec4-4968-8408-9c72aecaad55",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "364387bc-4905-4026-ad5a-b115f8af9f85",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "fccbd10f-8e8a-46ed-9d02-6aefd4c0e3d6",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
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
      "uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
      "parent_uuid": "56af87d4-8004-4cdb-b78a-0afeeaf92d51",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1e53fbd9-f8a8-4c51-9874-39298cc31fce",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b27501b6-7286-420e-ab8a-dcc7fdb54d14",
              "parent_uuid": "1e53fbd9-f8a8-4c51-9874-39298cc31fce",
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
              "uuid": "a141425d-b467-4493-9722-af2512629c35",
              "parent_uuid": "1e53fbd9-f8a8-4c51-9874-39298cc31fce",
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
              "uuid": "5114b4d2-9d1d-4414-b132-12ab8d638150",
              "parent_uuid": "1e53fbd9-f8a8-4c51-9874-39298cc31fce",
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
              "uuid": "af55be40-3b83-4d9b-81ee-fea99e171f3c",
              "parent_uuid": "1e53fbd9-f8a8-4c51-9874-39298cc31fce",
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
          "uuid": "6ccb65f5-39eb-450c-a936-c86818a92e42",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b5f1faad-3520-4671-9012-977cd8e9394a",
              "parent_uuid": "6ccb65f5-39eb-450c-a936-c86818a92e42",
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
              "uuid": "fc49d2bf-0ccf-4358-b918-9f6f63ea7198",
              "parent_uuid": "6ccb65f5-39eb-450c-a936-c86818a92e42",
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
              "uuid": "520f7f16-f52b-499d-a060-79c9cdf2a68a",
              "parent_uuid": "6ccb65f5-39eb-450c-a936-c86818a92e42",
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
              "uuid": "76a487c8-919d-43f4-8803-98c35f7799b0",
              "parent_uuid": "6ccb65f5-39eb-450c-a936-c86818a92e42",
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
          "uuid": "3f18c29b-63bc-4c36-9b9d-35d5f7a88977",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dcf0a0fb-b772-48ed-ac0b-c88fed22d9bb",
              "parent_uuid": "3f18c29b-63bc-4c36-9b9d-35d5f7a88977",
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
              "uuid": "437b54ff-9ab1-48ca-a813-7ec16a2ab903",
              "parent_uuid": "3f18c29b-63bc-4c36-9b9d-35d5f7a88977",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dbca267b-e470-4717-ba2a-688dc7d0aa05",
              "parent_uuid": "3f18c29b-63bc-4c36-9b9d-35d5f7a88977",
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
              "uuid": "de13e531-ab4e-4475-956a-79af92111670",
              "parent_uuid": "3f18c29b-63bc-4c36-9b9d-35d5f7a88977",
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
              "uuid": "26267fd7-c8bd-47ca-a660-5abc7cbe6cd0",
              "parent_uuid": "3f18c29b-63bc-4c36-9b9d-35d5f7a88977",
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
              "uuid": "fc385f82-dccd-4c09-ad7e-dbefe8b08487",
              "parent_uuid": "3f18c29b-63bc-4c36-9b9d-35d5f7a88977",
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
          "uuid": "9d61bb6c-c14c-4be1-8d8e-2df6192e4b73",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0b293d55-b153-4cea-ad65-4bc265e2a5d3",
              "parent_uuid": "9d61bb6c-c14c-4be1-8d8e-2df6192e4b73",
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
          "uuid": "4b9a1ecc-4d37-4a38-b1a0-4fd71177cb38",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49f300e5-1a14-4632-8b6e-9e00d3cbdf1d",
              "parent_uuid": "4b9a1ecc-4d37-4a38-b1a0-4fd71177cb38",
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
              "uuid": "983edecc-4d22-416a-83ae-455deba44009",
              "parent_uuid": "4b9a1ecc-4d37-4a38-b1a0-4fd71177cb38",
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
              "uuid": "6e5b9ccd-6537-47d8-9406-911274bc2534",
              "parent_uuid": "4b9a1ecc-4d37-4a38-b1a0-4fd71177cb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e37880d0-0dba-4343-bedd-309a06c0ebb9",
                  "parent_uuid": "6e5b9ccd-6537-47d8-9406-911274bc2534",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebe98ea9-d4d5-4d92-8a79-a760ec828a07",
              "parent_uuid": "4b9a1ecc-4d37-4a38-b1a0-4fd71177cb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59874f30-b31f-43e3-80c3-e3f91d79d070",
                  "parent_uuid": "ebe98ea9-d4d5-4d92-8a79-a760ec828a07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f3a3868-baaf-4f8d-b5d9-01661a180e6c",
              "parent_uuid": "4b9a1ecc-4d37-4a38-b1a0-4fd71177cb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c043905-b865-486f-90dd-417ed832e077",
                  "parent_uuid": "6f3a3868-baaf-4f8d-b5d9-01661a180e6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d22db26b-802a-43be-afb6-dbcc294a299a",
              "parent_uuid": "4b9a1ecc-4d37-4a38-b1a0-4fd71177cb38",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4420606-6d17-4230-a3d5-7787c53ac75a",
                  "parent_uuid": "d22db26b-802a-43be-afb6-dbcc294a299a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9746b1df-1cee-42df-a039-390826791cab",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a836424d-046c-407c-b7a0-33911b898dd7",
              "parent_uuid": "9746b1df-1cee-42df-a039-390826791cab",
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
              "uuid": "18d5f787-76d4-4783-962a-2a5130d20b5f",
              "parent_uuid": "9746b1df-1cee-42df-a039-390826791cab",
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
              "uuid": "655bfe5f-3b21-419d-b3e5-5d9d46a1c96e",
              "parent_uuid": "9746b1df-1cee-42df-a039-390826791cab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08fe37ef-be46-45c1-a949-1137d26e5cb7",
                  "parent_uuid": "655bfe5f-3b21-419d-b3e5-5d9d46a1c96e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57e7c957-d492-4167-9d41-6b6a67a9c237",
              "parent_uuid": "9746b1df-1cee-42df-a039-390826791cab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49194022-430a-4aed-96b9-481e84451cbf",
                  "parent_uuid": "57e7c957-d492-4167-9d41-6b6a67a9c237",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c14b602c-738c-4a28-b19a-f19f9ca0a5a5",
              "parent_uuid": "9746b1df-1cee-42df-a039-390826791cab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b428fbab-cb55-4d52-a1ff-c2104dc20631",
                  "parent_uuid": "c14b602c-738c-4a28-b19a-f19f9ca0a5a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d215067c-11e6-47d4-bb06-098810aba56c",
              "parent_uuid": "9746b1df-1cee-42df-a039-390826791cab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfde8d85-057a-41b6-9010-c74333b82208",
                  "parent_uuid": "d215067c-11e6-47d4-bb06-098810aba56c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6174627d-9a28-4806-8dfd-ebeb035a7c3f",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "037debb4-4f6e-4588-a4f8-63b637807bdb",
              "parent_uuid": "6174627d-9a28-4806-8dfd-ebeb035a7c3f",
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
              "uuid": "77f312ca-2196-45b8-b2b6-37380010cbab",
              "parent_uuid": "6174627d-9a28-4806-8dfd-ebeb035a7c3f",
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
              "uuid": "546d6e34-8c78-46bf-a6c0-bc02a2ea1a73",
              "parent_uuid": "6174627d-9a28-4806-8dfd-ebeb035a7c3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbe23ed5-1a1b-4db0-8ed9-4235996e3fa9",
                  "parent_uuid": "546d6e34-8c78-46bf-a6c0-bc02a2ea1a73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6de11526-6a8d-4e61-8885-edb99f04485e",
              "parent_uuid": "6174627d-9a28-4806-8dfd-ebeb035a7c3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea8bbdf1-e882-44e2-a251-c2925cd3d491",
                  "parent_uuid": "6de11526-6a8d-4e61-8885-edb99f04485e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef20eb74-a7a7-4068-b059-0c6d29ce1448",
              "parent_uuid": "6174627d-9a28-4806-8dfd-ebeb035a7c3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb48f765-30a1-4c35-9dde-08b783cb183a",
                  "parent_uuid": "ef20eb74-a7a7-4068-b059-0c6d29ce1448",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2adeb814-f476-4dcc-bc12-ddb98107caef",
              "parent_uuid": "6174627d-9a28-4806-8dfd-ebeb035a7c3f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0c6c96f-ee4a-41db-8872-04c97e8a752d",
                  "parent_uuid": "2adeb814-f476-4dcc-bc12-ddb98107caef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "066a8f8a-4dbd-4cc8-82af-a37a51d88679",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a12016e2-af32-423a-80be-83ff018029a5",
              "parent_uuid": "066a8f8a-4dbd-4cc8-82af-a37a51d88679",
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
              "uuid": "6125165f-af0b-446b-b5ad-1bf64d80fbe2",
              "parent_uuid": "066a8f8a-4dbd-4cc8-82af-a37a51d88679",
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
              "uuid": "6bd69b24-299a-4207-a287-c58480e48575",
              "parent_uuid": "066a8f8a-4dbd-4cc8-82af-a37a51d88679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dce89c68-ddce-48cd-b0d9-5f9efd874e41",
                  "parent_uuid": "6bd69b24-299a-4207-a287-c58480e48575",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26e1732d-e7dc-42ce-8314-3809638edf1f",
              "parent_uuid": "066a8f8a-4dbd-4cc8-82af-a37a51d88679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9dc3cb48-5a5b-459d-89e7-cd85357f57a8",
                  "parent_uuid": "26e1732d-e7dc-42ce-8314-3809638edf1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9e29e66-7af3-40d6-aaeb-395b2dc906b0",
              "parent_uuid": "066a8f8a-4dbd-4cc8-82af-a37a51d88679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcc6c95d-513e-4f4a-81e1-1272ac441676",
                  "parent_uuid": "f9e29e66-7af3-40d6-aaeb-395b2dc906b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05958052-0243-4a97-b8f9-fe83b2a983b4",
              "parent_uuid": "066a8f8a-4dbd-4cc8-82af-a37a51d88679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e75067b-779b-4b1e-bf14-84311605f3aa",
                  "parent_uuid": "05958052-0243-4a97-b8f9-fe83b2a983b4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f0279ac5-6682-4685-9906-8615aaf5d206",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "743e8a62-5494-4085-a16b-6c8f2f576cff",
              "parent_uuid": "f0279ac5-6682-4685-9906-8615aaf5d206",
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
          "uuid": "2f75c674-d648-446a-a5cc-4be91d8fe140",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "92a5b068-1e66-4bbb-96c5-b149ecc10bba",
              "parent_uuid": "2f75c674-d648-446a-a5cc-4be91d8fe140",
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
              "uuid": "41caa4e1-8969-4e3c-ba49-274ded6f55e7",
              "parent_uuid": "2f75c674-d648-446a-a5cc-4be91d8fe140",
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
              "uuid": "38ec0564-3a38-4cbc-a8f8-2a65c0b2d790",
              "parent_uuid": "2f75c674-d648-446a-a5cc-4be91d8fe140",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e757c1d0-95ad-4b72-9928-1569f9e9e416",
                  "parent_uuid": "38ec0564-3a38-4cbc-a8f8-2a65c0b2d790",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ce542f9-b300-4c9d-8dc7-2d71c3a9ec3d",
              "parent_uuid": "2f75c674-d648-446a-a5cc-4be91d8fe140",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8bc016c8-b0a5-42cd-92e3-d396836b8713",
                  "parent_uuid": "8ce542f9-b300-4c9d-8dc7-2d71c3a9ec3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f95bf3a-1171-49c9-9c19-678a013f5943",
              "parent_uuid": "2f75c674-d648-446a-a5cc-4be91d8fe140",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9b9a8ed-5bfa-4442-904d-dd4e717c74c3",
                  "parent_uuid": "4f95bf3a-1171-49c9-9c19-678a013f5943",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "232ee59c-4491-4501-b164-445d76527d67",
              "parent_uuid": "2f75c674-d648-446a-a5cc-4be91d8fe140",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "632b2733-8371-49ed-8802-d56c5fc8aba0",
                  "parent_uuid": "232ee59c-4491-4501-b164-445d76527d67",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c80b0423-b3da-4edd-86b9-52d072719887",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1782068-b99b-4c97-b4dc-56f572c301a7",
              "parent_uuid": "c80b0423-b3da-4edd-86b9-52d072719887",
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
              "uuid": "893296ec-a349-494e-a1c6-0f3ea071daf3",
              "parent_uuid": "c80b0423-b3da-4edd-86b9-52d072719887",
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
              "uuid": "37fe8471-d046-47b9-8235-fed37b41da13",
              "parent_uuid": "c80b0423-b3da-4edd-86b9-52d072719887",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7213efa4-9be2-4f76-a8ed-fcbcf20fc152",
                  "parent_uuid": "37fe8471-d046-47b9-8235-fed37b41da13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f46e3025-a926-41e3-902f-93c2ab2335ff",
              "parent_uuid": "c80b0423-b3da-4edd-86b9-52d072719887",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40f14454-afcc-4ea5-92d3-7c507ed2180a",
                  "parent_uuid": "f46e3025-a926-41e3-902f-93c2ab2335ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "554d32aa-bacc-436e-a187-0367fef7237d",
              "parent_uuid": "c80b0423-b3da-4edd-86b9-52d072719887",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ebbf15c-c2c9-4022-99c6-3c54e9648acb",
                  "parent_uuid": "554d32aa-bacc-436e-a187-0367fef7237d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb0ed816-3091-40aa-a66a-8d309c852d83",
              "parent_uuid": "c80b0423-b3da-4edd-86b9-52d072719887",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aea2c6fb-1d1f-42c6-adfb-68b3f8652a9d",
                  "parent_uuid": "cb0ed816-3091-40aa-a66a-8d309c852d83",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5499256b-5f78-493f-affa-069b131e5bbd",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "45c2dbe9-b880-441e-b992-6bf30bc45412",
              "parent_uuid": "5499256b-5f78-493f-affa-069b131e5bbd",
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
              "uuid": "9bfa1017-825d-48c6-af7b-036cb3bf7504",
              "parent_uuid": "5499256b-5f78-493f-affa-069b131e5bbd",
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
              "uuid": "5300068d-6ef4-4714-85cb-fff42dfd21ef",
              "parent_uuid": "5499256b-5f78-493f-affa-069b131e5bbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ecdb88e2-0d6a-4111-bd9b-5a36bbc585ed",
                  "parent_uuid": "5300068d-6ef4-4714-85cb-fff42dfd21ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50d8819f-4a1c-4eca-8bd4-8ecef6bd40b0",
              "parent_uuid": "5499256b-5f78-493f-affa-069b131e5bbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62d8d050-9288-4e24-8991-d4155400313c",
                  "parent_uuid": "50d8819f-4a1c-4eca-8bd4-8ecef6bd40b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d8e3258-8386-40b2-9a7a-7e71a609ea70",
              "parent_uuid": "5499256b-5f78-493f-affa-069b131e5bbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f3941c4-5530-41bb-b722-f207c6a7d16e",
                  "parent_uuid": "0d8e3258-8386-40b2-9a7a-7e71a609ea70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30779d29-832a-4ea0-b4a1-3b844719caae",
              "parent_uuid": "5499256b-5f78-493f-affa-069b131e5bbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e178bf36-a9d5-4c2d-ae93-6e472a9edef5",
                  "parent_uuid": "30779d29-832a-4ea0-b4a1-3b844719caae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23ae1392-36a5-42d7-96e4-5ac8437fd185",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11b272ec-dcc0-453a-8b10-e5f987c13da8",
              "parent_uuid": "23ae1392-36a5-42d7-96e4-5ac8437fd185",
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
              "uuid": "3441e94b-760f-463f-9ffc-0052707bf160",
              "parent_uuid": "23ae1392-36a5-42d7-96e4-5ac8437fd185",
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
              "uuid": "679425ee-a60a-42ad-afee-8f78582c43a7",
              "parent_uuid": "23ae1392-36a5-42d7-96e4-5ac8437fd185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85c93e76-0308-49ce-a1af-00f76736fd0d",
                  "parent_uuid": "679425ee-a60a-42ad-afee-8f78582c43a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1ab743f-ac0c-4f9d-9560-305b897742fa",
              "parent_uuid": "23ae1392-36a5-42d7-96e4-5ac8437fd185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd4443b9-2453-483e-a3ca-f1609b265e61",
                  "parent_uuid": "c1ab743f-ac0c-4f9d-9560-305b897742fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "465b9a13-3082-42ac-997f-37a688822748",
              "parent_uuid": "23ae1392-36a5-42d7-96e4-5ac8437fd185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06870754-6ea7-44be-a461-158f4e10d38b",
                  "parent_uuid": "465b9a13-3082-42ac-997f-37a688822748",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb48d2b6-1e7c-4350-9864-6882996d969a",
              "parent_uuid": "23ae1392-36a5-42d7-96e4-5ac8437fd185",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9885b975-90a9-4cb9-90d8-33b34024844b",
                  "parent_uuid": "fb48d2b6-1e7c-4350-9864-6882996d969a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dccfb3fb-8885-4219-909f-5c31d0bb10e1",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0f52286-9697-4cab-a5a3-a47c99980bbd",
              "parent_uuid": "dccfb3fb-8885-4219-909f-5c31d0bb10e1",
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
              "uuid": "1d1a4301-e149-4db4-a4b1-da710bf58388",
              "parent_uuid": "dccfb3fb-8885-4219-909f-5c31d0bb10e1",
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
              "uuid": "46afabba-f795-48cb-8026-15463173554d",
              "parent_uuid": "dccfb3fb-8885-4219-909f-5c31d0bb10e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "090d10b0-1a61-4dcd-be08-f440628c3a28",
                  "parent_uuid": "46afabba-f795-48cb-8026-15463173554d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e526452-660a-416d-8efd-6afcb3c972b4",
              "parent_uuid": "dccfb3fb-8885-4219-909f-5c31d0bb10e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9fcb019-1f18-4cbb-9c0d-d4466f8bd555",
                  "parent_uuid": "0e526452-660a-416d-8efd-6afcb3c972b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13e2a688-806c-4931-8c8f-5fc4dc615d12",
              "parent_uuid": "dccfb3fb-8885-4219-909f-5c31d0bb10e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25751a73-f74c-4f47-974d-2f051a84110e",
                  "parent_uuid": "13e2a688-806c-4931-8c8f-5fc4dc615d12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b8f6651-a865-41ce-91f3-d50d67421204",
              "parent_uuid": "dccfb3fb-8885-4219-909f-5c31d0bb10e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc66e7d2-5570-45d5-868e-402aeb50c21c",
                  "parent_uuid": "9b8f6651-a865-41ce-91f3-d50d67421204",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4340ffbd-f920-402c-89ac-871e6e73e98e",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "553726cf-5421-4b9c-8551-5323dd856624",
              "parent_uuid": "4340ffbd-f920-402c-89ac-871e6e73e98e",
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
              "uuid": "271878cd-4906-4228-a553-b3d86efaf254",
              "parent_uuid": "4340ffbd-f920-402c-89ac-871e6e73e98e",
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
              "uuid": "070d8b46-e1ce-4b66-9819-be8c611680c1",
              "parent_uuid": "4340ffbd-f920-402c-89ac-871e6e73e98e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "927fe1ba-9eec-482c-ae9c-55824f350ccc",
                  "parent_uuid": "070d8b46-e1ce-4b66-9819-be8c611680c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c112781-a313-49ec-afde-590946f5b9ca",
              "parent_uuid": "4340ffbd-f920-402c-89ac-871e6e73e98e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "329c9076-2083-4880-a944-4cbb6de77d6b",
                  "parent_uuid": "8c112781-a313-49ec-afde-590946f5b9ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4aae961-f363-471d-949f-a761ba9fdc00",
              "parent_uuid": "4340ffbd-f920-402c-89ac-871e6e73e98e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "512f7e70-b108-414c-a997-43bdb0cfb851",
                  "parent_uuid": "d4aae961-f363-471d-949f-a761ba9fdc00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f6bc6d6-f3ba-42b0-a2a9-2a0308dee03c",
              "parent_uuid": "4340ffbd-f920-402c-89ac-871e6e73e98e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b453a02-e750-47d5-96cd-1b5425cff12c",
                  "parent_uuid": "1f6bc6d6-f3ba-42b0-a2a9-2a0308dee03c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8529f233-607c-48c3-9d3a-2a4a9205078f",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b314c67-beb1-49ac-8abb-1f2104d8ba48",
              "parent_uuid": "8529f233-607c-48c3-9d3a-2a4a9205078f",
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
              "uuid": "488c0439-760b-49c0-839a-1c0a795dd8c4",
              "parent_uuid": "8529f233-607c-48c3-9d3a-2a4a9205078f",
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
              "uuid": "b84765c4-844c-44a8-ba6b-00e61a5cf09e",
              "parent_uuid": "8529f233-607c-48c3-9d3a-2a4a9205078f",
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
                  "uuid": "c9ba6885-82c5-4519-bd82-6f8c7c5607c3",
                  "parent_uuid": "b84765c4-844c-44a8-ba6b-00e61a5cf09e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d3ce288-c7d1-4dae-86a9-1dd37e2038d3",
              "parent_uuid": "8529f233-607c-48c3-9d3a-2a4a9205078f",
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
                  "uuid": "df337c9d-0d87-44c5-af61-19ced550f705",
                  "parent_uuid": "9d3ce288-c7d1-4dae-86a9-1dd37e2038d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cd87fc8-9466-46d0-a6c9-a615e4bef51a",
              "parent_uuid": "8529f233-607c-48c3-9d3a-2a4a9205078f",
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
                  "uuid": "ff1e1934-701f-4ac9-a8cb-c2919106d1c2",
                  "parent_uuid": "4cd87fc8-9466-46d0-a6c9-a615e4bef51a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92a793b2-a186-4813-b367-792a64740fc3",
              "parent_uuid": "8529f233-607c-48c3-9d3a-2a4a9205078f",
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
                  "uuid": "2a2f2904-5be7-4190-b574-fd0f1d09ce82",
                  "parent_uuid": "92a793b2-a186-4813-b367-792a64740fc3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ccfd6081-ab84-434b-9812-be7c966f0515",
              "parent_uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
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
              "uuid": "e0e423a1-26ab-44d7-b5e5-188c9f1e004e",
              "parent_uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
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
              "uuid": "6b4b5a2a-e50d-431e-ae43-b852e392908e",
              "parent_uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
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
              "uuid": "b878ae2d-89c6-4ed2-b077-07cc96eec17d",
              "parent_uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
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
                  "uuid": "9802a575-ac27-4076-85ef-6a9fd1925981",
                  "parent_uuid": "b878ae2d-89c6-4ed2-b077-07cc96eec17d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38fac189-f4b4-45f9-b20f-53a470f6631f",
              "parent_uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
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
                  "uuid": "1f8ee447-6204-44f1-8ab6-7d6977e3fcf8",
                  "parent_uuid": "38fac189-f4b4-45f9-b20f-53a470f6631f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c06b2061-dfa4-450a-8116-90c5429c5fd1",
              "parent_uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
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
                  "uuid": "abe7709d-f465-45cc-8ab7-9599ad58610b",
                  "parent_uuid": "c06b2061-dfa4-450a-8116-90c5429c5fd1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d9953be-d668-45e2-8afd-cb8a4a9bd30b",
              "parent_uuid": "b8da7400-d252-477f-85aa-869f16122ae0",
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
                  "uuid": "5eebfd92-3b1b-4aed-ae01-55021b8d9dcd",
                  "parent_uuid": "4d9953be-d668-45e2-8afd-cb8a4a9bd30b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f341e65-ae64-49d8-bfb1-a25eaed29b61",
              "parent_uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
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
              "uuid": "a8d21261-0940-4554-9a3c-a17b43d15580",
              "parent_uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
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
              "uuid": "edd2cbec-b0d5-4f52-b9b1-1123138244bc",
              "parent_uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
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
                  "uuid": "9e4619a6-082d-4376-9e12-8e6220a8f9d5",
                  "parent_uuid": "edd2cbec-b0d5-4f52-b9b1-1123138244bc",
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
              "uuid": "9136562c-271c-4da3-aac2-f2764efc0383",
              "parent_uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
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
                  "uuid": "cd3829de-9d94-413a-abdc-a55426512297",
                  "parent_uuid": "9136562c-271c-4da3-aac2-f2764efc0383",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c517ccb-48cf-4a78-ba31-773e3e50aeaf",
              "parent_uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
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
                  "uuid": "b6eb2657-797a-4a0b-9dc8-3ab4cf4a7d03",
                  "parent_uuid": "3c517ccb-48cf-4a78-ba31-773e3e50aeaf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b16d5cc-db8e-46f9-8d22-85c569b25b98",
              "parent_uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
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
                  "uuid": "7d81a998-b7e1-460f-8198-55c7947c29a2",
                  "parent_uuid": "4b16d5cc-db8e-46f9-8d22-85c569b25b98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2fd5f54-af7b-43e9-923d-0188a4df367e",
              "parent_uuid": "73d9871c-fb9b-4638-9c12-22decc1b1221",
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
                  "uuid": "01720691-bb90-4b07-a0d1-29c3eadf21f1",
                  "parent_uuid": "e2fd5f54-af7b-43e9-923d-0188a4df367e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5033b88e-4ca6-48e9-abd0-9f1aae1a7d64",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba9da460-7ffa-4b72-9b14-2b75aef956ed",
              "parent_uuid": "5033b88e-4ca6-48e9-abd0-9f1aae1a7d64",
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
              "uuid": "3879c463-4718-4e42-be27-bd85680322a8",
              "parent_uuid": "5033b88e-4ca6-48e9-abd0-9f1aae1a7d64",
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
              "uuid": "5a976831-8d87-41db-a026-bfdf88ae5553",
              "parent_uuid": "5033b88e-4ca6-48e9-abd0-9f1aae1a7d64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1e72182-ebcc-4dbc-b5f7-1a43a1724bdf",
                  "parent_uuid": "5a976831-8d87-41db-a026-bfdf88ae5553",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5dc1bba1-e5cb-4840-b450-4339ac951cd4",
              "parent_uuid": "5033b88e-4ca6-48e9-abd0-9f1aae1a7d64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccf14438-f04b-4616-a805-68aa79e4d133",
                  "parent_uuid": "5dc1bba1-e5cb-4840-b450-4339ac951cd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46d44f49-523c-4ef0-8bb9-8407e00bee84",
              "parent_uuid": "5033b88e-4ca6-48e9-abd0-9f1aae1a7d64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2329edf3-7e65-43b8-a78d-2facd09ebb48",
                  "parent_uuid": "46d44f49-523c-4ef0-8bb9-8407e00bee84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7ed7361-3d93-4d38-afec-23326abe208f",
              "parent_uuid": "5033b88e-4ca6-48e9-abd0-9f1aae1a7d64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ddad017-d11e-4137-8944-cf0a236e4acd",
                  "parent_uuid": "b7ed7361-3d93-4d38-afec-23326abe208f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f3d500d7-97ec-47b5-a652-aa45bfbfe3c1",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f5e84e26-8769-4f30-bf88-bcf237971b14",
              "parent_uuid": "f3d500d7-97ec-47b5-a652-aa45bfbfe3c1",
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
              "uuid": "1783cd3d-afbb-4bae-baed-ae87c69fc682",
              "parent_uuid": "f3d500d7-97ec-47b5-a652-aa45bfbfe3c1",
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
              "uuid": "5debab04-5470-4a90-b48f-cbbb470db05f",
              "parent_uuid": "f3d500d7-97ec-47b5-a652-aa45bfbfe3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75e5f746-0268-47f5-af07-a7218d7a211e",
                  "parent_uuid": "5debab04-5470-4a90-b48f-cbbb470db05f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44007e53-1d2b-415a-b61a-79492ce7c8d4",
              "parent_uuid": "f3d500d7-97ec-47b5-a652-aa45bfbfe3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84f6ca87-d44e-4673-aad4-9e142c529d65",
                  "parent_uuid": "44007e53-1d2b-415a-b61a-79492ce7c8d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cbd02c3-4916-44aa-bc24-5a26d76c815e",
              "parent_uuid": "f3d500d7-97ec-47b5-a652-aa45bfbfe3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1291f971-c0a4-4a3a-abdb-a47ca1592ef4",
                  "parent_uuid": "1cbd02c3-4916-44aa-bc24-5a26d76c815e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2090f6f-86fd-41fc-b92a-189382943206",
              "parent_uuid": "f3d500d7-97ec-47b5-a652-aa45bfbfe3c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ee57825-e8d7-477e-b4ad-01f7ab880801",
                  "parent_uuid": "d2090f6f-86fd-41fc-b92a-189382943206",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c711bbcf-49f4-4a35-9692-19659b882c79",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1db15c5d-0107-4faa-a59f-cd07b69b9b31",
              "parent_uuid": "c711bbcf-49f4-4a35-9692-19659b882c79",
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
              "uuid": "a7820ec6-a94c-469e-b1e7-922c8ada894a",
              "parent_uuid": "c711bbcf-49f4-4a35-9692-19659b882c79",
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
              "uuid": "9c6fad72-1d12-4857-ba7b-c18c49923066",
              "parent_uuid": "c711bbcf-49f4-4a35-9692-19659b882c79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f33b9027-4a56-407e-b139-a8fd85f48fc1",
                  "parent_uuid": "9c6fad72-1d12-4857-ba7b-c18c49923066",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec6d28cf-615a-4e75-abea-d3c15c0c5d87",
              "parent_uuid": "c711bbcf-49f4-4a35-9692-19659b882c79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b58d5eb6-7b2c-4b12-876d-755b85a6efe7",
                  "parent_uuid": "ec6d28cf-615a-4e75-abea-d3c15c0c5d87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "585006e9-8dbf-41bd-9321-854ca4a0731e",
              "parent_uuid": "c711bbcf-49f4-4a35-9692-19659b882c79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff137742-ea35-452a-a872-b7157fc9f74f",
                  "parent_uuid": "585006e9-8dbf-41bd-9321-854ca4a0731e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ec08953-4b3e-441d-ab0c-53198c63fa07",
              "parent_uuid": "c711bbcf-49f4-4a35-9692-19659b882c79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b7dc0f8-62e3-4024-a9f4-bbbcbefab408",
                  "parent_uuid": "4ec08953-4b3e-441d-ab0c-53198c63fa07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ea597892-c46d-4792-925f-8945752efc37",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2444e5c0-f2c2-45a5-9607-1b7e4d375b37",
              "parent_uuid": "ea597892-c46d-4792-925f-8945752efc37",
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
              "uuid": "810f9b50-011d-491d-ada6-8f4e7884f344",
              "parent_uuid": "ea597892-c46d-4792-925f-8945752efc37",
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
              "uuid": "65411abe-f782-4935-aa88-2e9720e0e66d",
              "parent_uuid": "ea597892-c46d-4792-925f-8945752efc37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d89bb15d-275c-4dad-b3c4-00eee9b7c78f",
                  "parent_uuid": "65411abe-f782-4935-aa88-2e9720e0e66d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb7f6d9c-7a80-477b-8999-44e7c6a2e627",
              "parent_uuid": "ea597892-c46d-4792-925f-8945752efc37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d37372f-3043-438f-a087-d682589f1682",
                  "parent_uuid": "eb7f6d9c-7a80-477b-8999-44e7c6a2e627",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f9ab9f4-8dcd-4a6a-8570-cf182f67255b",
              "parent_uuid": "ea597892-c46d-4792-925f-8945752efc37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f46eb41-9941-41aa-99a0-bb88f2f89fc6",
                  "parent_uuid": "2f9ab9f4-8dcd-4a6a-8570-cf182f67255b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f48d846c-1bda-4c2c-b206-fcca12300094",
              "parent_uuid": "ea597892-c46d-4792-925f-8945752efc37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12f9647e-96da-4834-8b19-7a5c71fdf9f4",
                  "parent_uuid": "f48d846c-1bda-4c2c-b206-fcca12300094",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e318b5b-9885-4e0a-a86e-8a7b5fc72352",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2e29ee60-501d-47cf-b111-979a8789db3a",
              "parent_uuid": "2e318b5b-9885-4e0a-a86e-8a7b5fc72352",
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
          "uuid": "a37635f4-cdd8-47c6-aea3-f38636d6edb7",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4a56ac3-708d-4688-8662-74d3aca6a1d9",
              "parent_uuid": "a37635f4-cdd8-47c6-aea3-f38636d6edb7",
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
              "uuid": "d9e5e72d-e08d-4467-9b3f-58ce16ce8fd2",
              "parent_uuid": "a37635f4-cdd8-47c6-aea3-f38636d6edb7",
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
              "uuid": "edc005a1-7101-4c32-b533-5bc20c97ae3e",
              "parent_uuid": "a37635f4-cdd8-47c6-aea3-f38636d6edb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6f2a948-e18d-44f9-b661-309d4b041568",
                  "parent_uuid": "edc005a1-7101-4c32-b533-5bc20c97ae3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "202be334-14cd-4083-b235-e2713f535e3b",
              "parent_uuid": "a37635f4-cdd8-47c6-aea3-f38636d6edb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7bc8faa0-95da-4a67-8861-fd18f8d163a1",
                  "parent_uuid": "202be334-14cd-4083-b235-e2713f535e3b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4a58fda-a36b-4513-bcae-2ab7bb5cb3fb",
              "parent_uuid": "a37635f4-cdd8-47c6-aea3-f38636d6edb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab7d2ce3-fe77-4246-95b9-3582868d1bf6",
                  "parent_uuid": "f4a58fda-a36b-4513-bcae-2ab7bb5cb3fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "745e1cb7-76f7-446a-b09f-1bb0499f57ce",
              "parent_uuid": "a37635f4-cdd8-47c6-aea3-f38636d6edb7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ad9e5d8-53dc-4e69-af1e-3fb1c7ad4837",
                  "parent_uuid": "745e1cb7-76f7-446a-b09f-1bb0499f57ce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ae38bdb6-d3e2-460a-93c9-d9a86e6fc434",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "caa1c363-060f-4581-b471-12676464d43c",
              "parent_uuid": "ae38bdb6-d3e2-460a-93c9-d9a86e6fc434",
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
              "uuid": "ae8df55a-65cd-49f0-aeb1-3e1a41e1a9c3",
              "parent_uuid": "ae38bdb6-d3e2-460a-93c9-d9a86e6fc434",
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
              "uuid": "d51159d9-3edf-4ab0-807c-b58b8566895f",
              "parent_uuid": "ae38bdb6-d3e2-460a-93c9-d9a86e6fc434",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a543007b-4622-4681-ae15-73070050c2d7",
                  "parent_uuid": "d51159d9-3edf-4ab0-807c-b58b8566895f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e976a641-a313-4f7f-8389-acdee238bd75",
              "parent_uuid": "ae38bdb6-d3e2-460a-93c9-d9a86e6fc434",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4834584d-5ef2-4ef0-98a8-e782fd2f0d8d",
                  "parent_uuid": "e976a641-a313-4f7f-8389-acdee238bd75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c75ac7b2-1af5-4f70-9fc7-673469a96ecf",
              "parent_uuid": "ae38bdb6-d3e2-460a-93c9-d9a86e6fc434",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70e9292a-1e35-493f-9b89-12f6f904c009",
                  "parent_uuid": "c75ac7b2-1af5-4f70-9fc7-673469a96ecf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f960b3bd-3990-4233-9b38-22b0b5ffbb1e",
              "parent_uuid": "ae38bdb6-d3e2-460a-93c9-d9a86e6fc434",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f76b1a3-85e7-46dd-a98b-ce2b1aa7d380",
                  "parent_uuid": "f960b3bd-3990-4233-9b38-22b0b5ffbb1e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "92166d2c-3c29-4212-9f19-7fe6b1d03b82",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e8cf35a-4922-40e9-996e-dfc49177167e",
              "parent_uuid": "92166d2c-3c29-4212-9f19-7fe6b1d03b82",
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
              "uuid": "709f6313-ac1e-4bea-baa7-9267f28285cf",
              "parent_uuid": "92166d2c-3c29-4212-9f19-7fe6b1d03b82",
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
              "uuid": "0246db6b-1524-4adb-ba86-30e728c22686",
              "parent_uuid": "92166d2c-3c29-4212-9f19-7fe6b1d03b82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d974c847-cacf-4128-871e-d12a7aa2b221",
                  "parent_uuid": "0246db6b-1524-4adb-ba86-30e728c22686",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71503c82-c45d-4bba-bc32-18688b7e191f",
              "parent_uuid": "92166d2c-3c29-4212-9f19-7fe6b1d03b82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c80c37f8-39c7-40f9-9b38-90b1af6b7250",
                  "parent_uuid": "71503c82-c45d-4bba-bc32-18688b7e191f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47586832-692e-49d2-ae16-f0ce008e09c5",
              "parent_uuid": "92166d2c-3c29-4212-9f19-7fe6b1d03b82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99e3e32a-a83e-4ca2-a9a0-514cfdedc96a",
                  "parent_uuid": "47586832-692e-49d2-ae16-f0ce008e09c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abeb5a14-bce7-4253-a4b0-ff75f338a4f3",
              "parent_uuid": "92166d2c-3c29-4212-9f19-7fe6b1d03b82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29b8c83a-c155-4342-8522-39c9fc409f75",
                  "parent_uuid": "abeb5a14-bce7-4253-a4b0-ff75f338a4f3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e141ecd1-70ed-4853-b94b-e7ae14127942",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d997ad7e-e62b-4cd1-b780-f412e4e3a190",
              "parent_uuid": "e141ecd1-70ed-4853-b94b-e7ae14127942",
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
              "uuid": "60f24974-a8b4-4a64-8845-5d6e022fcbd6",
              "parent_uuid": "e141ecd1-70ed-4853-b94b-e7ae14127942",
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
              "uuid": "349e9421-0e43-495b-9655-f788e7529edc",
              "parent_uuid": "e141ecd1-70ed-4853-b94b-e7ae14127942",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ce977cc-d60e-44a1-876f-0871a4650161",
                  "parent_uuid": "349e9421-0e43-495b-9655-f788e7529edc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e51f7af8-6263-4fc8-b4ca-87e5b439386b",
              "parent_uuid": "e141ecd1-70ed-4853-b94b-e7ae14127942",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "534175ef-4408-49aa-ba71-a7c6b044a621",
                  "parent_uuid": "e51f7af8-6263-4fc8-b4ca-87e5b439386b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a2aeb83-9bb9-4a88-b73b-8f68a94e3255",
              "parent_uuid": "e141ecd1-70ed-4853-b94b-e7ae14127942",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6db659ba-48aa-4f3f-ae71-816e22f3aa6e",
                  "parent_uuid": "3a2aeb83-9bb9-4a88-b73b-8f68a94e3255",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e3fac3a-4a1f-4839-bbdc-2005510245dc",
              "parent_uuid": "e141ecd1-70ed-4853-b94b-e7ae14127942",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40251553-13f4-4fc4-bd49-88e99aa3dd78",
                  "parent_uuid": "9e3fac3a-4a1f-4839-bbdc-2005510245dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84cf2a97-05c3-4cd5-8606-f20233379c85",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa36b40a-5948-4ba1-a585-8d5349a4a5f3",
              "parent_uuid": "84cf2a97-05c3-4cd5-8606-f20233379c85",
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
              "uuid": "60c6b389-2c95-45fa-9560-11a8c1449bf2",
              "parent_uuid": "84cf2a97-05c3-4cd5-8606-f20233379c85",
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
              "uuid": "e6c7b474-dc69-4e1a-8565-f33f6c9f3ca4",
              "parent_uuid": "84cf2a97-05c3-4cd5-8606-f20233379c85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f41c73c-905c-4bda-9689-634d45639606",
                  "parent_uuid": "e6c7b474-dc69-4e1a-8565-f33f6c9f3ca4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ff4fbd8-ff47-478f-a944-6cda62203c23",
              "parent_uuid": "84cf2a97-05c3-4cd5-8606-f20233379c85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8dabd90-2330-47f5-94e2-aa9817078d1d",
                  "parent_uuid": "9ff4fbd8-ff47-478f-a944-6cda62203c23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71b7512e-d915-4756-a0e4-9b7a89ef7f9f",
              "parent_uuid": "84cf2a97-05c3-4cd5-8606-f20233379c85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f79be66d-3f19-4b3f-828d-c82e13bc1bb6",
                  "parent_uuid": "71b7512e-d915-4756-a0e4-9b7a89ef7f9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb301f0a-77d8-4736-b03b-4dbab1754d58",
              "parent_uuid": "84cf2a97-05c3-4cd5-8606-f20233379c85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f0cd104-bf5a-4786-84c9-2ff1d3041561",
                  "parent_uuid": "cb301f0a-77d8-4736-b03b-4dbab1754d58",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0480a566-cee3-4239-afdc-57a30a15ebc2",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72fd8ade-ee22-4a00-8ee9-8405330239b5",
              "parent_uuid": "0480a566-cee3-4239-afdc-57a30a15ebc2",
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
          "uuid": "93297d11-e3cc-463f-b4ac-af7103a93d8b",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16e1486c-f9d2-4161-ae94-1323f94f3626",
              "parent_uuid": "93297d11-e3cc-463f-b4ac-af7103a93d8b",
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
          "uuid": "f43f8cf5-9666-40c4-808b-091cb7e8772c",
          "parent_uuid": "3b8af7ed-8956-4c4d-8fec-ea479b9ae55e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20302fa3-8229-49fd-95f6-3bea485ab33e",
              "parent_uuid": "f43f8cf5-9666-40c4-808b-091cb7e8772c",
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
                  "uuid": "23f67a71-0951-4759-b6d3-3a941acbc1b0",
                  "parent_uuid": "20302fa3-8229-49fd-95f6-3bea485ab33e",
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

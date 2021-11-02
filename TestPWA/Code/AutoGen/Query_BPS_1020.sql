
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
  "uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
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
      "uuid": "f477bd5c-bb8e-4aac-b1fd-7b818c43e424",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
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
      "uuid": "22456e21-fb38-4875-8b0a-2dda5eb87a40",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
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
      "uuid": "2f89c2be-8e7f-4412-b5fb-a9a1b85e5d91",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
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
      "uuid": "2fc9011a-94e9-4996-807d-8e1f8030282f",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
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
      "uuid": "c3dde831-410b-4819-9e60-86bbed996e8c",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
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
      "uuid": "46f9e960-5f56-4a4c-ad14-a512ad100bdd",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "29"
        ]
      ],
      "children": [],
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "3eeaba72-c6fe-421c-ac8f-7dfd4a129503",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
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
      "uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
      "parent_uuid": "a83d3b38-1318-4e15-8480-19f09200003b",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "27b8ed7f-9cfa-47e7-9406-4859c7fd09a5",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "6a2b51f1-e534-4bf3-bb36-53ffd88451cd",
              "parent_uuid": "27b8ed7f-9cfa-47e7-9406-4859c7fd09a5",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fe5e8212-45c7-484b-affd-00d99ddd0e32",
              "parent_uuid": "27b8ed7f-9cfa-47e7-9406-4859c7fd09a5",
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
              "uuid": "71f120fe-b7fe-45fe-8227-a4bde9f8b395",
              "parent_uuid": "27b8ed7f-9cfa-47e7-9406-4859c7fd09a5",
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
              "uuid": "d3af3612-571d-45b9-9d95-9d5d2c0a5f88",
              "parent_uuid": "27b8ed7f-9cfa-47e7-9406-4859c7fd09a5",
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
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<span>Bargeldgewerk:     BPS 1020</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "9f3faa71-c81d-4ef1-a7ee-a0be7276ea2f",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "b5cbb57d-9df1-499b-bb06-b747ab311e4c",
              "parent_uuid": "9f3faa71-c81d-4ef1-a7ee-a0be7276ea2f",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Wartungsfirma:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "33406cff-e131-4df5-b6c3-d3465c209c42",
              "parent_uuid": "9f3faa71-c81d-4ef1-a7ee-a0be7276ea2f",
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
              "uuid": "82b44025-7aa4-4fc4-92c3-8b03fe7542c4",
              "parent_uuid": "9f3faa71-c81d-4ef1-a7ee-a0be7276ea2f",
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
              "uuid": "68a222b9-f0d3-4db6-8960-ae7c900a9ca6",
              "parent_uuid": "9f3faa71-c81d-4ef1-a7ee-a0be7276ea2f",
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
              "innerHtml": "<span>Servicetechniker:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 1,
          "lvl": 0
        },
        {
          "uuid": "be906c2d-7641-4706-bc32-7fc62f83d691",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "9cdc96e4-2652-469f-aba8-0ba5bf2a0c2c",
              "parent_uuid": "be906c2d-7641-4706-bc32-7fc62f83d691",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 2px solid #000000"
                ],
                [
                  "height",
                  "20"
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
              "innerHtml": "<span>Stunden:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8da8243f-f399-4366-92b3-e005b74e0d55",
              "parent_uuid": "be906c2d-7641-4706-bc32-7fc62f83d691",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b4efcc55-8ab8-4cc2-995c-4724f830d245",
              "parent_uuid": "be906c2d-7641-4706-bc32-7fc62f83d691",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "29b561c1-914f-4505-a3da-21dc3649d60a",
              "parent_uuid": "be906c2d-7641-4706-bc32-7fc62f83d691",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
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
              "innerHtml": "<span>Noten:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "ecbe8e2b-c89d-4f15-a793-f4cca2a7d45b",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26448f11-bf89-4be1-b4b3-d6524d8a55f7",
              "parent_uuid": "ecbe8e2b-c89d-4f15-a793-f4cca2a7d45b",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "09af04bd-9cd5-40a4-a250-b1064b5224a7",
              "parent_uuid": "ecbe8e2b-c89d-4f15-a793-f4cca2a7d45b",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c209392d-9da4-4426-8a50-69fa2cef5e0e",
              "parent_uuid": "ecbe8e2b-c89d-4f15-a793-f4cca2a7d45b",
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
              "uuid": "49fbe043-d89a-4bd3-9f96-b52df8594ff7",
              "parent_uuid": "ecbe8e2b-c89d-4f15-a793-f4cca2a7d45b",
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
              "uuid": "0f178fb9-cf15-4ee7-99f6-d31b5a95c210",
              "parent_uuid": "ecbe8e2b-c89d-4f15-a793-f4cca2a7d45b",
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
              "uuid": "45dbef62-905b-4ff6-9ac7-4e03341bb976",
              "parent_uuid": "ecbe8e2b-c89d-4f15-a793-f4cca2a7d45b",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "1376cd9e-01a4-4a1e-841d-4e4e7e62843f",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5e704d5d-6cb3-4040-bc4e-a7cd588a2776",
              "parent_uuid": "1376cd9e-01a4-4a1e-841d-4e4e7e62843f",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "68f7c818-d6a1-4d26-9f9f-0180bddacb5d",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23cd5379-7d13-46f4-80e0-d351e3a9f4e9",
              "parent_uuid": "68f7c818-d6a1-4d26-9f9f-0180bddacb5d",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im Eingabemodul tauschen </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c13c5a9d-0354-4573-b8d5-91f218903f6e",
              "parent_uuid": "68f7c818-d6a1-4d26-9f9f-0180bddacb5d",
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
              "innerHtml": "\r\n                    <span>61</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "02580922-e1e4-4e89-9f35-be313e270209",
              "parent_uuid": "68f7c818-d6a1-4d26-9f9f-0180bddacb5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f07f0a2-b272-4422-b96d-c5231366b41f",
                  "parent_uuid": "02580922-e1e4-4e89-9f35-be313e270209",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa739716-8c61-41d7-9ef2-7217fc35bbcd",
              "parent_uuid": "68f7c818-d6a1-4d26-9f9f-0180bddacb5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6bcd5a7-a7f9-46b0-bd35-8456db36d894",
                  "parent_uuid": "aa739716-8c61-41d7-9ef2-7217fc35bbcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8069407-74fe-4344-b8a0-3137ca7ec00e",
              "parent_uuid": "68f7c818-d6a1-4d26-9f9f-0180bddacb5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc0cd9f3-2df4-4e01-ad6c-2c4d1a607e66",
                  "parent_uuid": "f8069407-74fe-4344-b8a0-3137ca7ec00e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f5d140b-ace8-4025-ae4f-e13556a076fa",
              "parent_uuid": "68f7c818-d6a1-4d26-9f9f-0180bddacb5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cbf02a7-56ba-40ab-b6d7-daeec3c078ab",
                  "parent_uuid": "5f5d140b-ace8-4025-ae4f-e13556a076fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0de0040b-34d1-4fbf-9d71-350ea0075282",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "201457c1-44e4-4ecd-bcd8-19082a522e8c",
              "parent_uuid": "0de0040b-34d1-4fbf-9d71-350ea0075282",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im OM, DM und SM prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "256c4173-fbbb-4e0a-b43c-885d0d213494",
              "parent_uuid": "0de0040b-34d1-4fbf-9d71-350ea0075282",
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
              "innerHtml": "\r\n                    <span>68</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "97176963-10b2-4fc8-b81f-20b955ba58ec",
              "parent_uuid": "0de0040b-34d1-4fbf-9d71-350ea0075282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa6919cd-b9bc-4bf9-88c1-cf82cb3e1279",
                  "parent_uuid": "97176963-10b2-4fc8-b81f-20b955ba58ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8768702b-ad8a-43db-84fb-f7179a1dd656",
              "parent_uuid": "0de0040b-34d1-4fbf-9d71-350ea0075282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d518bde-11b4-4b8f-80ce-c72f0074dbee",
                  "parent_uuid": "8768702b-ad8a-43db-84fb-f7179a1dd656",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52a53993-503f-4f0a-a492-6e9d697f8fe2",
              "parent_uuid": "0de0040b-34d1-4fbf-9d71-350ea0075282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d36d80ca-252d-402d-a3b6-318d693b6e98",
                  "parent_uuid": "52a53993-503f-4f0a-a492-6e9d697f8fe2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67929af6-f4a5-49f2-b60d-f4c660eefb07",
              "parent_uuid": "0de0040b-34d1-4fbf-9d71-350ea0075282",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12602e36-e9e6-4ecc-9969-9b16aec06d81",
                  "parent_uuid": "67929af6-f4a5-49f2-b60d-f4c660eefb07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "326786a0-e44d-4890-bf95-566a60f5e274",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85f1e3d7-8a88-4c8e-8fe5-6406160a822e",
              "parent_uuid": "326786a0-e44d-4890-bf95-566a60f5e274",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Antriebsriemen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c1a209e0-1cf0-48e0-8ad7-2f632b76cc98",
              "parent_uuid": "326786a0-e44d-4890-bf95-566a60f5e274",
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
              "innerHtml": "<span>74</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5ca2a0a2-b315-42e0-a6dd-827d5dd368ef",
              "parent_uuid": "326786a0-e44d-4890-bf95-566a60f5e274",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9725e411-1db6-4dad-b150-14d447126d4f",
                  "parent_uuid": "5ca2a0a2-b315-42e0-a6dd-827d5dd368ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ec2dedb-da82-4b2f-9b51-8c2a3e19dca1",
              "parent_uuid": "326786a0-e44d-4890-bf95-566a60f5e274",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a16ee3c-a2a0-4b69-8135-bb3854ede2db",
                  "parent_uuid": "2ec2dedb-da82-4b2f-9b51-8c2a3e19dca1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4925727-8221-485c-9fde-1d7748d1a92a",
              "parent_uuid": "326786a0-e44d-4890-bf95-566a60f5e274",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "775c7460-b7a5-4b3f-898f-a2a7c71f5618",
                  "parent_uuid": "e4925727-8221-485c-9fde-1d7748d1a92a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d547e20-0435-406c-8da2-f3913a8002c2",
              "parent_uuid": "326786a0-e44d-4890-bf95-566a60f5e274",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb507645-033d-47d7-96d7-e4549f0e4b84",
                  "parent_uuid": "7d547e20-0435-406c-8da2-f3913a8002c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7a6914cc-46ef-4d28-9762-dab48c8b7802",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb316aab-232c-4e24-bdc2-43c450e93f96",
              "parent_uuid": "7a6914cc-46ef-4d28-9762-dab48c8b7802",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "115c6f3f-9835-4734-b310-3afeaeed60b1",
              "parent_uuid": "7a6914cc-46ef-4d28-9762-dab48c8b7802",
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
              "innerHtml": "\r\n                    <span>57</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "70f24809-97be-46f9-bd03-b1190894cd65",
              "parent_uuid": "7a6914cc-46ef-4d28-9762-dab48c8b7802",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9f9cb87-bf50-44f4-8d48-b5668845e0f4",
                  "parent_uuid": "70f24809-97be-46f9-bd03-b1190894cd65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c23b4e1-64a7-4eb6-bb11-cfbadf497171",
              "parent_uuid": "7a6914cc-46ef-4d28-9762-dab48c8b7802",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c104df55-48c6-46d5-90a7-58c10bb67c3f",
                  "parent_uuid": "9c23b4e1-64a7-4eb6-bb11-cfbadf497171",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "496cc956-2d8d-4755-93c0-ed41c91bb3e6",
              "parent_uuid": "7a6914cc-46ef-4d28-9762-dab48c8b7802",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4180f05d-0157-450c-97bd-992dcf3fdb8e",
                  "parent_uuid": "496cc956-2d8d-4755-93c0-ed41c91bb3e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e92f89f2-92a0-4c1f-a362-602a13b68b1f",
              "parent_uuid": "7a6914cc-46ef-4d28-9762-dab48c8b7802",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a104c852-60d4-4a8c-96a9-d9969b9c2c6b",
                  "parent_uuid": "e92f89f2-92a0-4c1f-a362-602a13b68b1f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4084930a-565e-4b83-b791-4faa316de4af",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d4217d0-ae62-4812-a8ab-d397a840cb1b",
              "parent_uuid": "4084930a-565e-4b83-b791-4faa316de4af",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhalteblock prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9acd363a-7ac7-46d0-8ed0-2158c02a9dc8",
              "parent_uuid": "4084930a-565e-4b83-b791-4faa316de4af",
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
              "innerHtml": "\r\n                    <span>59</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "18a1e50e-53c0-4027-83e7-63f56bb0d413",
              "parent_uuid": "4084930a-565e-4b83-b791-4faa316de4af",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c6eda06-f0f5-4b25-91b3-64e1cd132fe8",
                  "parent_uuid": "18a1e50e-53c0-4027-83e7-63f56bb0d413",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dce1d79-3dc0-4785-a6f1-6180c2614a1a",
              "parent_uuid": "4084930a-565e-4b83-b791-4faa316de4af",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21f3667c-dbe3-49cc-b1c2-b9609da6b06b",
                  "parent_uuid": "6dce1d79-3dc0-4785-a6f1-6180c2614a1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cec56c1b-9326-4f60-81ee-e34f5312b09b",
              "parent_uuid": "4084930a-565e-4b83-b791-4faa316de4af",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09511ba5-83e7-474a-80f8-d6be15d64189",
                  "parent_uuid": "cec56c1b-9326-4f60-81ee-e34f5312b09b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "939a40bf-0f85-4301-8eac-85c49347639d",
              "parent_uuid": "4084930a-565e-4b83-b791-4faa316de4af",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf4b03a1-7be5-45fb-85c3-0ba2fb0caa70",
                  "parent_uuid": "939a40bf-0f85-4301-8eac-85c49347639d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "00c4f1fe-be88-47cf-a6f0-dc3e2e5d4fa0",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ebb17a86-12c4-43b5-907e-3c0e05ada1ca",
              "parent_uuid": "00c4f1fe-be88-47cf-a6f0-dc3e2e5d4fa0",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>BN-Eingabebereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "23be1eac-5bbb-4f51-8079-077a9a45cafe",
              "parent_uuid": "00c4f1fe-be88-47cf-a6f0-dc3e2e5d4fa0",
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
              "innerHtml": "\r\n                    <span>27</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a505e562-934e-442b-a121-b6f77b5d9f19",
              "parent_uuid": "00c4f1fe-be88-47cf-a6f0-dc3e2e5d4fa0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c87152f3-99b3-4def-b75c-185398b4fc71",
                  "parent_uuid": "a505e562-934e-442b-a121-b6f77b5d9f19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6fac767-c477-46ad-b882-36b99f67bf94",
              "parent_uuid": "00c4f1fe-be88-47cf-a6f0-dc3e2e5d4fa0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5916d15a-6311-4764-abc3-8eaf40d0cfca",
                  "parent_uuid": "e6fac767-c477-46ad-b882-36b99f67bf94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d13f799-ca85-428b-a360-2560844e0f7b",
              "parent_uuid": "00c4f1fe-be88-47cf-a6f0-dc3e2e5d4fa0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5ba1cb9-f051-4f45-ac38-a58e22a4b59c",
                  "parent_uuid": "2d13f799-ca85-428b-a360-2560844e0f7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "413327d1-70ca-4856-abf5-d3d96a2c192e",
              "parent_uuid": "00c4f1fe-be88-47cf-a6f0-dc3e2e5d4fa0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94b887a5-3b1b-4de0-830b-2bbc631484b1",
                  "parent_uuid": "413327d1-70ca-4856-abf5-d3d96a2c192e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c015b9d1-f7e8-46f4-9965-40e60fa3a951",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa54b18f-a4e6-4f6a-9dec-c9f487e97c98",
              "parent_uuid": "c015b9d1-f7e8-46f4-9965-40e60fa3a951",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ed3d92e6-7ad6-472e-b29e-ef4797ae77b4",
              "parent_uuid": "c015b9d1-f7e8-46f4-9965-40e60fa3a951",
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
              "innerHtml": "\r\n                    <span>80</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6932787a-3fe4-4852-b274-be8f546cc756",
              "parent_uuid": "c015b9d1-f7e8-46f4-9965-40e60fa3a951",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5ca06d1-7173-4fa1-bf45-3b567817cd21",
                  "parent_uuid": "6932787a-3fe4-4852-b274-be8f546cc756",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ba706e3-4ad3-4b5b-94f8-f8d46dcc0cb8",
              "parent_uuid": "c015b9d1-f7e8-46f4-9965-40e60fa3a951",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34fa9a65-adf9-456c-8955-e0c99a9ec7c6",
                  "parent_uuid": "9ba706e3-4ad3-4b5b-94f8-f8d46dcc0cb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39cd7d43-3353-488c-8d4e-cac8e6fcedb5",
              "parent_uuid": "c015b9d1-f7e8-46f4-9965-40e60fa3a951",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e2869bd-2a93-437d-8dad-4ec9b3a08a9f",
                  "parent_uuid": "39cd7d43-3353-488c-8d4e-cac8e6fcedb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e6f49ce-9b92-46ba-98c7-ad18451f63b5",
              "parent_uuid": "c015b9d1-f7e8-46f4-9965-40e60fa3a951",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cec9fb69-b48d-4f5b-a6db-7a2696d80032",
                  "parent_uuid": "8e6f49ce-9b92-46ba-98c7-ad18451f63b5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35853f62-4294-47c6-a29c-3fe18fb4d7d0",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e02eab8-8350-4237-882c-d126d6256881",
              "parent_uuid": "35853f62-4294-47c6-a29c-3fe18fb4d7d0",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Leitbleche und Weichenflügel im Shredderbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "89d3f120-bfa1-4178-a43e-6ab6acbe2564",
              "parent_uuid": "35853f62-4294-47c6-a29c-3fe18fb4d7d0",
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
              "innerHtml": "\r\n                    <span>76</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "510cb97f-3b07-4dc0-a3a2-73f6cabdca7a",
              "parent_uuid": "35853f62-4294-47c6-a29c-3fe18fb4d7d0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4782c45c-b29d-4dda-a07a-42456c75b84e",
                  "parent_uuid": "510cb97f-3b07-4dc0-a3a2-73f6cabdca7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b8fd7ce-4ce5-46d3-8adc-562f638f488e",
              "parent_uuid": "35853f62-4294-47c6-a29c-3fe18fb4d7d0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "854493f5-7c3d-4119-a26b-00032246507e",
                  "parent_uuid": "9b8fd7ce-4ce5-46d3-8adc-562f638f488e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76cca44b-5ad3-4964-b323-367f32e79e6a",
              "parent_uuid": "35853f62-4294-47c6-a29c-3fe18fb4d7d0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "983b453b-baa3-405a-a4b5-ae720404d18a",
                  "parent_uuid": "76cca44b-5ad3-4964-b323-367f32e79e6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21fd7d96-72e6-44a0-a4c6-8562610744d2",
              "parent_uuid": "35853f62-4294-47c6-a29c-3fe18fb4d7d0",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6dcf76c3-35c4-446b-a73e-c6bc4a1542e1",
                  "parent_uuid": "21fd7d96-72e6-44a0-a4c6-8562610744d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "34e6ab5e-fb1c-4a48-bbb6-c32aeb0d453b",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "624f02ea-e971-429a-81cf-e7b7fa9f3fe8",
              "parent_uuid": "34e6ab5e-fb1c-4a48-bbb6-c32aeb0d453b",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Filtermatten der Lüfter reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f639b7a5-feb1-4df1-9c7d-38455af73430",
              "parent_uuid": "34e6ab5e-fb1c-4a48-bbb6-c32aeb0d453b",
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
              "innerHtml": "\r\n                    <span>85</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9f569e77-0a13-4a7f-96f3-2166a4a86a59",
              "parent_uuid": "34e6ab5e-fb1c-4a48-bbb6-c32aeb0d453b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d36b813-8359-4ca9-adf8-d9b8a8b932ae",
                  "parent_uuid": "9f569e77-0a13-4a7f-96f3-2166a4a86a59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c3b8019-6132-4bd6-954d-c05cbf2ebfec",
              "parent_uuid": "34e6ab5e-fb1c-4a48-bbb6-c32aeb0d453b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8873330e-e2f9-4b21-a462-d6be4d834efb",
                  "parent_uuid": "9c3b8019-6132-4bd6-954d-c05cbf2ebfec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcdd9b6d-745f-467b-b036-4a1b89bfae13",
              "parent_uuid": "34e6ab5e-fb1c-4a48-bbb6-c32aeb0d453b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8c04c91-8235-4760-a098-096f2495758e",
                  "parent_uuid": "fcdd9b6d-745f-467b-b036-4a1b89bfae13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8ae4d62-75d9-4c2d-837c-18982ea0c433",
              "parent_uuid": "34e6ab5e-fb1c-4a48-bbb6-c32aeb0d453b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66c6f3dc-75d1-4013-b758-74a74b239ba4",
                  "parent_uuid": "b8ae4d62-75d9-4c2d-837c-18982ea0c433",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "992998e7-8b93-499f-883a-d3981702772e",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "29b5e2a6-cb99-4f4a-8738-da52b8ca1296",
              "parent_uuid": "992998e7-8b93-499f-883a-d3981702772e",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Warnzeichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "309b9505-c34e-4fb5-9ab0-f586f06156db",
              "parent_uuid": "992998e7-8b93-499f-883a-d3981702772e",
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
              "innerHtml": "\r\n                    <span>81</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7ec6d901-4306-42d9-8512-ff76b870e141",
              "parent_uuid": "992998e7-8b93-499f-883a-d3981702772e",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de718b1b-208c-46f8-a6c8-875629dc0c73",
                  "parent_uuid": "7ec6d901-4306-42d9-8512-ff76b870e141",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19445d57-ba2e-47c8-8f29-7f9ebaa548ee",
              "parent_uuid": "992998e7-8b93-499f-883a-d3981702772e",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38434a21-5767-41b4-95bf-4ea7e14b5648",
                  "parent_uuid": "19445d57-ba2e-47c8-8f29-7f9ebaa548ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "975d74cd-e7a5-44d0-958b-ebca66edb90e",
              "parent_uuid": "992998e7-8b93-499f-883a-d3981702772e",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38d0ab9e-a3bb-4a6c-98f9-c15c8e944a77",
                  "parent_uuid": "975d74cd-e7a5-44d0-958b-ebca66edb90e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "314cc747-6bea-4793-a58c-4166149359ac",
              "parent_uuid": "992998e7-8b93-499f-883a-d3981702772e",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87045c5a-540b-4c97-875b-ade79d9159bb",
                  "parent_uuid": "314cc747-6bea-4793-a58c-4166149359ac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc5661df-f113-49fa-b23c-721ddaa79e9b",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d517464-45c8-4b4f-acdc-fd76c0f0a069",
              "parent_uuid": "bc5661df-f113-49fa-b23c-721ddaa79e9b",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Staplerscheiben reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "48a9e960-cfff-43b9-9332-d8178b9832bf",
              "parent_uuid": "bc5661df-f113-49fa-b23c-721ddaa79e9b",
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
              "innerHtml": "\r\n                    <span>56</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "093752ce-0a42-4b91-b0ee-b7ff61d2b0e5",
              "parent_uuid": "bc5661df-f113-49fa-b23c-721ddaa79e9b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d81b17b0-7020-40e0-9f4e-d4482c49cfe1",
                  "parent_uuid": "093752ce-0a42-4b91-b0ee-b7ff61d2b0e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fed580fa-ce73-456e-bd2a-3642d705d246",
              "parent_uuid": "bc5661df-f113-49fa-b23c-721ddaa79e9b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03801a68-5f6d-4604-ae98-7eff48a42bd2",
                  "parent_uuid": "fed580fa-ce73-456e-bd2a-3642d705d246",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b44b1b9a-4954-4443-a42b-d938581f0ffa",
              "parent_uuid": "bc5661df-f113-49fa-b23c-721ddaa79e9b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82a683e5-edaf-4993-bd44-86e1c1a8583a",
                  "parent_uuid": "b44b1b9a-4954-4443-a42b-d938581f0ffa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cf4cbc9-d52f-476f-a6f1-e86cfc7532ff",
              "parent_uuid": "bc5661df-f113-49fa-b23c-721ddaa79e9b",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec850950-0451-4d91-8e68-e85fe9283007",
                  "parent_uuid": "7cf4cbc9-d52f-476f-a6f1-e86cfc7532ff",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e6f3b8ee-d504-4507-9e0e-b0658d6441d5",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3970f5d0-e022-400b-bd2d-a9eb5a2f63cc",
              "parent_uuid": "e6f3b8ee-d504-4507-9e0e-b0658d6441d5",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Flachriemen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0ae64411-85ac-437b-8f09-5bde1886fc03",
              "parent_uuid": "e6f3b8ee-d504-4507-9e0e-b0658d6441d5",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "864be3cb-78f7-4101-b404-46b33be13409",
              "parent_uuid": "e6f3b8ee-d504-4507-9e0e-b0658d6441d5",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d091f5b-4491-4ecb-8d3c-572391d9a3e0",
                  "parent_uuid": "864be3cb-78f7-4101-b404-46b33be13409",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0075ae20-9eff-4f67-9365-0082e7f589f6",
              "parent_uuid": "e6f3b8ee-d504-4507-9e0e-b0658d6441d5",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0b0a3d7-754c-4226-ad3a-5913fc2709d9",
                  "parent_uuid": "0075ae20-9eff-4f67-9365-0082e7f589f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ffa9c02-a527-4558-a010-476bf8a0085e",
              "parent_uuid": "e6f3b8ee-d504-4507-9e0e-b0658d6441d5",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1236cb9b-7338-48fa-b9ff-31b610a6a272",
                  "parent_uuid": "9ffa9c02-a527-4558-a010-476bf8a0085e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8015681f-2be1-44c8-b81a-b02e30919850",
              "parent_uuid": "e6f3b8ee-d504-4507-9e0e-b0658d6441d5",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce7d00d8-0db6-49e5-a71a-91ad0edf94d1",
                  "parent_uuid": "8015681f-2be1-44c8-b81a-b02e30919850",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "85368249-0bc0-423a-ab7a-07a696b899fb",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb5e933a-2780-4270-b96f-9e057143e270",
              "parent_uuid": "85368249-0bc0-423a-ab7a-07a696b899fb",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "29"
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "87cfa2cc-9860-45a0-86cc-4bbd2a6ac062",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3035ca05-dc8e-4dd0-a167-226eb3dd1628",
              "parent_uuid": "87cfa2cc-9860-45a0-86cc-4bbd2a6ac062",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "bef631b0-ec61-4df5-abef-c12d841b86f3",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98e5a24a-1135-42ea-8905-aa884dccc5d4",
              "parent_uuid": "bef631b0-ec61-4df5-abef-c12d841b86f3",
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
                  "uuid": "66b58ced-3891-4b27-b110-7199234e77e2",
                  "parent_uuid": "98e5a24a-1135-42ea-8905-aa884dccc5d4",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "3d0906c6-f3d5-4f60-9d07-5dae443a768e",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c120a43-6253-4507-88e7-acf00641851a",
              "parent_uuid": "3d0906c6-f3d5-4f60-9d07-5dae443a768e",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "ac0d1ab9-f4f1-4462-bda7-49ce748fd88d",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "18fd65d5-2885-4d8b-a869-74e310e530fa",
              "parent_uuid": "ac0d1ab9-f4f1-4462-bda7-49ce748fd88d",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "20"
                ],
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei eingeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "f3de248c-b9d0-4e46-9369-18889b8b3b49",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f37b7212-b34d-464c-9a6f-95d34a7ff5d0",
              "parent_uuid": "f3de248c-b9d0-4e46-9369-18889b8b3b49",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3e03961f-46a6-45c5-8d43-3efb493b7a4a",
              "parent_uuid": "f3de248c-b9d0-4e46-9369-18889b8b3b49",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7132187f-4c3e-492b-9a1e-67c83903876a",
              "parent_uuid": "f3de248c-b9d0-4e46-9369-18889b8b3b49",
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
              "uuid": "193ea762-3163-4c67-8065-c013e875548a",
              "parent_uuid": "f3de248c-b9d0-4e46-9369-18889b8b3b49",
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
              "uuid": "a4bae53a-5be5-4786-9f93-5acd699816ac",
              "parent_uuid": "f3de248c-b9d0-4e46-9369-18889b8b3b49",
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
              "uuid": "67b84bd6-58ab-4682-b54e-586954e8664b",
              "parent_uuid": "f3de248c-b9d0-4e46-9369-18889b8b3b49",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "1443b3c2-8859-4bc9-a1b8-b2f25be1ff77",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0271eccf-eacd-42fa-8c53-d33553516f33",
              "parent_uuid": "1443b3c2-8859-4bc9-a1b8-b2f25be1ff77",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder - Sicherheitsbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2dda9ec7-4b9b-41e1-8cd3-e4a80e3c8d14",
              "parent_uuid": "1443b3c2-8859-4bc9-a1b8-b2f25be1ff77",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dab2ecf7-c77a-4867-ac58-e88d4d59ad98",
              "parent_uuid": "1443b3c2-8859-4bc9-a1b8-b2f25be1ff77",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa6a65ae-fa28-4683-b932-6783a42198e0",
                  "parent_uuid": "dab2ecf7-c77a-4867-ac58-e88d4d59ad98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f4bd91a-2a1b-4c6f-bb6f-b5472596aeac",
              "parent_uuid": "1443b3c2-8859-4bc9-a1b8-b2f25be1ff77",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06fa5520-7350-4a8f-a0fd-c7a445109cc1",
                  "parent_uuid": "3f4bd91a-2a1b-4c6f-bb6f-b5472596aeac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6ef4a76-0c08-4d53-a9cc-6c7bcc487d83",
              "parent_uuid": "1443b3c2-8859-4bc9-a1b8-b2f25be1ff77",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce62092e-e84c-427a-a077-22b1ac53446c",
                  "parent_uuid": "a6ef4a76-0c08-4d53-a9cc-6c7bcc487d83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7453bf33-98b4-42eb-93c3-5ce5065e4104",
              "parent_uuid": "1443b3c2-8859-4bc9-a1b8-b2f25be1ff77",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97a35c81-714f-4d97-af8e-d750fdf8f77d",
                  "parent_uuid": "7453bf33-98b4-42eb-93c3-5ce5065e4104",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2673684e-1c48-422e-be8b-539fb2b8d8de",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "361d792b-2df3-4fcd-a932-b18446fbf689",
              "parent_uuid": "2673684e-1c48-422e-be8b-539fb2b8d8de",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Luftleitplatte und Reflextaster prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "615d4e54-9303-45c3-a5bd-6050283cb269",
              "parent_uuid": "2673684e-1c48-422e-be8b-539fb2b8d8de",
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
              "innerHtml": "\r\n                    <span>89</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "09168780-b7be-4cf2-8af2-118bb85099ae",
              "parent_uuid": "2673684e-1c48-422e-be8b-539fb2b8d8de",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a373b76-5e0f-44d1-aa4b-ef7cb9e73426",
                  "parent_uuid": "09168780-b7be-4cf2-8af2-118bb85099ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ee1eb78-b477-485e-b440-e4e836e6bf60",
              "parent_uuid": "2673684e-1c48-422e-be8b-539fb2b8d8de",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed623e5a-7465-48d1-85d5-a46a22b2efe3",
                  "parent_uuid": "1ee1eb78-b477-485e-b440-e4e836e6bf60",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b775925-fe4d-4c4a-ad11-28cbf0998061",
              "parent_uuid": "2673684e-1c48-422e-be8b-539fb2b8d8de",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b830e0ae-bd2c-4d4a-9013-d1738fe63208",
                  "parent_uuid": "0b775925-fe4d-4c4a-ad11-28cbf0998061",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "615269fa-2176-4e40-8a0c-8b9ccb653e5d",
              "parent_uuid": "2673684e-1c48-422e-be8b-539fb2b8d8de",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cb4d7e5-7e0e-4a27-94d6-dd237f407d65",
                  "parent_uuid": "615269fa-2176-4e40-8a0c-8b9ccb653e5d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c512d64d-8359-44a7-854f-aa5f4ae51a89",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f6b0eb8-0a1c-4bcb-ae22-dceb2af1b7a5",
              "parent_uuid": "c512d64d-8359-44a7-854f-aa5f4ae51a89",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Unterdrucksystem prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "30df75ca-9546-4020-9f15-e7f07928e1b3",
              "parent_uuid": "c512d64d-8359-44a7-854f-aa5f4ae51a89",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1cb8adba-b839-4e12-96df-5974cd7ad48b",
              "parent_uuid": "c512d64d-8359-44a7-854f-aa5f4ae51a89",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d949372-1189-407a-bc66-5d48b1d9f894",
                  "parent_uuid": "1cb8adba-b839-4e12-96df-5974cd7ad48b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49b7d610-726e-44d1-9a65-f7a345efa87f",
              "parent_uuid": "c512d64d-8359-44a7-854f-aa5f4ae51a89",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "149ee117-551e-434e-b794-72274e2bd3b1",
                  "parent_uuid": "49b7d610-726e-44d1-9a65-f7a345efa87f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f93242a3-b4ca-4826-bc11-bccfa4c556bd",
              "parent_uuid": "c512d64d-8359-44a7-854f-aa5f4ae51a89",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca32a0ac-1c7b-4da0-91d3-0d015bdf0a85",
                  "parent_uuid": "f93242a3-b4ca-4826-bc11-bccfa4c556bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab9898f7-7002-4129-bc30-0f0fd4c474fa",
              "parent_uuid": "c512d64d-8359-44a7-854f-aa5f4ae51a89",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50aff415-89de-44e9-8190-8ea5d8dcc76f",
                  "parent_uuid": "ab9898f7-7002-4129-bc30-0f0fd4c474fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "846108b8-15b3-449b-8463-8794d3920017",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9b2945d-0c98-4ee8-8723-6e4332873790",
              "parent_uuid": "846108b8-15b3-449b-8463-8794d3920017",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Lüfter prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c04de96e-a3c8-4d57-bf20-551b57f9650d",
              "parent_uuid": "846108b8-15b3-449b-8463-8794d3920017",
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
              "innerHtml": "\r\n                    <span>88</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "18d11468-f2f0-443e-9e7f-6236be09f504",
              "parent_uuid": "846108b8-15b3-449b-8463-8794d3920017",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ad86078-40b3-40a9-a46b-04ed11f02216",
                  "parent_uuid": "18d11468-f2f0-443e-9e7f-6236be09f504",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ec23986-f065-4e20-8647-3ade2e76924e",
              "parent_uuid": "846108b8-15b3-449b-8463-8794d3920017",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a0e462f-dd09-4c5d-a191-80aa0998cd95",
                  "parent_uuid": "4ec23986-f065-4e20-8647-3ade2e76924e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c689e6bc-67f6-48e3-9d50-e984628cee55",
              "parent_uuid": "846108b8-15b3-449b-8463-8794d3920017",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75d45903-cd3b-4e8c-ba95-e7789055e873",
                  "parent_uuid": "c689e6bc-67f6-48e3-9d50-e984628cee55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8402e059-2d8c-4a44-bd5a-786f0668e4a4",
              "parent_uuid": "846108b8-15b3-449b-8463-8794d3920017",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a646b55-5216-4439-b84b-42a013f42c5f",
                  "parent_uuid": "8402e059-2d8c-4a44-bd5a-786f0668e4a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26909f18-a550-45c7-9ce3-2c4e0e6c448f",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "25f9e34d-be1d-4188-a8c5-9d34eff4ad62",
              "parent_uuid": "26909f18-a550-45c7-9ce3-2c4e0e6c448f",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "20"
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "1a6e5ecd-7be6-477e-9eca-f493831376e2",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "699e8f68-6f2f-4e34-98c7-d8aa5bad1a03",
              "parent_uuid": "1a6e5ecd-7be6-477e-9eca-f493831376e2",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "0f2dba52-dd51-4271-884e-089031372a50",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e17ecb19-ea0b-4d78-b0d9-25b165968b9d",
              "parent_uuid": "0f2dba52-dd51-4271-884e-089031372a50",
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
                  "uuid": "2ef43f11-f581-4027-84ac-b57bbbb1d3c3",
                  "parent_uuid": "e17ecb19-ea0b-4d78-b0d9-25b165968b9d",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "7aed72a4-11c0-4239-997f-7b796c689b0a",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "100c97b8-6703-476f-83d9-49ac3f7ef1c4",
              "parent_uuid": "7aed72a4-11c0-4239-997f-7b796c689b0a",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "576745d1-19e2-4077-8373-ceb68b96e4be",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "21f63c08-354a-4a41-afd3-06ba55db3e23",
              "parent_uuid": "576745d1-19e2-4077-8373-ceb68b96e4be",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "20"
                ],
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei laufender Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "6f3c9002-4c4c-4e0c-9017-ca52962b7a30",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2beaf93b-a9ad-473d-a420-930512f360c2",
              "parent_uuid": "6f3c9002-4c4c-4e0c-9017-ca52962b7a30",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "72fa30c0-a888-46c6-b4b7-a3145181b2b7",
              "parent_uuid": "6f3c9002-4c4c-4e0c-9017-ca52962b7a30",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4ddbc5e7-c1a8-44cf-b5a2-8ff8a85cfed3",
              "parent_uuid": "6f3c9002-4c4c-4e0c-9017-ca52962b7a30",
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
              "uuid": "a3bacfda-847b-438f-a8af-deca761539c7",
              "parent_uuid": "6f3c9002-4c4c-4e0c-9017-ca52962b7a30",
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
              "uuid": "ea55a406-f9e2-4cbf-91a6-1bf2f34fc63a",
              "parent_uuid": "6f3c9002-4c4c-4e0c-9017-ca52962b7a30",
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
              "uuid": "9f52a77a-f4b3-46e5-8edf-24769a283482",
              "parent_uuid": "6f3c9002-4c4c-4e0c-9017-ca52962b7a30",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "c4cb5d18-9148-48f8-8820-e1f08d3a73f2",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "deda5d0b-e005-459b-bc30-bf13e939565c",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "714b0660-056b-45b5-9e27-792054e6e968",
              "parent_uuid": "deda5d0b-e005-459b-bc30-bf13e939565c",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen auf Gleichlauf überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2d534d47-09f5-4b49-b87e-812931548e45",
              "parent_uuid": "deda5d0b-e005-459b-bc30-bf13e939565c",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e72f99db-dd09-4e32-8c27-a9e941b1119e",
              "parent_uuid": "deda5d0b-e005-459b-bc30-bf13e939565c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd403dc6-7c3c-477b-b906-3edab1f33d6d",
                  "parent_uuid": "e72f99db-dd09-4e32-8c27-a9e941b1119e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c515c75-8d6e-4f76-9602-9967c01c9508",
              "parent_uuid": "deda5d0b-e005-459b-bc30-bf13e939565c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9f5ba61-2661-4438-beb2-069a883a63f5",
                  "parent_uuid": "6c515c75-8d6e-4f76-9602-9967c01c9508",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4088342a-40c2-441e-afce-1d40d40aeff8",
              "parent_uuid": "deda5d0b-e005-459b-bc30-bf13e939565c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "328b1bd1-b1dc-437a-aec0-3df04bbe1aa2",
                  "parent_uuid": "4088342a-40c2-441e-afce-1d40d40aeff8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e61d636b-2036-4e2c-b41a-23396bf6a220",
              "parent_uuid": "deda5d0b-e005-459b-bc30-bf13e939565c",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9d8dcac-e50c-49ea-bd68-3012c0f3b800",
                  "parent_uuid": "e61d636b-2036-4e2c-b41a-23396bf6a220",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "4193bae7-1387-4edf-b9f4-8852b6c3ded1",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c80658d1-7597-4485-8a49-4a28fd53ff74",
              "parent_uuid": "4193bae7-1387-4edf-b9f4-8852b6c3ded1",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Transport- und Antriebsrollen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b5ccc9ef-e18b-4448-ac28-c9fbfac0d3a4",
              "parent_uuid": "4193bae7-1387-4edf-b9f4-8852b6c3ded1",
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
              "innerHtml": "\r\n                    <span>93</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "abf9eaa5-b99b-4728-a6af-f1e77cea0c91",
              "parent_uuid": "4193bae7-1387-4edf-b9f4-8852b6c3ded1",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e50ca06a-1c56-4236-85a0-e21ce7d4aa4a",
                  "parent_uuid": "abf9eaa5-b99b-4728-a6af-f1e77cea0c91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd18ae2c-d20d-4059-a636-381c6b3c6318",
              "parent_uuid": "4193bae7-1387-4edf-b9f4-8852b6c3ded1",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e05413c-6ca6-4f34-bcc1-8176cd5dfdd7",
                  "parent_uuid": "dd18ae2c-d20d-4059-a636-381c6b3c6318",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e116cb39-c997-4cc7-8d16-390e237890e1",
              "parent_uuid": "4193bae7-1387-4edf-b9f4-8852b6c3ded1",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "680fa8e1-4744-4151-8a77-06e5ec993cde",
                  "parent_uuid": "e116cb39-c997-4cc7-8d16-390e237890e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b22b7d9d-964e-4a8b-819c-184d102b30e9",
              "parent_uuid": "4193bae7-1387-4edf-b9f4-8852b6c3ded1",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf5dd877-86c5-4e50-8b6d-4847d2bd8647",
                  "parent_uuid": "b22b7d9d-964e-4a8b-819c-184d102b30e9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "71f79c00-4d20-4ac7-a222-f4605fbfef20",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec6ea851-a539-4266-8d6a-f7aade77d7aa",
              "parent_uuid": "71f79c00-4d20-4ac7-a222-f4605fbfef20",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolendruckköpfe und Farbbänder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "00af35c8-a40c-4080-be80-560ab9434428",
              "parent_uuid": "71f79c00-4d20-4ac7-a222-f4605fbfef20",
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
              "innerHtml": "\r\n                    <span>96</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "07235fc7-4196-4637-ad6d-18fe0269ab26",
              "parent_uuid": "71f79c00-4d20-4ac7-a222-f4605fbfef20",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "024dfce0-996c-449e-9ab3-fb0cdc903352",
                  "parent_uuid": "07235fc7-4196-4637-ad6d-18fe0269ab26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc8e58dc-ce66-42cb-9f32-6434852f0f32",
              "parent_uuid": "71f79c00-4d20-4ac7-a222-f4605fbfef20",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a882b411-3fe4-4ec2-85ac-8ec7d355436a",
                  "parent_uuid": "fc8e58dc-ce66-42cb-9f32-6434852f0f32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6cab6c1-79c9-47e7-8b2e-19f6bdd59b2b",
              "parent_uuid": "71f79c00-4d20-4ac7-a222-f4605fbfef20",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "571d72db-bd70-4bb9-8981-61c247b0b923",
                  "parent_uuid": "a6cab6c1-79c9-47e7-8b2e-19f6bdd59b2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69bd69f7-4ef2-4ed3-961f-8c88270d686c",
              "parent_uuid": "71f79c00-4d20-4ac7-a222-f4605fbfef20",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0004d792-ff9e-46b9-b3c9-731eb2c24025",
                  "parent_uuid": "69bd69f7-4ef2-4ed3-961f-8c88270d686c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "626b5356-408f-445d-ad12-f8be7212ecfd",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0da78ed4-a821-4bc4-b2f8-c75896e475c3",
              "parent_uuid": "626b5356-408f-445d-ad12-f8be7212ecfd",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolierungsvorgang prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "dae81707-a9e1-492e-8aa6-2437680e979c",
              "parent_uuid": "626b5356-408f-445d-ad12-f8be7212ecfd",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "23571829-2aba-4aa2-9973-e9bac5e6d8b9",
              "parent_uuid": "626b5356-408f-445d-ad12-f8be7212ecfd",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e5b4acb-e041-45a4-bb35-5b16f71bbf97",
                  "parent_uuid": "23571829-2aba-4aa2-9973-e9bac5e6d8b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1b2b6d2-2d10-4e67-afd6-e3383e4dce32",
              "parent_uuid": "626b5356-408f-445d-ad12-f8be7212ecfd",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "072dc290-baa0-4951-a12d-591979a84b02",
                  "parent_uuid": "a1b2b6d2-2d10-4e67-afd6-e3383e4dce32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2c760e8-3fb4-4d48-b4b8-b78991da0824",
              "parent_uuid": "626b5356-408f-445d-ad12-f8be7212ecfd",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a3df008-3010-4e84-84c8-fbbdddae449a",
                  "parent_uuid": "f2c760e8-3fb4-4d48-b4b8-b78991da0824",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0c4a59b-0b89-4734-9f65-05e49f7b7090",
              "parent_uuid": "626b5356-408f-445d-ad12-f8be7212ecfd",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86703bdf-6889-45c3-945f-f675fa2f2d7a",
                  "parent_uuid": "b0c4a59b-0b89-4734-9f65-05e49f7b7090",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "120f6481-2f8b-4512-80a3-72b321294010",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e44d2b4f-61e5-4876-a6d7-6b06782d4faf",
              "parent_uuid": "120f6481-2f8b-4512-80a3-72b321294010",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder- Saugluftüberwachung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2f2ac5c1-f9e4-4dbb-a47a-2d1a452f371c",
              "parent_uuid": "120f6481-2f8b-4512-80a3-72b321294010",
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
              "innerHtml": "\r\n                    <span>124</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0fb51978-0b92-44a3-ad1a-caaac3539245",
              "parent_uuid": "120f6481-2f8b-4512-80a3-72b321294010",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b660a542-afd4-4b79-985d-0eecc2f2991b",
                  "parent_uuid": "0fb51978-0b92-44a3-ad1a-caaac3539245",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f85fef5-aa0a-490d-88f3-bfe7bae90ca6",
              "parent_uuid": "120f6481-2f8b-4512-80a3-72b321294010",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b41e142-8b7d-4d7e-bbc2-2d33aec0d8ae",
                  "parent_uuid": "4f85fef5-aa0a-490d-88f3-bfe7bae90ca6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3510a00-4337-4aa0-8f93-943c219ff0ae",
              "parent_uuid": "120f6481-2f8b-4512-80a3-72b321294010",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7c11fd8-3b87-4197-9e2e-f7a3974c7baf",
                  "parent_uuid": "d3510a00-4337-4aa0-8f93-943c219ff0ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "faf5d2da-2e00-4fbd-9781-811d2b3ae1d7",
              "parent_uuid": "120f6481-2f8b-4512-80a3-72b321294010",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aebe6d33-b1f0-46ba-a70f-983ee9189ba0",
                  "parent_uuid": "faf5d2da-2e00-4fbd-9781-811d2b3ae1d7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "de13421e-11e3-4beb-a66d-d2acace2803d",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1fab3107-058d-4f24-b916-c7f5c52de42f",
              "parent_uuid": "de13421e-11e3-4beb-a66d-d2acace2803d",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Sicherheitseinrichtung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a9ba81af-1a44-4da0-87a4-232c7b458ac1",
              "parent_uuid": "de13421e-11e3-4beb-a66d-d2acace2803d",
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
              "innerHtml": "\r\n                    <span>91</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a501a4aa-6b61-4fec-9e3a-0f7346070515",
              "parent_uuid": "de13421e-11e3-4beb-a66d-d2acace2803d",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04343bf3-cb07-4149-b408-66fdfba0205d",
                  "parent_uuid": "a501a4aa-6b61-4fec-9e3a-0f7346070515",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99b6c335-8f78-4dc4-ae78-01e149c95d1e",
              "parent_uuid": "de13421e-11e3-4beb-a66d-d2acace2803d",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e006128e-7efb-4c03-ad69-dd109cb2835a",
                  "parent_uuid": "99b6c335-8f78-4dc4-ae78-01e149c95d1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a91b2379-6cda-4ad7-b5a3-113da18c5177",
              "parent_uuid": "de13421e-11e3-4beb-a66d-d2acace2803d",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f566a25-8d17-4c3a-ba61-3c539300321b",
                  "parent_uuid": "a91b2379-6cda-4ad7-b5a3-113da18c5177",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba7fe439-babb-4959-98ed-dca40188ad8c",
              "parent_uuid": "de13421e-11e3-4beb-a66d-d2acace2803d",
              "tagName": "td",
              "properties": [
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
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1f21a79-ae23-47e7-aab0-3b4be853e496",
                  "parent_uuid": "ba7fe439-babb-4959-98ed-dca40188ad8c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "15d49e91-e5d4-4c15-9fca-aebacdaf60e8",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0dc883e5-9bc9-4e3f-b9ed-85a05fc8607a",
              "parent_uuid": "15d49e91-e5d4-4c15-9fca-aebacdaf60e8",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "20"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "095dad0c-3d22-4844-a3e3-dcc69507a8c0",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4adc8ba-7c67-4d2a-a9bd-1a38cf0d59dd",
              "parent_uuid": "095dad0c-3d22-4844-a3e3-dcc69507a8c0",
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "7597b85d-d977-4776-96e9-94702784737e",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53d01f34-8b0e-42d3-94a8-f06fdf1056ce",
              "parent_uuid": "7597b85d-d977-4776-96e9-94702784737e",
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
                  "uuid": "91414e73-996a-4471-8c7f-60900fd1a23b",
                  "parent_uuid": "53d01f34-8b0e-42d3-94a8-f06fdf1056ce",
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "189ba3b9-9d50-431d-86f5-c6a0342f2b17",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c67855f-1ff8-4437-9a02-d9a654c545f6",
              "parent_uuid": "189ba3b9-9d50-431d-86f5-c6a0342f2b17",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
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
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "ab20fc5b-4a19-42c3-8ddd-354aea5addbc",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9bdf641b-ba02-49d5-83bf-b6ff85ce8da2",
              "parent_uuid": "ab20fc5b-4a19-42c3-8ddd-354aea5addbc",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "20"
                ],
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Benötigte Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "5c1a117f-8f2a-4122-82db-66ed70250dc8",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c7e8344-014a-48e6-ab26-637acbfd963e",
              "parent_uuid": "5c1a117f-8f2a-4122-82db-66ed70250dc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3270ed8a-e52f-480a-9256-ef88969fa3f3",
              "parent_uuid": "5c1a117f-8f2a-4122-82db-66ed70250dc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikelnummer</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "901f5c36-8e7f-403e-9b2a-5061b9c9db57",
              "parent_uuid": "5c1a117f-8f2a-4122-82db-66ed70250dc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Anzahl</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "23a82f90-0667-4c3d-8a33-c6b622aeaa9d",
              "parent_uuid": "5c1a117f-8f2a-4122-82db-66ed70250dc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Lagerort</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "c186e1d9-7786-41af-abc8-828686dcf4f8",
              "parent_uuid": "5c1a117f-8f2a-4122-82db-66ed70250dc8",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "4cae0301-47bf-45ee-8722-dc9392acc079",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1f60ad9b-0f99-49da-8192-af0ec271e38d",
              "parent_uuid": "4cae0301-47bf-45ee-8722-dc9392acc079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 2842 (M276)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fa411a9b-bbc2-4e68-b487-92ef3fc4a225",
              "parent_uuid": "4cae0301-47bf-45ee-8722-dc9392acc079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 720 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "913f72f0-150c-4959-b049-31a56223081a",
              "parent_uuid": "4cae0301-47bf-45ee-8722-dc9392acc079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c23e1473-aaa5-4188-afaf-0220ba20a0ed",
              "parent_uuid": "4cae0301-47bf-45ee-8722-dc9392acc079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G04</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "7de63a4f-89df-4d18-b897-9ca78371ce45",
              "parent_uuid": "4cae0301-47bf-45ee-8722-dc9392acc079",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "1bd7727b-66ed-4829-b378-1f2797ff1dc2",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02851675-2368-4fca-bb48-6e2aa4b43dfc",
              "parent_uuid": "1bd7727b-66ed-4829-b378-1f2797ff1dc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 2510</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2cec21ac-d932-4122-96a4-97d841e17e4b",
              "parent_uuid": "1bd7727b-66ed-4829-b378-1f2797ff1dc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>146 605 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "949bb76f-a2c1-4283-b908-1e571a1ae2a0",
              "parent_uuid": "1bd7727b-66ed-4829-b378-1f2797ff1dc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "062c269d-ee97-4864-b054-186604be3c0c",
              "parent_uuid": "1bd7727b-66ed-4829-b378-1f2797ff1dc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 H01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "11b4af64-c67e-4b03-81df-edd0e74cc371",
              "parent_uuid": "1bd7727b-66ed-4829-b378-1f2797ff1dc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "e88ab647-40e1-474c-8f98-e784856027cf",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c25885db-9bdc-44b9-949d-c223b96d59cb",
              "parent_uuid": "e88ab647-40e1-474c-8f98-e784856027cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 2233 (M274)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cb1084d9-0ec7-4e12-b0a9-92830be7610a",
              "parent_uuid": "e88ab647-40e1-474c-8f98-e784856027cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 718 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fa492a5a-2189-4457-853f-d7146eed9fac",
              "parent_uuid": "e88ab647-40e1-474c-8f98-e784856027cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c9faf20d-cf5e-440a-a15c-69d5f5cfd256",
              "parent_uuid": "e88ab647-40e1-474c-8f98-e784856027cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "62d6af2b-c5b0-4e5b-87c4-1322b60c4e85",
              "parent_uuid": "e88ab647-40e1-474c-8f98-e784856027cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "765ded11-7de1-423e-ab3a-c274a87bd394",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef505cde-3276-4e86-81e9-21f63ca6ec00",
              "parent_uuid": "765ded11-7de1-423e-ab3a-c274a87bd394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 1707 (M275)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "081539bf-ab58-46dc-b683-3ed8cadd7b7f",
              "parent_uuid": "765ded11-7de1-423e-ab3a-c274a87bd394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 719 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9b82fff0-61b8-41be-ad3c-45f7780ed534",
              "parent_uuid": "765ded11-7de1-423e-ab3a-c274a87bd394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "4c2f3b8a-e9e3-429c-a506-f866fe832b26",
              "parent_uuid": "765ded11-7de1-423e-ab3a-c274a87bd394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "ed175c36-142e-400c-ac4c-2e06b485c6fc",
              "parent_uuid": "765ded11-7de1-423e-ab3a-c274a87bd394",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "b607ae3f-9102-41da-b955-6687ed5cc914",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7809b27-e481-40c0-8136-9e726bf52264",
              "parent_uuid": "b607ae3f-9102-41da-b955-6687ed5cc914",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M279)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d48cab85-8253-40f7-bfba-a4c5782115ca",
              "parent_uuid": "b607ae3f-9102-41da-b955-6687ed5cc914",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>156 537 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c2435783-2ca4-4752-8272-316304f54216",
              "parent_uuid": "b607ae3f-9102-41da-b955-6687ed5cc914",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "b7db3de9-9a12-47c8-9d03-a34fa3a4178e",
              "parent_uuid": "b607ae3f-9102-41da-b955-6687ed5cc914",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "89562f6c-b3e2-469f-b41e-4dad9b4fa2b0",
              "parent_uuid": "b607ae3f-9102-41da-b955-6687ed5cc914",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "4880eedf-95d0-42ab-ab1f-7e811737e738",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4897ac38-55a4-4d46-a175-afeff3ff949d",
              "parent_uuid": "4880eedf-95d0-42ab-ab1f-7e811737e738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rundriemen L = 236 (M269)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "66271148-aca5-4368-8e9d-f01ca4ad5f89",
              "parent_uuid": "4880eedf-95d0-42ab-ab1f-7e811737e738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    s<span>174 264 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c05e5171-7c3b-4f1a-9e93-80f52282b02c",
              "parent_uuid": "4880eedf-95d0-42ab-ab1f-7e811737e738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "3ea8e791-69e4-4b0c-9d40-1c5afdc54332",
              "parent_uuid": "4880eedf-95d0-42ab-ab1f-7e811737e738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F03</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1b8fce91-07d1-4619-b39a-3ac2ddced159",
              "parent_uuid": "4880eedf-95d0-42ab-ab1f-7e811737e738",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "efc1a3a4-3dd0-434a-ad01-8b820dc11d40",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c426806-02be-4f52-a358-9e76da819a77",
              "parent_uuid": "efc1a3a4-3dd0-434a-ad01-8b820dc11d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Klemmrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "15f9a22f-457f-4a61-9a51-66b0d98263a6",
              "parent_uuid": "efc1a3a4-3dd0-434a-ad01-8b820dc11d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>272 900 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e53f45f7-5464-4290-88a6-7b183ad2deb7",
              "parent_uuid": "efc1a3a4-3dd0-434a-ad01-8b820dc11d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "97533e29-5e09-41a3-9f2e-e2bcf6af6b15",
              "parent_uuid": "efc1a3a4-3dd0-434a-ad01-8b820dc11d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E06</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "534e16ff-d7a7-41c2-a8a8-a5df037e48cb",
              "parent_uuid": "efc1a3a4-3dd0-434a-ad01-8b820dc11d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "5d625e2a-d990-40c2-91f5-994b3ecc2902",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8fe09d6-a182-483c-b016-0277768f4128",
              "parent_uuid": "5d625e2a-d990-40c2-91f5-994b3ecc2902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kugellager 6001-2RSH</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c024c019-a5fd-4d7f-af4d-f563b89a868f",
              "parent_uuid": "5d625e2a-d990-40c2-91f5-994b3ecc2902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>188 512 000</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "236281ff-596f-4c6b-8a48-1c6e3408915d",
              "parent_uuid": "5d625e2a-d990-40c2-91f5-994b3ecc2902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "0e8b1095-a3a3-4d18-b9ed-e848c64ed688",
              "parent_uuid": "5d625e2a-d990-40c2-91f5-994b3ecc2902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E12</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "badf951e-5d80-4fca-9e59-eac60cde87bc",
              "parent_uuid": "5d625e2a-d990-40c2-91f5-994b3ecc2902",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "8cbf3bfe-1316-4013-b21d-9cfa7f0ddd77",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86ef2480-6850-4354-bac9-2ea02e31c226",
              "parent_uuid": "8cbf3bfe-1316-4013-b21d-9cfa7f0ddd77",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "26711f75-133d-433f-a35b-0342d535c5ed",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc9f208f-7f72-43a9-b310-3d251a8b0964",
              "parent_uuid": "26711f75-133d-433f-a35b-0342d535c5ed",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "f4bc9b46-941c-4b87-b37b-5c9d7c312214",
          "parent_uuid": "fe3c0264-1f9d-4ea0-9907-bb9d879c9dc8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e643c16d-4f4f-43bb-b50b-ed5bd0de2f59",
              "parent_uuid": "f4bc9b46-941c-4b87-b37b-5c9d7c312214",
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
                  "uuid": "a4e21e3b-a327-4cd2-80ee-accd2830e002",
                  "parent_uuid": "e643c16d-4f4f-43bb-b50b-ed5bd0de2f59",
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
          "sort": 56,
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


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
  "uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
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
      "uuid": "9e11c5ab-e36d-485c-a10f-c0f5e7bad512",
      "parent_uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
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
      "uuid": "c77c9132-8a6a-43c6-8702-194b28c14ff7",
      "parent_uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
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
      "uuid": "c4b5156d-1ee1-4fda-9e3e-ae3999dc01c8",
      "parent_uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
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
      "uuid": "be2ed05e-d5b9-443d-b1aa-fcab9f60eeaa",
      "parent_uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
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
      "uuid": "95b92728-4a81-40be-98db-77228e7d0649",
      "parent_uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
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
      "uuid": "4debdca3-6dd2-48d2-b321-4eec6d151884",
      "parent_uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
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
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
      "parent_uuid": "93b3f924-ecde-40c3-a321-f3f1cfbf3fbe",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "3b19aa25-bfa4-4892-ae39-b8f4be1ecc02",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "0efdd044-50df-46cf-ad22-1efc53918209",
              "parent_uuid": "3b19aa25-bfa4-4892-ae39-b8f4be1ecc02",
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
              "uuid": "2a4d5a1e-4324-407c-a973-76750f84b701",
              "parent_uuid": "3b19aa25-bfa4-4892-ae39-b8f4be1ecc02",
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
              "uuid": "ec996d9f-77d1-4b01-97dd-f7ac616a1714",
              "parent_uuid": "3b19aa25-bfa4-4892-ae39-b8f4be1ecc02",
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
              "uuid": "25db20fb-9e9a-4a6f-bc4f-57eb741ca929",
              "parent_uuid": "3b19aa25-bfa4-4892-ae39-b8f4be1ecc02",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "7"
                ],
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
          "uuid": "a23990c0-1d13-4317-9a7a-fa75946a40ba",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "b3222115-f374-4a4c-af66-8ca47109efbc",
              "parent_uuid": "a23990c0-1d13-4317-9a7a-fa75946a40ba",
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
              "uuid": "1c7f482c-2483-497c-a52d-f3c8ab445c59",
              "parent_uuid": "a23990c0-1d13-4317-9a7a-fa75946a40ba",
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
              "uuid": "da62cec0-dc54-42de-86e8-49eb7248b8e4",
              "parent_uuid": "a23990c0-1d13-4317-9a7a-fa75946a40ba",
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
              "uuid": "9fb1f087-d1a5-4788-a0f9-67836d2ed1f1",
              "parent_uuid": "a23990c0-1d13-4317-9a7a-fa75946a40ba",
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
                  "7"
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
          "uuid": "bcf53b6e-624f-4172-a7ec-8e69490d77ed",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "87cd3689-d05f-41cd-9c27-9cc5c86c3563",
              "parent_uuid": "bcf53b6e-624f-4172-a7ec-8e69490d77ed",
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
              "uuid": "1860e865-2b6a-4cfc-ac40-b176f0173c62",
              "parent_uuid": "bcf53b6e-624f-4172-a7ec-8e69490d77ed",
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
              "uuid": "33526340-65b1-4c7e-9b5d-499e47ea282e",
              "parent_uuid": "bcf53b6e-624f-4172-a7ec-8e69490d77ed",
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
              "uuid": "26d8de73-170e-41a7-af92-018a15b67d7f",
              "parent_uuid": "bcf53b6e-624f-4172-a7ec-8e69490d77ed",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
                [
                  "colspan",
                  "7"
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
          "uuid": "2013f999-566d-491e-aa8b-da295be0dc46",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84b1e38b-bf32-4f20-aebd-ee38a4fd1d59",
              "parent_uuid": "2013f999-566d-491e-aa8b-da295be0dc46",
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
              "uuid": "656420b9-e475-4e26-b568-c16bc6166f7d",
              "parent_uuid": "2013f999-566d-491e-aa8b-da295be0dc46",
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
              "uuid": "876a240c-40be-451c-abbf-c8d2f13e3754",
              "parent_uuid": "2013f999-566d-491e-aa8b-da295be0dc46",
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
              "uuid": "9c012e27-c794-4160-abb5-c365b86d62ce",
              "parent_uuid": "2013f999-566d-491e-aa8b-da295be0dc46",
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
              "uuid": "08543d18-3e40-447e-b980-ffc1aa715823",
              "parent_uuid": "2013f999-566d-491e-aa8b-da295be0dc46",
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
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "8a2473c4-a12d-410c-9e78-47a130aef24b",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8e65921b-05c3-4a3e-b622-517bab2cf140",
              "parent_uuid": "8a2473c4-a12d-410c-9e78-47a130aef24b",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "10"
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
          "uuid": "411695fb-43d2-41ea-973c-4ebb213adbd8",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5da93e35-5149-4f81-8b2b-d8e64cf7b8f4",
              "parent_uuid": "411695fb-43d2-41ea-973c-4ebb213adbd8",
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
              "uuid": "1c319052-f897-48bc-9f3f-edbfa4601110",
              "parent_uuid": "411695fb-43d2-41ea-973c-4ebb213adbd8",
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
              "uuid": "2a2d8538-8a24-4ed1-856c-74745fd59f67",
              "parent_uuid": "411695fb-43d2-41ea-973c-4ebb213adbd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0a6d1bd-2f54-4ffc-ab59-36a0ba203c58",
                  "parent_uuid": "2a2d8538-8a24-4ed1-856c-74745fd59f67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e485b66a-5828-42d4-b01f-36138cf4454b",
              "parent_uuid": "411695fb-43d2-41ea-973c-4ebb213adbd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8aa30d5a-d4dd-4da7-8041-29b9bc269e5e",
                  "parent_uuid": "e485b66a-5828-42d4-b01f-36138cf4454b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11dddeb0-0db3-44af-9584-de13355d3c04",
              "parent_uuid": "411695fb-43d2-41ea-973c-4ebb213adbd8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99f0ad86-c29a-4015-af8e-71fca9708e97",
                  "parent_uuid": "11dddeb0-0db3-44af-9584-de13355d3c04",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "66606926-922f-4b01-8229-8bdb44f4d3b4",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bd1b71a-c86c-42c4-9ab3-67fc58327208",
              "parent_uuid": "66606926-922f-4b01-8229-8bdb44f4d3b4",
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
              "uuid": "f7c9d011-0866-4983-b775-6f0b517771d6",
              "parent_uuid": "66606926-922f-4b01-8229-8bdb44f4d3b4",
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
              "uuid": "dbee3988-4aa5-4813-93c5-5a2fe218c32f",
              "parent_uuid": "66606926-922f-4b01-8229-8bdb44f4d3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1fce3bb2-6cad-4739-b8db-9a78933495f2",
                  "parent_uuid": "dbee3988-4aa5-4813-93c5-5a2fe218c32f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eec34b85-b352-4d47-89a4-4cefe249e356",
              "parent_uuid": "66606926-922f-4b01-8229-8bdb44f4d3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc81c968-acf6-4004-8f21-46e76f986c1d",
                  "parent_uuid": "eec34b85-b352-4d47-89a4-4cefe249e356",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43d902f6-57b0-43e2-abf8-9d9c3b5e1433",
              "parent_uuid": "66606926-922f-4b01-8229-8bdb44f4d3b4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6469ee85-29c2-4704-8dea-07dce1d45ec7",
                  "parent_uuid": "43d902f6-57b0-43e2-abf8-9d9c3b5e1433",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "2c7beb91-f084-459a-b0c2-0b468f11f158",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21b7c67a-647e-4ce8-a885-ca20b6b26505",
              "parent_uuid": "2c7beb91-f084-459a-b0c2-0b468f11f158",
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
              "uuid": "7ccb4aa3-a99b-42ab-bf5a-99b9b03cd3fd",
              "parent_uuid": "2c7beb91-f084-459a-b0c2-0b468f11f158",
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
              "uuid": "8eb2ff57-a34c-4c89-846b-2a12c041ad62",
              "parent_uuid": "2c7beb91-f084-459a-b0c2-0b468f11f158",
              "tagName": "td",
              "properties": [
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
                  "uuid": "56c075c6-34ec-4e25-aaf8-defb85d00c7d",
                  "parent_uuid": "8eb2ff57-a34c-4c89-846b-2a12c041ad62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f315cc17-eadf-4e15-a3c2-1f527168fb6f",
              "parent_uuid": "2c7beb91-f084-459a-b0c2-0b468f11f158",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3b0028c8-47a9-48e2-9a0f-136fcc3a386e",
                  "parent_uuid": "f315cc17-eadf-4e15-a3c2-1f527168fb6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec273c10-4aaf-4ed6-807e-0d8075973f01",
              "parent_uuid": "2c7beb91-f084-459a-b0c2-0b468f11f158",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7f4364e2-f710-44f3-ae80-dbd42ce676f4",
                  "parent_uuid": "ec273c10-4aaf-4ed6-807e-0d8075973f01",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "084793fe-27e0-4665-8aec-c49544462ea4",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d465433-116e-42e3-859d-4bf84eda0eb3",
              "parent_uuid": "084793fe-27e0-4665-8aec-c49544462ea4",
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
              "uuid": "d2be68ec-fb5a-42ac-88fb-c842f57e5f12",
              "parent_uuid": "084793fe-27e0-4665-8aec-c49544462ea4",
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
              "uuid": "446dfec4-3b1f-4773-a721-4c9c46f59a14",
              "parent_uuid": "084793fe-27e0-4665-8aec-c49544462ea4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e186a56a-0ac6-4912-88c0-66019e410bd7",
                  "parent_uuid": "446dfec4-3b1f-4773-a721-4c9c46f59a14",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e911274b-5942-4e3f-a9c4-a29448dfb1d7",
              "parent_uuid": "084793fe-27e0-4665-8aec-c49544462ea4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a1dcc574-3fe9-4bd6-b1cf-dc80b38f3286",
                  "parent_uuid": "e911274b-5942-4e3f-a9c4-a29448dfb1d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c365e1c-0f14-4f05-82c3-b5e42c367970",
              "parent_uuid": "084793fe-27e0-4665-8aec-c49544462ea4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "551a6071-f6ba-43fe-9e70-6f46dc3623cb",
                  "parent_uuid": "5c365e1c-0f14-4f05-82c3-b5e42c367970",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "8dfc2190-751f-40d2-8cd1-0e6ec89f3340",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52758eb0-4352-431b-aa57-88f0ca451feb",
              "parent_uuid": "8dfc2190-751f-40d2-8cd1-0e6ec89f3340",
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
              "uuid": "76d1cc7c-1d06-4f67-ac05-61e7970a5ba0",
              "parent_uuid": "8dfc2190-751f-40d2-8cd1-0e6ec89f3340",
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
              "uuid": "7ac20752-76aa-4b6e-bc87-4f5428a629b8",
              "parent_uuid": "8dfc2190-751f-40d2-8cd1-0e6ec89f3340",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f633e5a3-9f87-4f3f-9681-d3158fc128b8",
                  "parent_uuid": "7ac20752-76aa-4b6e-bc87-4f5428a629b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46416417-cd8f-4745-980e-f06de0a4c3e3",
              "parent_uuid": "8dfc2190-751f-40d2-8cd1-0e6ec89f3340",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9e61661d-fcde-4fbb-a5bb-f10127ef3f48",
                  "parent_uuid": "46416417-cd8f-4745-980e-f06de0a4c3e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9ae1bdc-f449-4093-b81a-d708390c4b11",
              "parent_uuid": "8dfc2190-751f-40d2-8cd1-0e6ec89f3340",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c79af74c-c901-4147-af92-475de67afa9f",
                  "parent_uuid": "e9ae1bdc-f449-4093-b81a-d708390c4b11",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "52621f75-4448-4db1-9fba-a2f29e0fd574",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cac3f309-9752-47db-a6c0-881785e63a83",
              "parent_uuid": "52621f75-4448-4db1-9fba-a2f29e0fd574",
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
              "uuid": "47e59eda-37a4-42de-b3f8-bd1dc706d07b",
              "parent_uuid": "52621f75-4448-4db1-9fba-a2f29e0fd574",
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
              "uuid": "76690bb7-89cd-4b00-abf7-cd509c724910",
              "parent_uuid": "52621f75-4448-4db1-9fba-a2f29e0fd574",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d55039f8-7fd5-46b3-ae61-25d906c6c974",
                  "parent_uuid": "76690bb7-89cd-4b00-abf7-cd509c724910",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a02ee97a-e9f7-44bd-9b03-136b66c52b67",
              "parent_uuid": "52621f75-4448-4db1-9fba-a2f29e0fd574",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f7398a5a-e422-4a4d-9a40-9bcc4eb0f612",
                  "parent_uuid": "a02ee97a-e9f7-44bd-9b03-136b66c52b67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "639cd82d-b3c4-4269-9f24-2e3a49b1806a",
              "parent_uuid": "52621f75-4448-4db1-9fba-a2f29e0fd574",
              "tagName": "td",
              "properties": [
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
                  "uuid": "797a4aed-dd99-464a-a7d3-dc1928d90f84",
                  "parent_uuid": "639cd82d-b3c4-4269-9f24-2e3a49b1806a",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "409f1cd1-6cbc-450b-8fe8-48e09a2f60cb",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ebcecd2-5f4b-49f4-8539-731e562ce120",
              "parent_uuid": "409f1cd1-6cbc-450b-8fe8-48e09a2f60cb",
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
              "uuid": "97eb966c-cf83-4e3b-a4c4-0a21287f2653",
              "parent_uuid": "409f1cd1-6cbc-450b-8fe8-48e09a2f60cb",
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
              "uuid": "80836156-fd8e-4e4f-ad08-3a6125fb5692",
              "parent_uuid": "409f1cd1-6cbc-450b-8fe8-48e09a2f60cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ac671146-e0b1-4175-8404-f97508096ce6",
                  "parent_uuid": "80836156-fd8e-4e4f-ad08-3a6125fb5692",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42753547-f222-4551-b1c9-c2c7ebfdf4c0",
              "parent_uuid": "409f1cd1-6cbc-450b-8fe8-48e09a2f60cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "061a7680-93c3-48ca-bb00-3c2592c67037",
                  "parent_uuid": "42753547-f222-4551-b1c9-c2c7ebfdf4c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0cd601c5-de44-4646-aadb-25d91ae0f092",
              "parent_uuid": "409f1cd1-6cbc-450b-8fe8-48e09a2f60cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dd4674dd-cad1-4860-8b63-b70cd7e85210",
                  "parent_uuid": "0cd601c5-de44-4646-aadb-25d91ae0f092",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "a5b3a836-6a7c-4fed-a1fc-91199cd1d05e",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "060542bb-b3d3-44d8-afda-ebb3c955db07",
              "parent_uuid": "a5b3a836-6a7c-4fed-a1fc-91199cd1d05e",
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
              "uuid": "9d0f1cd6-bbf2-4269-a827-93f6b04a48e7",
              "parent_uuid": "a5b3a836-6a7c-4fed-a1fc-91199cd1d05e",
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
              "uuid": "02d0aabd-21d8-428d-a602-5b7c1eefcd62",
              "parent_uuid": "a5b3a836-6a7c-4fed-a1fc-91199cd1d05e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "efd6d538-a2f1-4e6e-999a-fe3bada36687",
                  "parent_uuid": "02d0aabd-21d8-428d-a602-5b7c1eefcd62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f55dd087-1eee-44ed-9cc3-522460655d29",
              "parent_uuid": "a5b3a836-6a7c-4fed-a1fc-91199cd1d05e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "01ea503a-313a-448e-ab28-af97359316e1",
                  "parent_uuid": "f55dd087-1eee-44ed-9cc3-522460655d29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33e5b3f8-a406-4682-8862-9a45265e8d6d",
              "parent_uuid": "a5b3a836-6a7c-4fed-a1fc-91199cd1d05e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b611f8a1-241f-4e37-bd06-efad506e7af6",
                  "parent_uuid": "33e5b3f8-a406-4682-8862-9a45265e8d6d",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "35193db0-62a3-4787-b48c-8cbf3f89efd4",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa0eb53c-7a6f-4170-98b6-25d866bc5c24",
              "parent_uuid": "35193db0-62a3-4787-b48c-8cbf3f89efd4",
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
              "uuid": "f9efa3cf-f8bd-4c5b-8379-51e9623cc446",
              "parent_uuid": "35193db0-62a3-4787-b48c-8cbf3f89efd4",
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
              "uuid": "e213ee6d-850e-4bf8-93ee-248428f6b578",
              "parent_uuid": "35193db0-62a3-4787-b48c-8cbf3f89efd4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "16a21ab3-317f-4ea8-940c-83ac9f122566",
                  "parent_uuid": "e213ee6d-850e-4bf8-93ee-248428f6b578",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "629a010b-c6ff-4b21-b558-129450895be4",
              "parent_uuid": "35193db0-62a3-4787-b48c-8cbf3f89efd4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e4cc900d-baf2-46a8-b4cb-a5c2a419c168",
                  "parent_uuid": "629a010b-c6ff-4b21-b558-129450895be4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1ee71fb-77f9-488c-a3c8-0190f074cee5",
              "parent_uuid": "35193db0-62a3-4787-b48c-8cbf3f89efd4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b9685e4b-0b09-4b8d-9d7c-a79a2d475e29",
                  "parent_uuid": "f1ee71fb-77f9-488c-a3c8-0190f074cee5",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "6a9e2d6b-a9db-4452-a6f9-fa0a045fc3a6",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19d4a328-1512-452d-a7b6-48240da5c684",
              "parent_uuid": "6a9e2d6b-a9db-4452-a6f9-fa0a045fc3a6",
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
              "uuid": "39c9c5eb-af81-4d3b-b36d-5244732e8d57",
              "parent_uuid": "6a9e2d6b-a9db-4452-a6f9-fa0a045fc3a6",
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
              "uuid": "2f49f746-4979-44b8-981d-621f2e559363",
              "parent_uuid": "6a9e2d6b-a9db-4452-a6f9-fa0a045fc3a6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "54ffad8a-10b9-4a3a-bf9b-9d37a862d8bf",
                  "parent_uuid": "2f49f746-4979-44b8-981d-621f2e559363",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc82b7f5-330f-459b-ab03-f2b2ba7f0880",
              "parent_uuid": "6a9e2d6b-a9db-4452-a6f9-fa0a045fc3a6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0ea05ec2-3dbf-44de-a804-3f29b8abf051",
                  "parent_uuid": "bc82b7f5-330f-459b-ab03-f2b2ba7f0880",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d797a43-c3ca-4a13-9e08-92691266dd1b",
              "parent_uuid": "6a9e2d6b-a9db-4452-a6f9-fa0a045fc3a6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e2b08bb6-8d78-4e87-b79d-4042ee560bb2",
                  "parent_uuid": "4d797a43-c3ca-4a13-9e08-92691266dd1b",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "1fc7f8ba-f90b-4a4f-8b56-3fe4b7c72ef0",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e9c459f-1f82-4c1d-a89f-6a464b182fa0",
              "parent_uuid": "1fc7f8ba-f90b-4a4f-8b56-3fe4b7c72ef0",
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
              "uuid": "08acf24b-1f72-4b7f-91ad-12e8d43861d1",
              "parent_uuid": "1fc7f8ba-f90b-4a4f-8b56-3fe4b7c72ef0",
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
              "uuid": "89e03db2-b887-4870-a881-6478673bd0fa",
              "parent_uuid": "1fc7f8ba-f90b-4a4f-8b56-3fe4b7c72ef0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "00e53a19-5035-47cb-b4d3-7669ee4bb884",
                  "parent_uuid": "89e03db2-b887-4870-a881-6478673bd0fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf4da25d-b8e8-4d38-8390-446f990b031f",
              "parent_uuid": "1fc7f8ba-f90b-4a4f-8b56-3fe4b7c72ef0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b6fe5eb7-733e-43e8-ae83-e01d0799eabc",
                  "parent_uuid": "cf4da25d-b8e8-4d38-8390-446f990b031f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00366a72-1b2c-4e40-9d44-e8838e94f574",
              "parent_uuid": "1fc7f8ba-f90b-4a4f-8b56-3fe4b7c72ef0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8e4f58c4-7677-438d-9865-2b4f47b60bbe",
                  "parent_uuid": "00366a72-1b2c-4e40-9d44-e8838e94f574",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "d32000d7-36a5-4d73-9f13-2f6e9583d0a9",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "45d32fc2-7471-4cb8-b98c-b0fbf3c9765f",
              "parent_uuid": "d32000d7-36a5-4d73-9f13-2f6e9583d0a9",
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
              "uuid": "5f47d3d8-8c5a-486e-8c68-72ec66ccf45b",
              "parent_uuid": "d32000d7-36a5-4d73-9f13-2f6e9583d0a9",
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
              "uuid": "931fb53e-67ae-4d87-80ae-c62ea32cce43",
              "parent_uuid": "d32000d7-36a5-4d73-9f13-2f6e9583d0a9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bfd8d983-dec4-402e-b5de-468917b90c32",
                  "parent_uuid": "931fb53e-67ae-4d87-80ae-c62ea32cce43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1d33ac6-53d6-4f60-add3-b16574e34b47",
              "parent_uuid": "d32000d7-36a5-4d73-9f13-2f6e9583d0a9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e92e6fb0-24cc-4496-a433-00d0da85bb1d",
                  "parent_uuid": "b1d33ac6-53d6-4f60-add3-b16574e34b47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c303ceab-324e-407e-b256-86ece784d72a",
              "parent_uuid": "d32000d7-36a5-4d73-9f13-2f6e9583d0a9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1c49f0d3-903e-44b8-879a-747e9fcc578f",
                  "parent_uuid": "c303ceab-324e-407e-b256-86ece784d72a",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "c22e50fc-d2a1-48ea-8102-6cf100d3c899",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcfc404d-4ffc-42cf-993d-43a447e92875",
              "parent_uuid": "c22e50fc-d2a1-48ea-8102-6cf100d3c899",
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
                  "10"
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
          "uuid": "c3aa8755-1042-4e64-ab08-17232923be2d",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df135ef3-fb7c-4156-a4dd-7c915c8cc810",
              "parent_uuid": "c3aa8755-1042-4e64-ab08-17232923be2d",
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
                  "10"
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
          "uuid": "ff105f9b-83c1-4918-afa2-1cd3d2969a92",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e378588-71d5-4321-b907-c0f31231a19e",
              "parent_uuid": "ff105f9b-83c1-4918-afa2-1cd3d2969a92",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "aa7816ca-b366-4b0b-b1cf-ee9e7ef59eee",
                  "parent_uuid": "5e378588-71d5-4321-b907-c0f31231a19e",
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
          "uuid": "44f33a53-3900-4d1d-aa6e-a4ba1799f9bb",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e3cb12c-b081-4cfd-b23f-281c284d14c7",
              "parent_uuid": "44f33a53-3900-4d1d-aa6e-a4ba1799f9bb",
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
                  "10"
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
          "uuid": "9a23ed86-36c0-4314-b859-9cd89a530bb2",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "d6b32a72-fc2f-4336-9ba5-7f01631d1f80",
              "parent_uuid": "9a23ed86-36c0-4314-b859-9cd89a530bb2",
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
                  "10"
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
          "uuid": "b3fb8ca3-fbbb-4573-8c4d-2de1743016d9",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "43df5f6d-c37c-4ff8-8fb8-9950918f66f0",
              "parent_uuid": "b3fb8ca3-fbbb-4573-8c4d-2de1743016d9",
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
              "uuid": "e520a700-e386-4ec1-acde-777eb19559a9",
              "parent_uuid": "b3fb8ca3-fbbb-4573-8c4d-2de1743016d9",
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
              "uuid": "437aa0c4-e6c4-43a9-ae5f-44f33b96b02c",
              "parent_uuid": "b3fb8ca3-fbbb-4573-8c4d-2de1743016d9",
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
              "uuid": "b1359d62-9428-4af2-aa47-3d84b82a5e59",
              "parent_uuid": "b3fb8ca3-fbbb-4573-8c4d-2de1743016d9",
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
              "uuid": "19cd744c-7edd-4367-9483-6c596e48701f",
              "parent_uuid": "b3fb8ca3-fbbb-4573-8c4d-2de1743016d9",
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
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "73649056-8695-4437-a361-a40f95c7000e",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b415f0f-1d4a-4fff-986c-c38fb1066704",
              "parent_uuid": "73649056-8695-4437-a361-a40f95c7000e",
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
              "uuid": "bfeed04f-9b36-4b1b-9201-2d9cd44d13ca",
              "parent_uuid": "73649056-8695-4437-a361-a40f95c7000e",
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
              "uuid": "3cb84a30-1f96-434d-8540-8f21f023e3a9",
              "parent_uuid": "73649056-8695-4437-a361-a40f95c7000e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "035c9a58-1fa4-4a53-a88f-a37f00152afa",
                  "parent_uuid": "3cb84a30-1f96-434d-8540-8f21f023e3a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42657254-1362-4d16-aaee-a9df70fdf4cf",
              "parent_uuid": "73649056-8695-4437-a361-a40f95c7000e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c4b8e646-2559-43d6-813d-19f3e8e62ea1",
                  "parent_uuid": "42657254-1362-4d16-aaee-a9df70fdf4cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6cc9c46-37f5-424a-8c52-5e349dff3119",
              "parent_uuid": "73649056-8695-4437-a361-a40f95c7000e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4e18dee1-c5a7-4116-9af4-f2ff42f02edd",
                  "parent_uuid": "d6cc9c46-37f5-424a-8c52-5e349dff3119",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "ae0c48ed-2616-4e79-9190-07b64909948e",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b98f053-18ae-4887-aa91-347a18f7fafd",
              "parent_uuid": "ae0c48ed-2616-4e79-9190-07b64909948e",
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
              "uuid": "f7f8f790-3d2e-4499-a5e5-c7a05acecd71",
              "parent_uuid": "ae0c48ed-2616-4e79-9190-07b64909948e",
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
              "uuid": "e16cd012-06c8-4566-ad57-c080c546ae6e",
              "parent_uuid": "ae0c48ed-2616-4e79-9190-07b64909948e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "82aa1359-a4c0-44c5-a4f3-4e1e16793c1d",
                  "parent_uuid": "e16cd012-06c8-4566-ad57-c080c546ae6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23a9efc7-e176-4477-9290-0e998af62073",
              "parent_uuid": "ae0c48ed-2616-4e79-9190-07b64909948e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5d3b38a7-d7e5-483a-960a-6bcead7cf707",
                  "parent_uuid": "23a9efc7-e176-4477-9290-0e998af62073",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b73ee1e-902d-4a8c-9478-ead55e0f556a",
              "parent_uuid": "ae0c48ed-2616-4e79-9190-07b64909948e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c9d10212-84a5-4918-811a-f98b85714dda",
                  "parent_uuid": "1b73ee1e-902d-4a8c-9478-ead55e0f556a",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "13471ab7-7c8e-4f76-b17b-cab663f33f77",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b369551-5e54-4b03-bc30-c9a980c4ac11",
              "parent_uuid": "13471ab7-7c8e-4f76-b17b-cab663f33f77",
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
              "uuid": "56bbf090-ba7c-4325-a1ea-ee24db28b867",
              "parent_uuid": "13471ab7-7c8e-4f76-b17b-cab663f33f77",
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
              "uuid": "437451b3-ef3a-471a-9b3a-919ed72e6ab8",
              "parent_uuid": "13471ab7-7c8e-4f76-b17b-cab663f33f77",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ca9be02e-0789-45f2-b95f-fc0808e9c503",
                  "parent_uuid": "437451b3-ef3a-471a-9b3a-919ed72e6ab8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97190a27-2878-4f29-bc3f-5701afd35afd",
              "parent_uuid": "13471ab7-7c8e-4f76-b17b-cab663f33f77",
              "tagName": "td",
              "properties": [
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
                  "uuid": "202cc84c-c9a3-493b-9b3f-a64fc43df2e9",
                  "parent_uuid": "97190a27-2878-4f29-bc3f-5701afd35afd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8781d3ea-5e00-4373-956f-c3e01622b7dd",
              "parent_uuid": "13471ab7-7c8e-4f76-b17b-cab663f33f77",
              "tagName": "td",
              "properties": [
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
                  "uuid": "98a93f25-278b-4708-bc80-2f0717cd79cf",
                  "parent_uuid": "8781d3ea-5e00-4373-956f-c3e01622b7dd",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "d2f708f6-3c09-4c4a-bad3-1081d753e8ad",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c42f2dc5-40f0-4da3-96be-dba3c1f8d46a",
              "parent_uuid": "d2f708f6-3c09-4c4a-bad3-1081d753e8ad",
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
              "uuid": "921d46f7-292f-41d3-97b5-1d8dbb07ef2a",
              "parent_uuid": "d2f708f6-3c09-4c4a-bad3-1081d753e8ad",
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
              "uuid": "67278cb9-1471-4c2b-8118-80e6e139792a",
              "parent_uuid": "d2f708f6-3c09-4c4a-bad3-1081d753e8ad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a6fa2f76-60f2-4f93-8d12-ed4bee983629",
                  "parent_uuid": "67278cb9-1471-4c2b-8118-80e6e139792a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c25a2727-ef06-46bb-bcd8-48a8b8971545",
              "parent_uuid": "d2f708f6-3c09-4c4a-bad3-1081d753e8ad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5761ce2f-6dc5-4e89-890d-c80b74b18644",
                  "parent_uuid": "c25a2727-ef06-46bb-bcd8-48a8b8971545",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88a98c1d-7b0c-4309-ae9d-fdd4c8aa5063",
              "parent_uuid": "d2f708f6-3c09-4c4a-bad3-1081d753e8ad",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f57246a7-e7f1-4b34-8629-250327ef7c7b",
                  "parent_uuid": "88a98c1d-7b0c-4309-ae9d-fdd4c8aa5063",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "15373e0b-3ef3-4dbb-9299-54073c827362",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71ebdd1b-896b-45c6-8e1a-b60d14fa6c1c",
              "parent_uuid": "15373e0b-3ef3-4dbb-9299-54073c827362",
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
                  "10"
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
          "uuid": "47d7889d-35a6-4c2a-a3c6-b463453f75d2",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbc93dfc-03ad-4c69-bf6d-dd49002c798e",
              "parent_uuid": "47d7889d-35a6-4c2a-a3c6-b463453f75d2",
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
                  "10"
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
          "uuid": "62894118-5919-4a36-b872-dca651c015ef",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2b1094f-56fe-44b7-a427-2adce5c64a03",
              "parent_uuid": "62894118-5919-4a36-b872-dca651c015ef",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "4c40694f-41c1-4bd5-8746-b2ce9d9631a8",
                  "parent_uuid": "e2b1094f-56fe-44b7-a427-2adce5c64a03",
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
          "uuid": "003b11fd-ddcf-454f-9f4d-05861396fc7c",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9dbc34d3-b9f0-4f18-88d6-cb94383ef6d2",
              "parent_uuid": "003b11fd-ddcf-454f-9f4d-05861396fc7c",
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
                  "10"
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
          "uuid": "c3e0279a-394c-466d-90e9-c35442b5af4f",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "6f6aa287-ada3-4364-8687-7cedc96be4fe",
              "parent_uuid": "c3e0279a-394c-466d-90e9-c35442b5af4f",
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
                  "10"
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
          "uuid": "f8fd67cf-3289-416f-9972-8db23791436d",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1f450242-4ea9-42e6-86ce-e8983d38ee69",
              "parent_uuid": "f8fd67cf-3289-416f-9972-8db23791436d",
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
              "uuid": "1d065e15-3bce-4bab-a522-ee8ce42d7e11",
              "parent_uuid": "f8fd67cf-3289-416f-9972-8db23791436d",
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
              "uuid": "735610d6-78e2-4e3e-9578-53f4cfa91853",
              "parent_uuid": "f8fd67cf-3289-416f-9972-8db23791436d",
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
              "uuid": "eeac7f8d-d3a2-4c4e-b15d-8bc0ac81744f",
              "parent_uuid": "f8fd67cf-3289-416f-9972-8db23791436d",
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
              "uuid": "7292c835-8f68-408d-b6cb-240b5c15974c",
              "parent_uuid": "f8fd67cf-3289-416f-9972-8db23791436d",
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
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "0295db7a-fa08-454a-90df-286cfb3ac701",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "7fed2b40-681a-48e1-950c-859c638d6efb",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41be870a-0ed4-4b99-8466-b8bfc3096d24",
              "parent_uuid": "7fed2b40-681a-48e1-950c-859c638d6efb",
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
              "uuid": "feb1af50-ebc1-4656-8daf-b678305ba914",
              "parent_uuid": "7fed2b40-681a-48e1-950c-859c638d6efb",
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
              "uuid": "473ab664-f243-405a-a40e-318ade403bd4",
              "parent_uuid": "7fed2b40-681a-48e1-950c-859c638d6efb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e50fc196-ef26-4789-8819-b49a622d15f7",
                  "parent_uuid": "473ab664-f243-405a-a40e-318ade403bd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8aebf07a-971f-4f93-91da-d81f051db311",
              "parent_uuid": "7fed2b40-681a-48e1-950c-859c638d6efb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2a7eca1d-2d0d-4022-b940-92d400829dd3",
                  "parent_uuid": "8aebf07a-971f-4f93-91da-d81f051db311",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f3218db-1c68-460a-b80a-8ef23f497aba",
              "parent_uuid": "7fed2b40-681a-48e1-950c-859c638d6efb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b4426e57-eaeb-4bf1-bf6b-50cf61e3b083",
                  "parent_uuid": "2f3218db-1c68-460a-b80a-8ef23f497aba",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "bbca638a-95a2-4cf4-a09d-e4bec0b01e39",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57b245f9-acfd-4cd0-812e-383dfb867943",
              "parent_uuid": "bbca638a-95a2-4cf4-a09d-e4bec0b01e39",
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
              "uuid": "56596214-c42c-450e-a566-66160a1d09af",
              "parent_uuid": "bbca638a-95a2-4cf4-a09d-e4bec0b01e39",
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
              "uuid": "e4c51131-ee08-49ba-bfb5-7a0e38caf1bc",
              "parent_uuid": "bbca638a-95a2-4cf4-a09d-e4bec0b01e39",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d6ed4bcf-3e32-4736-a55e-10bd1da4e031",
                  "parent_uuid": "e4c51131-ee08-49ba-bfb5-7a0e38caf1bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a97549d-68cc-423e-988c-69aa53c578f3",
              "parent_uuid": "bbca638a-95a2-4cf4-a09d-e4bec0b01e39",
              "tagName": "td",
              "properties": [
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
                  "uuid": "63c0f7c7-012b-43c6-91b9-f6e906369dc1",
                  "parent_uuid": "6a97549d-68cc-423e-988c-69aa53c578f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7b7296b-dc24-449b-ac45-0c8184cdcb60",
              "parent_uuid": "bbca638a-95a2-4cf4-a09d-e4bec0b01e39",
              "tagName": "td",
              "properties": [
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
                  "uuid": "020e596b-7e05-4b05-9d2e-35116602655e",
                  "parent_uuid": "f7b7296b-dc24-449b-ac45-0c8184cdcb60",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "9642a444-42fb-4707-866d-9a5450556996",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfec4dd3-de0a-4aae-a954-968cbc57cb16",
              "parent_uuid": "9642a444-42fb-4707-866d-9a5450556996",
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
              "uuid": "9551e1cb-560b-4b24-8d0e-88d02bc02324",
              "parent_uuid": "9642a444-42fb-4707-866d-9a5450556996",
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
              "uuid": "720551df-a6cb-4c94-84d7-883343dcc5bd",
              "parent_uuid": "9642a444-42fb-4707-866d-9a5450556996",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9e0457a5-d512-4000-af1e-5d7b8d8478e9",
                  "parent_uuid": "720551df-a6cb-4c94-84d7-883343dcc5bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55b370db-4463-451d-ae2f-ca1a73d0c691",
              "parent_uuid": "9642a444-42fb-4707-866d-9a5450556996",
              "tagName": "td",
              "properties": [
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
                  "uuid": "010fd832-cc8f-4d6f-9f13-3bdcb4c006ae",
                  "parent_uuid": "55b370db-4463-451d-ae2f-ca1a73d0c691",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd394c44-e9bb-4c4c-af95-b467a5453fa1",
              "parent_uuid": "9642a444-42fb-4707-866d-9a5450556996",
              "tagName": "td",
              "properties": [
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
                  "uuid": "45408c01-9db2-4be1-ae14-a4c4171396c6",
                  "parent_uuid": "cd394c44-e9bb-4c4c-af95-b467a5453fa1",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "539cb85c-ef68-46db-9b08-3c2b816dd10c",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb8b14dc-8f48-40da-a8dd-592d35a5eaff",
              "parent_uuid": "539cb85c-ef68-46db-9b08-3c2b816dd10c",
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
              "uuid": "7db03c36-20fb-4733-a14d-a09d6ae4342f",
              "parent_uuid": "539cb85c-ef68-46db-9b08-3c2b816dd10c",
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
              "uuid": "eeba4fbb-ed21-45be-b7b4-56a8b6623906",
              "parent_uuid": "539cb85c-ef68-46db-9b08-3c2b816dd10c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3d29c954-5f71-4ea6-a13b-18c095f9e57e",
                  "parent_uuid": "eeba4fbb-ed21-45be-b7b4-56a8b6623906",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e52e54c8-aff9-44ff-9f0d-7e9aa5654be7",
              "parent_uuid": "539cb85c-ef68-46db-9b08-3c2b816dd10c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "37eefd71-e6a7-4b94-9101-4a1efc5afbcc",
                  "parent_uuid": "e52e54c8-aff9-44ff-9f0d-7e9aa5654be7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18958a02-d120-4ec9-8959-3b2ed4b3a934",
              "parent_uuid": "539cb85c-ef68-46db-9b08-3c2b816dd10c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b4999b0f-6ede-4c8d-b26b-8ff0dc7a6892",
                  "parent_uuid": "18958a02-d120-4ec9-8959-3b2ed4b3a934",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "b13aa481-9952-4ef6-b0e5-88a1155b3e11",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a107d291-9744-4734-bd18-36d3c0d7ef7f",
              "parent_uuid": "b13aa481-9952-4ef6-b0e5-88a1155b3e11",
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
              "uuid": "61be7264-f9f6-427f-8ddb-4c30bfdd7e8c",
              "parent_uuid": "b13aa481-9952-4ef6-b0e5-88a1155b3e11",
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
              "uuid": "88e36308-f52a-4068-b355-f01571dcdbd0",
              "parent_uuid": "b13aa481-9952-4ef6-b0e5-88a1155b3e11",
              "tagName": "td",
              "properties": [
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
                  "uuid": "984fb735-a2f4-4638-8d10-263845ec14d1",
                  "parent_uuid": "88e36308-f52a-4068-b355-f01571dcdbd0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d4575c9-976f-4639-93ae-4bb04d66ae5a",
              "parent_uuid": "b13aa481-9952-4ef6-b0e5-88a1155b3e11",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f123168c-3d82-4aeb-8fb4-beb531467895",
                  "parent_uuid": "1d4575c9-976f-4639-93ae-4bb04d66ae5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46580c2b-d083-47b1-b739-27cb8c45c864",
              "parent_uuid": "b13aa481-9952-4ef6-b0e5-88a1155b3e11",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b65251a8-e11f-4269-869f-c79b764e2d90",
                  "parent_uuid": "46580c2b-d083-47b1-b739-27cb8c45c864",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "10491ad0-f396-4e72-9f83-5f92b6319e2a",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87221c95-1d89-4504-8834-6c8ccca683a6",
              "parent_uuid": "10491ad0-f396-4e72-9f83-5f92b6319e2a",
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
              "uuid": "d742733d-45d6-484a-8bca-2f7bd7b41267",
              "parent_uuid": "10491ad0-f396-4e72-9f83-5f92b6319e2a",
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
              "uuid": "bdbd4914-a1d4-49ea-815f-10d860d9f257",
              "parent_uuid": "10491ad0-f396-4e72-9f83-5f92b6319e2a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1afbccf7-4c91-4048-8947-fd42dc0c927c",
                  "parent_uuid": "bdbd4914-a1d4-49ea-815f-10d860d9f257",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc2502a2-9de2-4820-a742-e8ec48a0d8a1",
              "parent_uuid": "10491ad0-f396-4e72-9f83-5f92b6319e2a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3a35f2f3-13d3-4bf8-bb18-6a0c737d8cfd",
                  "parent_uuid": "bc2502a2-9de2-4820-a742-e8ec48a0d8a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da999ba9-b437-48be-8fab-38ca527f16c0",
              "parent_uuid": "10491ad0-f396-4e72-9f83-5f92b6319e2a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "18f3dcd6-e5c3-455c-a30e-1703a1e2f5c1",
                  "parent_uuid": "da999ba9-b437-48be-8fab-38ca527f16c0",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "bd4b3e07-f0cf-4bef-8ea9-aad7d63305c1",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b018c4e-0cd8-4cff-8ea5-fe9201164997",
              "parent_uuid": "bd4b3e07-f0cf-4bef-8ea9-aad7d63305c1",
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
                  "10"
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
          "uuid": "8284e7ba-ba5a-4498-b297-42e7c6c6b160",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fafd269-82c6-4230-8683-7f063634a477",
              "parent_uuid": "8284e7ba-ba5a-4498-b297-42e7c6c6b160",
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
                  "10"
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
          "uuid": "c28f6fcf-d4c7-4f50-a06d-3006389a5ddd",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2814678-567e-481d-a7b9-d193667ed44f",
              "parent_uuid": "c28f6fcf-d4c7-4f50-a06d-3006389a5ddd",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "129ad90c-7a25-4fa1-863f-8583a3ac66a0",
                  "parent_uuid": "f2814678-567e-481d-a7b9-d193667ed44f",
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
          "uuid": "02808a4b-4fd7-4be0-907f-785b0407ede8",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e664dcce-b701-4057-aecd-96aa825cdd06",
              "parent_uuid": "02808a4b-4fd7-4be0-907f-785b0407ede8",
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
                  "10"
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
          "uuid": "76926fde-e98f-470b-98d7-04d8c3ad3d7a",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5e467974-ac60-4cad-bc71-d628718b347a",
              "parent_uuid": "76926fde-e98f-470b-98d7-04d8c3ad3d7a",
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
                  "10"
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
          "uuid": "d984ad49-0a4b-4a32-a3d4-6810dce1037e",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62e7f386-4537-465d-99f6-4ff0cd44717b",
              "parent_uuid": "d984ad49-0a4b-4a32-a3d4-6810dce1037e",
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
              "uuid": "11ae509e-801a-4e84-9509-adb9ed42be75",
              "parent_uuid": "d984ad49-0a4b-4a32-a3d4-6810dce1037e",
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
              "uuid": "0fe00e93-fee9-404d-9cc8-7716176f2d31",
              "parent_uuid": "d984ad49-0a4b-4a32-a3d4-6810dce1037e",
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
              "uuid": "161dc793-1183-4241-ae7a-82e040901a46",
              "parent_uuid": "d984ad49-0a4b-4a32-a3d4-6810dce1037e",
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
            }
          ],
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "ecdcc05e-9977-4729-a06d-3ed5c5a9ab79",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba8ae1d7-8072-43f3-8559-c68b5c0cf2ae",
              "parent_uuid": "ecdcc05e-9977-4729-a06d-3ed5c5a9ab79",
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
              "uuid": "f5de0247-ca84-4022-9dc0-1e3bb65f1ba1",
              "parent_uuid": "ecdcc05e-9977-4729-a06d-3ed5c5a9ab79",
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
              "uuid": "f1609141-e7f9-4668-acdb-75d8e82644da",
              "parent_uuid": "ecdcc05e-9977-4729-a06d-3ed5c5a9ab79",
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
              "uuid": "320be7d7-d5f1-45d6-84b6-3d3887228157",
              "parent_uuid": "ecdcc05e-9977-4729-a06d-3ed5c5a9ab79",
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
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "133cdebe-a50c-4703-a75a-ec90ef7b39c4",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88b7f299-38ba-4b25-9af6-bd509b04db26",
              "parent_uuid": "133cdebe-a50c-4703-a75a-ec90ef7b39c4",
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
              "uuid": "868f0fab-50a0-4734-a2eb-623c222767bb",
              "parent_uuid": "133cdebe-a50c-4703-a75a-ec90ef7b39c4",
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
              "uuid": "3f605eda-99e1-42a7-a500-f43bcbf9a0c1",
              "parent_uuid": "133cdebe-a50c-4703-a75a-ec90ef7b39c4",
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
              "uuid": "3e0dc4a4-2afe-490b-8a24-7c924fa8d7b6",
              "parent_uuid": "133cdebe-a50c-4703-a75a-ec90ef7b39c4",
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
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "995ac823-08ba-4c3a-9173-96f37ef97a68",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfedeb8c-ae6e-44f8-9ea9-c387843d2edc",
              "parent_uuid": "995ac823-08ba-4c3a-9173-96f37ef97a68",
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
              "uuid": "194b5a58-3e2d-47c3-8b70-059eb0f298d5",
              "parent_uuid": "995ac823-08ba-4c3a-9173-96f37ef97a68",
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
              "uuid": "bc696f7f-af48-42fb-b9b8-7186740d5029",
              "parent_uuid": "995ac823-08ba-4c3a-9173-96f37ef97a68",
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
              "uuid": "535146ff-af85-44cb-a845-682c81422bd4",
              "parent_uuid": "995ac823-08ba-4c3a-9173-96f37ef97a68",
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
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "b824850f-275c-46b0-81e7-235198bf7e8b",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90cd938f-05c9-4056-9444-79ad1567a950",
              "parent_uuid": "b824850f-275c-46b0-81e7-235198bf7e8b",
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
              "uuid": "cf7130c1-5c31-440a-ae29-53d1e92e0387",
              "parent_uuid": "b824850f-275c-46b0-81e7-235198bf7e8b",
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
              "uuid": "08c912e5-d7fc-407d-ad98-f589d92cfa8a",
              "parent_uuid": "b824850f-275c-46b0-81e7-235198bf7e8b",
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
              "uuid": "4c424ded-edf8-48d9-854a-0e2b4d425c3a",
              "parent_uuid": "b824850f-275c-46b0-81e7-235198bf7e8b",
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
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "ebf3faf8-6eca-406f-8675-eaa14c1d5487",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "abeeac64-e88d-466f-b5f9-dfd5329f3712",
              "parent_uuid": "ebf3faf8-6eca-406f-8675-eaa14c1d5487",
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
              "uuid": "4d715be4-9e1a-4651-b9e2-e2a5cbbff7e7",
              "parent_uuid": "ebf3faf8-6eca-406f-8675-eaa14c1d5487",
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
              "uuid": "503c6328-920f-480d-b7bb-076c2afadb74",
              "parent_uuid": "ebf3faf8-6eca-406f-8675-eaa14c1d5487",
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
              "uuid": "2ac2d50d-cc83-44e0-b245-d09ca02e4226",
              "parent_uuid": "ebf3faf8-6eca-406f-8675-eaa14c1d5487",
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
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "a669ffe9-61fa-4208-9a2b-2377f799580c",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2673bfd1-f718-4f9d-bab0-1e8d6c179dfb",
              "parent_uuid": "a669ffe9-61fa-4208-9a2b-2377f799580c",
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
              "uuid": "8d859343-bbbc-4f72-84b2-6f401639c4ea",
              "parent_uuid": "a669ffe9-61fa-4208-9a2b-2377f799580c",
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
              "uuid": "25bda495-7165-48dd-8351-93239fb6cdd5",
              "parent_uuid": "a669ffe9-61fa-4208-9a2b-2377f799580c",
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
              "uuid": "042d70f9-ba21-4620-8e86-5989314bc269",
              "parent_uuid": "a669ffe9-61fa-4208-9a2b-2377f799580c",
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
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "1bf3f160-d31e-407c-8221-34196b8437de",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0bed37a6-a49f-46f1-ab81-e351abdc9621",
              "parent_uuid": "1bf3f160-d31e-407c-8221-34196b8437de",
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
              "uuid": "21952a67-d94e-4d4b-b2c3-7a6a6cf64322",
              "parent_uuid": "1bf3f160-d31e-407c-8221-34196b8437de",
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
              "uuid": "b61d8695-b644-4ed9-9738-2dd2de37c6aa",
              "parent_uuid": "1bf3f160-d31e-407c-8221-34196b8437de",
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
              "uuid": "57faf645-3c10-42f2-8bba-2df97c5f2c95",
              "parent_uuid": "1bf3f160-d31e-407c-8221-34196b8437de",
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
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "e574570f-2aa7-4030-bd53-3d41ec5fe0b1",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40e795d9-00b1-49c8-9adc-b0a65a9cad88",
              "parent_uuid": "e574570f-2aa7-4030-bd53-3d41ec5fe0b1",
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
              "uuid": "7c060077-a073-44f0-b82f-c1ee387afe3e",
              "parent_uuid": "e574570f-2aa7-4030-bd53-3d41ec5fe0b1",
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
              "uuid": "681e2ea6-afc7-4445-8f57-f1f0e38dbf9e",
              "parent_uuid": "e574570f-2aa7-4030-bd53-3d41ec5fe0b1",
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
              "uuid": "9ac1acbb-a11e-4037-9cb8-0ca8e37b494c",
              "parent_uuid": "e574570f-2aa7-4030-bd53-3d41ec5fe0b1",
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
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "2975bc9f-9730-4f80-a948-4c7653f1b8f1",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f869e3fd-2121-47a4-9cfe-d405cbac5b3e",
              "parent_uuid": "2975bc9f-9730-4f80-a948-4c7653f1b8f1",
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
                  "10"
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
          "uuid": "144af25e-acb5-4a91-8044-b65f473c0671",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cdf12819-b645-4a28-aa07-24c9ec997da5",
              "parent_uuid": "144af25e-acb5-4a91-8044-b65f473c0671",
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
                  "10"
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
          "uuid": "9e9da493-55e1-46bd-aa39-576170a27664",
          "parent_uuid": "98a3165e-0bb4-4028-924e-ac068aee3ac1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5fac519e-333f-40d9-9737-912aea22181f",
              "parent_uuid": "9e9da493-55e1-46bd-aa39-576170a27664",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "212f56c9-0b8f-4ad7-b4c7-169cd0563654",
                  "parent_uuid": "5fac519e-333f-40d9-9737-912aea22181f",
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
      "sort": 6,
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
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
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
		,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

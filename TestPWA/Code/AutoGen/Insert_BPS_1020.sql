
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
  "uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "1a52746f-2105-4531-9e75-1438857bcdbf",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "1108e73a-4b73-4dcd-9eb4-33130161584d",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "9d4028b2-e919-4b57-a368-b89e8843a187",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "d20bcc64-643e-402a-9b38-f42fb65b9f91",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "ff130d44-f97e-41cb-b81d-c9d4ddcbe262",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "be008c48-ad3b-4b3c-978b-c80b8a1436a0",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "ea261a90-a228-4005-8e62-dbf002cd6206",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
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
      "uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
      "parent_uuid": "05e66361-caa5-438d-9e15-e123138ad98d",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "14bb0084-2dea-4b2d-9072-52969f2dc142",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "2db54cbd-0bf1-4f6d-9275-e0456960d289",
              "parent_uuid": "14bb0084-2dea-4b2d-9072-52969f2dc142",
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
              "uuid": "002c24bd-687f-4294-825a-88b9c490b897",
              "parent_uuid": "14bb0084-2dea-4b2d-9072-52969f2dc142",
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
              "uuid": "afe8f4f7-6d4a-410e-ac8e-232b329e8852",
              "parent_uuid": "14bb0084-2dea-4b2d-9072-52969f2dc142",
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
              "uuid": "6e16a80f-c24d-4aa3-8038-98a4cf911e1c",
              "parent_uuid": "14bb0084-2dea-4b2d-9072-52969f2dc142",
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
          "uuid": "303e9419-93a0-4c28-8921-be5be753f186",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "86a50b2c-bc20-4883-b746-12e223941f94",
              "parent_uuid": "303e9419-93a0-4c28-8921-be5be753f186",
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
              "uuid": "7f9b7528-cd90-4ee5-ae69-3cb562492a55",
              "parent_uuid": "303e9419-93a0-4c28-8921-be5be753f186",
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
              "uuid": "9c2eed3e-c694-40ee-bdf4-0d51f5337a70",
              "parent_uuid": "303e9419-93a0-4c28-8921-be5be753f186",
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
              "uuid": "b429c060-4b0d-4395-a8a1-d1eb21a3ff3c",
              "parent_uuid": "303e9419-93a0-4c28-8921-be5be753f186",
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
          "uuid": "fab1b974-ed04-40f5-8ecd-3385370c6f3e",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "04d6f36e-0f07-4662-a964-e2121c39439f",
              "parent_uuid": "fab1b974-ed04-40f5-8ecd-3385370c6f3e",
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
              "uuid": "e9fac02d-9073-4bf4-bd02-135a9456316e",
              "parent_uuid": "fab1b974-ed04-40f5-8ecd-3385370c6f3e",
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
              "uuid": "218ba5a3-8ee4-4fef-b858-90e6f23ce2d1",
              "parent_uuid": "fab1b974-ed04-40f5-8ecd-3385370c6f3e",
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
              "uuid": "90b98bd7-9ba8-4219-9d09-07f74ed2c43a",
              "parent_uuid": "fab1b974-ed04-40f5-8ecd-3385370c6f3e",
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
          "uuid": "5604ba80-4ce6-460f-9997-9857455a0695",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38eac09f-4546-4908-9602-7f33118fc44f",
              "parent_uuid": "5604ba80-4ce6-460f-9997-9857455a0695",
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
              "uuid": "4ee446ef-35f1-47f8-9e3b-25a6a2a31fc6",
              "parent_uuid": "5604ba80-4ce6-460f-9997-9857455a0695",
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
              "uuid": "2ec1c1c5-ea5f-4591-bd59-93d88d110183",
              "parent_uuid": "5604ba80-4ce6-460f-9997-9857455a0695",
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
              "uuid": "45124306-fc0c-454d-bd95-79760a437979",
              "parent_uuid": "5604ba80-4ce6-460f-9997-9857455a0695",
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
              "uuid": "7d5adb26-2db2-4c8b-9c46-8b072c82ac4e",
              "parent_uuid": "5604ba80-4ce6-460f-9997-9857455a0695",
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
              "uuid": "d686570c-972f-457d-975f-36557fa539c3",
              "parent_uuid": "5604ba80-4ce6-460f-9997-9857455a0695",
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
          "uuid": "8dbc722a-2a8d-418a-b663-7c677cb1de5b",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6b065621-5244-4177-acf0-e52c12b079d7",
              "parent_uuid": "8dbc722a-2a8d-418a-b663-7c677cb1de5b",
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
          "uuid": "db69d911-15bd-4c08-b857-f08b8db7a0cb",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "263be5a2-f3e2-4623-aedd-5c46dd223b5a",
              "parent_uuid": "db69d911-15bd-4c08-b857-f08b8db7a0cb",
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
              "uuid": "ea9f10d3-68f0-463e-b4df-7fa458e5bfec",
              "parent_uuid": "db69d911-15bd-4c08-b857-f08b8db7a0cb",
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
              "uuid": "5d27f99e-62b1-41aa-9703-e8128f3bbfe0",
              "parent_uuid": "db69d911-15bd-4c08-b857-f08b8db7a0cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "201ba29f-f975-4e6c-ac6b-3b9fa3cffa9a",
                  "parent_uuid": "5d27f99e-62b1-41aa-9703-e8128f3bbfe0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ca9dca6-2444-45ea-afa3-2a578779577c",
              "parent_uuid": "db69d911-15bd-4c08-b857-f08b8db7a0cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ef0f9f2-b0ab-4dd3-a01d-9e82a223abc0",
                  "parent_uuid": "3ca9dca6-2444-45ea-afa3-2a578779577c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e8f06ae-e348-460a-aaa6-b9d4f51bcf57",
              "parent_uuid": "db69d911-15bd-4c08-b857-f08b8db7a0cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "241ec3a8-50ba-486a-b77e-ffc32ed2b02e",
                  "parent_uuid": "4e8f06ae-e348-460a-aaa6-b9d4f51bcf57",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c2aa574-e32f-48a4-9236-4e0c1a695dad",
              "parent_uuid": "db69d911-15bd-4c08-b857-f08b8db7a0cb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4f5126b-8a57-4c42-a3ad-22d2029cb679",
                  "parent_uuid": "8c2aa574-e32f-48a4-9236-4e0c1a695dad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1d66cd9e-d5dd-4957-bc62-e9f81c0b6057",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80b51bc7-1362-4296-822b-d1dfaaa2e67a",
              "parent_uuid": "1d66cd9e-d5dd-4957-bc62-e9f81c0b6057",
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
              "uuid": "d079ef26-f324-4e90-9740-2094b1bd0f15",
              "parent_uuid": "1d66cd9e-d5dd-4957-bc62-e9f81c0b6057",
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
              "uuid": "aa8d3bc7-bb75-445a-a1f7-08983e169d22",
              "parent_uuid": "1d66cd9e-d5dd-4957-bc62-e9f81c0b6057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8688cbcb-81d2-47ca-b206-dc259c198342",
                  "parent_uuid": "aa8d3bc7-bb75-445a-a1f7-08983e169d22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b93824d7-6693-45ed-87a1-3e6bcce43bf7",
              "parent_uuid": "1d66cd9e-d5dd-4957-bc62-e9f81c0b6057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4af03608-1c0c-4ff9-b385-2cb6baf077de",
                  "parent_uuid": "b93824d7-6693-45ed-87a1-3e6bcce43bf7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5602cb57-30d7-4e62-a250-770f6297c7bd",
              "parent_uuid": "1d66cd9e-d5dd-4957-bc62-e9f81c0b6057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f02df4e3-2880-49e1-9f81-41da125d8dd0",
                  "parent_uuid": "5602cb57-30d7-4e62-a250-770f6297c7bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db48adb2-03f0-4d8c-9e7d-46bca537f1fa",
              "parent_uuid": "1d66cd9e-d5dd-4957-bc62-e9f81c0b6057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7436e01c-2e19-4a7a-a6b1-c8694070dee4",
                  "parent_uuid": "db48adb2-03f0-4d8c-9e7d-46bca537f1fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c331986a-8b34-4e7c-bfd2-03bf1620aa57",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87a51d3b-b589-438b-9996-9b9aa03ea853",
              "parent_uuid": "c331986a-8b34-4e7c-bfd2-03bf1620aa57",
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
              "uuid": "d8e3cc42-bc2a-4499-a775-74a0db9ac1a3",
              "parent_uuid": "c331986a-8b34-4e7c-bfd2-03bf1620aa57",
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
              "uuid": "ff1a284f-ae7a-43e4-a5b7-7ae1496ce1bc",
              "parent_uuid": "c331986a-8b34-4e7c-bfd2-03bf1620aa57",
              "tagName": "td",
              "properties": [
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
                  "uuid": "486415c2-09c6-4b2d-a851-57a8ae1f4a3d",
                  "parent_uuid": "ff1a284f-ae7a-43e4-a5b7-7ae1496ce1bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73f8ea7d-a00e-4011-a46f-27e55a94cc03",
              "parent_uuid": "c331986a-8b34-4e7c-bfd2-03bf1620aa57",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a40fedbe-4036-4d5a-a755-f5c828d8532d",
                  "parent_uuid": "73f8ea7d-a00e-4011-a46f-27e55a94cc03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "234edd39-2a43-4a61-be46-aded1fbaed78",
              "parent_uuid": "c331986a-8b34-4e7c-bfd2-03bf1620aa57",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a26f148e-1437-481d-96ca-1dfb6ff3aadc",
                  "parent_uuid": "234edd39-2a43-4a61-be46-aded1fbaed78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd58fce4-714e-48e5-8332-bb52be6868af",
              "parent_uuid": "c331986a-8b34-4e7c-bfd2-03bf1620aa57",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ddc026cd-af7e-40cb-b585-983111aada32",
                  "parent_uuid": "dd58fce4-714e-48e5-8332-bb52be6868af",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a74b46e5-8532-48dd-8c1b-555d615f32e9",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b03cd9f-3131-4df8-b302-4688e09d52c5",
              "parent_uuid": "a74b46e5-8532-48dd-8c1b-555d615f32e9",
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
              "uuid": "fb908958-d9f6-4457-86b1-cf611269fd84",
              "parent_uuid": "a74b46e5-8532-48dd-8c1b-555d615f32e9",
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
              "uuid": "79e17aea-5826-46f9-af13-fef3fec0a43b",
              "parent_uuid": "a74b46e5-8532-48dd-8c1b-555d615f32e9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1c460878-7d0e-497a-8370-62bf1b2ae235",
                  "parent_uuid": "79e17aea-5826-46f9-af13-fef3fec0a43b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1cea3df-880c-4381-a722-a73f75f498cb",
              "parent_uuid": "a74b46e5-8532-48dd-8c1b-555d615f32e9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "264f1022-7ccf-45dd-8f4c-9847536e51b7",
                  "parent_uuid": "b1cea3df-880c-4381-a722-a73f75f498cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42636936-aa8d-4284-a01c-8e6955e05c51",
              "parent_uuid": "a74b46e5-8532-48dd-8c1b-555d615f32e9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c689d51-c52c-4536-80f8-b8f87b7114d3",
                  "parent_uuid": "42636936-aa8d-4284-a01c-8e6955e05c51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2eaa08f5-0f26-49c4-8ed3-94a2341e9915",
              "parent_uuid": "a74b46e5-8532-48dd-8c1b-555d615f32e9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e572ce1c-b635-4834-8896-3d583d5d8c46",
                  "parent_uuid": "2eaa08f5-0f26-49c4-8ed3-94a2341e9915",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "36b392c2-f96f-472b-89a6-0864f854f029",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "671bd0f6-71ff-4241-af55-86db67ce4b98",
              "parent_uuid": "36b392c2-f96f-472b-89a6-0864f854f029",
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
              "uuid": "d4a990ad-29f1-4f70-b5d4-8e6fd501bc94",
              "parent_uuid": "36b392c2-f96f-472b-89a6-0864f854f029",
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
              "uuid": "135177e4-682a-4779-80ce-fde78318806c",
              "parent_uuid": "36b392c2-f96f-472b-89a6-0864f854f029",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a54010e1-b246-4c74-8d37-aeb4f49cd70b",
                  "parent_uuid": "135177e4-682a-4779-80ce-fde78318806c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca987f77-3569-4d02-be0e-3b246821292d",
              "parent_uuid": "36b392c2-f96f-472b-89a6-0864f854f029",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f99e5674-2123-4f75-95ce-5e7417d65e95",
                  "parent_uuid": "ca987f77-3569-4d02-be0e-3b246821292d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "adcfd447-1849-4fb7-8d31-cc2891564b17",
              "parent_uuid": "36b392c2-f96f-472b-89a6-0864f854f029",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b89ddf86-78f3-4fa9-96c9-f1409f71d62d",
                  "parent_uuid": "adcfd447-1849-4fb7-8d31-cc2891564b17",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4b1ee17-6f11-40ce-8a94-7049d63f9ce4",
              "parent_uuid": "36b392c2-f96f-472b-89a6-0864f854f029",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d8dff60-a96a-453a-b972-3f3c74b9e07c",
                  "parent_uuid": "c4b1ee17-6f11-40ce-8a94-7049d63f9ce4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "68bd3a99-71d6-4339-838c-62146b69193e",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b441f37e-8d61-4d85-b924-8b03ee7f8dfd",
              "parent_uuid": "68bd3a99-71d6-4339-838c-62146b69193e",
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
              "uuid": "f384f23a-dcc8-4fab-bd8c-9ebdad8f8b69",
              "parent_uuid": "68bd3a99-71d6-4339-838c-62146b69193e",
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
              "uuid": "f4604d9a-6836-4771-a23e-9e002e3c80bd",
              "parent_uuid": "68bd3a99-71d6-4339-838c-62146b69193e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b646f9f-3bbb-4ff7-92c2-11ddb2ce7fea",
                  "parent_uuid": "f4604d9a-6836-4771-a23e-9e002e3c80bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77e66a1a-1dee-4457-b9e1-a8610a0ba081",
              "parent_uuid": "68bd3a99-71d6-4339-838c-62146b69193e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c84d09b4-2bde-4a79-96b0-a5965c085041",
                  "parent_uuid": "77e66a1a-1dee-4457-b9e1-a8610a0ba081",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51dabbf8-5cfd-4469-82e6-6e306cab7f89",
              "parent_uuid": "68bd3a99-71d6-4339-838c-62146b69193e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4568aeec-5c47-4b73-8484-922afb398503",
                  "parent_uuid": "51dabbf8-5cfd-4469-82e6-6e306cab7f89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47569397-5ff7-4694-bcc7-7afe73b8124b",
              "parent_uuid": "68bd3a99-71d6-4339-838c-62146b69193e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ef76a580-75fb-442e-bb1e-4eb23c663258",
                  "parent_uuid": "47569397-5ff7-4694-bcc7-7afe73b8124b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6bc99db1-d313-479c-96aa-c165df9f744f",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54b43e09-5e78-4d46-ad6b-1461a75ac9f9",
              "parent_uuid": "6bc99db1-d313-479c-96aa-c165df9f744f",
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
              "uuid": "b0b019f2-8145-44a9-bfb9-38ae8958b177",
              "parent_uuid": "6bc99db1-d313-479c-96aa-c165df9f744f",
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
              "uuid": "c70971f2-cffb-4270-af95-0baf472c514d",
              "parent_uuid": "6bc99db1-d313-479c-96aa-c165df9f744f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ce58292b-ebf2-4fa4-af0e-91dbdc9f4a2d",
                  "parent_uuid": "c70971f2-cffb-4270-af95-0baf472c514d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a79c0b28-f855-495e-896d-a69ae47f3e5d",
              "parent_uuid": "6bc99db1-d313-479c-96aa-c165df9f744f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bf7b3cad-8eca-47b6-b5bf-a187339d506d",
                  "parent_uuid": "a79c0b28-f855-495e-896d-a69ae47f3e5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1f07781-3328-4801-b648-2f58d0925282",
              "parent_uuid": "6bc99db1-d313-479c-96aa-c165df9f744f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb50d0ef-d004-4471-bf30-0f0460960d4b",
                  "parent_uuid": "c1f07781-3328-4801-b648-2f58d0925282",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50773d12-c2b5-4b3e-8d4c-1e9fa65c7c82",
              "parent_uuid": "6bc99db1-d313-479c-96aa-c165df9f744f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "50c61f58-fc68-4acc-a455-378cbf16ea51",
                  "parent_uuid": "50773d12-c2b5-4b3e-8d4c-1e9fa65c7c82",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6322da08-1483-4fc0-a5bf-e78bf5b426a2",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf6fdbbc-357e-4210-836a-408ee023d85f",
              "parent_uuid": "6322da08-1483-4fc0-a5bf-e78bf5b426a2",
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
              "uuid": "615412da-7bc9-49b7-9c5e-9688d9f113eb",
              "parent_uuid": "6322da08-1483-4fc0-a5bf-e78bf5b426a2",
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
              "uuid": "b4681447-56e8-4eb8-8ab7-6b10a1ee4779",
              "parent_uuid": "6322da08-1483-4fc0-a5bf-e78bf5b426a2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a5ae4db6-3bee-4c80-b5b5-1b754a0686fb",
                  "parent_uuid": "b4681447-56e8-4eb8-8ab7-6b10a1ee4779",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d928be4f-a96a-49aa-8738-d198c13dcc8c",
              "parent_uuid": "6322da08-1483-4fc0-a5bf-e78bf5b426a2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e71b0aa8-33fe-4518-a536-e958ee666a67",
                  "parent_uuid": "d928be4f-a96a-49aa-8738-d198c13dcc8c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c127b907-6022-4b18-95fe-96c7276f1e69",
              "parent_uuid": "6322da08-1483-4fc0-a5bf-e78bf5b426a2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "44347bbc-7328-4cfa-882f-4dbf224dd04f",
                  "parent_uuid": "c127b907-6022-4b18-95fe-96c7276f1e69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9ad95fb-6260-44ef-87a2-80afa5f2478b",
              "parent_uuid": "6322da08-1483-4fc0-a5bf-e78bf5b426a2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2489c987-6b9d-4260-9fb6-f167bdd43bef",
                  "parent_uuid": "c9ad95fb-6260-44ef-87a2-80afa5f2478b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "372b4271-0247-4604-bc42-b1daf3fed053",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a49f0531-f0af-43e8-a386-2f15dbc982d3",
              "parent_uuid": "372b4271-0247-4604-bc42-b1daf3fed053",
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
              "uuid": "91a5e82c-a9ce-486d-8fd3-c3d6321ba2b5",
              "parent_uuid": "372b4271-0247-4604-bc42-b1daf3fed053",
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
              "uuid": "bebc3355-6685-4c3d-bd87-67e12ef393ee",
              "parent_uuid": "372b4271-0247-4604-bc42-b1daf3fed053",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fae6d422-a661-4028-bea3-23f68148d355",
                  "parent_uuid": "bebc3355-6685-4c3d-bd87-67e12ef393ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da90a2c0-199b-4785-9e24-06ca98ce3696",
              "parent_uuid": "372b4271-0247-4604-bc42-b1daf3fed053",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b2624a14-31aa-4864-a0b1-aa1f0d4e8aab",
                  "parent_uuid": "da90a2c0-199b-4785-9e24-06ca98ce3696",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9288dae6-4489-4157-98b4-f7e73516dc79",
              "parent_uuid": "372b4271-0247-4604-bc42-b1daf3fed053",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c2533fe7-1963-4c15-a30e-227f58840b84",
                  "parent_uuid": "9288dae6-4489-4157-98b4-f7e73516dc79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3daf2e79-8ee2-440c-a0d1-bef03b454ece",
              "parent_uuid": "372b4271-0247-4604-bc42-b1daf3fed053",
              "tagName": "td",
              "properties": [
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
                  "uuid": "66317812-8ba6-494e-95d0-9489d1c28e6a",
                  "parent_uuid": "3daf2e79-8ee2-440c-a0d1-bef03b454ece",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0ece0149-6acf-4b22-94ac-0901f11194bd",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac3a04d7-af1e-4226-813d-ac3a3a1e31fc",
              "parent_uuid": "0ece0149-6acf-4b22-94ac-0901f11194bd",
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
              "uuid": "637f86ca-8977-4bc5-8056-0af41109f734",
              "parent_uuid": "0ece0149-6acf-4b22-94ac-0901f11194bd",
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
              "uuid": "36a5e91b-f178-4ea8-b9ac-9eb1714a1059",
              "parent_uuid": "0ece0149-6acf-4b22-94ac-0901f11194bd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8b6af781-5d24-45fa-9192-f0367409e7e5",
                  "parent_uuid": "36a5e91b-f178-4ea8-b9ac-9eb1714a1059",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7b4bd81-6786-40ac-9818-eb631e8e8bab",
              "parent_uuid": "0ece0149-6acf-4b22-94ac-0901f11194bd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c80d1e9-c050-495e-8a5a-ab5b92361c4d",
                  "parent_uuid": "e7b4bd81-6786-40ac-9818-eb631e8e8bab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89105cf5-f580-4346-9346-039c900a1b6f",
              "parent_uuid": "0ece0149-6acf-4b22-94ac-0901f11194bd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8a3e09e9-ce5c-48c2-8d86-05a6d330356c",
                  "parent_uuid": "89105cf5-f580-4346-9346-039c900a1b6f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b73fce3b-2b33-4aa4-89f1-43b39127b83b",
              "parent_uuid": "0ece0149-6acf-4b22-94ac-0901f11194bd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6f6130e5-306d-4286-8f93-22b2c64fd57f",
                  "parent_uuid": "b73fce3b-2b33-4aa4-89f1-43b39127b83b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3ed60be-1f9f-4a87-b154-3c3e02a3bb28",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "477f0cff-3300-4c52-b083-06c2f3fe1311",
              "parent_uuid": "b3ed60be-1f9f-4a87-b154-3c3e02a3bb28",
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
              "uuid": "54ed3baf-88b8-4436-b4ef-f3879a2dabe5",
              "parent_uuid": "b3ed60be-1f9f-4a87-b154-3c3e02a3bb28",
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
              "uuid": "48ef195c-fff6-45f2-b4d4-bc8c597dfa2e",
              "parent_uuid": "b3ed60be-1f9f-4a87-b154-3c3e02a3bb28",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fb42bea0-d537-4a17-a34a-0aa54a90dd14",
                  "parent_uuid": "48ef195c-fff6-45f2-b4d4-bc8c597dfa2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "98b2e248-eef5-4cd8-86d8-b32088f37925",
              "parent_uuid": "b3ed60be-1f9f-4a87-b154-3c3e02a3bb28",
              "tagName": "td",
              "properties": [
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
                  "uuid": "37c639a5-99fb-4b71-8700-6f8d9a05bd6a",
                  "parent_uuid": "98b2e248-eef5-4cd8-86d8-b32088f37925",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8b72e9f-a470-4e93-9613-c17002978365",
              "parent_uuid": "b3ed60be-1f9f-4a87-b154-3c3e02a3bb28",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e94de9fa-f500-4ec1-bb1e-b480e21b21d4",
                  "parent_uuid": "c8b72e9f-a470-4e93-9613-c17002978365",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c129a83-0b4d-4853-a3a4-95bfcf07d815",
              "parent_uuid": "b3ed60be-1f9f-4a87-b154-3c3e02a3bb28",
              "tagName": "td",
              "properties": [
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
                  "uuid": "09c324ee-728e-4e07-a344-4e4dfcc37b29",
                  "parent_uuid": "7c129a83-0b4d-4853-a3a4-95bfcf07d815",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8fd0b5da-c23d-4b43-a126-6caf71b1765d",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b9b9c63-8fd9-4458-a51c-ddabea5ccabc",
              "parent_uuid": "8fd0b5da-c23d-4b43-a126-6caf71b1765d",
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
              "uuid": "09c773af-4565-490a-b31b-869942e94388",
              "parent_uuid": "8fd0b5da-c23d-4b43-a126-6caf71b1765d",
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
              "uuid": "3e400bc2-985f-4c59-9df1-b810ef963dfd",
              "parent_uuid": "8fd0b5da-c23d-4b43-a126-6caf71b1765d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6a839d04-ac53-498c-b85e-60f07d15f280",
                  "parent_uuid": "3e400bc2-985f-4c59-9df1-b810ef963dfd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b9f6925-9e79-4213-913a-6584d1d2947c",
              "parent_uuid": "8fd0b5da-c23d-4b43-a126-6caf71b1765d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "471dbb52-aee9-412e-a2e6-9cd84379dada",
                  "parent_uuid": "9b9f6925-9e79-4213-913a-6584d1d2947c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "714b811e-ad8d-48ab-a049-1706bd6b4ab5",
              "parent_uuid": "8fd0b5da-c23d-4b43-a126-6caf71b1765d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3d09418a-b243-436e-8b9e-6a8bca436813",
                  "parent_uuid": "714b811e-ad8d-48ab-a049-1706bd6b4ab5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17d6dbb9-eb97-4917-85e1-b0988256e957",
              "parent_uuid": "8fd0b5da-c23d-4b43-a126-6caf71b1765d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d290dfb1-de2b-4702-9629-1768fd46a526",
                  "parent_uuid": "17d6dbb9-eb97-4917-85e1-b0988256e957",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "741ae69e-d94a-4e2e-981a-d7882b2bebc2",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96ed7157-17da-4da1-9dbf-128722dd12e3",
              "parent_uuid": "741ae69e-d94a-4e2e-981a-d7882b2bebc2",
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
          "uuid": "7a8d95cf-c286-40d9-898f-3a35a7d0c268",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08a6533b-d0a1-4f61-b64b-ba210666815a",
              "parent_uuid": "7a8d95cf-c286-40d9-898f-3a35a7d0c268",
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
          "uuid": "cd7e0dc7-d522-469a-bed6-1c2b458b0f13",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "811b1e79-4dd6-4927-b147-f0d211e17eb9",
              "parent_uuid": "cd7e0dc7-d522-469a-bed6-1c2b458b0f13",
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
                  "uuid": "9e7f14d6-4419-4e0b-9cd9-aabb728a9d62",
                  "parent_uuid": "811b1e79-4dd6-4927-b147-f0d211e17eb9",
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
          "uuid": "2d88a6fc-b8b0-42ca-98f3-52b66dc781e6",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11cff72d-b2d5-4b4d-8ec8-82a186baf7c3",
              "parent_uuid": "2d88a6fc-b8b0-42ca-98f3-52b66dc781e6",
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
          "uuid": "21dd111c-8f7c-4bea-b394-e1c037220525",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "039050e8-5ef7-4e02-b9b2-200d18fc8a12",
              "parent_uuid": "21dd111c-8f7c-4bea-b394-e1c037220525",
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
          "uuid": "23c7b6a6-1c11-4b5c-922f-115713b06290",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7d8b9b9-0da0-42bf-b295-e0a0e23f679f",
              "parent_uuid": "23c7b6a6-1c11-4b5c-922f-115713b06290",
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
              "uuid": "9c748bf0-d4a5-4217-863c-de7a6555fcf3",
              "parent_uuid": "23c7b6a6-1c11-4b5c-922f-115713b06290",
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
              "uuid": "eeaa1953-6785-4742-b223-994d615c86c8",
              "parent_uuid": "23c7b6a6-1c11-4b5c-922f-115713b06290",
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
              "uuid": "465eb3dd-62c4-4f87-9a51-948886a25912",
              "parent_uuid": "23c7b6a6-1c11-4b5c-922f-115713b06290",
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
              "uuid": "c6cd4cac-b8ab-47db-a4ea-bf63f15005f1",
              "parent_uuid": "23c7b6a6-1c11-4b5c-922f-115713b06290",
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
              "uuid": "6dd528e4-201c-4fb0-9eda-0b0fe40c323e",
              "parent_uuid": "23c7b6a6-1c11-4b5c-922f-115713b06290",
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
          "uuid": "53aea51b-c0de-4ed6-83bb-08c86e655d93",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a174dfaa-c3b6-4de6-98fd-1daf67a8dc40",
              "parent_uuid": "53aea51b-c0de-4ed6-83bb-08c86e655d93",
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
              "uuid": "e5438304-41a5-4986-a845-1b64f3233db9",
              "parent_uuid": "53aea51b-c0de-4ed6-83bb-08c86e655d93",
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
              "uuid": "afe12e19-c0ba-426b-9d3c-183910a7ad92",
              "parent_uuid": "53aea51b-c0de-4ed6-83bb-08c86e655d93",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cfc5625b-157b-42cc-a554-b5fb695777ad",
                  "parent_uuid": "afe12e19-c0ba-426b-9d3c-183910a7ad92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a13b0ba2-1309-45c9-a64e-3e95a45b3737",
              "parent_uuid": "53aea51b-c0de-4ed6-83bb-08c86e655d93",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7d54d318-2a04-4b76-a599-fc7d67ac148d",
                  "parent_uuid": "a13b0ba2-1309-45c9-a64e-3e95a45b3737",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "960b156a-59d7-4445-a58e-67826eac3181",
              "parent_uuid": "53aea51b-c0de-4ed6-83bb-08c86e655d93",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f1a2c677-2638-4e70-8c3f-b0f0c4032a7e",
                  "parent_uuid": "960b156a-59d7-4445-a58e-67826eac3181",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e93bbd8-4190-4fe3-a270-287c604383a5",
              "parent_uuid": "53aea51b-c0de-4ed6-83bb-08c86e655d93",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5378e68f-e28e-414a-842a-1bcf7446d236",
                  "parent_uuid": "6e93bbd8-4190-4fe3-a270-287c604383a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "89052326-2512-4d64-83cc-48d6d313a84f",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6bf8c2f7-a27c-4ce9-854f-e15499d18131",
              "parent_uuid": "89052326-2512-4d64-83cc-48d6d313a84f",
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
              "uuid": "e4ac4c64-97dd-4c13-b0b0-eada5c730e37",
              "parent_uuid": "89052326-2512-4d64-83cc-48d6d313a84f",
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
              "uuid": "87f1f31c-2be1-4ce6-bf5f-e181fe499121",
              "parent_uuid": "89052326-2512-4d64-83cc-48d6d313a84f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "97ee973e-5ddb-4550-ba99-c1d9eec37038",
                  "parent_uuid": "87f1f31c-2be1-4ce6-bf5f-e181fe499121",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d67dc81-1c37-408a-a2b7-b2ba58c1847d",
              "parent_uuid": "89052326-2512-4d64-83cc-48d6d313a84f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ce6229ab-98c3-49c0-93b8-559d6481ab4e",
                  "parent_uuid": "0d67dc81-1c37-408a-a2b7-b2ba58c1847d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a417f885-22c6-4c99-bcfd-8e399e17b6ff",
              "parent_uuid": "89052326-2512-4d64-83cc-48d6d313a84f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04c4c798-95ca-4ca3-bdf0-d25afbc8a7d6",
                  "parent_uuid": "a417f885-22c6-4c99-bcfd-8e399e17b6ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec9e546f-89b1-48b1-a337-54663801667e",
              "parent_uuid": "89052326-2512-4d64-83cc-48d6d313a84f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4e424227-6562-4952-a367-679b703ed712",
                  "parent_uuid": "ec9e546f-89b1-48b1-a337-54663801667e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c6393bdf-949a-4cde-9874-25b1f7381483",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cca9401f-607d-4dc5-abfe-dd2e962f1b1c",
              "parent_uuid": "c6393bdf-949a-4cde-9874-25b1f7381483",
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
              "uuid": "7c2401fe-54d3-4961-ac41-3174633fd63d",
              "parent_uuid": "c6393bdf-949a-4cde-9874-25b1f7381483",
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
              "uuid": "bf588e19-dcba-43f7-a77e-0d93dad9bf4e",
              "parent_uuid": "c6393bdf-949a-4cde-9874-25b1f7381483",
              "tagName": "td",
              "properties": [
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
                  "uuid": "65399c62-0518-42a8-b772-2991636aa56b",
                  "parent_uuid": "bf588e19-dcba-43f7-a77e-0d93dad9bf4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83ed7a87-16d7-4303-95fb-2f402d343b6e",
              "parent_uuid": "c6393bdf-949a-4cde-9874-25b1f7381483",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4225fa03-9751-46ef-994d-8c8a6b002987",
                  "parent_uuid": "83ed7a87-16d7-4303-95fb-2f402d343b6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66093522-e6f6-4ae4-952b-0e5a77a790f0",
              "parent_uuid": "c6393bdf-949a-4cde-9874-25b1f7381483",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e95cb6f9-0cab-4f93-ba37-9ea23f63ae0c",
                  "parent_uuid": "66093522-e6f6-4ae4-952b-0e5a77a790f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc17d12b-4912-41f9-ab7c-a1a025b6f2e2",
              "parent_uuid": "c6393bdf-949a-4cde-9874-25b1f7381483",
              "tagName": "td",
              "properties": [
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
                  "uuid": "41a87ea7-89e2-47cb-8399-ad242663412b",
                  "parent_uuid": "fc17d12b-4912-41f9-ab7c-a1a025b6f2e2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3e5eaf7b-6a71-4456-bc02-984ba7590310",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71da84f1-b75e-4b24-a245-de0e09ddb40d",
              "parent_uuid": "3e5eaf7b-6a71-4456-bc02-984ba7590310",
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
              "uuid": "59c1c89f-409e-4fcd-9b22-a6a38a19bd5e",
              "parent_uuid": "3e5eaf7b-6a71-4456-bc02-984ba7590310",
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
              "uuid": "32c2f2a3-5b28-4a31-834d-1ffc87ba3153",
              "parent_uuid": "3e5eaf7b-6a71-4456-bc02-984ba7590310",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e99fed56-d565-40d1-8e2c-68b067b3c300",
                  "parent_uuid": "32c2f2a3-5b28-4a31-834d-1ffc87ba3153",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47be52a0-5118-48f1-a19d-8441d8653859",
              "parent_uuid": "3e5eaf7b-6a71-4456-bc02-984ba7590310",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a7822020-d8f2-4cf7-9a42-20f1c35fb65d",
                  "parent_uuid": "47be52a0-5118-48f1-a19d-8441d8653859",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a35767dd-7c0c-4308-a694-a0a8d995a6ca",
              "parent_uuid": "3e5eaf7b-6a71-4456-bc02-984ba7590310",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9a6d2f0c-b07b-4e02-9f00-8103f8805f15",
                  "parent_uuid": "a35767dd-7c0c-4308-a694-a0a8d995a6ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b746e5a-1fc2-4b87-8c73-e9430af33e38",
              "parent_uuid": "3e5eaf7b-6a71-4456-bc02-984ba7590310",
              "tagName": "td",
              "properties": [
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
                  "uuid": "743b1cc1-72e6-431a-a3b6-990e52dfa3dd",
                  "parent_uuid": "4b746e5a-1fc2-4b87-8c73-e9430af33e38",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f0ecd3cf-a803-48e0-8613-b47da994cbf8",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f64bfb0e-50f8-4c58-8464-4ea7c2c86587",
              "parent_uuid": "f0ecd3cf-a803-48e0-8613-b47da994cbf8",
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
          "uuid": "655727ea-b675-469f-b41c-954afeedab87",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0590399-4c54-4801-9156-fd3a7d0c924f",
              "parent_uuid": "655727ea-b675-469f-b41c-954afeedab87",
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
          "uuid": "9846315a-869e-4a03-9d0b-9ae45a8f639f",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1e7ae57-6081-435d-8af3-b87cffc1ab25",
              "parent_uuid": "9846315a-869e-4a03-9d0b-9ae45a8f639f",
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
                  "uuid": "f29c2ecf-adb6-4eee-88a4-ee3b97702d61",
                  "parent_uuid": "e1e7ae57-6081-435d-8af3-b87cffc1ab25",
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
          "uuid": "fff68f63-93db-427e-a2bc-ee53e87999ee",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5feb0e8-6f8c-4d6d-94c3-b20cae3fa470",
              "parent_uuid": "fff68f63-93db-427e-a2bc-ee53e87999ee",
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
          "uuid": "717ebb4d-e6e4-4232-91b1-17af154c7170",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "2632055e-9a32-4af4-aba5-a5e45611382e",
              "parent_uuid": "717ebb4d-e6e4-4232-91b1-17af154c7170",
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
          "uuid": "ca02702d-313e-4b90-9bab-06b310b9e671",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bea98ca8-8a06-442c-a917-9e480c0930dc",
              "parent_uuid": "ca02702d-313e-4b90-9bab-06b310b9e671",
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
              "uuid": "b8559c48-a61f-42fa-8f37-cfd74deadff2",
              "parent_uuid": "ca02702d-313e-4b90-9bab-06b310b9e671",
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
              "uuid": "b1e7ade3-6959-46c9-87d0-b7595cdf3e28",
              "parent_uuid": "ca02702d-313e-4b90-9bab-06b310b9e671",
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
              "uuid": "8ca9f14b-1038-4f80-ab79-6cd7724e92a4",
              "parent_uuid": "ca02702d-313e-4b90-9bab-06b310b9e671",
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
              "uuid": "9566c5d5-dbc8-48fd-bd92-87da6a469050",
              "parent_uuid": "ca02702d-313e-4b90-9bab-06b310b9e671",
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
              "uuid": "bc2bea2e-5acc-4b63-9943-ee9416bb515c",
              "parent_uuid": "ca02702d-313e-4b90-9bab-06b310b9e671",
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
          "uuid": "445eb51f-923f-4a11-8ab8-082620f2e6f1",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "3d5400da-abf3-4221-80d8-1f48816aa654",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6944f3fa-1b7e-439d-b5bf-1660268e1d60",
              "parent_uuid": "3d5400da-abf3-4221-80d8-1f48816aa654",
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
              "uuid": "2988eb70-d472-43ab-be4b-f83a0913e512",
              "parent_uuid": "3d5400da-abf3-4221-80d8-1f48816aa654",
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
              "uuid": "3793a18e-3a98-40a1-ba48-bb61cb5e3a77",
              "parent_uuid": "3d5400da-abf3-4221-80d8-1f48816aa654",
              "tagName": "td",
              "properties": [
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
                  "uuid": "120f32e9-b986-4a5a-a3bf-133a5a548ea9",
                  "parent_uuid": "3793a18e-3a98-40a1-ba48-bb61cb5e3a77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ea8ee64-e48a-4cd7-ba9f-19cc0991526f",
              "parent_uuid": "3d5400da-abf3-4221-80d8-1f48816aa654",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7ff30560-33ba-41c2-be87-2963085e1af0",
                  "parent_uuid": "3ea8ee64-e48a-4cd7-ba9f-19cc0991526f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07d6387b-3d53-4162-b663-d3cc26fecc29",
              "parent_uuid": "3d5400da-abf3-4221-80d8-1f48816aa654",
              "tagName": "td",
              "properties": [
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
                  "uuid": "697961a2-1e58-461e-9b94-80f4330f0b7f",
                  "parent_uuid": "07d6387b-3d53-4162-b663-d3cc26fecc29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ee9bd3e-7217-40bb-b38a-d7456617564b",
              "parent_uuid": "3d5400da-abf3-4221-80d8-1f48816aa654",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4019dbd9-0d06-4912-9d60-93706709bbb1",
                  "parent_uuid": "6ee9bd3e-7217-40bb-b38a-d7456617564b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d7e2a17-0345-4bdf-9d3e-aff9f4cb477d",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "687c55a2-7f60-478e-96e2-7464e5a0796e",
              "parent_uuid": "7d7e2a17-0345-4bdf-9d3e-aff9f4cb477d",
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
              "uuid": "ff31a525-c5f4-4d7d-87f7-dce14d82da4d",
              "parent_uuid": "7d7e2a17-0345-4bdf-9d3e-aff9f4cb477d",
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
              "uuid": "8f17fa03-3b05-4ef4-9047-061889dd19e6",
              "parent_uuid": "7d7e2a17-0345-4bdf-9d3e-aff9f4cb477d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f4f973e5-b3a7-44f8-9351-99048a0fd58d",
                  "parent_uuid": "8f17fa03-3b05-4ef4-9047-061889dd19e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b03026e5-566d-48da-b54f-b60bc32ed0f2",
              "parent_uuid": "7d7e2a17-0345-4bdf-9d3e-aff9f4cb477d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "954aa2e0-3d50-406b-87ae-cf98a6d8bd67",
                  "parent_uuid": "b03026e5-566d-48da-b54f-b60bc32ed0f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f57b56ae-395d-4afa-be18-4fe012cc9556",
              "parent_uuid": "7d7e2a17-0345-4bdf-9d3e-aff9f4cb477d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "25d6e9e9-975a-4ae7-ad85-76e4a3ecc7bf",
                  "parent_uuid": "f57b56ae-395d-4afa-be18-4fe012cc9556",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f212c880-355c-4de5-86bf-3fb08a807c5d",
              "parent_uuid": "7d7e2a17-0345-4bdf-9d3e-aff9f4cb477d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "166106bf-a6d4-45b6-88de-5c1322bd58cc",
                  "parent_uuid": "f212c880-355c-4de5-86bf-3fb08a807c5d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9dadc3df-b6b0-4889-8c9c-fa462ab7681e",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66a5fae1-4b55-4776-b83a-31309f2f9123",
              "parent_uuid": "9dadc3df-b6b0-4889-8c9c-fa462ab7681e",
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
              "uuid": "bc0a5d4e-8195-4d38-a70d-930bb949ca5f",
              "parent_uuid": "9dadc3df-b6b0-4889-8c9c-fa462ab7681e",
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
              "uuid": "a5d249fa-f831-4db1-be9c-73f4adf23db6",
              "parent_uuid": "9dadc3df-b6b0-4889-8c9c-fa462ab7681e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f4b59a13-dc97-4ac3-9026-bb9dcb18bddb",
                  "parent_uuid": "a5d249fa-f831-4db1-be9c-73f4adf23db6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a93e127-8ea2-4670-9cfc-f88d767d78f9",
              "parent_uuid": "9dadc3df-b6b0-4889-8c9c-fa462ab7681e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "edc0c230-dc7d-478b-b86f-1da0a844c73d",
                  "parent_uuid": "6a93e127-8ea2-4670-9cfc-f88d767d78f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ff2dd19-ac91-43a5-ace8-a21898980a11",
              "parent_uuid": "9dadc3df-b6b0-4889-8c9c-fa462ab7681e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "016193f8-d369-4922-a2bd-38d3baa58e92",
                  "parent_uuid": "9ff2dd19-ac91-43a5-ace8-a21898980a11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33647732-c160-46c9-abfd-016ecb6be919",
              "parent_uuid": "9dadc3df-b6b0-4889-8c9c-fa462ab7681e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4827b48a-c13c-4a07-823e-37db44e80b42",
                  "parent_uuid": "33647732-c160-46c9-abfd-016ecb6be919",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cc62eb14-3d06-4a22-8c21-91a63d4f651e",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69c31d63-9350-4aff-bcde-be62e394e55a",
              "parent_uuid": "cc62eb14-3d06-4a22-8c21-91a63d4f651e",
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
              "uuid": "5e46d15d-3e93-48f7-a699-913f698d83f6",
              "parent_uuid": "cc62eb14-3d06-4a22-8c21-91a63d4f651e",
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
              "uuid": "fb79623e-ed99-4721-a16a-8308727d82e3",
              "parent_uuid": "cc62eb14-3d06-4a22-8c21-91a63d4f651e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "088f20d5-db1b-4665-9c0f-228d29baab98",
                  "parent_uuid": "fb79623e-ed99-4721-a16a-8308727d82e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae9d02ca-0a18-4c69-befa-adf97d44f250",
              "parent_uuid": "cc62eb14-3d06-4a22-8c21-91a63d4f651e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "999dcb7b-10d8-43c1-ad7f-dde2183df2bb",
                  "parent_uuid": "ae9d02ca-0a18-4c69-befa-adf97d44f250",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c445362c-e51c-4539-9145-1d0839b91266",
              "parent_uuid": "cc62eb14-3d06-4a22-8c21-91a63d4f651e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c6ba6071-db89-47d9-b8b4-c1d5ce835fa8",
                  "parent_uuid": "c445362c-e51c-4539-9145-1d0839b91266",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cfb0923-ec3c-4894-bebe-133549d9aaac",
              "parent_uuid": "cc62eb14-3d06-4a22-8c21-91a63d4f651e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2bbdedc1-55d8-4c71-bfd7-b9e5abef9a1e",
                  "parent_uuid": "7cfb0923-ec3c-4894-bebe-133549d9aaac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9f73948d-3353-4539-97e9-6de53686dff5",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c0e1e9d-fd25-425e-962d-ebf8093bcfb1",
              "parent_uuid": "9f73948d-3353-4539-97e9-6de53686dff5",
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
              "uuid": "ffad16f2-85af-4b6a-b373-1234ce9fc36f",
              "parent_uuid": "9f73948d-3353-4539-97e9-6de53686dff5",
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
              "uuid": "8e23decb-68e7-4857-b84c-6a83a010250f",
              "parent_uuid": "9f73948d-3353-4539-97e9-6de53686dff5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d48a3fc2-da44-4ea1-bc4f-485b02796ca8",
                  "parent_uuid": "8e23decb-68e7-4857-b84c-6a83a010250f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad0a2fbe-0863-4726-b0d0-147384ef4250",
              "parent_uuid": "9f73948d-3353-4539-97e9-6de53686dff5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb16f681-5a0b-42bc-bbba-43cefb8eb862",
                  "parent_uuid": "ad0a2fbe-0863-4726-b0d0-147384ef4250",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb7111ba-9e5e-48ce-8810-c5383e6f9dc3",
              "parent_uuid": "9f73948d-3353-4539-97e9-6de53686dff5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8ef681ae-c2fb-4f98-ab53-0cf07467eda0",
                  "parent_uuid": "bb7111ba-9e5e-48ce-8810-c5383e6f9dc3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57d61a1a-34d9-42ee-a466-c2c447691c67",
              "parent_uuid": "9f73948d-3353-4539-97e9-6de53686dff5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9aa9a5c1-82e8-4d99-8ff1-79331fa2417d",
                  "parent_uuid": "57d61a1a-34d9-42ee-a466-c2c447691c67",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1fbb24b3-1552-43de-8fcb-8f0750f20b3f",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0ad3855-14f5-412a-804f-424a87fa6816",
              "parent_uuid": "1fbb24b3-1552-43de-8fcb-8f0750f20b3f",
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
              "uuid": "521559a5-dcd8-4992-a26a-1315407df74f",
              "parent_uuid": "1fbb24b3-1552-43de-8fcb-8f0750f20b3f",
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
              "uuid": "50714c13-0ce0-4cb8-a7a8-114fbb898838",
              "parent_uuid": "1fbb24b3-1552-43de-8fcb-8f0750f20b3f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "acf41ce0-1374-4f4e-bf9d-706ef946955e",
                  "parent_uuid": "50714c13-0ce0-4cb8-a7a8-114fbb898838",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f2c6a19-6148-4981-8366-4d0c5b8e7720",
              "parent_uuid": "1fbb24b3-1552-43de-8fcb-8f0750f20b3f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ee0f6c22-cfbb-4b71-9c1c-bf9aca2b5299",
                  "parent_uuid": "8f2c6a19-6148-4981-8366-4d0c5b8e7720",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc8923d7-727b-4231-b62a-512793ae6246",
              "parent_uuid": "1fbb24b3-1552-43de-8fcb-8f0750f20b3f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aea28a30-b338-4576-8040-c23c3447866c",
                  "parent_uuid": "fc8923d7-727b-4231-b62a-512793ae6246",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f2a2525-9d51-43a8-ba56-48a7ec661f40",
              "parent_uuid": "1fbb24b3-1552-43de-8fcb-8f0750f20b3f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5377590e-9644-4f56-9240-9e8611b8b37b",
                  "parent_uuid": "1f2a2525-9d51-43a8-ba56-48a7ec661f40",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d592a2b6-1f7c-41a7-aa1d-bdadff97e0f7",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "871eaa8c-4e45-4522-ab52-dbaed7000698",
              "parent_uuid": "d592a2b6-1f7c-41a7-aa1d-bdadff97e0f7",
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
          "uuid": "d417f133-0acc-4eb7-b00f-a5eb25fb4a37",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee75a7f0-e1ce-48be-9267-b4832e62b7b2",
              "parent_uuid": "d417f133-0acc-4eb7-b00f-a5eb25fb4a37",
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
          "uuid": "a59a061e-487d-4640-b3c2-248c7b37df2d",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5fc9dc53-d013-4dda-883c-902af7ea5a2a",
              "parent_uuid": "a59a061e-487d-4640-b3c2-248c7b37df2d",
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
                  "uuid": "549a2543-ee0d-4121-b206-a4925807c6d1",
                  "parent_uuid": "5fc9dc53-d013-4dda-883c-902af7ea5a2a",
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
          "uuid": "58033852-f9b9-4e0e-97db-cd64991368fb",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb4c1828-19b4-48d2-9a2c-6df09911d559",
              "parent_uuid": "58033852-f9b9-4e0e-97db-cd64991368fb",
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
          "uuid": "cad1169c-e02a-4f9c-b2fb-33aa0a29e42e",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c04ff212-8646-4080-98a4-34a614ef9a39",
              "parent_uuid": "cad1169c-e02a-4f9c-b2fb-33aa0a29e42e",
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
          "uuid": "062afa51-f1ae-4e3c-a087-10ff4ad95562",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e3751dfd-d99a-4b43-a3e9-24c7980ecc9b",
              "parent_uuid": "062afa51-f1ae-4e3c-a087-10ff4ad95562",
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
              "uuid": "b6224603-7a72-4d58-bc4c-b6f3d0c24561",
              "parent_uuid": "062afa51-f1ae-4e3c-a087-10ff4ad95562",
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
              "uuid": "d409e2d5-f328-4e5d-b455-5b7cb1f6cc4f",
              "parent_uuid": "062afa51-f1ae-4e3c-a087-10ff4ad95562",
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
              "uuid": "ada35f9e-7079-4def-abe8-e8b515cbc81b",
              "parent_uuid": "062afa51-f1ae-4e3c-a087-10ff4ad95562",
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
              "uuid": "3b073ae8-f149-46cd-a46f-d755c2977974",
              "parent_uuid": "062afa51-f1ae-4e3c-a087-10ff4ad95562",
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
          "uuid": "f3490d98-464f-47fc-99b0-47ac2c36e8f8",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0333f0f3-8397-48dd-8c5c-8ff9173b7bd1",
              "parent_uuid": "f3490d98-464f-47fc-99b0-47ac2c36e8f8",
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
              "uuid": "faa98aac-94ce-4598-ad4a-99df5b0e387e",
              "parent_uuid": "f3490d98-464f-47fc-99b0-47ac2c36e8f8",
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
              "uuid": "d4ccb851-f11c-46eb-93b4-f068f8196f75",
              "parent_uuid": "f3490d98-464f-47fc-99b0-47ac2c36e8f8",
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
              "uuid": "836d4e41-3ac9-4980-a413-26c52174b29b",
              "parent_uuid": "f3490d98-464f-47fc-99b0-47ac2c36e8f8",
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
              "uuid": "5771709d-56d8-46bd-9033-ccf104906604",
              "parent_uuid": "f3490d98-464f-47fc-99b0-47ac2c36e8f8",
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
          "uuid": "f874d538-8606-40c2-8412-e101200e1f8d",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc23b38f-78c3-4e9a-ae17-16f4db91fa4e",
              "parent_uuid": "f874d538-8606-40c2-8412-e101200e1f8d",
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
              "uuid": "62cd3f59-1aeb-4801-a036-25bf5e372c19",
              "parent_uuid": "f874d538-8606-40c2-8412-e101200e1f8d",
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
              "uuid": "7c1d741a-f305-4308-866e-61870cb64689",
              "parent_uuid": "f874d538-8606-40c2-8412-e101200e1f8d",
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
              "uuid": "b0f9a2df-cb63-4bf8-b8a2-70336dfcf013",
              "parent_uuid": "f874d538-8606-40c2-8412-e101200e1f8d",
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
              "uuid": "e6b46810-68fb-4dcf-add1-b78d5e9e867f",
              "parent_uuid": "f874d538-8606-40c2-8412-e101200e1f8d",
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
          "uuid": "64453d29-4585-4a74-86e5-deb626e9c9ac",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db9222df-4b10-43a6-ad99-a9b664fa3ea0",
              "parent_uuid": "64453d29-4585-4a74-86e5-deb626e9c9ac",
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
              "uuid": "685590ba-7f68-47ff-abf9-04fcfbd9f281",
              "parent_uuid": "64453d29-4585-4a74-86e5-deb626e9c9ac",
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
              "uuid": "6cb2528e-5a12-4dff-b8f3-908149044e12",
              "parent_uuid": "64453d29-4585-4a74-86e5-deb626e9c9ac",
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
              "uuid": "5c94a3e9-7623-4eb0-b105-285748b4aa27",
              "parent_uuid": "64453d29-4585-4a74-86e5-deb626e9c9ac",
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
              "uuid": "3c30a519-0d5b-40d4-bdb8-958e189e70e2",
              "parent_uuid": "64453d29-4585-4a74-86e5-deb626e9c9ac",
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
          "uuid": "54c2ee2c-65b5-42e6-aa4b-7746de647eff",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ee3130b-1510-4dab-ae0a-c1625828a3e5",
              "parent_uuid": "54c2ee2c-65b5-42e6-aa4b-7746de647eff",
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
              "uuid": "e2155c84-4a6d-4bb3-beae-81adad6a32ff",
              "parent_uuid": "54c2ee2c-65b5-42e6-aa4b-7746de647eff",
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
              "uuid": "28874291-9832-4d6a-b0d1-70b5f847a930",
              "parent_uuid": "54c2ee2c-65b5-42e6-aa4b-7746de647eff",
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
              "uuid": "bcecacd0-708d-4aab-a39b-9eecc9eb973e",
              "parent_uuid": "54c2ee2c-65b5-42e6-aa4b-7746de647eff",
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
              "uuid": "5e0227ed-c301-458e-b8c4-0871d85595f9",
              "parent_uuid": "54c2ee2c-65b5-42e6-aa4b-7746de647eff",
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
          "uuid": "9f16f96c-6d57-40d4-82a9-9a3c6ca0773d",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42d991f4-3ba5-4cf6-aa45-2945b74327ac",
              "parent_uuid": "9f16f96c-6d57-40d4-82a9-9a3c6ca0773d",
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
              "uuid": "d164ce07-ca2f-4442-9945-6af0a120ee48",
              "parent_uuid": "9f16f96c-6d57-40d4-82a9-9a3c6ca0773d",
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
              "uuid": "71c32ac7-f01b-49e6-947c-a9bb4161ee5f",
              "parent_uuid": "9f16f96c-6d57-40d4-82a9-9a3c6ca0773d",
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
              "uuid": "490494d9-ec9d-484f-8f68-c3321b6f7070",
              "parent_uuid": "9f16f96c-6d57-40d4-82a9-9a3c6ca0773d",
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
              "uuid": "d7229ab2-759a-4f57-bd57-f26855b1c9b2",
              "parent_uuid": "9f16f96c-6d57-40d4-82a9-9a3c6ca0773d",
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
          "uuid": "5055f2d5-1ace-4e46-952d-746e74cabfe8",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da58c40a-76a3-4a29-945c-4a9bd7701536",
              "parent_uuid": "5055f2d5-1ace-4e46-952d-746e74cabfe8",
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
              "uuid": "8e0b1187-297d-4376-b9d4-95bd03ddf7af",
              "parent_uuid": "5055f2d5-1ace-4e46-952d-746e74cabfe8",
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
              "uuid": "b042892c-64b1-498e-9ae6-1152df725ab4",
              "parent_uuid": "5055f2d5-1ace-4e46-952d-746e74cabfe8",
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
              "uuid": "2f024d10-425b-47c9-b933-33a2718f587e",
              "parent_uuid": "5055f2d5-1ace-4e46-952d-746e74cabfe8",
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
              "uuid": "6d4488c8-f637-45fa-bc38-f4a56d9eb1e9",
              "parent_uuid": "5055f2d5-1ace-4e46-952d-746e74cabfe8",
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
          "uuid": "f63be07e-7240-48a8-9dc9-3b8c32fae363",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f61dd9e8-e37a-4bb1-94c2-9b039f09d415",
              "parent_uuid": "f63be07e-7240-48a8-9dc9-3b8c32fae363",
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
              "uuid": "2ea24a19-c78b-4a2d-8b1a-fdc52c31ec10",
              "parent_uuid": "f63be07e-7240-48a8-9dc9-3b8c32fae363",
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
              "uuid": "41121050-ca18-40f4-aa54-a8c00d699899",
              "parent_uuid": "f63be07e-7240-48a8-9dc9-3b8c32fae363",
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
              "uuid": "f9c714a2-bf0e-4bdb-9d72-7f74a577af9c",
              "parent_uuid": "f63be07e-7240-48a8-9dc9-3b8c32fae363",
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
              "uuid": "4ea1f8b3-26d0-416c-b334-687ee17fb7c1",
              "parent_uuid": "f63be07e-7240-48a8-9dc9-3b8c32fae363",
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
          "uuid": "03f1c97c-241e-4ac8-b3a1-4c94f134cd00",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bff00298-4bd1-406f-acb6-5ce86d6e03d1",
              "parent_uuid": "03f1c97c-241e-4ac8-b3a1-4c94f134cd00",
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
              "uuid": "bf2a7207-6749-413a-8572-b6d4c46729c0",
              "parent_uuid": "03f1c97c-241e-4ac8-b3a1-4c94f134cd00",
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
              "uuid": "2e605ec5-1e6c-4bb6-a5c1-c14b6a9ccbcd",
              "parent_uuid": "03f1c97c-241e-4ac8-b3a1-4c94f134cd00",
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
              "uuid": "0d315ee0-75b0-4521-b11e-c37b205f0f48",
              "parent_uuid": "03f1c97c-241e-4ac8-b3a1-4c94f134cd00",
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
              "uuid": "50ea8bdc-34d2-4ccf-8d17-c253bff8489d",
              "parent_uuid": "03f1c97c-241e-4ac8-b3a1-4c94f134cd00",
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
          "uuid": "7d0dfa26-4cf2-4520-b9c4-540cdeecd8d3",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef471ca9-c3ae-4816-b3f7-f4640a90a2d5",
              "parent_uuid": "7d0dfa26-4cf2-4520-b9c4-540cdeecd8d3",
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
          "uuid": "53ebb3e4-4363-4309-af7e-691d53d4d779",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96da33de-273f-4ac9-9440-5ccb1fabcf86",
              "parent_uuid": "53ebb3e4-4363-4309-af7e-691d53d4d779",
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
          "uuid": "95702bfd-967e-4104-b90c-2ee71b39efcc",
          "parent_uuid": "6e584894-6cb5-446b-907f-13c231233dc5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48b6144c-c5c4-4bd0-81c3-1ec51d4a79a2",
              "parent_uuid": "95702bfd-967e-4104-b90c-2ee71b39efcc",
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
                  "uuid": "a10f3685-d98d-4df8-b13b-294ccade5562",
                  "parent_uuid": "48b6144c-c5c4-4bd0-81c3-1ec51d4a79a2",
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

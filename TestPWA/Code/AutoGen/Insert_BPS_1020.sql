
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
  "uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
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
      "uuid": "2fcdd929-98b0-4f41-9c1d-e661b85e552c",
      "parent_uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
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
      "uuid": "81c19c53-1948-42e8-9571-f644e59b6852",
      "parent_uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
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
      "uuid": "aac47b7b-8409-4fc3-8a9c-d1013f5300c5",
      "parent_uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
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
      "uuid": "f632b0af-0627-41e4-9370-31bf1af00688",
      "parent_uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
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
      "uuid": "f7c42ad7-a56e-4600-90d6-2d4395fd9fb6",
      "parent_uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
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
      "uuid": "cfae27ad-eb8d-4e2f-90a5-5b42f18ab251",
      "parent_uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
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
      "uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
      "parent_uuid": "e7abbff9-1e0d-45ab-aaad-ac237e18f3a3",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "9bc658bf-243c-4246-9674-94ec40ab096d",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "6a1252be-6fb3-46d8-9f6a-8706382c5ab1",
              "parent_uuid": "9bc658bf-243c-4246-9674-94ec40ab096d",
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
              "uuid": "e77a772c-dc85-4bf6-93f7-4977ff39e2ab",
              "parent_uuid": "9bc658bf-243c-4246-9674-94ec40ab096d",
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
              "uuid": "503d72ac-d17c-4409-be40-9c0ba8aebdf9",
              "parent_uuid": "9bc658bf-243c-4246-9674-94ec40ab096d",
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
              "uuid": "eb88e21c-c764-4089-a1e8-ecf71f67d66d",
              "parent_uuid": "9bc658bf-243c-4246-9674-94ec40ab096d",
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
          "uuid": "292b13dc-78e7-44fb-acc1-992a873f98ad",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "6911058f-7423-424c-a499-5b5642ee6154",
              "parent_uuid": "292b13dc-78e7-44fb-acc1-992a873f98ad",
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
              "uuid": "0f71db85-ae1d-45d4-97ed-58e3652797ac",
              "parent_uuid": "292b13dc-78e7-44fb-acc1-992a873f98ad",
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
              "uuid": "44f8f0e0-927f-4a71-905e-aed2ace572ec",
              "parent_uuid": "292b13dc-78e7-44fb-acc1-992a873f98ad",
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
              "uuid": "ced3e2e7-2f60-441e-842b-39f0374d7324",
              "parent_uuid": "292b13dc-78e7-44fb-acc1-992a873f98ad",
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
          "uuid": "71da8994-2062-47d1-b8ab-5b10cc8970b8",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "c6dde60c-f23f-42be-a9cb-10b6eef4754b",
              "parent_uuid": "71da8994-2062-47d1-b8ab-5b10cc8970b8",
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
              "uuid": "8afbb9e1-4272-4af0-8fff-56140c39570f",
              "parent_uuid": "71da8994-2062-47d1-b8ab-5b10cc8970b8",
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
              "uuid": "3e0276a2-9300-42f5-a04d-7cd5373c9b13",
              "parent_uuid": "71da8994-2062-47d1-b8ab-5b10cc8970b8",
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
              "uuid": "1edf2df5-b03b-4479-ae47-6e52a3abab3d",
              "parent_uuid": "71da8994-2062-47d1-b8ab-5b10cc8970b8",
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
          "uuid": "7f1c1099-e619-4af7-9b0a-bd8e1cf349cb",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3a13f9fb-6bbc-4967-b002-6629587e817d",
              "parent_uuid": "7f1c1099-e619-4af7-9b0a-bd8e1cf349cb",
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
              "uuid": "75ea7a48-84de-4c5a-977c-2c81ba1e4a3f",
              "parent_uuid": "7f1c1099-e619-4af7-9b0a-bd8e1cf349cb",
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
              "uuid": "27556881-079c-4f53-a25b-197d70b3fec0",
              "parent_uuid": "7f1c1099-e619-4af7-9b0a-bd8e1cf349cb",
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
              "uuid": "9673d88c-1aa5-4b68-85d3-09a4a6684675",
              "parent_uuid": "7f1c1099-e619-4af7-9b0a-bd8e1cf349cb",
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
              "uuid": "2f0377fc-27f3-4fae-afa8-6bb7b678228b",
              "parent_uuid": "7f1c1099-e619-4af7-9b0a-bd8e1cf349cb",
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
          "uuid": "ea3cae97-34cc-43fe-9b53-36f4dbc8d741",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fa24167a-dfa9-4cf7-9988-e8f8d4c434a6",
              "parent_uuid": "ea3cae97-34cc-43fe-9b53-36f4dbc8d741",
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
          "uuid": "5a94771b-7527-40c9-aef2-8d35230a0b9d",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5469940-cdb4-4985-a452-acd6868e271a",
              "parent_uuid": "5a94771b-7527-40c9-aef2-8d35230a0b9d",
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
              "uuid": "8406b2d0-415d-446a-aab0-a5b3bb5a18f4",
              "parent_uuid": "5a94771b-7527-40c9-aef2-8d35230a0b9d",
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
              "uuid": "ef735b7e-f0d3-404b-b1df-65c8c8cc8877",
              "parent_uuid": "5a94771b-7527-40c9-aef2-8d35230a0b9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa988f66-c11f-4a45-bfb7-88c0c7203681",
                  "parent_uuid": "ef735b7e-f0d3-404b-b1df-65c8c8cc8877",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9561d606-2f23-466b-bb8b-21749d23ea55",
              "parent_uuid": "5a94771b-7527-40c9-aef2-8d35230a0b9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8aca5a95-7ded-487f-8248-0c4a08feab9e",
                  "parent_uuid": "9561d606-2f23-466b-bb8b-21749d23ea55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c68a287d-cf54-4205-95ac-b8dc7ae19993",
              "parent_uuid": "5a94771b-7527-40c9-aef2-8d35230a0b9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ae082a8-f2ad-4f6f-8c14-5514118692e7",
                  "parent_uuid": "c68a287d-cf54-4205-95ac-b8dc7ae19993",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c179693b-9435-4185-8a92-6a4c87e588ba",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06590cb6-c147-4cab-8e98-807ca9fdf028",
              "parent_uuid": "c179693b-9435-4185-8a92-6a4c87e588ba",
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
              "uuid": "057f3e3f-9abf-437e-822f-9987eb49d173",
              "parent_uuid": "c179693b-9435-4185-8a92-6a4c87e588ba",
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
              "uuid": "d7d51af3-1474-4b4a-9a7c-df83a1cf94a4",
              "parent_uuid": "c179693b-9435-4185-8a92-6a4c87e588ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2b85304-1032-4000-8cd0-e557ede44043",
                  "parent_uuid": "d7d51af3-1474-4b4a-9a7c-df83a1cf94a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "525f7150-0b48-4eec-8d52-8c897172e3fd",
              "parent_uuid": "c179693b-9435-4185-8a92-6a4c87e588ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed3a3c6d-0a58-4355-82bf-b5d6907b1b0e",
                  "parent_uuid": "525f7150-0b48-4eec-8d52-8c897172e3fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbd15166-523c-4c24-a1d7-61287e52cd4c",
              "parent_uuid": "c179693b-9435-4185-8a92-6a4c87e588ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4cffef2a-ddb1-468f-92a4-3a1f94150f0f",
                  "parent_uuid": "dbd15166-523c-4c24-a1d7-61287e52cd4c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d2ddd072-d485-4fdb-b66f-d9a4e5bdfb07",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9217850b-fbc0-4bde-b1c6-f1281e35c57e",
              "parent_uuid": "d2ddd072-d485-4fdb-b66f-d9a4e5bdfb07",
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
              "uuid": "c6157f60-3c97-48ea-a0e0-07a35c878d99",
              "parent_uuid": "d2ddd072-d485-4fdb-b66f-d9a4e5bdfb07",
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
              "uuid": "01266406-1cb3-422b-af3b-8f0f0dad4a12",
              "parent_uuid": "d2ddd072-d485-4fdb-b66f-d9a4e5bdfb07",
              "tagName": "td",
              "properties": [
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
                  "uuid": "51eab279-24bd-4bc6-9223-6e9f78c9f2ff",
                  "parent_uuid": "01266406-1cb3-422b-af3b-8f0f0dad4a12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f799bf8-443c-4e8d-b605-04f19ff19799",
              "parent_uuid": "d2ddd072-d485-4fdb-b66f-d9a4e5bdfb07",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6a67582d-05d5-47b5-a1f3-1a60a01040ec",
                  "parent_uuid": "6f799bf8-443c-4e8d-b605-04f19ff19799",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc68cda1-b490-4a1c-a3de-2dad99d24f90",
              "parent_uuid": "d2ddd072-d485-4fdb-b66f-d9a4e5bdfb07",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9fa2bf11-863a-471e-a9f2-46031bce0762",
                  "parent_uuid": "dc68cda1-b490-4a1c-a3de-2dad99d24f90",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bdf3835e-7b53-42f6-8848-c51f10646c77",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2511ab99-c85a-407a-bae2-7133003a4038",
              "parent_uuid": "bdf3835e-7b53-42f6-8848-c51f10646c77",
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
              "uuid": "14471ac6-9558-41dc-8eea-8bec7240d253",
              "parent_uuid": "bdf3835e-7b53-42f6-8848-c51f10646c77",
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
              "uuid": "a92d27de-b594-4084-b62b-5548916d2916",
              "parent_uuid": "bdf3835e-7b53-42f6-8848-c51f10646c77",
              "tagName": "td",
              "properties": [
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
                  "uuid": "331b3026-8e65-4b02-9102-3f3976e83d94",
                  "parent_uuid": "a92d27de-b594-4084-b62b-5548916d2916",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c9cadf7-b09c-4455-becd-2622ad021cb7",
              "parent_uuid": "bdf3835e-7b53-42f6-8848-c51f10646c77",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e32f8910-cd40-4915-8b15-93d8adf7f937",
                  "parent_uuid": "4c9cadf7-b09c-4455-becd-2622ad021cb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5c57cde-1a62-449b-abd7-35abd8adf068",
              "parent_uuid": "bdf3835e-7b53-42f6-8848-c51f10646c77",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f75a5aa7-d86d-4692-920b-b277045a86e1",
                  "parent_uuid": "d5c57cde-1a62-449b-abd7-35abd8adf068",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aa091732-4423-47e0-b028-e635cfced9b3",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d5dda6b-57a5-4076-b4e6-d26817143b91",
              "parent_uuid": "aa091732-4423-47e0-b028-e635cfced9b3",
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
              "uuid": "86fb1433-d112-462f-9b5f-ad2671d33919",
              "parent_uuid": "aa091732-4423-47e0-b028-e635cfced9b3",
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
              "uuid": "8f7d3b78-8786-458d-9a5f-3b226a39fef4",
              "parent_uuid": "aa091732-4423-47e0-b028-e635cfced9b3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b6867077-348c-48fe-935e-837d961a1d29",
                  "parent_uuid": "8f7d3b78-8786-458d-9a5f-3b226a39fef4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "285e671d-3ec4-4a98-81cc-2f1c203d98a3",
              "parent_uuid": "aa091732-4423-47e0-b028-e635cfced9b3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "70f81896-2b7c-45ed-81eb-610bfbc93ea8",
                  "parent_uuid": "285e671d-3ec4-4a98-81cc-2f1c203d98a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d77606fa-1643-4373-adc9-c8b137415972",
              "parent_uuid": "aa091732-4423-47e0-b028-e635cfced9b3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "37154558-6d5f-43ed-a838-22c2281ea58d",
                  "parent_uuid": "d77606fa-1643-4373-adc9-c8b137415972",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "10088cd0-3002-41e4-bdfd-ad32bcd0886e",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff82dd5d-149c-42cd-be54-5044fa9e6fe0",
              "parent_uuid": "10088cd0-3002-41e4-bdfd-ad32bcd0886e",
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
              "uuid": "9440fad0-783e-4adf-b604-51f1cd7ed8e9",
              "parent_uuid": "10088cd0-3002-41e4-bdfd-ad32bcd0886e",
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
              "uuid": "0ebca951-759a-4aaa-a4f7-cedd4f95ef78",
              "parent_uuid": "10088cd0-3002-41e4-bdfd-ad32bcd0886e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea6f8adf-1a64-4611-89be-134714c986d8",
                  "parent_uuid": "0ebca951-759a-4aaa-a4f7-cedd4f95ef78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2614d18-7eaf-4bc8-9538-7e26e7fe3389",
              "parent_uuid": "10088cd0-3002-41e4-bdfd-ad32bcd0886e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d92dd220-bc0a-4486-83a5-1bc859284203",
                  "parent_uuid": "a2614d18-7eaf-4bc8-9538-7e26e7fe3389",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2dd637b4-0016-4678-b85f-0cd188e3257d",
              "parent_uuid": "10088cd0-3002-41e4-bdfd-ad32bcd0886e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "647874af-935b-48ae-a625-185664a21b39",
                  "parent_uuid": "2dd637b4-0016-4678-b85f-0cd188e3257d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a26646e9-433a-4514-916d-ac7a297ab665",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a3f7f8d2-df84-431e-b2a2-240362f96995",
              "parent_uuid": "a26646e9-433a-4514-916d-ac7a297ab665",
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
              "uuid": "27cdfa59-ef28-4cc0-bd27-fd0cbbd1f484",
              "parent_uuid": "a26646e9-433a-4514-916d-ac7a297ab665",
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
              "uuid": "7a4ae182-2e93-4441-9dc0-e3d7f59461c7",
              "parent_uuid": "a26646e9-433a-4514-916d-ac7a297ab665",
              "tagName": "td",
              "properties": [
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
                  "uuid": "13952b5e-1b58-43e3-9d3e-afeb93da719e",
                  "parent_uuid": "7a4ae182-2e93-4441-9dc0-e3d7f59461c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "575bb804-0412-44c0-a122-2020c5563cd4",
              "parent_uuid": "a26646e9-433a-4514-916d-ac7a297ab665",
              "tagName": "td",
              "properties": [
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
                  "uuid": "78648d1d-6078-41fb-9b01-dc1762f4ed84",
                  "parent_uuid": "575bb804-0412-44c0-a122-2020c5563cd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abfd877b-0fda-4ab2-b653-d406a0b2ff0f",
              "parent_uuid": "a26646e9-433a-4514-916d-ac7a297ab665",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c4bb6de8-5c9f-4beb-977a-3b354870215b",
                  "parent_uuid": "abfd877b-0fda-4ab2-b653-d406a0b2ff0f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3f42f9c5-ce1d-4b09-a98a-c8679ba88187",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "187e1834-b3cc-4d5b-b974-636caf4c7b7b",
              "parent_uuid": "3f42f9c5-ce1d-4b09-a98a-c8679ba88187",
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
              "uuid": "8d01f24e-8077-4068-9a6d-5cd66b743df2",
              "parent_uuid": "3f42f9c5-ce1d-4b09-a98a-c8679ba88187",
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
              "uuid": "eaa7e35d-64bc-40a2-a31c-11fb68d2b2a2",
              "parent_uuid": "3f42f9c5-ce1d-4b09-a98a-c8679ba88187",
              "tagName": "td",
              "properties": [
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
                  "uuid": "09363c53-a0ac-4191-8638-88cd3bef753c",
                  "parent_uuid": "eaa7e35d-64bc-40a2-a31c-11fb68d2b2a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e5290dd-112e-41e9-84bd-ebddb76e705c",
              "parent_uuid": "3f42f9c5-ce1d-4b09-a98a-c8679ba88187",
              "tagName": "td",
              "properties": [
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
                  "uuid": "994b52eb-9110-42ae-9ac3-e7b583a78f6b",
                  "parent_uuid": "8e5290dd-112e-41e9-84bd-ebddb76e705c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24caa0e1-5ea7-4c16-aa11-1285286bf5a3",
              "parent_uuid": "3f42f9c5-ce1d-4b09-a98a-c8679ba88187",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cf207d79-8d84-4738-a81e-56f7162b691b",
                  "parent_uuid": "24caa0e1-5ea7-4c16-aa11-1285286bf5a3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "431a883d-3a66-4faf-ba75-dc11011ed682",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac88032f-7186-4c38-ba20-c949886e208d",
              "parent_uuid": "431a883d-3a66-4faf-ba75-dc11011ed682",
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
              "uuid": "3cb98383-7760-4dfb-bac1-3d1550e63f8b",
              "parent_uuid": "431a883d-3a66-4faf-ba75-dc11011ed682",
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
              "uuid": "1d107027-052b-441b-b6f6-13f5e1693984",
              "parent_uuid": "431a883d-3a66-4faf-ba75-dc11011ed682",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a1bfda2b-fc78-4875-bc4d-e44754b78808",
                  "parent_uuid": "1d107027-052b-441b-b6f6-13f5e1693984",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b968071-767d-4819-b3d0-2e5067248029",
              "parent_uuid": "431a883d-3a66-4faf-ba75-dc11011ed682",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6ce5a713-000a-45de-9fe4-e23c4a70a8eb",
                  "parent_uuid": "0b968071-767d-4819-b3d0-2e5067248029",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edbd8d6d-abdb-4d39-b69a-b57f394322e4",
              "parent_uuid": "431a883d-3a66-4faf-ba75-dc11011ed682",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9273e162-8fd8-4b8c-9ea7-0f9f8344b199",
                  "parent_uuid": "edbd8d6d-abdb-4d39-b69a-b57f394322e4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ad7b2244-ac63-4943-8209-de8af3002384",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cdec2153-67c8-4bbe-bb7a-08703c9ee36d",
              "parent_uuid": "ad7b2244-ac63-4943-8209-de8af3002384",
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
              "uuid": "af6bdbb7-eb87-4529-8fb8-9dc4f6f9a8bd",
              "parent_uuid": "ad7b2244-ac63-4943-8209-de8af3002384",
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
              "uuid": "e8fef3f9-c462-4595-baa7-2e3cce9c569c",
              "parent_uuid": "ad7b2244-ac63-4943-8209-de8af3002384",
              "tagName": "td",
              "properties": [
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
                  "uuid": "213e1eb3-8352-4ce8-9a60-fb060850ce60",
                  "parent_uuid": "e8fef3f9-c462-4595-baa7-2e3cce9c569c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb01ffb5-799d-42ca-acc5-79c68e0550a9",
              "parent_uuid": "ad7b2244-ac63-4943-8209-de8af3002384",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4c7fedac-2e32-46da-91ca-ed1fa4391deb",
                  "parent_uuid": "bb01ffb5-799d-42ca-acc5-79c68e0550a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "412de636-da77-4d6b-ad9d-54fccf69040b",
              "parent_uuid": "ad7b2244-ac63-4943-8209-de8af3002384",
              "tagName": "td",
              "properties": [
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
                  "uuid": "620736a0-98eb-4a2d-9c78-1778825f810e",
                  "parent_uuid": "412de636-da77-4d6b-ad9d-54fccf69040b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cca27abf-652d-433e-a50d-55a9ac913b27",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72ade0a3-1d45-4692-8390-8a9b672fd378",
              "parent_uuid": "cca27abf-652d-433e-a50d-55a9ac913b27",
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
              "uuid": "877ddc9b-cc79-46f4-a5c0-6118cf049a43",
              "parent_uuid": "cca27abf-652d-433e-a50d-55a9ac913b27",
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
              "uuid": "5ab69303-cd4b-4ef2-b518-8e6591f91876",
              "parent_uuid": "cca27abf-652d-433e-a50d-55a9ac913b27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3c04ba8f-982d-4c46-951d-1029d1ca9a1b",
                  "parent_uuid": "5ab69303-cd4b-4ef2-b518-8e6591f91876",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a65ffed8-ea24-434d-a4e6-bb59b739c2ba",
              "parent_uuid": "cca27abf-652d-433e-a50d-55a9ac913b27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "55a750ea-33b4-442f-9168-e466843f1d2d",
                  "parent_uuid": "a65ffed8-ea24-434d-a4e6-bb59b739c2ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f7ea5f3-1e22-4289-9126-4f49507fbfc9",
              "parent_uuid": "cca27abf-652d-433e-a50d-55a9ac913b27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "84fa9f3c-13df-46af-9518-c07a522fb385",
                  "parent_uuid": "7f7ea5f3-1e22-4289-9126-4f49507fbfc9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3c2dd56c-37f9-4d8b-964e-ae30114d7893",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b1a2001-9a54-4300-bf03-4ed57de02178",
              "parent_uuid": "3c2dd56c-37f9-4d8b-964e-ae30114d7893",
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
              "uuid": "af26963f-e2e0-490c-9968-c9244ec3c20f",
              "parent_uuid": "3c2dd56c-37f9-4d8b-964e-ae30114d7893",
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
              "uuid": "46c667a5-de40-4aef-935c-a74aa2f7e2f4",
              "parent_uuid": "3c2dd56c-37f9-4d8b-964e-ae30114d7893",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3dffd7be-cf73-4f9f-9a8e-3db821611e8e",
                  "parent_uuid": "46c667a5-de40-4aef-935c-a74aa2f7e2f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a1d99a4-c476-4358-bb75-7ca13bdee21f",
              "parent_uuid": "3c2dd56c-37f9-4d8b-964e-ae30114d7893",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b2dc6f1d-6830-4088-b890-1c4eee4f2714",
                  "parent_uuid": "0a1d99a4-c476-4358-bb75-7ca13bdee21f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d25101e7-1853-418f-9450-b52c2c9f5581",
              "parent_uuid": "3c2dd56c-37f9-4d8b-964e-ae30114d7893",
              "tagName": "td",
              "properties": [
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
                  "uuid": "85f17602-5799-4932-b381-b45b0425defb",
                  "parent_uuid": "d25101e7-1853-418f-9450-b52c2c9f5581",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "51eaae53-3ea3-4e8d-84ce-693a75f1b6a7",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd547ae9-ebc5-4559-8eab-bf34da02ee89",
              "parent_uuid": "51eaae53-3ea3-4e8d-84ce-693a75f1b6a7",
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
          "uuid": "8c9c91b4-da14-4997-9db1-6533bc1b5759",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6408bbc2-2e12-42b9-ad17-bced53c97d46",
              "parent_uuid": "8c9c91b4-da14-4997-9db1-6533bc1b5759",
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
          "uuid": "af9207de-2d13-4634-8f87-c79f533b005b",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "10582e33-29ef-4708-baf4-bf570b3b92a6",
              "parent_uuid": "af9207de-2d13-4634-8f87-c79f533b005b",
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
                  "uuid": "0f64bca4-f176-403b-8bb3-da4e189a4b05",
                  "parent_uuid": "10582e33-29ef-4708-baf4-bf570b3b92a6",
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
          "uuid": "4a8e8d75-e318-49be-a380-39e880f4db94",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69075a22-78f0-4ad8-a500-f3e733b71304",
              "parent_uuid": "4a8e8d75-e318-49be-a380-39e880f4db94",
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
          "uuid": "fb66d375-640a-412c-b0c1-812419822e0e",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "7f6f8165-5eeb-4645-95e6-c227d9a342d3",
              "parent_uuid": "fb66d375-640a-412c-b0c1-812419822e0e",
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
          "uuid": "e0e88a9c-73cb-4758-affa-4b1e21065455",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c261171d-e9ff-4357-bc26-aee53602b466",
              "parent_uuid": "e0e88a9c-73cb-4758-affa-4b1e21065455",
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
              "uuid": "b42baaa6-c1db-4be8-953c-95c395bbe90b",
              "parent_uuid": "e0e88a9c-73cb-4758-affa-4b1e21065455",
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
              "uuid": "c69448ff-6a51-4cb2-b4af-d634c1bfd38a",
              "parent_uuid": "e0e88a9c-73cb-4758-affa-4b1e21065455",
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
              "uuid": "63ee112a-4b97-49c2-9533-909751d20ef1",
              "parent_uuid": "e0e88a9c-73cb-4758-affa-4b1e21065455",
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
              "uuid": "1955ca9e-a14b-4cf3-9875-7ed8fe7b81d9",
              "parent_uuid": "e0e88a9c-73cb-4758-affa-4b1e21065455",
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
          "uuid": "bd0eaa3f-f580-4200-9cf2-57017b6ab49d",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8dd884c-9f24-4306-a5e5-7166d0804ea3",
              "parent_uuid": "bd0eaa3f-f580-4200-9cf2-57017b6ab49d",
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
              "uuid": "49bc1e72-1bd5-4620-bed4-afa0e9eb9cef",
              "parent_uuid": "bd0eaa3f-f580-4200-9cf2-57017b6ab49d",
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
              "uuid": "2be197e0-e49b-4541-845c-3101d37ae9a3",
              "parent_uuid": "bd0eaa3f-f580-4200-9cf2-57017b6ab49d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f51a7af7-3330-4329-9401-397f346290b2",
                  "parent_uuid": "2be197e0-e49b-4541-845c-3101d37ae9a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abebe523-5b69-4a11-b08c-42ed42f1ee89",
              "parent_uuid": "bd0eaa3f-f580-4200-9cf2-57017b6ab49d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c871539f-73ee-428c-8590-1bb62de3da75",
                  "parent_uuid": "abebe523-5b69-4a11-b08c-42ed42f1ee89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5e566de-5f16-4ca6-ba6e-bba031e02991",
              "parent_uuid": "bd0eaa3f-f580-4200-9cf2-57017b6ab49d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c9e9b41-c917-4a1d-bd54-d77eb9e8a752",
                  "parent_uuid": "c5e566de-5f16-4ca6-ba6e-bba031e02991",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4867976f-dbe2-4237-82a4-9b094331d8cd",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a190557d-7d68-4acb-bc26-31850ef7424d",
              "parent_uuid": "4867976f-dbe2-4237-82a4-9b094331d8cd",
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
              "uuid": "1f8fda2a-afc8-4d15-a869-346a99991c96",
              "parent_uuid": "4867976f-dbe2-4237-82a4-9b094331d8cd",
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
              "uuid": "0e85cb6f-e140-47a6-92c0-9659553804a3",
              "parent_uuid": "4867976f-dbe2-4237-82a4-9b094331d8cd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "db076ee0-778d-4715-890a-5b25622782d6",
                  "parent_uuid": "0e85cb6f-e140-47a6-92c0-9659553804a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5be28ee9-a40c-448e-a9b2-8ede5f4e0e70",
              "parent_uuid": "4867976f-dbe2-4237-82a4-9b094331d8cd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7b33875a-62f4-4e18-9228-772468522df2",
                  "parent_uuid": "5be28ee9-a40c-448e-a9b2-8ede5f4e0e70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8890f57-74cf-4011-8559-c121f247177f",
              "parent_uuid": "4867976f-dbe2-4237-82a4-9b094331d8cd",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c8019189-53b0-45be-beb4-8b9ab7d174cf",
                  "parent_uuid": "c8890f57-74cf-4011-8559-c121f247177f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3fd2ab10-f699-4fb7-9c46-73bc62f2bea9",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38502bd5-b960-4162-afb6-df484f3f93f4",
              "parent_uuid": "3fd2ab10-f699-4fb7-9c46-73bc62f2bea9",
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
              "uuid": "80654cb5-3a2d-44af-9065-82abc0c23270",
              "parent_uuid": "3fd2ab10-f699-4fb7-9c46-73bc62f2bea9",
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
              "uuid": "8ac6b2f1-358f-4a5e-9af9-5af5ec7c248f",
              "parent_uuid": "3fd2ab10-f699-4fb7-9c46-73bc62f2bea9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8f0dbff9-58c3-4edf-8753-3ff54290869d",
                  "parent_uuid": "8ac6b2f1-358f-4a5e-9af9-5af5ec7c248f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f310b7e8-055a-4dde-bb23-6a82253dbed4",
              "parent_uuid": "3fd2ab10-f699-4fb7-9c46-73bc62f2bea9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2c0e4741-9962-4884-b6f1-5e5136c2773b",
                  "parent_uuid": "f310b7e8-055a-4dde-bb23-6a82253dbed4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bf26429-97df-4e23-a8b2-0146658275f2",
              "parent_uuid": "3fd2ab10-f699-4fb7-9c46-73bc62f2bea9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cbc0f31b-3bdd-42f0-9b91-a7f6d8723c48",
                  "parent_uuid": "1bf26429-97df-4e23-a8b2-0146658275f2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "722f4234-f6cb-44cc-bfe9-fe7bf933783f",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c59c1dbb-6e84-4d98-ad79-f51ea987f220",
              "parent_uuid": "722f4234-f6cb-44cc-bfe9-fe7bf933783f",
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
              "uuid": "324fd1db-da2b-4da9-b7b9-b3a9c6c23e1e",
              "parent_uuid": "722f4234-f6cb-44cc-bfe9-fe7bf933783f",
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
              "uuid": "b06d8b30-947f-4864-bba1-5a81c3594a64",
              "parent_uuid": "722f4234-f6cb-44cc-bfe9-fe7bf933783f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1adebfbe-eac3-4f8d-9dea-b5eebfa76f3d",
                  "parent_uuid": "b06d8b30-947f-4864-bba1-5a81c3594a64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af9ee8b9-d1e5-403c-b099-3a1919305f0c",
              "parent_uuid": "722f4234-f6cb-44cc-bfe9-fe7bf933783f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7d1eedf8-621b-418c-918b-c891d86c3f3a",
                  "parent_uuid": "af9ee8b9-d1e5-403c-b099-3a1919305f0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c6cc765-99b6-484f-a17b-f602e6b9e5f9",
              "parent_uuid": "722f4234-f6cb-44cc-bfe9-fe7bf933783f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d6c1614-dc94-47c5-afd2-38d690327b3b",
                  "parent_uuid": "4c6cc765-99b6-484f-a17b-f602e6b9e5f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ab6c4676-8a1c-44c7-b353-ee083080bc64",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16ea274e-5a17-4eec-876c-8a06025562a3",
              "parent_uuid": "ab6c4676-8a1c-44c7-b353-ee083080bc64",
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
          "uuid": "6fdf442e-f2b2-46be-b0ae-66e31fb896d8",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "929a8a1c-ad3f-4022-90d1-0a247a01a782",
              "parent_uuid": "6fdf442e-f2b2-46be-b0ae-66e31fb896d8",
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
          "uuid": "2c75cf77-d87a-4242-9c48-2f4cdfb1413e",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62472813-a735-4d4c-bf07-8222715873c3",
              "parent_uuid": "2c75cf77-d87a-4242-9c48-2f4cdfb1413e",
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
                  "uuid": "b4771da6-c22a-4969-b6b0-b6660ed81dd3",
                  "parent_uuid": "62472813-a735-4d4c-bf07-8222715873c3",
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
          "uuid": "3f2528fe-f8f0-40eb-9387-22107eec279c",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c12a7c15-9385-4092-b8b1-eae3f22a5aa8",
              "parent_uuid": "3f2528fe-f8f0-40eb-9387-22107eec279c",
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
          "uuid": "d2115973-bc9d-45d9-927f-a66a7b5fb7dc",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "56ae52ae-c2b6-42c8-b232-cf572a731261",
              "parent_uuid": "d2115973-bc9d-45d9-927f-a66a7b5fb7dc",
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
          "uuid": "e37f539c-cdc1-4156-b7bc-e4b0e2cd19fe",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5c5e792-91bd-4b0d-a90e-65c678a50fa1",
              "parent_uuid": "e37f539c-cdc1-4156-b7bc-e4b0e2cd19fe",
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
              "uuid": "aca32393-ff15-4dd3-9599-ccafdffb046c",
              "parent_uuid": "e37f539c-cdc1-4156-b7bc-e4b0e2cd19fe",
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
              "uuid": "77fa33b7-5df6-409e-b5c9-3b82053b3196",
              "parent_uuid": "e37f539c-cdc1-4156-b7bc-e4b0e2cd19fe",
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
              "uuid": "b0eda054-49af-4b17-a3be-fa01214ec9bf",
              "parent_uuid": "e37f539c-cdc1-4156-b7bc-e4b0e2cd19fe",
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
              "uuid": "89fd2b74-3223-4b78-9f22-880055790010",
              "parent_uuid": "e37f539c-cdc1-4156-b7bc-e4b0e2cd19fe",
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
          "uuid": "3c1eeab9-e0d5-48e0-a918-8d41d94c8fa6",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "1a5643ed-12b6-40c6-9514-214c7eaeb96b",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce733ab1-9f26-4761-9ba9-5b36fca9037c",
              "parent_uuid": "1a5643ed-12b6-40c6-9514-214c7eaeb96b",
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
              "uuid": "d746e1f9-6fdf-49c6-82ea-336a4b8e01f2",
              "parent_uuid": "1a5643ed-12b6-40c6-9514-214c7eaeb96b",
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
              "uuid": "2628ac8f-8c5b-4a68-acec-f44b2389096f",
              "parent_uuid": "1a5643ed-12b6-40c6-9514-214c7eaeb96b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "30a4be0b-9fef-4b67-9288-c6cdb5b02bbd",
                  "parent_uuid": "2628ac8f-8c5b-4a68-acec-f44b2389096f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61b19d01-10ae-4393-b767-365b3e4eac30",
              "parent_uuid": "1a5643ed-12b6-40c6-9514-214c7eaeb96b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2a96c89e-b084-4903-8cc7-8c82cc7fd75c",
                  "parent_uuid": "61b19d01-10ae-4393-b767-365b3e4eac30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4114b993-7a91-4a4e-937e-b261367240ae",
              "parent_uuid": "1a5643ed-12b6-40c6-9514-214c7eaeb96b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5ee02434-1ed2-4904-9203-0a3e9d9aba9e",
                  "parent_uuid": "4114b993-7a91-4a4e-937e-b261367240ae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc761320-194c-45d9-9cbc-fb6f34828a27",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c56d972-a7ee-4d58-bcc0-d0fbf889fc75",
              "parent_uuid": "bc761320-194c-45d9-9cbc-fb6f34828a27",
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
              "uuid": "3c2c26f9-7b19-419f-8c5b-bb31c35d187d",
              "parent_uuid": "bc761320-194c-45d9-9cbc-fb6f34828a27",
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
              "uuid": "d0e80b60-8f1b-4f6f-ba87-a7d63f637bfa",
              "parent_uuid": "bc761320-194c-45d9-9cbc-fb6f34828a27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "55698d50-db82-45ea-8caf-f563cf413fa2",
                  "parent_uuid": "d0e80b60-8f1b-4f6f-ba87-a7d63f637bfa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8875a77c-0943-4523-90b9-01515484877c",
              "parent_uuid": "bc761320-194c-45d9-9cbc-fb6f34828a27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2c2e146a-1856-4db2-9934-078ab462c4df",
                  "parent_uuid": "8875a77c-0943-4523-90b9-01515484877c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aae2ef84-b59e-4a8c-abc9-22b6c5629379",
              "parent_uuid": "bc761320-194c-45d9-9cbc-fb6f34828a27",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c29e6094-45d5-4bbf-8394-5ac02e42d921",
                  "parent_uuid": "aae2ef84-b59e-4a8c-abc9-22b6c5629379",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fb6a7315-5c4f-4eb8-b4e0-5b78e1c7cc79",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78ae5961-5def-4416-bb57-97f2e8db2d90",
              "parent_uuid": "fb6a7315-5c4f-4eb8-b4e0-5b78e1c7cc79",
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
              "uuid": "698be872-1040-4d9e-b0e8-d710167a6841",
              "parent_uuid": "fb6a7315-5c4f-4eb8-b4e0-5b78e1c7cc79",
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
              "uuid": "70761ea0-0708-4d2a-b285-f4bde759f05e",
              "parent_uuid": "fb6a7315-5c4f-4eb8-b4e0-5b78e1c7cc79",
              "tagName": "td",
              "properties": [
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
                  "uuid": "36f8dd12-e0d9-453d-b757-78053b3dc11c",
                  "parent_uuid": "70761ea0-0708-4d2a-b285-f4bde759f05e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "805735e7-d666-4381-8ee1-b9c94b481741",
              "parent_uuid": "fb6a7315-5c4f-4eb8-b4e0-5b78e1c7cc79",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c22ceec-49e3-4757-8cfc-2485c31c8570",
                  "parent_uuid": "805735e7-d666-4381-8ee1-b9c94b481741",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "151bc0bd-c6b5-4d31-b75c-e84a07a927f2",
              "parent_uuid": "fb6a7315-5c4f-4eb8-b4e0-5b78e1c7cc79",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4ab4c797-3ce2-4010-86a3-134796aaac8e",
                  "parent_uuid": "151bc0bd-c6b5-4d31-b75c-e84a07a927f2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "378bc5d9-af44-444b-97cd-622d7dcf2822",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f6a6614-4f2f-4ab2-8b43-ee13a0ce5cd6",
              "parent_uuid": "378bc5d9-af44-444b-97cd-622d7dcf2822",
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
              "uuid": "6d077ebf-7805-4bd8-95c4-2df910394444",
              "parent_uuid": "378bc5d9-af44-444b-97cd-622d7dcf2822",
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
              "uuid": "d9742cc2-23b7-409f-acf3-c5caa45755fd",
              "parent_uuid": "378bc5d9-af44-444b-97cd-622d7dcf2822",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a830e7f9-bc5c-4ec6-8ee8-0aab975d8439",
                  "parent_uuid": "d9742cc2-23b7-409f-acf3-c5caa45755fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d06cb031-94fa-4c37-b3f5-3a8f43bc3055",
              "parent_uuid": "378bc5d9-af44-444b-97cd-622d7dcf2822",
              "tagName": "td",
              "properties": [
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
                  "uuid": "49dc9fbe-6e26-46ac-974b-000183f74f91",
                  "parent_uuid": "d06cb031-94fa-4c37-b3f5-3a8f43bc3055",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a70e90bf-83f8-4b3a-bbd3-2b827cd5d8e1",
              "parent_uuid": "378bc5d9-af44-444b-97cd-622d7dcf2822",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b291eacf-775d-4582-8705-808599f56620",
                  "parent_uuid": "a70e90bf-83f8-4b3a-bbd3-2b827cd5d8e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a2ffe22d-10e7-43af-80e5-38e8fc5d410e",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08ac0e3c-743e-4679-a1d6-bc0f596163ff",
              "parent_uuid": "a2ffe22d-10e7-43af-80e5-38e8fc5d410e",
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
              "uuid": "7f3a1593-f06d-4711-b2e4-b236b0e66289",
              "parent_uuid": "a2ffe22d-10e7-43af-80e5-38e8fc5d410e",
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
              "uuid": "208436ca-bf69-417c-9833-67c81d172706",
              "parent_uuid": "a2ffe22d-10e7-43af-80e5-38e8fc5d410e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7242f467-ca22-4f01-9830-9551f42b422d",
                  "parent_uuid": "208436ca-bf69-417c-9833-67c81d172706",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2575b2ed-ab01-433d-a890-4cad38156176",
              "parent_uuid": "a2ffe22d-10e7-43af-80e5-38e8fc5d410e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f350e040-f58a-49c0-b0a4-4601b005673e",
                  "parent_uuid": "2575b2ed-ab01-433d-a890-4cad38156176",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e51d0382-7067-47a1-abe2-353e5c979420",
              "parent_uuid": "a2ffe22d-10e7-43af-80e5-38e8fc5d410e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5e70f16f-934f-40f5-bf4a-a3cb407b1839",
                  "parent_uuid": "e51d0382-7067-47a1-abe2-353e5c979420",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b4e2dfd2-fdf2-47a3-851d-69765d0ba430",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa6d1227-bf9e-41c6-b333-077d42cf698a",
              "parent_uuid": "b4e2dfd2-fdf2-47a3-851d-69765d0ba430",
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
              "uuid": "44730cc5-6608-4772-80f6-e35e0822a2bd",
              "parent_uuid": "b4e2dfd2-fdf2-47a3-851d-69765d0ba430",
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
              "uuid": "52cca742-89b5-4ea7-acaa-82bc4fa7e832",
              "parent_uuid": "b4e2dfd2-fdf2-47a3-851d-69765d0ba430",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04d74dab-d656-45a5-97ae-183e58190fd0",
                  "parent_uuid": "52cca742-89b5-4ea7-acaa-82bc4fa7e832",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8451c58-0026-470e-845f-f0fedc92661f",
              "parent_uuid": "b4e2dfd2-fdf2-47a3-851d-69765d0ba430",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ce83591a-5226-40eb-b988-426bcba4844a",
                  "parent_uuid": "d8451c58-0026-470e-845f-f0fedc92661f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a11bb60e-00e6-4a1c-be2a-2eba03b1f513",
              "parent_uuid": "b4e2dfd2-fdf2-47a3-851d-69765d0ba430",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cab29646-26e0-4d5f-99c8-63e39063e1cc",
                  "parent_uuid": "a11bb60e-00e6-4a1c-be2a-2eba03b1f513",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "688688da-e53b-4e0c-919d-289b063b89f2",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1a866ae-520c-4f35-b564-cc26db91ecbb",
              "parent_uuid": "688688da-e53b-4e0c-919d-289b063b89f2",
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
          "uuid": "2304da6d-785a-4e05-973e-848a4e5031d3",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6d42cf1-23b3-4d72-9f36-156e6f954de9",
              "parent_uuid": "2304da6d-785a-4e05-973e-848a4e5031d3",
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
          "uuid": "3a1ea1ae-7007-45b9-a8eb-11d5d2f392e8",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aaf170aa-d415-45a6-a7b0-5c4a70cd9cdb",
              "parent_uuid": "3a1ea1ae-7007-45b9-a8eb-11d5d2f392e8",
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
                  "uuid": "d25b7f75-ea19-45fd-887a-f903aba18d2c",
                  "parent_uuid": "aaf170aa-d415-45a6-a7b0-5c4a70cd9cdb",
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
          "uuid": "6c3de13b-d480-489f-b367-e00bfbabf5fe",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0e05240-be66-4da6-a18e-02dcf44d1fe0",
              "parent_uuid": "6c3de13b-d480-489f-b367-e00bfbabf5fe",
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
          "uuid": "da8960dc-77a9-4962-a8a1-37df8f87a84e",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "82dd4abe-69f2-4baf-b270-1ffb658addd5",
              "parent_uuid": "da8960dc-77a9-4962-a8a1-37df8f87a84e",
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
          "uuid": "57d3234f-7edd-47b5-a70d-694e4931fdc7",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "956ca91c-7c38-4a85-b969-edf7122efafd",
              "parent_uuid": "57d3234f-7edd-47b5-a70d-694e4931fdc7",
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
              "uuid": "d2e5d065-a6c4-42f6-b16f-8c36b281d90a",
              "parent_uuid": "57d3234f-7edd-47b5-a70d-694e4931fdc7",
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
              "uuid": "96926f4a-1513-424b-8ad2-df3125a02b18",
              "parent_uuid": "57d3234f-7edd-47b5-a70d-694e4931fdc7",
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
              "uuid": "3b2acbce-9d2e-405b-97ba-09b19e6b5326",
              "parent_uuid": "57d3234f-7edd-47b5-a70d-694e4931fdc7",
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
          "uuid": "c54330a5-3a1b-48ca-8e26-6c32f62d5714",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac20e776-e485-4a5f-9bd1-4994bb41e126",
              "parent_uuid": "c54330a5-3a1b-48ca-8e26-6c32f62d5714",
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
              "uuid": "0943a840-03f3-46b0-b066-f2d77dce7676",
              "parent_uuid": "c54330a5-3a1b-48ca-8e26-6c32f62d5714",
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
              "uuid": "3ac5e93a-3f1e-4439-a132-dfd82cafa7b8",
              "parent_uuid": "c54330a5-3a1b-48ca-8e26-6c32f62d5714",
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
              "uuid": "9c16f90e-e1ed-49f2-bd2a-969487003479",
              "parent_uuid": "c54330a5-3a1b-48ca-8e26-6c32f62d5714",
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
          "uuid": "17fa1f5c-1b4d-45f7-96ae-87dccf7a48d6",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "188094e8-2964-4394-b144-d3eb3486efbc",
              "parent_uuid": "17fa1f5c-1b4d-45f7-96ae-87dccf7a48d6",
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
              "uuid": "f98e0e80-147a-49a8-b3fe-782fe7ec58c6",
              "parent_uuid": "17fa1f5c-1b4d-45f7-96ae-87dccf7a48d6",
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
              "uuid": "cf0e28a6-45b7-44a4-89ef-84531ee49a50",
              "parent_uuid": "17fa1f5c-1b4d-45f7-96ae-87dccf7a48d6",
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
              "uuid": "acd50418-0f8f-40bd-9375-a4e5c2ac860a",
              "parent_uuid": "17fa1f5c-1b4d-45f7-96ae-87dccf7a48d6",
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
          "uuid": "cb565f07-4194-4747-8b8b-abe22bc2677a",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb5a4a4e-413a-44c5-88a9-0659723a055b",
              "parent_uuid": "cb565f07-4194-4747-8b8b-abe22bc2677a",
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
              "uuid": "eeca2651-9c54-405a-9474-7b3a219317f9",
              "parent_uuid": "cb565f07-4194-4747-8b8b-abe22bc2677a",
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
              "uuid": "615c7c8b-2faf-48eb-b885-98ab475a925a",
              "parent_uuid": "cb565f07-4194-4747-8b8b-abe22bc2677a",
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
              "uuid": "199161f7-05f6-41cc-b4c5-d1539b11fdcf",
              "parent_uuid": "cb565f07-4194-4747-8b8b-abe22bc2677a",
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
          "uuid": "46801aad-2cdd-4450-a8a0-93f0573257ca",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "233391cd-b2d3-4f73-8deb-d782925d0c22",
              "parent_uuid": "46801aad-2cdd-4450-a8a0-93f0573257ca",
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
              "uuid": "f4da9b85-3d06-44a1-a49c-c6686aa286a4",
              "parent_uuid": "46801aad-2cdd-4450-a8a0-93f0573257ca",
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
              "uuid": "8f743090-d9fd-4ed8-877c-da1886037442",
              "parent_uuid": "46801aad-2cdd-4450-a8a0-93f0573257ca",
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
              "uuid": "df7bd68c-6647-459e-99e0-8f15a8dbba86",
              "parent_uuid": "46801aad-2cdd-4450-a8a0-93f0573257ca",
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
          "uuid": "b472c6a0-20a9-4fe7-b2ce-8c5f5bcbdc0e",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "43873054-54d3-4211-9b4c-92a5b702ed9a",
              "parent_uuid": "b472c6a0-20a9-4fe7-b2ce-8c5f5bcbdc0e",
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
              "uuid": "ed4c8b26-08e8-4804-a80a-0a2568b2995b",
              "parent_uuid": "b472c6a0-20a9-4fe7-b2ce-8c5f5bcbdc0e",
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
              "uuid": "33f0f451-5f1f-4ef1-bf67-5817afecca13",
              "parent_uuid": "b472c6a0-20a9-4fe7-b2ce-8c5f5bcbdc0e",
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
              "uuid": "385f7cd8-85c5-4b69-82e2-7963365a9185",
              "parent_uuid": "b472c6a0-20a9-4fe7-b2ce-8c5f5bcbdc0e",
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
          "uuid": "842ea177-be60-4364-a713-c03daa01bd44",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4317f5c6-0d9b-4bac-abdc-bee7253d38b4",
              "parent_uuid": "842ea177-be60-4364-a713-c03daa01bd44",
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
              "uuid": "a008d0e2-d0c0-4691-ba7c-5d363a8fef95",
              "parent_uuid": "842ea177-be60-4364-a713-c03daa01bd44",
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
              "uuid": "39126be9-068f-46da-8ce9-e38be7b789f8",
              "parent_uuid": "842ea177-be60-4364-a713-c03daa01bd44",
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
              "uuid": "245b22a8-71a4-4c73-b667-87593a6a1f9f",
              "parent_uuid": "842ea177-be60-4364-a713-c03daa01bd44",
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
          "uuid": "03d04111-ecc7-46ee-9eb2-cbac8a654dfb",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62ad6437-0e5d-4438-bd0b-8171700a4f21",
              "parent_uuid": "03d04111-ecc7-46ee-9eb2-cbac8a654dfb",
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
              "uuid": "e666ff3e-2ba3-4c9d-82f9-792ed336c2be",
              "parent_uuid": "03d04111-ecc7-46ee-9eb2-cbac8a654dfb",
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
              "uuid": "46f2585d-04f8-4b82-966d-57016a6c9fe0",
              "parent_uuid": "03d04111-ecc7-46ee-9eb2-cbac8a654dfb",
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
              "uuid": "8a31e695-f6e0-488c-a95b-38518c0dc49b",
              "parent_uuid": "03d04111-ecc7-46ee-9eb2-cbac8a654dfb",
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
          "uuid": "de3bef7a-3688-42ab-a0fa-dc0ff9ed5195",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7dc1f7de-4d19-4c25-83f1-63e5b8722564",
              "parent_uuid": "de3bef7a-3688-42ab-a0fa-dc0ff9ed5195",
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
              "uuid": "dc412778-6d66-4b12-b4d2-df8c6ac07f26",
              "parent_uuid": "de3bef7a-3688-42ab-a0fa-dc0ff9ed5195",
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
              "uuid": "57aa6896-7738-47e6-bb4d-4c22c9154158",
              "parent_uuid": "de3bef7a-3688-42ab-a0fa-dc0ff9ed5195",
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
              "uuid": "3bec165a-e47d-406d-b5f6-60414471d3fc",
              "parent_uuid": "de3bef7a-3688-42ab-a0fa-dc0ff9ed5195",
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
          "uuid": "01b10d5f-c296-4008-8e33-3d64e678c203",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "14e1c3c6-1b93-4832-b950-562b4ff7017d",
              "parent_uuid": "01b10d5f-c296-4008-8e33-3d64e678c203",
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
          "uuid": "ec6abbcc-65a3-4548-b721-a865498a7561",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0cb3387c-407f-44b7-a0ba-b586504a8702",
              "parent_uuid": "ec6abbcc-65a3-4548-b721-a865498a7561",
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
          "uuid": "4057da42-d78e-4d88-96fb-51ac0778835c",
          "parent_uuid": "c886df8b-0609-4c6f-b2aa-2a297c6fccd8",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f84c89f-88e9-479e-960b-1be9c331826c",
              "parent_uuid": "4057da42-d78e-4d88-96fb-51ac0778835c",
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
                  "uuid": "bb48d9cb-7ad9-47b3-a46f-3404ccb5faa1",
                  "parent_uuid": "4f84c89f-88e9-479e-960b-1be9c331826c",
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



DECLARE @allChecklistsVersions TABLE ( CL_UID uniqueidentifier NOT NULL PRIMARY KEY(CL_UID), CL_Name nvarchar(256) NULL, CLV_UID uniqueidentifier NOT NULL, CLV_Sort int); 

INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'eb159a9c-e69f-49f4-b10e-3a4825973e46', N'Schüttgutcontainer', '08796354-F7AA-4EDF-B943-A51F7AFDAD1D', 1); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'1f6bee57-38a8-4b29-9986-bfad7d107215', N'EVA', '11109E12-7B76-4B60-9168-42FC41D28383', 2); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'58a6d34c-2d4b-4f8a-b831-60488591aedc', N'CIS', '7F973E2D-5BEB-4E0F-932E-642CB936E7B6', 3); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'da19d272-9439-47a7-9749-153dafab2b69', N'VHP', 'E4FD4412-523C-41F0-9CDF-FFB3E5638C3C', 4); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'698ea23d-485a-4cee-9b06-2e130a3a5626', N'NPL', '6A3210F8-161F-4DF5-9566-1C66BF41D61D', 5); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'f1a2dd8a-2d11-496e-9b14-13559405089f', N'BPS_M7', '26456198-0699-4718-AAF7-B8119BE9D705', 6); 
INSERT INTO @allChecklistsVersions(CL_UID, CL_Name, CLV_UID, CLV_Sort) VALUES (N'ddada097-1bb4-46d5-9ee5-7bb28dd3201b', N'BPS_1020', 'FA28E4D1-E505-4C54-9305-52D526DD0D70', 7); 



;WITH CTE AS 
(
	SELECT 
		 CLV_UID AS CLV_UID -- uniqueidentifier 
		,CL_UID CLV_CL_UID -- uniqueidentifier 
		,(SELECT TOP 1 BE_ID FROM T_Benutzer WHERE BE_User IN ('noob.mcnoobington', 'administrator') ) AS CLV_Owner_BE_ID -- int 
		,CURRENT_TIMESTAMP AS CLV_Created -- datetime 
		,CAST('29991231' AS datetime) AS CLV_Obsoleted -- datetime 
	FROM @allChecklistsVersions 
)
-- SELECT * FROM CTE 


MERGE INTO dbo.T_ChecklistVersion AS A 
USING CTE ON CTE.CLV_UID = A.CLV_UID 
WHEN MATCHED THEN 
    UPDATE 
        SET  A.CLV_CL_UID = CTE.CLV_CL_UID 
            ,A.CLV_Owner_BE_ID = CTE.CLV_Owner_BE_ID 
			,A.CLV_Created = CTE.CLV_Created 
			,A.CLV_Obsoleted = CTE.CLV_Obsoleted 


WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
		 CLV_UID 
		,CLV_CL_UID 
		,CLV_Owner_BE_ID 
		,CLV_Created 
		,CLV_Obsoleted 
    ) 
    VALUES 
    ( 
		 CTE.CLV_UID 
		,CTE.CLV_CL_UID 
		,CTE.CLV_Owner_BE_ID 
		,CTE.CLV_Created 
		,CTE.CLV_Obsoleted 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
;


SELECT * FROM T_ChecklistVersion;


-- DELETE FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'); 
-- DELETE FROM T_ChecklistElements WHERE ELE_CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 
-- DELETE FROM T_Checklist WHERE CL_UID = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 




-- T_ChecklistElements

;WITH CTE AS 
( 
	SELECT 
		 uuid AS ELE_UID -- uniqueidentifier
		,parent_uuid AS ELE_Parent_UID -- uniqueidentifier
		,'FA28E4D1-E505-4C54-9305-52D526DD0D70' AS ELE_CLV_UID -- uniqueidentifier
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
            ,A.ELE_CLV_UID = CTE.ELE_CLV_UID 
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
        ,ELE_CLV_UID 
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
        ,CTE.ELE_CLV_UID 
        ,CTE.ELE_TagName 
        ,CTE.ELE_Level 
        ,CTE.ELE_Sort 
        ,CTE.ELE_RecSort 
        ,CTE.ELE_InnerHtml 
    ) 
 -- WHEN NOT MATCHED BY SOURCE THEN DELETE 
 WHEN NOT MATCHED BY SOURCE AND A.ELE_CLV_UID IN(SELECT ELE_CLV_UID FROM CTE WHERE ELE_CLV_UID IS NOT NULL GROUP BY ELE_CLV_UID) THEN DELETE;
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

SELECT ELE_UID, ELE_Parent_UID, ELE_CLV_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CLV_UID IN (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cl_uid ORDER BY CLV_Created  DESC )

-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties 
WHERE PRO_ELE_UID IN ( SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CLV_UID IN (SELECT TOP 1 CLV_UID FROM T_ChecklistVersion WHERE CLV_CL_UID = @__cl_uid ORDER BY CLV_Created  DESC ) 
) ORDER BY PRO_ELE_UID, PRO_Name 
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

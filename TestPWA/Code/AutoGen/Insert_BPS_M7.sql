
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
  "uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
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
      "uuid": "90d590fa-9881-402a-abb7-99b2f7331c37",
      "parent_uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
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
      "uuid": "63455b26-7c9b-454a-b9f1-cc0dcb19755f",
      "parent_uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
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
      "uuid": "30394f70-1240-4327-896a-abb5843a34be",
      "parent_uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
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
      "uuid": "b376d110-9a07-430f-8523-da96c7632381",
      "parent_uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
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
      "uuid": "3c7c638e-5d16-4a54-98d8-e9b4aab1a54b",
      "parent_uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
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
      "uuid": "15f5d61c-c1f4-4990-aa16-2e505c9b5ceb",
      "parent_uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
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
      "uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
      "parent_uuid": "c3e524e4-8381-4db3-b025-36ee1837ec84",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "82f3cb54-ac6a-4d0e-8350-e0607a6f4588",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "6b884a09-63b5-4aab-bcde-6f6b17ff542f",
              "parent_uuid": "82f3cb54-ac6a-4d0e-8350-e0607a6f4588",
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
              "uuid": "9e74db03-30b1-42b3-a652-89c886ab72ae",
              "parent_uuid": "82f3cb54-ac6a-4d0e-8350-e0607a6f4588",
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
              "uuid": "9d0ef00a-2744-47c2-85cd-e4c77db6d586",
              "parent_uuid": "82f3cb54-ac6a-4d0e-8350-e0607a6f4588",
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
              "uuid": "e6790479-563f-469c-8942-60d569118bc5",
              "parent_uuid": "82f3cb54-ac6a-4d0e-8350-e0607a6f4588",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ],
                [
                  "colspan",
                  "7"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk:     BPS M7 </span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "0055919a-ac8d-4bae-ade5-4f0a0bd7467a",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "51f16a91-359a-4509-9e22-5e534a4358e0",
              "parent_uuid": "0055919a-ac8d-4bae-ade5-4f0a0bd7467a",
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
                  "height",
                  "20"
                ]
              ],
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a66f75c7-7007-4a01-9f0a-5d42aa87e956",
              "parent_uuid": "0055919a-ac8d-4bae-ade5-4f0a0bd7467a",
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
              "uuid": "cb89b13f-dd4c-4e73-ab01-6dafbfbd6574",
              "parent_uuid": "0055919a-ac8d-4bae-ade5-4f0a0bd7467a",
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
              "uuid": "eeb919d2-28ff-4cd3-9eb5-b214cf93e66c",
              "parent_uuid": "0055919a-ac8d-4bae-ade5-4f0a0bd7467a",
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
          "uuid": "a0d5a18e-b082-433c-9cdb-c875afb495f9",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "28bc1693-a250-4b89-b870-7448fb0e4555",
              "parent_uuid": "a0d5a18e-b082-433c-9cdb-c875afb495f9",
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
                ],
                [
                  "colspan",
                  "6"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8af66f75-f94b-4afe-8fbd-ded7ddbebba1",
              "parent_uuid": "a0d5a18e-b082-433c-9cdb-c875afb495f9",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "22abd255-f81b-41c7-9f3c-19f26f972b66",
              "parent_uuid": "a0d5a18e-b082-433c-9cdb-c875afb495f9",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "03b95d4c-5e22-4fee-bf51-13b0f55d8cb9",
              "parent_uuid": "a0d5a18e-b082-433c-9cdb-c875afb495f9",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "b6344b61-c039-4fd1-93d3-5dfcd4e6249d",
              "parent_uuid": "a0d5a18e-b082-433c-9cdb-c875afb495f9",
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
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "5970e686-172a-4ad5-b553-6189968149bf",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "92cec691-5f75-4c54-ac1e-e2c0bf161ed5",
              "parent_uuid": "5970e686-172a-4ad5-b553-6189968149bf",
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
                  "10"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "11e4567e-db97-4bf5-bbb0-22cf41684bf4",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "abf526f3-5476-479a-95b3-3927f9fbd268",
              "parent_uuid": "11e4567e-db97-4bf5-bbb0-22cf41684bf4",
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
              "uuid": "0256b82c-a2c6-4fe7-bb08-2dbd00785dd1",
              "parent_uuid": "11e4567e-db97-4bf5-bbb0-22cf41684bf4",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7c8f8db8-66e5-4da8-bb14-1796b6812a41",
              "parent_uuid": "11e4567e-db97-4bf5-bbb0-22cf41684bf4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1669cde-6f8c-420b-9052-1fa0ba26ca24",
                  "parent_uuid": "7c8f8db8-66e5-4da8-bb14-1796b6812a41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bd8824b-501a-4159-9acb-430d3e359f07",
              "parent_uuid": "11e4567e-db97-4bf5-bbb0-22cf41684bf4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "add7bbe6-9782-46f0-bb72-1aa1d98e0a88",
                  "parent_uuid": "5bd8824b-501a-4159-9acb-430d3e359f07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "300bc6ab-d0eb-437a-a690-244918517130",
              "parent_uuid": "11e4567e-db97-4bf5-bbb0-22cf41684bf4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf26cf56-a73e-46dd-9f1c-f44d60a2736f",
                  "parent_uuid": "300bc6ab-d0eb-437a-a690-244918517130",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "46a4e3dc-d0ff-4553-b0bd-ff785622b2d9",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7df41d8b-99b2-4751-bf82-032a5485acf5",
              "parent_uuid": "46a4e3dc-d0ff-4553-b0bd-ff785622b2d9",
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
              "uuid": "d5808291-5711-4a7a-bb1e-9ce62a4a3b9c",
              "parent_uuid": "46a4e3dc-d0ff-4553-b0bd-ff785622b2d9",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fc328336-f58a-41d8-9654-7b9e6ab8d7aa",
              "parent_uuid": "46a4e3dc-d0ff-4553-b0bd-ff785622b2d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61e74295-b89c-4cc7-9563-38274d0d53e6",
                  "parent_uuid": "fc328336-f58a-41d8-9654-7b9e6ab8d7aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f56c5e4-cfb4-41a3-b7da-e81e4ac8000a",
              "parent_uuid": "46a4e3dc-d0ff-4553-b0bd-ff785622b2d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "279c8263-a9cf-4b8c-9350-c294c78f8f3b",
                  "parent_uuid": "6f56c5e4-cfb4-41a3-b7da-e81e4ac8000a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47776f7b-604f-4586-9857-f50f52acbd58",
              "parent_uuid": "46a4e3dc-d0ff-4553-b0bd-ff785622b2d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b2cad69-2cba-4dd2-b4d6-976d0dfa8eff",
                  "parent_uuid": "47776f7b-604f-4586-9857-f50f52acbd58",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eed298bb-b140-4cee-8c98-2898dd968a29",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58b495c5-cfe9-4462-83ae-8242e738c284",
              "parent_uuid": "eed298bb-b140-4cee-8c98-2898dd968a29",
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
              "innerHtml": "\r\n                    <span>Doppelspurbanderolierer reinigen und justieren</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7338e55c-7de3-465c-a222-7be49e4125e7",
              "parent_uuid": "eed298bb-b140-4cee-8c98-2898dd968a29",
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
              "innerHtml": "\r\n                    <span>79</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c6ed31ba-800a-4f1b-a13b-774dec38ad8d",
              "parent_uuid": "eed298bb-b140-4cee-8c98-2898dd968a29",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71318d5b-16e4-4b73-8c1f-bb871335a7aa",
                  "parent_uuid": "c6ed31ba-800a-4f1b-a13b-774dec38ad8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "642d79fa-05c9-4537-8cb4-d0184586b5c5",
              "parent_uuid": "eed298bb-b140-4cee-8c98-2898dd968a29",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c764d329-3cb5-4101-b09a-46646fbc2c34",
                  "parent_uuid": "642d79fa-05c9-4537-8cb4-d0184586b5c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8dc9cf9f-374f-47f7-88c5-87e9b300a53e",
              "parent_uuid": "eed298bb-b140-4cee-8c98-2898dd968a29",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b63f076c-f07b-4ba7-9baf-936aaac2c17b",
                  "parent_uuid": "8dc9cf9f-374f-47f7-88c5-87e9b300a53e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a47385f7-118a-4256-b67e-fef341f28439",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7340d5d3-2247-426c-a0ad-2a35715f015a",
              "parent_uuid": "a47385f7-118a-4256-b67e-fef341f28439",
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
              "innerHtml": "\r\n                    <span>Flach- Zahnriemen Hauptantrieb prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ed46999c-1566-44b3-8dad-659c611a8340",
              "parent_uuid": "a47385f7-118a-4256-b67e-fef341f28439",
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
              "innerHtml": "\r\n                    <span>87</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b1c4698d-7fd1-4f14-8864-52fcd1396c0b",
              "parent_uuid": "a47385f7-118a-4256-b67e-fef341f28439",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b52a66ba-2c35-44bc-96ff-e7f7db555da1",
                  "parent_uuid": "b1c4698d-7fd1-4f14-8864-52fcd1396c0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c1d7b6c-1e55-46ac-94be-098aa626ddcf",
              "parent_uuid": "a47385f7-118a-4256-b67e-fef341f28439",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d06684d-777b-4ff9-a32b-bd79d4158a7e",
                  "parent_uuid": "1c1d7b6c-1e55-46ac-94be-098aa626ddcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5916232c-e914-47bd-8784-229fdc9454ce",
              "parent_uuid": "a47385f7-118a-4256-b67e-fef341f28439",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba696311-0bb8-49c0-b4ab-991297371746",
                  "parent_uuid": "5916232c-e914-47bd-8784-229fdc9454ce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a1f8aac-ed6e-433c-8cb0-748d06e11319",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4066177-5d1e-44b7-922e-1582b90575a7",
              "parent_uuid": "9a1f8aac-ed6e-433c-8cb0-748d06e11319",
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "78443187-8fac-4667-92b0-69f6055e7433",
              "parent_uuid": "9a1f8aac-ed6e-433c-8cb0-748d06e11319",
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
              "uuid": "eb08b199-b91e-4ffc-9491-018a87b7d9a8",
              "parent_uuid": "9a1f8aac-ed6e-433c-8cb0-748d06e11319",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f156845-cfa6-4e41-8f9b-fb9f9cdac1ff",
                  "parent_uuid": "eb08b199-b91e-4ffc-9491-018a87b7d9a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82c983b6-3e1b-4972-a717-8a92865f4ac2",
              "parent_uuid": "9a1f8aac-ed6e-433c-8cb0-748d06e11319",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf1696ca-5064-4d9a-9b25-eb68153a2bea",
                  "parent_uuid": "82c983b6-3e1b-4972-a717-8a92865f4ac2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b441e0c5-a568-418c-8477-0e6b2e0b4486",
              "parent_uuid": "9a1f8aac-ed6e-433c-8cb0-748d06e11319",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a87548de-0414-4f4f-b1fe-9c2811edebdf",
                  "parent_uuid": "b441e0c5-a568-418c-8477-0e6b2e0b4486",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "25d40e8f-d604-4dd9-928a-b0a794be7158",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8ea1d3b-b88b-44db-a1e1-4a8a066fe0c1",
              "parent_uuid": "25d40e8f-d604-4dd9-928a-b0a794be7158",
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhaltewalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a70c8459-3e5a-4182-a9f2-9fc94a405029",
              "parent_uuid": "25d40e8f-d604-4dd9-928a-b0a794be7158",
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
              "uuid": "beeafcce-2957-46e0-8f0a-2c5a00f5110f",
              "parent_uuid": "25d40e8f-d604-4dd9-928a-b0a794be7158",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d123943-9d39-4381-9522-80ea90a67350",
                  "parent_uuid": "beeafcce-2957-46e0-8f0a-2c5a00f5110f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9651f9e-8771-41c2-9d4d-cb6408df830e",
              "parent_uuid": "25d40e8f-d604-4dd9-928a-b0a794be7158",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c355ba5-4295-4e20-a2b0-903667d73930",
                  "parent_uuid": "a9651f9e-8771-41c2-9d4d-cb6408df830e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc81312a-47cb-4908-96ff-5573aa5eca95",
              "parent_uuid": "25d40e8f-d604-4dd9-928a-b0a794be7158",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2fb1d43-9a3e-45fb-bac9-bb2b74cc891f",
                  "parent_uuid": "bc81312a-47cb-4908-96ff-5573aa5eca95",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f6f64919-f6f6-434d-bc01-00d226069600",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df721b88-05a4-42ca-aecf-18ce61e020ff",
              "parent_uuid": "f6f64919-f6f6-434d-bc01-00d226069600",
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
              "uuid": "67eea383-37a3-46b4-aa97-0bb790187cb5",
              "parent_uuid": "f6f64919-f6f6-434d-bc01-00d226069600",
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
              "uuid": "4a726165-2290-4c31-a32d-268ee0a0e15c",
              "parent_uuid": "f6f64919-f6f6-434d-bc01-00d226069600",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4461884a-fd9b-48b6-88c5-9cc3b6e35c9e",
                  "parent_uuid": "4a726165-2290-4c31-a32d-268ee0a0e15c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d8b86ed-4d54-4bde-8865-060532b6fb5a",
              "parent_uuid": "f6f64919-f6f6-434d-bc01-00d226069600",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae5bd978-7284-452a-b47b-4807d1cd0bb7",
                  "parent_uuid": "0d8b86ed-4d54-4bde-8865-060532b6fb5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df12b7e5-ffaf-4186-9bfb-c7afdad88165",
              "parent_uuid": "f6f64919-f6f6-434d-bc01-00d226069600",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0aa0e308-ab55-47e7-ad2e-920e54571100",
                  "parent_uuid": "df12b7e5-ffaf-4186-9bfb-c7afdad88165",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db7f07fb-8b68-4f2b-90b8-2e81d3c3b7ac",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e39a6fe5-4c22-4a9c-ac97-13d46f7c9c2e",
              "parent_uuid": "db7f07fb-8b68-4f2b-90b8-2e81d3c3b7ac",
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
              "innerHtml": "\r\n                    <span>Lichtschranken Schiebetürenüberwachung reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3e1641d5-4ae6-4439-b81d-1f71c72c446b",
              "parent_uuid": "db7f07fb-8b68-4f2b-90b8-2e81d3c3b7ac",
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
              "uuid": "301f7033-f8f4-43f1-8e7f-0c28300f4660",
              "parent_uuid": "db7f07fb-8b68-4f2b-90b8-2e81d3c3b7ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ced2de0c-6c04-4e5d-9c62-0bd182d264d3",
                  "parent_uuid": "301f7033-f8f4-43f1-8e7f-0c28300f4660",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33164257-be46-43b2-ab41-ff8ab7f48d70",
              "parent_uuid": "db7f07fb-8b68-4f2b-90b8-2e81d3c3b7ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0465cf0e-a9ee-47fd-8a0e-26c87483429d",
                  "parent_uuid": "33164257-be46-43b2-ab41-ff8ab7f48d70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6e745fa-29e3-42de-a225-177a1b934ae1",
              "parent_uuid": "db7f07fb-8b68-4f2b-90b8-2e81d3c3b7ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a826bdb-72db-476f-8a1e-72c21c5082f1",
                  "parent_uuid": "f6e745fa-29e3-42de-a225-177a1b934ae1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0786a040-3e51-4755-90dc-15dfeafa9bd2",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "661c317c-d881-4aa9-98ad-f263629d8a55",
              "parent_uuid": "0786a040-3e51-4755-90dc-15dfeafa9bd2",
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
              "innerHtml": "\r\n                    <span>Banknotenweichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0b0e4d8b-0aa2-4b1f-b79e-d5d5edefdbf7",
              "parent_uuid": "0786a040-3e51-4755-90dc-15dfeafa9bd2",
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
              "uuid": "a13dd79b-0ff4-4039-b787-b6fc4be1a6b8",
              "parent_uuid": "0786a040-3e51-4755-90dc-15dfeafa9bd2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "660dbd90-16ba-44ad-aa89-d812049af6eb",
                  "parent_uuid": "a13dd79b-0ff4-4039-b787-b6fc4be1a6b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27bfe309-073d-4bd0-9b71-b1764ea4e76b",
              "parent_uuid": "0786a040-3e51-4755-90dc-15dfeafa9bd2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5ba83b3-027b-4298-8ad2-cb26b1fefb9c",
                  "parent_uuid": "27bfe309-073d-4bd0-9b71-b1764ea4e76b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bdea376-dbb4-49b3-a06b-b38f473b16ea",
              "parent_uuid": "0786a040-3e51-4755-90dc-15dfeafa9bd2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12b8a263-3826-4b94-9357-20ca5d55cdf3",
                  "parent_uuid": "2bdea376-dbb4-49b3-a06b-b38f473b16ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2123708c-aa6d-467d-87ad-6f13424a5ea2",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16e200fc-bf40-4f4d-ac40-d6691165d909",
              "parent_uuid": "2123708c-aa6d-467d-87ad-6f13424a5ea2",
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
              "innerHtml": "\r\n                    <span>Bündler prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cd30bd71-3107-4765-bc63-5e8f4223210b",
              "parent_uuid": "2123708c-aa6d-467d-87ad-6f13424a5ea2",
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
              "innerHtml": "\r\n                    <span>90</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "33817ffc-22e5-4945-b4ca-0aaa28a9a511",
              "parent_uuid": "2123708c-aa6d-467d-87ad-6f13424a5ea2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e34b594-1fa5-4759-83d7-09fb75edb91c",
                  "parent_uuid": "33817ffc-22e5-4945-b4ca-0aaa28a9a511",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5991a2e4-601d-4aad-86f6-0e0eb5652e89",
              "parent_uuid": "2123708c-aa6d-467d-87ad-6f13424a5ea2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05ff719a-148b-448d-a24f-cc861846084c",
                  "parent_uuid": "5991a2e4-601d-4aad-86f6-0e0eb5652e89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9943b67e-8d23-4f46-a487-4bdf7d33cad7",
              "parent_uuid": "2123708c-aa6d-467d-87ad-6f13424a5ea2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fe684c1-5226-4328-8c7e-98fface09c4b",
                  "parent_uuid": "9943b67e-8d23-4f46-a487-4bdf7d33cad7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5daf4d50-c03b-4b5b-acdf-6c1ef5f64d2d",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbacc0ab-4090-469a-a39e-be5d1014c0ab",
              "parent_uuid": "5daf4d50-c03b-4b5b-acdf-6c1ef5f64d2d",
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
              "uuid": "211f031a-f7c7-46cc-bff0-93e4e137837c",
              "parent_uuid": "5daf4d50-c03b-4b5b-acdf-6c1ef5f64d2d",
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
              "innerHtml": "\r\n                    <span>140</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "38c379d9-dc6f-4a31-bd33-9abc9fb273ea",
              "parent_uuid": "5daf4d50-c03b-4b5b-acdf-6c1ef5f64d2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46e19f75-0000-470d-a8ba-b95511ecbd69",
                  "parent_uuid": "38c379d9-dc6f-4a31-bd33-9abc9fb273ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1218b180-fa6a-4f03-a082-74446cfc5388",
              "parent_uuid": "5daf4d50-c03b-4b5b-acdf-6c1ef5f64d2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2c2df92-fd98-4449-bd77-81c2dad04f2e",
                  "parent_uuid": "1218b180-fa6a-4f03-a082-74446cfc5388",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdeccc47-9eb9-47b1-9d4d-6a5c2e2136da",
              "parent_uuid": "5daf4d50-c03b-4b5b-acdf-6c1ef5f64d2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7bd8a3ef-d6e8-467b-948d-649674f12b67",
                  "parent_uuid": "cdeccc47-9eb9-47b1-9d4d-6a5c2e2136da",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0e00990f-241f-4a05-a51e-c90e7bfde8f4",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b13d86f-f837-46aa-8e6c-85f971252e9a",
              "parent_uuid": "0e00990f-241f-4a05-a51e-c90e7bfde8f4",
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
              "uuid": "6014bce4-3d62-4802-aac1-7a6d60cc2bda",
              "parent_uuid": "0e00990f-241f-4a05-a51e-c90e7bfde8f4",
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
              "uuid": "277dcc79-cc7e-44b8-957f-94d94b617bef",
              "parent_uuid": "0e00990f-241f-4a05-a51e-c90e7bfde8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "934b7a74-9e8d-4078-8d21-b68db7480fc1",
                  "parent_uuid": "277dcc79-cc7e-44b8-957f-94d94b617bef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af5e20f9-0ca4-4b37-869b-f7f9808ddb53",
              "parent_uuid": "0e00990f-241f-4a05-a51e-c90e7bfde8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05e3b91b-5fdd-4974-8476-547f12959974",
                  "parent_uuid": "af5e20f9-0ca4-4b37-869b-f7f9808ddb53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bf73a12-ae2d-44d0-912e-0c5aadc226a7",
              "parent_uuid": "0e00990f-241f-4a05-a51e-c90e7bfde8f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8bf67cda-837f-42a4-8967-1eab95e91a1b",
                  "parent_uuid": "1bf73a12-ae2d-44d0-912e-0c5aadc226a7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e292421f-f267-4469-a0f3-5056f334c36f",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7ee3262-abd2-47d4-9d6e-c8cb88ecbe4d",
              "parent_uuid": "e292421f-f267-4469-a0f3-5056f334c36f",
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
              "uuid": "cc86cbaf-1122-43d1-b512-9b65315276d4",
              "parent_uuid": "e292421f-f267-4469-a0f3-5056f334c36f",
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
              "innerHtml": "\r\n                    <span>99</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2a3b791b-ee0d-4f41-bb23-f69fb80ceeb4",
              "parent_uuid": "e292421f-f267-4469-a0f3-5056f334c36f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd4a245a-008b-4ee2-bd23-264d2c37b4fc",
                  "parent_uuid": "2a3b791b-ee0d-4f41-bb23-f69fb80ceeb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6217b970-18c9-48dc-abe0-ca3dd7808217",
              "parent_uuid": "e292421f-f267-4469-a0f3-5056f334c36f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa4b3010-63de-4db0-92de-5d7f8b24aaef",
                  "parent_uuid": "6217b970-18c9-48dc-abe0-ca3dd7808217",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "088dc1e8-4d77-4057-84c1-a5ff7fb8e4bb",
              "parent_uuid": "e292421f-f267-4469-a0f3-5056f334c36f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4db2e02-499d-47ca-9dc6-feba24aeb346",
                  "parent_uuid": "088dc1e8-4d77-4057-84c1-a5ff7fb8e4bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f3fc832f-d955-486b-832b-2073f22294d1",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28470ab2-6a47-400e-8186-4be8f749ddf8",
              "parent_uuid": "f3fc832f-d955-486b-832b-2073f22294d1",
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
              "uuid": "ab9be4fb-7c70-4e2a-ab2d-08bd2b7ba089",
              "parent_uuid": "f3fc832f-d955-486b-832b-2073f22294d1",
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
              "innerHtml": "\r\n                    <span>94</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "81852cec-d377-4852-9d12-c15faa580133",
              "parent_uuid": "f3fc832f-d955-486b-832b-2073f22294d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6065fbcc-881f-4b7b-afd9-e4bd34c67c12",
                  "parent_uuid": "81852cec-d377-4852-9d12-c15faa580133",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e02f7763-eca3-42c3-bd2f-3a5065745652",
              "parent_uuid": "f3fc832f-d955-486b-832b-2073f22294d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8aca8954-c1ca-431e-b236-a2fb0ece2875",
                  "parent_uuid": "e02f7763-eca3-42c3-bd2f-3a5065745652",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b80d823d-7888-41f8-bbd4-88cf3b6e760b",
              "parent_uuid": "f3fc832f-d955-486b-832b-2073f22294d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ce9aedd-7993-49ee-9d37-a2cdddbc8df1",
                  "parent_uuid": "b80d823d-7888-41f8-bbd4-88cf3b6e760b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "5718b5d6-5640-426d-864d-da937213b8e1",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f1faa53-e2ab-4ed9-ae30-8a74f763f080",
              "parent_uuid": "5718b5d6-5640-426d-864d-da937213b8e1",
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
              "uuid": "1b1131a0-db3f-4bfa-831e-90e341121d05",
              "parent_uuid": "5718b5d6-5640-426d-864d-da937213b8e1",
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
              "innerHtml": "\r\n                    <span>66</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ea3fca7d-cd57-48e9-8cc9-abe9adb0885f",
              "parent_uuid": "5718b5d6-5640-426d-864d-da937213b8e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f96f340-e70a-4ce2-9677-9533eb7930cf",
                  "parent_uuid": "ea3fca7d-cd57-48e9-8cc9-abe9adb0885f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c08e3b8-5d65-46f2-b61c-e7eb4610ba27",
              "parent_uuid": "5718b5d6-5640-426d-864d-da937213b8e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4939e4b-7401-4a26-847c-ad5ab59293ce",
                  "parent_uuid": "4c08e3b8-5d65-46f2-b61c-e7eb4610ba27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1fd4eba3-6963-4581-b9c1-16c3d3945689",
              "parent_uuid": "5718b5d6-5640-426d-864d-da937213b8e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bdcf307-b9b6-4e64-8e2e-c1b2f0f1df1c",
                  "parent_uuid": "1fd4eba3-6963-4581-b9c1-16c3d3945689",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "48e0796a-5034-4b8e-b03d-b5580d9f193c",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be6c45f1-c6e9-41e5-b561-7e90893cd56f",
              "parent_uuid": "48e0796a-5034-4b8e-b03d-b5580d9f193c",
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
              "uuid": "3114da77-783e-4761-b6e5-bb12cd566840",
              "parent_uuid": "48e0796a-5034-4b8e-b03d-b5580d9f193c",
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
              "uuid": "b8c08356-a68a-4eac-b349-c1d4ed2c7768",
              "parent_uuid": "48e0796a-5034-4b8e-b03d-b5580d9f193c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90df7581-83e5-4a7f-b656-814e6e5ef4a3",
                  "parent_uuid": "b8c08356-a68a-4eac-b349-c1d4ed2c7768",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8b2d8f6-842d-49d8-848d-9f6acecde4cb",
              "parent_uuid": "48e0796a-5034-4b8e-b03d-b5580d9f193c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab2f61f0-2032-4780-b8b1-18744879df94",
                  "parent_uuid": "a8b2d8f6-842d-49d8-848d-9f6acecde4cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24427562-5114-4421-a7d6-0667da0dc941",
              "parent_uuid": "48e0796a-5034-4b8e-b03d-b5580d9f193c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b74d050a-363a-4b76-ba81-b7ff5cdd04e0",
                  "parent_uuid": "24427562-5114-4421-a7d6-0667da0dc941",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "21c33e52-beda-47da-bfbe-b10160b2e31b",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd7fd2e1-dd35-4e02-af44-6a0fdf49d41d",
              "parent_uuid": "21c33e52-beda-47da-bfbe-b10160b2e31b",
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
          "uuid": "bdbd5fd4-964c-42fe-ad0e-9f2e6e1d710b",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c892ac8-d2e2-42cb-b0be-00393332b95a",
              "parent_uuid": "bdbd5fd4-964c-42fe-ad0e-9f2e6e1d710b",
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "acd64d07-3873-4fbb-ab3a-a8b3a2cad9a4",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "204d81e4-95cd-4b6a-8859-acb759dde6be",
              "parent_uuid": "acd64d07-3873-4fbb-ab3a-a8b3a2cad9a4",
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
                  "uuid": "db5dc2e6-def5-491e-a988-cabb0e1299f8",
                  "parent_uuid": "204d81e4-95cd-4b6a-8859-acb759dde6be",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "7696f892-ba1b-45cf-b7a7-a963fa401bbd",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "3b01801d-e1bc-474c-80ab-6930d276f9db",
              "parent_uuid": "7696f892-ba1b-45cf-b7a7-a963fa401bbd",
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "fd0593e8-cd85-45b2-b4f4-343fa2799653",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fadacfae-9446-427c-9494-f3adeeb7301e",
              "parent_uuid": "fd0593e8-cd85-45b2-b4f4-343fa2799653",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "0f60d9e4-7239-46b7-87fd-aa0ed21a1e33",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df28bc95-b2c6-428e-9433-39bf45c289f3",
              "parent_uuid": "0f60d9e4-7239-46b7-87fd-aa0ed21a1e33",
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
              "innerHtml": "<span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4fcd7dca-a918-4320-a147-37ab4aa92d39",
              "parent_uuid": "0f60d9e4-7239-46b7-87fd-aa0ed21a1e33",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fd657ff6-9301-46a4-94c4-d6f367f828dd",
              "parent_uuid": "0f60d9e4-7239-46b7-87fd-aa0ed21a1e33",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "8ff829b1-369f-49d1-acff-83a2392b7d9f",
              "parent_uuid": "0f60d9e4-7239-46b7-87fd-aa0ed21a1e33",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d976e38d-c291-49cb-afde-bceac4447ff5",
              "parent_uuid": "0f60d9e4-7239-46b7-87fd-aa0ed21a1e33",
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
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "a939cb22-d4e8-477d-990a-b52e42f8ffdd",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "b31163a1-65aa-4894-bf5f-1ecb086b9ae5",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c5d6f62-ae39-4a3f-ab71-75d004967af1",
              "parent_uuid": "b31163a1-65aa-4894-bf5f-1ecb086b9ae5",
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
              "uuid": "c9efb3de-5042-4b81-b011-d6282f188853",
              "parent_uuid": "b31163a1-65aa-4894-bf5f-1ecb086b9ae5",
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
              "innerHtml": "\r\n                    <span>148</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "bdff7619-e3ac-445c-a56b-aff7ea2e31b3",
              "parent_uuid": "b31163a1-65aa-4894-bf5f-1ecb086b9ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71dbc126-2543-44b9-92f5-6f4ea66ebfa5",
                  "parent_uuid": "bdff7619-e3ac-445c-a56b-aff7ea2e31b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e7c4898-031e-4a41-a228-7929c44aae24",
              "parent_uuid": "b31163a1-65aa-4894-bf5f-1ecb086b9ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "056bdf03-8744-45de-aed5-22a05ca02741",
                  "parent_uuid": "4e7c4898-031e-4a41-a228-7929c44aae24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be7a0a89-c9e2-4209-aa37-c884676adfb7",
              "parent_uuid": "b31163a1-65aa-4894-bf5f-1ecb086b9ae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b429203-3c0a-4e79-bb1f-f739dcbf1f3c",
                  "parent_uuid": "be7a0a89-c9e2-4209-aa37-c884676adfb7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "d1a051a8-1b0d-41b1-8c1b-3e0a3082f9c6",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30dde837-cb3b-4cef-90e3-14b026a111ea",
              "parent_uuid": "d1a051a8-1b0d-41b1-8c1b-3e0a3082f9c6",
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
              "uuid": "b5c150a9-42f0-44a4-9db9-a8123bfe2b55",
              "parent_uuid": "d1a051a8-1b0d-41b1-8c1b-3e0a3082f9c6",
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
              "innerHtml": "\r\n                    <span>103</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "75907a2c-aad6-4a55-8674-d795f0d62b63",
              "parent_uuid": "d1a051a8-1b0d-41b1-8c1b-3e0a3082f9c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e859c02-f791-47c3-9314-3786332500fa",
                  "parent_uuid": "75907a2c-aad6-4a55-8674-d795f0d62b63",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f026e6a-ec2b-490f-a0ba-e64d3ff14bed",
              "parent_uuid": "d1a051a8-1b0d-41b1-8c1b-3e0a3082f9c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4aab44e8-3f11-498b-9bd6-a269f77b0210",
                  "parent_uuid": "8f026e6a-ec2b-490f-a0ba-e64d3ff14bed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d46ce80-dd41-42b9-8e67-9a8c0ac1f174",
              "parent_uuid": "d1a051a8-1b0d-41b1-8c1b-3e0a3082f9c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "595db8eb-8302-47dc-9b0e-8869c54b7012",
                  "parent_uuid": "3d46ce80-dd41-42b9-8e67-9a8c0ac1f174",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "3be70dc2-f6a5-4aa4-b4f1-ed75d87a61a7",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e62d696a-943c-4ab7-88c4-9eb4ed868f66",
              "parent_uuid": "3be70dc2-f6a5-4aa4-b4f1-ed75d87a61a7",
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
              "uuid": "cd2fd510-510c-45b6-8227-9ba4209de06d",
              "parent_uuid": "3be70dc2-f6a5-4aa4-b4f1-ed75d87a61a7",
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
              "uuid": "dcb7096c-8e40-4bc6-aeac-01b4ac677257",
              "parent_uuid": "3be70dc2-f6a5-4aa4-b4f1-ed75d87a61a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c547c56d-0335-4a4d-ba03-f277bf8ee80b",
                  "parent_uuid": "dcb7096c-8e40-4bc6-aeac-01b4ac677257",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74152ab2-0f01-4188-89f1-a54eeb965ac6",
              "parent_uuid": "3be70dc2-f6a5-4aa4-b4f1-ed75d87a61a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86629af2-9a05-47f3-ad08-861278a3cd5d",
                  "parent_uuid": "74152ab2-0f01-4188-89f1-a54eeb965ac6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d2cae4d-7cd7-4283-8672-677141feb45d",
              "parent_uuid": "3be70dc2-f6a5-4aa4-b4f1-ed75d87a61a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16c9f0da-e940-4555-8b7a-c2f5b738e7fe",
                  "parent_uuid": "1d2cae4d-7cd7-4283-8672-677141feb45d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "b7796545-4ddb-4c19-a577-96bfd1d0bf46",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f986883d-84d2-4126-b114-9d358a6f4815",
              "parent_uuid": "b7796545-4ddb-4c19-a577-96bfd1d0bf46",
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
              "uuid": "6efd9c78-5922-4038-9f50-be7015c858b6",
              "parent_uuid": "b7796545-4ddb-4c19-a577-96bfd1d0bf46",
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
              "innerHtml": "\r\n                    <span>102</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f93634fd-527d-4cc4-b1d7-8c362e8f92d5",
              "parent_uuid": "b7796545-4ddb-4c19-a577-96bfd1d0bf46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5968bab-e822-481a-a001-fc31c2b33d30",
                  "parent_uuid": "f93634fd-527d-4cc4-b1d7-8c362e8f92d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f96e85a5-8bce-4e37-ad26-629362beef0c",
              "parent_uuid": "b7796545-4ddb-4c19-a577-96bfd1d0bf46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "700b7096-8be6-4654-924d-22c4af7cc49c",
                  "parent_uuid": "f96e85a5-8bce-4e37-ad26-629362beef0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0698342a-071e-4c57-9082-f04d91e22028",
              "parent_uuid": "b7796545-4ddb-4c19-a577-96bfd1d0bf46",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26281e82-f5a6-4d35-bb0e-4b56b5948148",
                  "parent_uuid": "0698342a-071e-4c57-9082-f04d91e22028",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "66e28fe9-a63c-474d-a7eb-623271f4bd74",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64c849df-6d9b-4150-926a-eaf5b42f447b",
              "parent_uuid": "66e28fe9-a63c-474d-a7eb-623271f4bd74",
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
          "uuid": "0bd026f8-2347-49e3-adfc-b881f6e30039",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64c1dd8f-b3a0-49b5-9ed2-9571341fcade",
              "parent_uuid": "0bd026f8-2347-49e3-adfc-b881f6e30039",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "bda5c5d0-8e11-4146-b96a-71cd516a81d1",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac3a0641-c102-47b0-9303-76fbc89812d3",
              "parent_uuid": "bda5c5d0-8e11-4146-b96a-71cd516a81d1",
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
                  "uuid": "af3760c9-cc73-4ee5-8ee3-2d80429f26e1",
                  "parent_uuid": "ac3a0641-c102-47b0-9303-76fbc89812d3",
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
        },
        {
          "uuid": "dd0e90d0-561f-4007-8a03-88a67b58effa",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "ff249c57-b7a9-491b-bb91-385429cf8674",
              "parent_uuid": "dd0e90d0-561f-4007-8a03-88a67b58effa",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "10"
                ],
                [
                  "height",
                  "60"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "8a11d988-8e43-40a3-8cef-64f866f2efac",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "453ebe4e-1671-46f2-b18d-8bbfeba3ce2e",
              "parent_uuid": "8a11d988-8e43-40a3-8cef-64f866f2efac",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000"
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
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "449f924f-06ce-4a92-9f09-1e8e69aea505",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "67c01f73-ca65-4ae8-8b93-9b8795a0b75d",
              "parent_uuid": "449f924f-06ce-4a92-9f09-1e8e69aea505",
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
              "uuid": "502ce344-b42a-4ad9-8c03-106fb20f6409",
              "parent_uuid": "449f924f-06ce-4a92-9f09-1e8e69aea505",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "041b72e6-e7da-4aa7-aeb3-9fa92672a8dc",
              "parent_uuid": "449f924f-06ce-4a92-9f09-1e8e69aea505",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c3f64b3a-035e-4381-ad74-e85ce4351e6c",
              "parent_uuid": "449f924f-06ce-4a92-9f09-1e8e69aea505",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "c88ebb18-4bba-4272-8c39-56fa123abe77",
              "parent_uuid": "449f924f-06ce-4a92-9f09-1e8e69aea505",
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "cb48b21d-07d7-40d1-a5f2-d5d3eb3f5531",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f1b35cd-53c7-49d5-8d78-90d28171587a",
              "parent_uuid": "cb48b21d-07d7-40d1-a5f2-d5d3eb3f5531",
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
              "uuid": "b3e33a08-2fee-482c-b503-9f9b8ad7611e",
              "parent_uuid": "cb48b21d-07d7-40d1-a5f2-d5d3eb3f5531",
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
              "uuid": "f8d327b5-4904-476a-8b5b-f59f1340f7c1",
              "parent_uuid": "cb48b21d-07d7-40d1-a5f2-d5d3eb3f5531",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6569e0c8-604b-4d39-9391-412b1e99ac1f",
                  "parent_uuid": "f8d327b5-4904-476a-8b5b-f59f1340f7c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8a98b34e-c448-462d-9281-23785c442d2b",
              "parent_uuid": "cb48b21d-07d7-40d1-a5f2-d5d3eb3f5531",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b78357c-83cf-42ea-abe6-53ba1822ed1f",
                  "parent_uuid": "8a98b34e-c448-462d-9281-23785c442d2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7dceff7e-fbd9-400f-85ff-f246579a2ba7",
              "parent_uuid": "cb48b21d-07d7-40d1-a5f2-d5d3eb3f5531",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11bf10f1-0b76-4eca-b122-14f6898b477d",
                  "parent_uuid": "7dceff7e-fbd9-400f-85ff-f246579a2ba7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1d6c3c3f-ea7c-40e4-9673-a36278d90750",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab8695da-72c4-4e04-a6ee-14a0273ef8b3",
              "parent_uuid": "1d6c3c3f-ea7c-40e4-9673-a36278d90750",
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
              "uuid": "0a23d5a7-c3e5-4bae-bd7d-514baf2432f4",
              "parent_uuid": "1d6c3c3f-ea7c-40e4-9673-a36278d90750",
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
              "innerHtml": "\r\n                    <span>109</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dbd2c894-8fdd-43d6-94df-4bc402badaf7",
              "parent_uuid": "1d6c3c3f-ea7c-40e4-9673-a36278d90750",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3be248cb-8db3-406a-ae43-550e6fa6370a",
                  "parent_uuid": "dbd2c894-8fdd-43d6-94df-4bc402badaf7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0406479c-16fa-4f5a-b1e0-e5cd9ed68061",
              "parent_uuid": "1d6c3c3f-ea7c-40e4-9673-a36278d90750",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba42e8c3-2b39-4ca5-baba-4b8c11fd4697",
                  "parent_uuid": "0406479c-16fa-4f5a-b1e0-e5cd9ed68061",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5585a66-a042-4d45-af4e-fd225ea27128",
              "parent_uuid": "1d6c3c3f-ea7c-40e4-9673-a36278d90750",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8537b07b-2e56-412b-bb8c-5ac7779c30ab",
                  "parent_uuid": "a5585a66-a042-4d45-af4e-fd225ea27128",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3f0876c8-a990-40be-ade0-47bd583ee0e3",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b015cdf6-9321-4c5d-9afb-e0f450ebea4a",
              "parent_uuid": "3f0876c8-a990-40be-ade0-47bd583ee0e3",
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
              "uuid": "a445aa34-0bb1-4bee-af35-2e1ae1d23cf7",
              "parent_uuid": "3f0876c8-a990-40be-ade0-47bd583ee0e3",
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
              "innerHtml": "\r\n                    <span>112</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "812b42f0-db88-4d78-aa98-ffefb4e236f2",
              "parent_uuid": "3f0876c8-a990-40be-ade0-47bd583ee0e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cad3b22d-1d5a-4284-a254-97dad1399ad6",
                  "parent_uuid": "812b42f0-db88-4d78-aa98-ffefb4e236f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f729184c-ef29-46b2-817f-67f9db8da57a",
              "parent_uuid": "3f0876c8-a990-40be-ade0-47bd583ee0e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d84c4c22-07ce-4717-910a-657eaa94c7d1",
                  "parent_uuid": "f729184c-ef29-46b2-817f-67f9db8da57a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56815a9f-e721-4299-b346-b02963f4676d",
              "parent_uuid": "3f0876c8-a990-40be-ade0-47bd583ee0e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb5cb97f-d992-4819-810d-b5804bcda4b8",
                  "parent_uuid": "56815a9f-e721-4299-b346-b02963f4676d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0347381c-23cf-4442-8ea4-62bb91acad31",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74cf31f2-718c-471a-8c7a-d28ca349f853",
              "parent_uuid": "0347381c-23cf-4442-8ea4-62bb91acad31",
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
              "uuid": "32e1d769-2a37-4283-8a3a-1bec307dff08",
              "parent_uuid": "0347381c-23cf-4442-8ea4-62bb91acad31",
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
              "uuid": "bab50368-03d3-4d87-9e78-4606066e9f2c",
              "parent_uuid": "0347381c-23cf-4442-8ea4-62bb91acad31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44f1cdf8-0b18-4cac-9c42-4b1c3cefd614",
                  "parent_uuid": "bab50368-03d3-4d87-9e78-4606066e9f2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76f8bf22-6001-4fbe-93a1-d393eca19a55",
              "parent_uuid": "0347381c-23cf-4442-8ea4-62bb91acad31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00299380-5e59-4abf-a825-5fae8dec81df",
                  "parent_uuid": "76f8bf22-6001-4fbe-93a1-d393eca19a55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df63569e-c383-4716-b887-125f8ddb8c40",
              "parent_uuid": "0347381c-23cf-4442-8ea4-62bb91acad31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15614450-2e1c-42c0-b59c-efe1ef5086e7",
                  "parent_uuid": "df63569e-c383-4716-b887-125f8ddb8c40",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "4205f014-61c3-409a-bb9e-ea037688fa78",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d92a5754-a0a5-456c-968d-737e965f4359",
              "parent_uuid": "4205f014-61c3-409a-bb9e-ea037688fa78",
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
              "uuid": "97707081-ce62-41b1-ae7b-7f7fb1e4cab0",
              "parent_uuid": "4205f014-61c3-409a-bb9e-ea037688fa78",
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
              "innerHtml": "\r\n                    <span>150</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "10a16904-e9bd-4fa5-9892-545aa1c0920f",
              "parent_uuid": "4205f014-61c3-409a-bb9e-ea037688fa78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28b83f0a-d363-4f2b-92d8-f12772c22c82",
                  "parent_uuid": "10a16904-e9bd-4fa5-9892-545aa1c0920f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "200804e0-1c8c-4bc3-a6ae-9bb3cf135ed9",
              "parent_uuid": "4205f014-61c3-409a-bb9e-ea037688fa78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a53f82de-1730-44f9-9c70-b022a4758786",
                  "parent_uuid": "200804e0-1c8c-4bc3-a6ae-9bb3cf135ed9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78497c23-315a-4ab1-81f1-2735286a8a09",
              "parent_uuid": "4205f014-61c3-409a-bb9e-ea037688fa78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67576b6f-90e9-4296-a3f7-824ef7e2dc87",
                  "parent_uuid": "78497c23-315a-4ab1-81f1-2735286a8a09",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "a35a8cdb-4a39-47b2-8883-792c3b879964",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa11b0ec-0b33-47db-8ecd-c51280c93ee3",
              "parent_uuid": "a35a8cdb-4a39-47b2-8883-792c3b879964",
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
              "uuid": "f502dccc-cf80-4203-ba94-bc2862a153bd",
              "parent_uuid": "a35a8cdb-4a39-47b2-8883-792c3b879964",
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
              "innerHtml": "\r\n                    <span>106</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8c2ce608-9a37-499c-a876-1690ba6bb074",
              "parent_uuid": "a35a8cdb-4a39-47b2-8883-792c3b879964",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9c44499-c752-4403-9da5-ac871460ad8e",
                  "parent_uuid": "8c2ce608-9a37-499c-a876-1690ba6bb074",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76c048dc-721a-4e72-8907-5a032f2d3bd2",
              "parent_uuid": "a35a8cdb-4a39-47b2-8883-792c3b879964",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aafa7fcb-1408-441c-8ee4-6bf63f377db6",
                  "parent_uuid": "76c048dc-721a-4e72-8907-5a032f2d3bd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47817623-46b7-4132-b6d7-d5c4b78ae8af",
              "parent_uuid": "a35a8cdb-4a39-47b2-8883-792c3b879964",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddf47350-041a-49d5-8d86-befda12acb8b",
                  "parent_uuid": "47817623-46b7-4132-b6d7-d5c4b78ae8af",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "425d9180-b3f8-4b5b-b31d-177c38d7b520",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97f2cc22-331c-4359-ba17-f9136ff0d8c6",
              "parent_uuid": "425d9180-b3f8-4b5b-b31d-177c38d7b520",
              "tagName": "td",
              "properties": [
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
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "d1936a66-78ae-44e4-859a-391151759f29",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "463ae0a9-e9c1-49ab-9cbd-59101ee3a665",
              "parent_uuid": "d1936a66-78ae-44e4-859a-391151759f29",
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
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "dde6d2ef-aae7-487c-902d-6094b10bdc53",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0aade8fa-7380-4b9e-844f-948e9ccef26e",
              "parent_uuid": "dde6d2ef-aae7-487c-902d-6094b10bdc53",
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
                  "uuid": "105d36cc-0c67-4686-9c19-0706b6cd71a4",
                  "parent_uuid": "0aade8fa-7380-4b9e-844f-948e9ccef26e",
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
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "7ef48b3e-2ced-4dcd-b24b-16e485f59a63",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57ed715c-9254-42ad-bd4f-235386365485",
              "parent_uuid": "7ef48b3e-2ced-4dcd-b24b-16e485f59a63",
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
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "fcc86aec-9d02-4142-8373-3aee32e2269a",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "7968c241-4fe4-4d71-9984-5017edde1291",
              "parent_uuid": "fcc86aec-9d02-4142-8373-3aee32e2269a",
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
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "627c8e9c-f182-4bdd-ba45-245d062c3e68",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd4c2d3e-9133-4cde-a35f-e3daefb1d774",
              "parent_uuid": "627c8e9c-f182-4bdd-ba45-245d062c3e68",
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
                  "border-right: none; vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e5076e15-0639-4956-a459-4f8f27bf5791",
              "parent_uuid": "627c8e9c-f182-4bdd-ba45-245d062c3e68",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "2"
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
              "uuid": "a5a68f7b-88d8-4ba6-8fea-e2e6a8dd14f3",
              "parent_uuid": "627c8e9c-f182-4bdd-ba45-245d062c3e68",
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
              "uuid": "eadeff2f-422b-4570-bf16-9f0e19b16f94",
              "parent_uuid": "627c8e9c-f182-4bdd-ba45-245d062c3e68",
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
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "c2b98d1f-68dc-41a1-8fc7-5ffbf69edfb9",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ea3275e-b14a-45c0-b15b-625ff31a2e78",
              "parent_uuid": "c2b98d1f-68dc-41a1-8fc7-5ffbf69edfb9",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 3467 (M415)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9f821630-e8d6-415c-be0a-6f0a46f686e2",
              "parent_uuid": "c2b98d1f-68dc-41a1-8fc7-5ffbf69edfb9",
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
              "innerHtml": "\r\n                    <span>262 407 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "19392cd3-7a13-4d71-bb7a-748d515c154e",
              "parent_uuid": "c2b98d1f-68dc-41a1-8fc7-5ffbf69edfb9",
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
              "uuid": "639e9741-d276-4426-ae00-42d16850cc67",
              "parent_uuid": "c2b98d1f-68dc-41a1-8fc7-5ffbf69edfb9",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "9a36a419-2e7e-45ae-93b7-41bc97a0ff9e",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5eb0d9a0-6562-4504-abc6-8c03bbd417b7",
              "parent_uuid": "9a36a419-2e7e-45ae-93b7-41bc97a0ff9e",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2409 (M414)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1bdba336-1d01-4b78-9ff0-40ceca51976a",
              "parent_uuid": "9a36a419-2e7e-45ae-93b7-41bc97a0ff9e",
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
              "innerHtml": "\r\n                    <span>263 536 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "31a74526-7600-42b0-ad43-16a431d3f5f8",
              "parent_uuid": "9a36a419-2e7e-45ae-93b7-41bc97a0ff9e",
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
              "uuid": "705cf1f6-7bf8-4748-a1ac-063ad0be787e",
              "parent_uuid": "9a36a419-2e7e-45ae-93b7-41bc97a0ff9e",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "2fb4548a-5431-49c4-9bcd-58030c4d59a0",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9da0634c-64c5-4d16-9289-ca2f3b356005",
              "parent_uuid": "2fb4548a-5431-49c4-9bcd-58030c4d59a0",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2135 (M402)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "17ca5527-2d1f-46b8-98e4-83e6e63ddd07",
              "parent_uuid": "2fb4548a-5431-49c4-9bcd-58030c4d59a0",
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
              "innerHtml": "\r\n                    <span>262 507 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f988a347-1749-4247-bac6-e047345f451a",
              "parent_uuid": "2fb4548a-5431-49c4-9bcd-58030c4d59a0",
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
              "uuid": "7a6965b6-97fc-44f1-8000-157019765fab",
              "parent_uuid": "2fb4548a-5431-49c4-9bcd-58030c4d59a0",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "f24c9053-6a60-407d-aa50-b23a110f88cb",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f3bf5e7-93ee-4aed-8ef3-c6592d05b865",
              "parent_uuid": "f24c9053-6a60-407d-aa50-b23a110f88cb",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 1510 (M306)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ef57ec18-707c-4203-9f67-f87f435faf3c",
              "parent_uuid": "f24c9053-6a60-407d-aa50-b23a110f88cb",
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
              "innerHtml": "\r\n                    <span>117 363 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e8ba837e-0049-425c-bbd4-713e9c275707",
              "parent_uuid": "f24c9053-6a60-407d-aa50-b23a110f88cb",
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
              "uuid": "0bfac12c-8099-4be3-a61c-a6c7af4b162f",
              "parent_uuid": "f24c9053-6a60-407d-aa50-b23a110f88cb",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "7304ecff-27ee-4867-88ac-dd25d5ca224d",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8fc0bd5d-944a-4c04-8c86-f0f85b30ab2c",
              "parent_uuid": "7304ecff-27ee-4867-88ac-dd25d5ca224d",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 990 (M376)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7c383281-4b95-44e8-8a08-c1e8db05f3e8",
              "parent_uuid": "7304ecff-27ee-4867-88ac-dd25d5ca224d",
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
              "innerHtml": "\r\n                    <span>268 909 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a4f8a454-226b-41b4-9f70-53c51ab36ed2",
              "parent_uuid": "7304ecff-27ee-4867-88ac-dd25d5ca224d",
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
              "uuid": "29caf9ae-8d65-4143-bbe3-186c215ba92e",
              "parent_uuid": "7304ecff-27ee-4867-88ac-dd25d5ca224d",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "f765dd11-efc8-479f-b267-85dad5f17ecf",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "107152a5-2e4c-4a96-a3ef-58388a87fadc",
              "parent_uuid": "f765dd11-efc8-479f-b267-85dad5f17ecf",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 297 (M281)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fe277647-8bf7-40aa-bed1-4e4f10ad9570",
              "parent_uuid": "f765dd11-efc8-479f-b267-85dad5f17ecf",
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
              "innerHtml": "\r\n                    <span>244 040 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "502242a6-e6f4-4775-b976-7fc5676f2510",
              "parent_uuid": "f765dd11-efc8-479f-b267-85dad5f17ecf",
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
              "uuid": "ff5c1c0d-2991-44a7-bdff-b2c7c73aa772",
              "parent_uuid": "f765dd11-efc8-479f-b267-85dad5f17ecf",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "802761a8-ec54-4f82-9fb4-04df9a6ee5aa",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64f83e06-1e92-45d5-940f-fee1ee5d56c1",
              "parent_uuid": "802761a8-ec54-4f82-9fb4-04df9a6ee5aa",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M280)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b19d140a-9d6b-4330-838b-aa4cb8076f2f",
              "parent_uuid": "802761a8-ec54-4f82-9fb4-04df9a6ee5aa",
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
              "uuid": "b06975e0-8931-4356-b1d4-511dbb07e64f",
              "parent_uuid": "802761a8-ec54-4f82-9fb4-04df9a6ee5aa",
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
              "uuid": "14740402-23aa-4a17-8672-14b7a1dac99c",
              "parent_uuid": "802761a8-ec54-4f82-9fb4-04df9a6ee5aa",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "2c00a34c-ce66-4044-824b-8b1c508bf9be",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6bd02a48-0235-47d4-8124-41654a96d33c",
              "parent_uuid": "2c00a34c-ce66-4044-824b-8b1c508bf9be",
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
              "uuid": "29d57a9b-17c1-40ce-b4f3-4a839f94993e",
              "parent_uuid": "2c00a34c-ce66-4044-824b-8b1c508bf9be",
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
              "innerHtml": "\r\n                    <span>272 900 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "24d4af23-be54-4e91-9e10-bcf4908f454c",
              "parent_uuid": "2c00a34c-ce66-4044-824b-8b1c508bf9be",
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
              "uuid": "e09bd93c-ec7e-4321-aa57-f1aef5b4104d",
              "parent_uuid": "2c00a34c-ce66-4044-824b-8b1c508bf9be",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 56,
          "lvl": 0
        },
        {
          "uuid": "baabb71b-90b1-4538-a27c-6cab73970996",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "acff4453-ec66-4905-868e-93a6c168ddef",
              "parent_uuid": "baabb71b-90b1-4538-a27c-6cab73970996",
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
              "uuid": "164d7cb9-dc3b-492b-92fe-b877dbb7acea",
              "parent_uuid": "baabb71b-90b1-4538-a27c-6cab73970996",
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
              "uuid": "b4abf624-b5db-499d-bdd9-8f9b2f4c1236",
              "parent_uuid": "baabb71b-90b1-4538-a27c-6cab73970996",
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
              "uuid": "c4a79fa0-a510-4d05-b036-b4fb2d4fce23",
              "parent_uuid": "baabb71b-90b1-4538-a27c-6cab73970996",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 57,
          "lvl": 0
        },
        {
          "uuid": "c270fdac-f725-45af-b650-b13909f92aea",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6212d90d-808f-424e-8a26-e9c47d92b18f",
              "parent_uuid": "c270fdac-f725-45af-b650-b13909f92aea",
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
              "innerHtml": "\r\n                    <span>Einlaufblech (M308)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fbcf7cb8-5a59-410e-bca0-8969ed6e5008",
              "parent_uuid": "c270fdac-f725-45af-b650-b13909f92aea",
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
              "innerHtml": "\r\n                    <span>155 487 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1c5bd6af-2c5e-4157-87d9-2eef4db022e5",
              "parent_uuid": "c270fdac-f725-45af-b650-b13909f92aea",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6514e557-ab93-47f5-9545-47e56b57211b",
              "parent_uuid": "c270fdac-f725-45af-b650-b13909f92aea",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 58,
          "lvl": 0
        },
        {
          "uuid": "25e685fd-2d36-4b26-a4ad-ca70f4fb9bef",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a17be4f-226b-42dc-a59d-9162e1205630",
              "parent_uuid": "25e685fd-2d36-4b26-a4ad-ca70f4fb9bef",
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
              "innerHtml": "\r\n                    <span>Schieber</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7e5421fe-b6c3-49cf-99b8-b877981b551d",
              "parent_uuid": "25e685fd-2d36-4b26-a4ad-ca70f4fb9bef",
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
              "innerHtml": "\r\n                    <span>212 408 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c533df80-010a-4e8a-b455-c215e5777c83",
              "parent_uuid": "25e685fd-2d36-4b26-a4ad-ca70f4fb9bef",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6a9ab1d7-58ad-4e85-8eb2-e0728afae67b",
              "parent_uuid": "25e685fd-2d36-4b26-a4ad-ca70f4fb9bef",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 59,
          "lvl": 0
        },
        {
          "uuid": "fcaabe2c-0865-46a1-b64b-045ff1a43be2",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90f2769b-572a-492c-96f5-e494365c8512",
              "parent_uuid": "fcaabe2c-0865-46a1-b64b-045ff1a43be2",
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
              "innerHtml": "\r\n                    <span>Kugellager (6007 LB) Rotor</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8e878d09-73de-4a4c-bd62-b89f5f9a6b55",
              "parent_uuid": "fcaabe2c-0865-46a1-b64b-045ff1a43be2",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f8071a7e-31ea-4368-8f30-c81ec7f53f26",
              "parent_uuid": "fcaabe2c-0865-46a1-b64b-045ff1a43be2",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "48ce1234-fb38-4dc9-a0ae-791c2e6cb313",
              "parent_uuid": "fcaabe2c-0865-46a1-b64b-045ff1a43be2",
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
              "innerHtml": "\r\n                    <span size=\"1\" color=\"#000000\">Werkstatt</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 60,
          "lvl": 0
        },
        {
          "uuid": "c99040b3-dc82-44e6-80b9-72b390765f89",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d56fbbc-e970-4ac4-8262-ea43e2c042f6",
              "parent_uuid": "c99040b3-dc82-44e6-80b9-72b390765f89",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "height",
                  "30"
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
          "sort": 61,
          "lvl": 0
        },
        {
          "uuid": "f6beb3ef-61b6-4b13-9331-b2cfc58b98bf",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c5a4de5c-2518-4c2f-ac44-22f8681ba190",
              "parent_uuid": "f6beb3ef-61b6-4b13-9331-b2cfc58b98bf",
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 62,
          "lvl": 0
        },
        {
          "uuid": "0d1b47a9-e973-4675-ad97-7cf29c6226c2",
          "parent_uuid": "6025e675-d5cd-4e1b-a5f3-6561333377e7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da36c02b-b77c-4259-a511-ec700263e43f",
              "parent_uuid": "0d1b47a9-e973-4675-ad97-7cf29c6226c2",
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
                  "uuid": "751bdae8-34fe-4efd-bd90-98dac5f3e9e4",
                  "parent_uuid": "da36c02b-b77c-4259-a511-ec700263e43f",
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
          "sort": 63,
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
    ,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS cl_uid 
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
		,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'F1A2DD8A-2D11-496E-9B14-13559405089F'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

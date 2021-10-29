
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
  "uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "b9f05f5b-a075-460c-a574-7462e07ff17f",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "3d0ce9b4-e884-4a3e-8a23-78f4d79b04e4",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "06ae2544-1046-4813-9e4f-4eaf6613094c",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "b3e2c46b-06c3-4ab7-ac4d-dc954b030e73",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "553a8fca-b674-444d-9f3d-38251212622f",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "0296de12-d87e-4c4f-a7a5-caef6682884a",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "43dc9e0e-c40e-42ae-8a4c-ede527bbae80",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
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
      "uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
      "parent_uuid": "b39692d4-a37c-4158-87e8-2898e28ef495",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "25af65ae-b8a2-4eac-8180-f833110e7ab3",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "05b2a960-676c-4471-8e30-288542f3b106",
              "parent_uuid": "25af65ae-b8a2-4eac-8180-f833110e7ab3",
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
              "uuid": "d27381d8-9e55-4061-acb6-7a610463000c",
              "parent_uuid": "25af65ae-b8a2-4eac-8180-f833110e7ab3",
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
              "uuid": "e8d3c646-40c5-4c9c-b307-d33691ee3276",
              "parent_uuid": "25af65ae-b8a2-4eac-8180-f833110e7ab3",
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
              "uuid": "a1bf02a7-2976-42bb-b7fb-0c735ef707d3",
              "parent_uuid": "25af65ae-b8a2-4eac-8180-f833110e7ab3",
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
          "uuid": "2ba92b75-5995-4f7e-9470-419acecd6fb1",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "0e73ef7e-ad49-47aa-9cfb-eaf9371adbb9",
              "parent_uuid": "2ba92b75-5995-4f7e-9470-419acecd6fb1",
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
              "uuid": "95cf93aa-5dfc-4237-8407-06c1421266de",
              "parent_uuid": "2ba92b75-5995-4f7e-9470-419acecd6fb1",
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
              "uuid": "f5a94292-8c08-4ca2-9df3-f900804da195",
              "parent_uuid": "2ba92b75-5995-4f7e-9470-419acecd6fb1",
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
              "uuid": "e1969962-41f3-4b12-a4c9-3451ba981d01",
              "parent_uuid": "2ba92b75-5995-4f7e-9470-419acecd6fb1",
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
          "uuid": "a7ef53b4-3fa0-47ff-9ca5-4a5d2ef29ec5",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ec0c571-7263-4578-871e-3204e985dcfb",
              "parent_uuid": "a7ef53b4-3fa0-47ff-9ca5-4a5d2ef29ec5",
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
              "uuid": "14449eb1-790f-4e77-9f8b-a8ea289f983c",
              "parent_uuid": "a7ef53b4-3fa0-47ff-9ca5-4a5d2ef29ec5",
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
              "uuid": "a420881f-235f-477d-8623-c6b0b9489d5f",
              "parent_uuid": "a7ef53b4-3fa0-47ff-9ca5-4a5d2ef29ec5",
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
              "uuid": "b540038f-33e1-4e96-8c2a-229e1aaa3cf1",
              "parent_uuid": "a7ef53b4-3fa0-47ff-9ca5-4a5d2ef29ec5",
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
              "uuid": "55227ff9-1809-4d76-88bd-dee786c4f492",
              "parent_uuid": "a7ef53b4-3fa0-47ff-9ca5-4a5d2ef29ec5",
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
              "uuid": "ad4d3cfd-35ff-496c-b41e-7de1c6a312e1",
              "parent_uuid": "a7ef53b4-3fa0-47ff-9ca5-4a5d2ef29ec5",
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
          "uuid": "21168e91-24a7-4995-ad76-9e4c8619d739",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "da1b2336-7fc2-47e8-9986-d4f452f31368",
              "parent_uuid": "21168e91-24a7-4995-ad76-9e4c8619d739",
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
          "uuid": "7ed0856a-9214-45d1-8289-453355dd3e15",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3ca0d7b-b21f-4a76-a759-06c2b16f3189",
              "parent_uuid": "7ed0856a-9214-45d1-8289-453355dd3e15",
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
              "uuid": "7144f02f-ac49-4f84-94b8-af512ee3db6c",
              "parent_uuid": "7ed0856a-9214-45d1-8289-453355dd3e15",
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
              "uuid": "a88fdc39-7575-4cb0-8725-3e0d62d9f549",
              "parent_uuid": "7ed0856a-9214-45d1-8289-453355dd3e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed798d6d-fc15-4b73-b89c-f68163b840d7",
                  "parent_uuid": "a88fdc39-7575-4cb0-8725-3e0d62d9f549",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "092f7adc-b01e-4be8-9188-2390d11ae8f1",
              "parent_uuid": "7ed0856a-9214-45d1-8289-453355dd3e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3702be4b-32d1-45b1-b2e0-dffe2c46d19a",
                  "parent_uuid": "092f7adc-b01e-4be8-9188-2390d11ae8f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd223f48-bdd7-403d-b2b8-dd0c5402bbcf",
              "parent_uuid": "7ed0856a-9214-45d1-8289-453355dd3e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a8d1c93-bcaf-469c-9630-5b0d85a4b241",
                  "parent_uuid": "cd223f48-bdd7-403d-b2b8-dd0c5402bbcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb7ecdcc-212a-4bb0-8b34-af74becee2a2",
              "parent_uuid": "7ed0856a-9214-45d1-8289-453355dd3e15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "976900ab-c1f4-4dde-855e-f1ca38dd04a3",
                  "parent_uuid": "fb7ecdcc-212a-4bb0-8b34-af74becee2a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0d1dcf5d-d17d-466d-9fa6-8e378830cab3",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2edc0991-ced5-4b12-8c88-e553172b42f5",
              "parent_uuid": "0d1dcf5d-d17d-466d-9fa6-8e378830cab3",
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
              "uuid": "e4cb34dd-f3f4-4316-82f7-998875df8d33",
              "parent_uuid": "0d1dcf5d-d17d-466d-9fa6-8e378830cab3",
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
              "uuid": "54ca0fd1-2d07-45c3-bee3-215654a6e464",
              "parent_uuid": "0d1dcf5d-d17d-466d-9fa6-8e378830cab3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5edd684-83a9-4cbc-9b98-1b41d09fe0a3",
                  "parent_uuid": "54ca0fd1-2d07-45c3-bee3-215654a6e464",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67028b98-053e-41b6-913a-978b9fe970b0",
              "parent_uuid": "0d1dcf5d-d17d-466d-9fa6-8e378830cab3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32b4f2d6-07a7-4752-8913-1144cd491f5c",
                  "parent_uuid": "67028b98-053e-41b6-913a-978b9fe970b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e404eae7-e66e-4920-8ab3-1500ee526d37",
              "parent_uuid": "0d1dcf5d-d17d-466d-9fa6-8e378830cab3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c6b32a9-66a4-4ecc-8d6d-83f163b6d7a5",
                  "parent_uuid": "e404eae7-e66e-4920-8ab3-1500ee526d37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78fdb3e2-c5f9-4b29-b57e-0fb52cbd93d0",
              "parent_uuid": "0d1dcf5d-d17d-466d-9fa6-8e378830cab3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "762509d8-4e2c-43fe-8cdb-7d39c77cb65e",
                  "parent_uuid": "78fdb3e2-c5f9-4b29-b57e-0fb52cbd93d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b700903c-26f1-44ca-a9d4-f1b286455edd",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e5f5102-b390-426f-89e3-3e2ed4eeba80",
              "parent_uuid": "b700903c-26f1-44ca-a9d4-f1b286455edd",
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
              "uuid": "e4ed70c6-2d2c-4cec-aae0-21d6816112e2",
              "parent_uuid": "b700903c-26f1-44ca-a9d4-f1b286455edd",
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
              "uuid": "a10c809f-1380-4528-a0f7-f51f2629d5f2",
              "parent_uuid": "b700903c-26f1-44ca-a9d4-f1b286455edd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7271b9a5-3eb8-4f11-ba10-5e5336a17686",
                  "parent_uuid": "a10c809f-1380-4528-a0f7-f51f2629d5f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f131bd25-e7ab-4f3d-80f0-e740fafc43b0",
              "parent_uuid": "b700903c-26f1-44ca-a9d4-f1b286455edd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8de75bec-5306-4646-8a86-905ba41a5129",
                  "parent_uuid": "f131bd25-e7ab-4f3d-80f0-e740fafc43b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8024dc46-8b55-47d3-8da1-dce1babebfd3",
              "parent_uuid": "b700903c-26f1-44ca-a9d4-f1b286455edd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4dec3bb1-186e-490b-bc0b-814c076e8295",
                  "parent_uuid": "8024dc46-8b55-47d3-8da1-dce1babebfd3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c585b6f4-8b5f-4d3c-b57d-45bcd84a5189",
              "parent_uuid": "b700903c-26f1-44ca-a9d4-f1b286455edd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34640986-6233-4c77-bb10-e734f780e5f6",
                  "parent_uuid": "c585b6f4-8b5f-4d3c-b57d-45bcd84a5189",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1c165785-1eb9-4d52-a8b8-d10d3271e407",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec602793-f081-4c6d-921e-4ca75a752f25",
              "parent_uuid": "1c165785-1eb9-4d52-a8b8-d10d3271e407",
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
              "uuid": "bf5580ff-74d4-4378-962d-fc6357efdeca",
              "parent_uuid": "1c165785-1eb9-4d52-a8b8-d10d3271e407",
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
              "uuid": "038291c6-1c7c-4057-b193-6f5c9122cf16",
              "parent_uuid": "1c165785-1eb9-4d52-a8b8-d10d3271e407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea9784c2-24a9-41ad-ae81-097d1e221068",
                  "parent_uuid": "038291c6-1c7c-4057-b193-6f5c9122cf16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edc49883-4f0e-4970-aafa-e1742ecd7d5f",
              "parent_uuid": "1c165785-1eb9-4d52-a8b8-d10d3271e407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78af5ce2-c0c5-471f-8016-74aabdd6a553",
                  "parent_uuid": "edc49883-4f0e-4970-aafa-e1742ecd7d5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d65d9b55-de38-42b5-a571-50290805c276",
              "parent_uuid": "1c165785-1eb9-4d52-a8b8-d10d3271e407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfd37c2e-e060-4416-bda2-ccf60f313cb1",
                  "parent_uuid": "d65d9b55-de38-42b5-a571-50290805c276",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b8769e9-24ff-4d48-ae2b-af07eead9e2f",
              "parent_uuid": "1c165785-1eb9-4d52-a8b8-d10d3271e407",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4926aaa-2d48-4750-814f-2f50501082e0",
                  "parent_uuid": "7b8769e9-24ff-4d48-ae2b-af07eead9e2f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14c826bc-fb82-47ea-bb2a-56000e15f0f0",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e45cce85-b7bf-4227-af72-6f5db0769adb",
              "parent_uuid": "14c826bc-fb82-47ea-bb2a-56000e15f0f0",
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
              "uuid": "71b88ea4-3597-4fdf-9c5a-7e73c4fd22b1",
              "parent_uuid": "14c826bc-fb82-47ea-bb2a-56000e15f0f0",
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
              "uuid": "8d086c3a-c0cb-48e5-8e4f-dec55ed614af",
              "parent_uuid": "14c826bc-fb82-47ea-bb2a-56000e15f0f0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "11e584f1-1501-43e7-ac44-b1f20c69edab",
                  "parent_uuid": "8d086c3a-c0cb-48e5-8e4f-dec55ed614af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "def5933a-155c-4825-aa3d-41765028d1d6",
              "parent_uuid": "14c826bc-fb82-47ea-bb2a-56000e15f0f0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "a949f0a2-fc23-4fb9-9eac-007b755c64d8",
                  "parent_uuid": "def5933a-155c-4825-aa3d-41765028d1d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "415c0b6b-1ff0-417a-b3b7-f3e770fdcd85",
              "parent_uuid": "14c826bc-fb82-47ea-bb2a-56000e15f0f0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "fb45cb37-b983-4939-a53c-5121e81c5812",
                  "parent_uuid": "415c0b6b-1ff0-417a-b3b7-f3e770fdcd85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d398095f-784e-4d26-8b02-8149a31e21f0",
              "parent_uuid": "14c826bc-fb82-47ea-bb2a-56000e15f0f0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "0f52f37d-a5ad-44cb-94b3-26942b025522",
                  "parent_uuid": "d398095f-784e-4d26-8b02-8149a31e21f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "36c30370-d3c9-4afd-b834-56b57005c3bf",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dafaa1c4-8d5e-4059-878e-0143f981ffad",
              "parent_uuid": "36c30370-d3c9-4afd-b834-56b57005c3bf",
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
              "uuid": "3d391c7f-6520-4dcb-b922-3754d09a11c9",
              "parent_uuid": "36c30370-d3c9-4afd-b834-56b57005c3bf",
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
              "uuid": "f5199909-19db-4e58-b135-45ebdc92bdb7",
              "parent_uuid": "36c30370-d3c9-4afd-b834-56b57005c3bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "052f0a8b-6a90-4272-a7ff-97fa19916bfa",
                  "parent_uuid": "f5199909-19db-4e58-b135-45ebdc92bdb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d543ce6-5fad-443d-ade8-b19f184f0395",
              "parent_uuid": "36c30370-d3c9-4afd-b834-56b57005c3bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49279db0-e238-4a21-ac1b-e46b9d6a4c04",
                  "parent_uuid": "8d543ce6-5fad-443d-ade8-b19f184f0395",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3d7ec8b-a997-4acc-8529-e650108db221",
              "parent_uuid": "36c30370-d3c9-4afd-b834-56b57005c3bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5eee1b24-a61c-4214-9b0a-8b25d0edb231",
                  "parent_uuid": "b3d7ec8b-a997-4acc-8529-e650108db221",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93399ac3-fefd-483a-8d54-0fd3ba1f53b2",
              "parent_uuid": "36c30370-d3c9-4afd-b834-56b57005c3bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a20031e1-ce61-4100-bd23-56d8a5292afc",
                  "parent_uuid": "93399ac3-fefd-483a-8d54-0fd3ba1f53b2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "81b3340f-598f-45c6-810f-49a628232ca4",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38702f33-8330-4d9d-8911-bc98d5cd1cf5",
              "parent_uuid": "81b3340f-598f-45c6-810f-49a628232ca4",
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
              "uuid": "979c78e6-9c70-4420-a5ed-7ce7e492b8c3",
              "parent_uuid": "81b3340f-598f-45c6-810f-49a628232ca4",
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
              "uuid": "b230503a-df15-436e-bfa9-4f16a12a01fc",
              "parent_uuid": "81b3340f-598f-45c6-810f-49a628232ca4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d23482d-007a-4ba7-8c22-e4573c512707",
                  "parent_uuid": "b230503a-df15-436e-bfa9-4f16a12a01fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82bafcea-e0be-4656-92e7-bb6b0aacc3d0",
              "parent_uuid": "81b3340f-598f-45c6-810f-49a628232ca4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b2afdc2-64a3-4c41-b696-c1ad21f2d3c4",
                  "parent_uuid": "82bafcea-e0be-4656-92e7-bb6b0aacc3d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59d72fd4-8432-4ef3-be8f-fdd7d1c97260",
              "parent_uuid": "81b3340f-598f-45c6-810f-49a628232ca4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d7e58d9-7299-49f0-9924-662f52087890",
                  "parent_uuid": "59d72fd4-8432-4ef3-be8f-fdd7d1c97260",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ce24af8-022f-431c-9357-cfaecdef57cc",
              "parent_uuid": "81b3340f-598f-45c6-810f-49a628232ca4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96e68d63-95da-4f30-9b5f-a09fa580651e",
                  "parent_uuid": "3ce24af8-022f-431c-9357-cfaecdef57cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0507abe-aec3-480e-a763-0cd53d1ef01a",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f5195c5a-fd11-4a29-b109-c67b080f0b39",
              "parent_uuid": "e0507abe-aec3-480e-a763-0cd53d1ef01a",
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
              "uuid": "51d1fb29-85e0-4059-b23e-3319b35e5eac",
              "parent_uuid": "e0507abe-aec3-480e-a763-0cd53d1ef01a",
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
              "uuid": "63c5d4c4-48ec-4757-8bf0-f00835ea5b5d",
              "parent_uuid": "e0507abe-aec3-480e-a763-0cd53d1ef01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18012f1a-2da3-4c91-af86-b527ef8d27eb",
                  "parent_uuid": "63c5d4c4-48ec-4757-8bf0-f00835ea5b5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a981b9d9-ee75-4d91-a8cc-ceb515f5cc1d",
              "parent_uuid": "e0507abe-aec3-480e-a763-0cd53d1ef01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b978173f-4394-4e8e-9567-c8ea0718240e",
                  "parent_uuid": "a981b9d9-ee75-4d91-a8cc-ceb515f5cc1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85a2c5db-4eaf-4627-9f4b-bb02de626bd1",
              "parent_uuid": "e0507abe-aec3-480e-a763-0cd53d1ef01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e8fc43f-586d-45d1-b7b4-ab089b2d386d",
                  "parent_uuid": "85a2c5db-4eaf-4627-9f4b-bb02de626bd1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88755c80-7cd3-41ff-a5ce-16bfc883c298",
              "parent_uuid": "e0507abe-aec3-480e-a763-0cd53d1ef01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16b3c3e6-8324-438a-a1ab-593fc1c3b479",
                  "parent_uuid": "88755c80-7cd3-41ff-a5ce-16bfc883c298",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fa4194e1-41a7-4bd1-883b-098eaa460831",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c13730a-9eb3-406e-b820-2b111fb49e97",
              "parent_uuid": "fa4194e1-41a7-4bd1-883b-098eaa460831",
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
              "uuid": "9a3a2cbc-a65f-4a0e-a0f0-d2be088195bd",
              "parent_uuid": "fa4194e1-41a7-4bd1-883b-098eaa460831",
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
              "uuid": "cede9430-2dbc-4d7a-8ed0-79c7779b8b5c",
              "parent_uuid": "fa4194e1-41a7-4bd1-883b-098eaa460831",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "381c93fd-5eb5-4fca-89a1-aa7fade18a3e",
                  "parent_uuid": "cede9430-2dbc-4d7a-8ed0-79c7779b8b5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea27ecae-cb0d-4d86-b89b-3e087050493c",
              "parent_uuid": "fa4194e1-41a7-4bd1-883b-098eaa460831",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbcdbbf4-1a75-4468-af9b-ff57658c6313",
                  "parent_uuid": "ea27ecae-cb0d-4d86-b89b-3e087050493c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbc3b795-de99-4070-8c6c-8e1965a2f474",
              "parent_uuid": "fa4194e1-41a7-4bd1-883b-098eaa460831",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd3b49ac-e2e0-45e4-89f8-6155bd361bc6",
                  "parent_uuid": "bbc3b795-de99-4070-8c6c-8e1965a2f474",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81b7d4d0-3132-45fa-8fe6-7b67dfdabe7e",
              "parent_uuid": "fa4194e1-41a7-4bd1-883b-098eaa460831",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99b30d89-257e-40bd-a857-c2ab39df6ea0",
                  "parent_uuid": "81b7d4d0-3132-45fa-8fe6-7b67dfdabe7e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "374b36d0-8f2f-410e-af61-28083a4336d2",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba566cdf-b13d-4592-aea9-df38e6929bb3",
              "parent_uuid": "374b36d0-8f2f-410e-af61-28083a4336d2",
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
              "uuid": "e70fd36e-4137-4a25-a2c2-a100a218c8cd",
              "parent_uuid": "374b36d0-8f2f-410e-af61-28083a4336d2",
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
              "uuid": "a60489f7-0830-4dad-9487-c93b4d08f40c",
              "parent_uuid": "374b36d0-8f2f-410e-af61-28083a4336d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70f10891-7241-416c-9d8a-5a33db9e8add",
                  "parent_uuid": "a60489f7-0830-4dad-9487-c93b4d08f40c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4a2c09f-88e6-4a17-89ef-152b0676ee94",
              "parent_uuid": "374b36d0-8f2f-410e-af61-28083a4336d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0600dfa-3ffb-45d5-8dc5-6fd4b30640aa",
                  "parent_uuid": "d4a2c09f-88e6-4a17-89ef-152b0676ee94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd771851-0f3a-4b5f-b607-9123988595ac",
              "parent_uuid": "374b36d0-8f2f-410e-af61-28083a4336d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6571ad0-c375-43a9-822c-b7db6c60f023",
                  "parent_uuid": "dd771851-0f3a-4b5f-b607-9123988595ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e35de2ae-bfab-470d-add3-ac3cbe59796f",
              "parent_uuid": "374b36d0-8f2f-410e-af61-28083a4336d2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2b6fb81-7b78-4ed9-82d0-6196e225bd74",
                  "parent_uuid": "e35de2ae-bfab-470d-add3-ac3cbe59796f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a03173f-db0a-41a0-889e-7d705cfc39d1",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7975725-1f87-4c20-b1e2-3c62e1bb2a10",
              "parent_uuid": "2a03173f-db0a-41a0-889e-7d705cfc39d1",
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
              "uuid": "8cbad933-4f84-4c22-b589-6effb17e28b1",
              "parent_uuid": "2a03173f-db0a-41a0-889e-7d705cfc39d1",
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
              "uuid": "8ac840c2-620b-45c5-bfc0-c9cd5924704b",
              "parent_uuid": "2a03173f-db0a-41a0-889e-7d705cfc39d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97fca945-9b3d-4875-ad96-b23e5925dad1",
                  "parent_uuid": "8ac840c2-620b-45c5-bfc0-c9cd5924704b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d77078c0-4b8c-433d-9795-4707e0ea7f2c",
              "parent_uuid": "2a03173f-db0a-41a0-889e-7d705cfc39d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22531975-fa73-48c6-905c-98d2632eecaa",
                  "parent_uuid": "d77078c0-4b8c-433d-9795-4707e0ea7f2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09f879ea-dba8-4ea6-b2e0-05e82ca1a5b3",
              "parent_uuid": "2a03173f-db0a-41a0-889e-7d705cfc39d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3237da5-3944-43c6-9fa2-dcf12f5bdb98",
                  "parent_uuid": "09f879ea-dba8-4ea6-b2e0-05e82ca1a5b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "032167b5-74bd-4774-bc7b-4087b74ffef9",
              "parent_uuid": "2a03173f-db0a-41a0-889e-7d705cfc39d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c84a2525-8df6-4fe5-9ff1-74cdfacabdb9",
                  "parent_uuid": "032167b5-74bd-4774-bc7b-4087b74ffef9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bdbe6068-dfe3-4ccd-ad47-fb1b043f4e80",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8fdc30a4-4df6-48f1-8838-05e1c5cacf17",
              "parent_uuid": "bdbe6068-dfe3-4ccd-ad47-fb1b043f4e80",
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
              "uuid": "f0b91949-9c93-40bb-b99b-f5e23eab9237",
              "parent_uuid": "bdbe6068-dfe3-4ccd-ad47-fb1b043f4e80",
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
              "uuid": "b5960bc6-6782-4c6d-bfc9-4341d4fbd524",
              "parent_uuid": "bdbe6068-dfe3-4ccd-ad47-fb1b043f4e80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b45e5a4d-c33d-4ac3-8709-288a675877d1",
                  "parent_uuid": "b5960bc6-6782-4c6d-bfc9-4341d4fbd524",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10956db0-5f58-44af-b9e8-6e7e5817a2de",
              "parent_uuid": "bdbe6068-dfe3-4ccd-ad47-fb1b043f4e80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "162440d5-884d-4489-a8fd-a70a583a54ce",
                  "parent_uuid": "10956db0-5f58-44af-b9e8-6e7e5817a2de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "201ebd91-26e4-4f29-8191-d5358e375dd8",
              "parent_uuid": "bdbe6068-dfe3-4ccd-ad47-fb1b043f4e80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "803e6ecc-1dec-4016-bbcb-e04a4e13d125",
                  "parent_uuid": "201ebd91-26e4-4f29-8191-d5358e375dd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d744ba8-045c-442a-89dd-17c6bf8ec09b",
              "parent_uuid": "bdbe6068-dfe3-4ccd-ad47-fb1b043f4e80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "078f748e-a724-4741-9a2d-532269d484f8",
                  "parent_uuid": "3d744ba8-045c-442a-89dd-17c6bf8ec09b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "11ed8bb3-fac4-46a9-bfd0-e613efa92a80",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e165ec9-5948-4430-8382-9415aaa9f5ba",
              "parent_uuid": "11ed8bb3-fac4-46a9-bfd0-e613efa92a80",
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
              "uuid": "e6c0be40-cd69-4f14-8d59-8edc33dd55ac",
              "parent_uuid": "11ed8bb3-fac4-46a9-bfd0-e613efa92a80",
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
              "uuid": "ca5187bb-8090-4898-a970-c8e56b697053",
              "parent_uuid": "11ed8bb3-fac4-46a9-bfd0-e613efa92a80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51bae346-3d87-40f5-a433-4b9bcbd78786",
                  "parent_uuid": "ca5187bb-8090-4898-a970-c8e56b697053",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb314248-5411-4cf9-a4e8-e848c04c3935",
              "parent_uuid": "11ed8bb3-fac4-46a9-bfd0-e613efa92a80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3f9c885-630f-4de7-b7a9-e2f846650f70",
                  "parent_uuid": "cb314248-5411-4cf9-a4e8-e848c04c3935",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bc53cf6-2474-4a02-9def-7a6f138eb884",
              "parent_uuid": "11ed8bb3-fac4-46a9-bfd0-e613efa92a80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c40096a3-ff92-4e91-8056-b75570dbdbc5",
                  "parent_uuid": "9bc53cf6-2474-4a02-9def-7a6f138eb884",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9c3ea95-f887-4104-ac4f-b517f2e532c7",
              "parent_uuid": "11ed8bb3-fac4-46a9-bfd0-e613efa92a80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e17b04b-a778-4a51-8937-f04a9502d189",
                  "parent_uuid": "f9c3ea95-f887-4104-ac4f-b517f2e532c7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a2f271ca-7544-4d2b-817e-2bba93d97380",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b45243df-2a92-4ad3-9884-b04bdbebe033",
              "parent_uuid": "a2f271ca-7544-4d2b-817e-2bba93d97380",
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
              "uuid": "0c1c9fa7-fefb-450e-b976-08a6998512d8",
              "parent_uuid": "a2f271ca-7544-4d2b-817e-2bba93d97380",
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
              "uuid": "bedaf410-f8ff-4460-b768-a40258f43d3d",
              "parent_uuid": "a2f271ca-7544-4d2b-817e-2bba93d97380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08b448e2-5687-4659-bb43-17f04649057a",
                  "parent_uuid": "bedaf410-f8ff-4460-b768-a40258f43d3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2683581-4c1d-4ade-9eba-6baa6c7e7524",
              "parent_uuid": "a2f271ca-7544-4d2b-817e-2bba93d97380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04e19751-2291-4dac-be6a-070c05353277",
                  "parent_uuid": "a2683581-4c1d-4ade-9eba-6baa6c7e7524",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d09e7db4-3d1a-4011-9481-05156d8ec079",
              "parent_uuid": "a2f271ca-7544-4d2b-817e-2bba93d97380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e5b8472-a411-4292-a744-0bdcf7fd55de",
                  "parent_uuid": "d09e7db4-3d1a-4011-9481-05156d8ec079",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f582028-be86-4fea-9ddc-21005b3b031c",
              "parent_uuid": "a2f271ca-7544-4d2b-817e-2bba93d97380",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7510f97c-dd66-4338-a13b-f4e8a96364a6",
                  "parent_uuid": "6f582028-be86-4fea-9ddc-21005b3b031c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7d7f65d-b52a-42c7-b525-194d645fb0c3",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "69c2988f-44ff-407e-88bc-0a28528fb25a",
              "parent_uuid": "a7d7f65d-b52a-42c7-b525-194d645fb0c3",
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
          "uuid": "dca6d8a3-f36c-47e6-a46f-bd4f7d1cfe5e",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "293ac4da-2934-4504-86cb-b87da9d285b3",
              "parent_uuid": "dca6d8a3-f36c-47e6-a46f-bd4f7d1cfe5e",
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
          "uuid": "513706a1-ab87-4eeb-9eef-a55c0fc8b0b7",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e31f76b8-3150-4bc9-a0b6-3708a412986a",
              "parent_uuid": "513706a1-ab87-4eeb-9eef-a55c0fc8b0b7",
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
                  "uuid": "95bd1211-c6be-418b-9ab0-4216f4172029",
                  "parent_uuid": "e31f76b8-3150-4bc9-a0b6-3708a412986a",
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
          "uuid": "f429f441-23d9-4ca7-b242-abb5eb95b30d",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42dce807-2bbc-4250-ab8a-61b304a00b0d",
              "parent_uuid": "f429f441-23d9-4ca7-b242-abb5eb95b30d",
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
          "uuid": "e896d0bb-cd97-495b-922d-ad9c6824e018",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ce048747-3a1e-4f89-abf5-cdb5d0b9fa4f",
              "parent_uuid": "e896d0bb-cd97-495b-922d-ad9c6824e018",
              "tagName": "td",
              "properties": [
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
          "uuid": "cfe2a29b-18b2-4a19-a007-dc11380be339",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e7d5875-5f01-4468-a7c6-cd8d5da9a26e",
              "parent_uuid": "cfe2a29b-18b2-4a19-a007-dc11380be339",
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
              "uuid": "b40913ad-7950-4c97-b06d-5cf8cb956a00",
              "parent_uuid": "cfe2a29b-18b2-4a19-a007-dc11380be339",
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
              "uuid": "5ea71c3b-a9f2-40db-bef6-4ad0b4322b10",
              "parent_uuid": "cfe2a29b-18b2-4a19-a007-dc11380be339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cfccb3f-437c-4f01-adbb-309cbbeb6f7b",
                  "parent_uuid": "5ea71c3b-a9f2-40db-bef6-4ad0b4322b10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "119e1dd0-9ce8-410c-82c9-89ee9949c68a",
              "parent_uuid": "cfe2a29b-18b2-4a19-a007-dc11380be339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb437320-a888-4713-81d7-4bb74e4076db",
                  "parent_uuid": "119e1dd0-9ce8-410c-82c9-89ee9949c68a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62d7065d-da98-4618-b798-720de7e693a8",
              "parent_uuid": "cfe2a29b-18b2-4a19-a007-dc11380be339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1fb2b24b-492f-41a3-98e2-2122488c5f22",
                  "parent_uuid": "62d7065d-da98-4618-b798-720de7e693a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9313db58-8ced-48a0-b2af-b4f0994f8822",
              "parent_uuid": "cfe2a29b-18b2-4a19-a007-dc11380be339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1afa004c-b885-40f0-a3f2-6d266f24377c",
                  "parent_uuid": "9313db58-8ced-48a0-b2af-b4f0994f8822",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fc99da1c-5a31-4949-976c-cf705c8b2d8e",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d5a9ee9-53e5-4bdc-b736-81f545f8817a",
              "parent_uuid": "fc99da1c-5a31-4949-976c-cf705c8b2d8e",
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
              "uuid": "f0b07d27-7068-4cf3-82b0-e63dfb7e3d80",
              "parent_uuid": "fc99da1c-5a31-4949-976c-cf705c8b2d8e",
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
              "uuid": "e1c38f92-97ec-4747-9ef9-f403aa324d52",
              "parent_uuid": "fc99da1c-5a31-4949-976c-cf705c8b2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6cf8b99-1379-4cf2-a6a4-06e2ff6f36dc",
                  "parent_uuid": "e1c38f92-97ec-4747-9ef9-f403aa324d52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "782960bd-2b7e-4935-81c9-385d49a19517",
              "parent_uuid": "fc99da1c-5a31-4949-976c-cf705c8b2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d0ad81c-1576-46e8-af06-421a5476a375",
                  "parent_uuid": "782960bd-2b7e-4935-81c9-385d49a19517",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "208793d8-6044-4e79-af58-8d5d37c74de8",
              "parent_uuid": "fc99da1c-5a31-4949-976c-cf705c8b2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcc3ec89-3917-4bc6-9249-5f0e49132691",
                  "parent_uuid": "208793d8-6044-4e79-af58-8d5d37c74de8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a50992cf-0574-443a-a1bc-b606cadc7472",
              "parent_uuid": "fc99da1c-5a31-4949-976c-cf705c8b2d8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9d43e1b-2ae8-4974-a855-07b34c32d526",
                  "parent_uuid": "a50992cf-0574-443a-a1bc-b606cadc7472",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af631aa6-8774-49d5-8faf-6cc4a560f5a4",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82ad3cb7-d2df-4108-b7c8-75a53760f740",
              "parent_uuid": "af631aa6-8774-49d5-8faf-6cc4a560f5a4",
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
              "uuid": "2656814c-f31c-4bef-b6d5-adcc6cf83d66",
              "parent_uuid": "af631aa6-8774-49d5-8faf-6cc4a560f5a4",
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
              "uuid": "59a33c9a-de0e-478d-a82d-067ba3ce2080",
              "parent_uuid": "af631aa6-8774-49d5-8faf-6cc4a560f5a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01457b37-24b3-46b8-804e-75a9adb69e0f",
                  "parent_uuid": "59a33c9a-de0e-478d-a82d-067ba3ce2080",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cac830e9-9659-48f0-8bc9-963f1b8d02be",
              "parent_uuid": "af631aa6-8774-49d5-8faf-6cc4a560f5a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ce7b866-bf89-44e5-aafb-ef47b1690d5e",
                  "parent_uuid": "cac830e9-9659-48f0-8bc9-963f1b8d02be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa04ca06-f073-4ffe-a065-ce1a208b1f19",
              "parent_uuid": "af631aa6-8774-49d5-8faf-6cc4a560f5a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91c4d853-8125-4bda-acc1-64242c8e8a34",
                  "parent_uuid": "fa04ca06-f073-4ffe-a065-ce1a208b1f19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ded9fed0-a100-4982-a0c1-17ccb151807b",
              "parent_uuid": "af631aa6-8774-49d5-8faf-6cc4a560f5a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb6609bd-64d9-4aaa-8df0-3f24d197ba9f",
                  "parent_uuid": "ded9fed0-a100-4982-a0c1-17ccb151807b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "839487a0-f7c1-4540-b25e-1268448afce2",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "039321ef-9cd7-4309-a4e8-306226d4344e",
              "parent_uuid": "839487a0-f7c1-4540-b25e-1268448afce2",
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
              "uuid": "d2e9de14-b9ec-4a92-97d1-36454f371b41",
              "parent_uuid": "839487a0-f7c1-4540-b25e-1268448afce2",
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
              "uuid": "7e9c4495-7588-456f-a4e4-2baf1d7b24f4",
              "parent_uuid": "839487a0-f7c1-4540-b25e-1268448afce2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17ea7de4-21c9-4c02-886f-4a1e30e6c235",
                  "parent_uuid": "7e9c4495-7588-456f-a4e4-2baf1d7b24f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05aecd13-1d75-42b9-8a23-15d275d3ba43",
              "parent_uuid": "839487a0-f7c1-4540-b25e-1268448afce2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a11cc5b2-4f71-4a0b-be1e-de738fbc6617",
                  "parent_uuid": "05aecd13-1d75-42b9-8a23-15d275d3ba43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba1025cb-6d67-4828-b305-e6b0fb44671f",
              "parent_uuid": "839487a0-f7c1-4540-b25e-1268448afce2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15c12a74-226b-4c6a-a6a8-29e05463dda2",
                  "parent_uuid": "ba1025cb-6d67-4828-b305-e6b0fb44671f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f4275e2-5504-4b5f-b089-8955867bbf4e",
              "parent_uuid": "839487a0-f7c1-4540-b25e-1268448afce2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbf63f61-71de-43ae-ad41-f3da52009944",
                  "parent_uuid": "6f4275e2-5504-4b5f-b089-8955867bbf4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "898d8dfb-ed92-4a4f-b720-d0de684fe643",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "75cd5465-5ea7-4af8-97c7-4d897da740fd",
              "parent_uuid": "898d8dfb-ed92-4a4f-b720-d0de684fe643",
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
          "uuid": "3f0e085b-6be2-4196-98c5-6c2c9ce68822",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae5f4e6b-7007-49b1-b650-3cd9d385b0c0",
              "parent_uuid": "3f0e085b-6be2-4196-98c5-6c2c9ce68822",
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
              "uuid": "88ddcb1d-5820-43a6-b7a5-d2a94ea78cd8",
              "parent_uuid": "3f0e085b-6be2-4196-98c5-6c2c9ce68822",
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
              "uuid": "afb2d7af-ab64-455a-8240-60f35a6df2a6",
              "parent_uuid": "3f0e085b-6be2-4196-98c5-6c2c9ce68822",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b695973-58f0-4669-875e-95c43e19ba5c",
                  "parent_uuid": "afb2d7af-ab64-455a-8240-60f35a6df2a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d940a0b8-6b7e-46d8-8a72-adf42dcafd54",
              "parent_uuid": "3f0e085b-6be2-4196-98c5-6c2c9ce68822",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29c30dca-5678-465f-867e-2d198f047808",
                  "parent_uuid": "d940a0b8-6b7e-46d8-8a72-adf42dcafd54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "476b446a-bbc7-4d06-8654-979b9b021d48",
              "parent_uuid": "3f0e085b-6be2-4196-98c5-6c2c9ce68822",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "620eaadb-e675-40f0-bdb1-bcab03a1c862",
                  "parent_uuid": "476b446a-bbc7-4d06-8654-979b9b021d48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbf5b8d5-e8fe-46cb-8ea7-7d685e0d7ccc",
              "parent_uuid": "3f0e085b-6be2-4196-98c5-6c2c9ce68822",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5e159dd-38ac-4a61-84bc-8e00753232ae",
                  "parent_uuid": "dbf5b8d5-e8fe-46cb-8ea7-7d685e0d7ccc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd244d39-ee48-4ae2-8dff-aa20e3589b98",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3e659b4-f95e-444d-baa1-5283e381a8bb",
              "parent_uuid": "fd244d39-ee48-4ae2-8dff-aa20e3589b98",
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
              "uuid": "ff9aaa82-37cb-45d8-a7ad-4b97e05b0d73",
              "parent_uuid": "fd244d39-ee48-4ae2-8dff-aa20e3589b98",
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
              "uuid": "5ee06b75-7b01-4ed1-8aa9-a94a3bfce52e",
              "parent_uuid": "fd244d39-ee48-4ae2-8dff-aa20e3589b98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94e623e5-d111-45f2-8ba9-dd3e69a5859d",
                  "parent_uuid": "5ee06b75-7b01-4ed1-8aa9-a94a3bfce52e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7c7b647-28e3-427b-a6ee-7060ea623a1c",
              "parent_uuid": "fd244d39-ee48-4ae2-8dff-aa20e3589b98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6086a6c1-4c49-41d7-8d40-c2d10b93c1fe",
                  "parent_uuid": "d7c7b647-28e3-427b-a6ee-7060ea623a1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e4b80a1-c75e-4bf8-9d2a-f854ddf1739a",
              "parent_uuid": "fd244d39-ee48-4ae2-8dff-aa20e3589b98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ca34382-9ce0-4d5d-aa88-03bf78bb7a31",
                  "parent_uuid": "5e4b80a1-c75e-4bf8-9d2a-f854ddf1739a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c6293cc-0b8b-4216-a27c-2e6be1960555",
              "parent_uuid": "fd244d39-ee48-4ae2-8dff-aa20e3589b98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d55cc47-6f0d-4e99-bcc7-eae7c90c9ac1",
                  "parent_uuid": "7c6293cc-0b8b-4216-a27c-2e6be1960555",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3ded9640-1d1f-47d1-8418-be42361c5b64",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc77981b-5237-4d5b-97a9-e010dc00de6d",
              "parent_uuid": "3ded9640-1d1f-47d1-8418-be42361c5b64",
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
              "uuid": "2b45a910-7cc4-47a9-9b2f-7a48125dd24b",
              "parent_uuid": "3ded9640-1d1f-47d1-8418-be42361c5b64",
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
              "uuid": "593e5994-92af-43a0-b50d-41c158407c12",
              "parent_uuid": "3ded9640-1d1f-47d1-8418-be42361c5b64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86b8c3dd-7838-4fab-8772-9e1bbf9fdd82",
                  "parent_uuid": "593e5994-92af-43a0-b50d-41c158407c12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7db12665-1181-41f5-a52a-26e920e9a023",
              "parent_uuid": "3ded9640-1d1f-47d1-8418-be42361c5b64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2371af5-be00-4768-81fd-2aa93895c9c9",
                  "parent_uuid": "7db12665-1181-41f5-a52a-26e920e9a023",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01a61563-a6f1-4c60-a3d7-cb952ba5706c",
              "parent_uuid": "3ded9640-1d1f-47d1-8418-be42361c5b64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0949c13-290d-455a-adb3-c6e293ee3434",
                  "parent_uuid": "01a61563-a6f1-4c60-a3d7-cb952ba5706c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b28fd7cb-d669-4b0c-96d8-1720db97b2cc",
              "parent_uuid": "3ded9640-1d1f-47d1-8418-be42361c5b64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08521f00-9d1a-442a-9f1e-67ef9f9cd0e0",
                  "parent_uuid": "b28fd7cb-d669-4b0c-96d8-1720db97b2cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "17b56627-a516-400f-886d-49dfa1f609c8",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27ef78d8-568d-4b2a-9ef4-820ad2ddbe1d",
              "parent_uuid": "17b56627-a516-400f-886d-49dfa1f609c8",
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
              "uuid": "003f053e-daab-402b-b629-b4aaaf27bf37",
              "parent_uuid": "17b56627-a516-400f-886d-49dfa1f609c8",
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
              "uuid": "62683c6a-e607-4c21-be11-15046007435b",
              "parent_uuid": "17b56627-a516-400f-886d-49dfa1f609c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "834ef0c3-d437-41de-a565-e19b8d780efb",
                  "parent_uuid": "62683c6a-e607-4c21-be11-15046007435b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb42c003-338d-4dbb-97bf-a208c437e2a3",
              "parent_uuid": "17b56627-a516-400f-886d-49dfa1f609c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32c2a0f1-aada-4a93-b49c-c2f76c4a2410",
                  "parent_uuid": "cb42c003-338d-4dbb-97bf-a208c437e2a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f2555b9-7bbc-470b-a4a1-af2ded58c7ec",
              "parent_uuid": "17b56627-a516-400f-886d-49dfa1f609c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ce060c1-bd85-4853-bd54-6980c3e0a49a",
                  "parent_uuid": "7f2555b9-7bbc-470b-a4a1-af2ded58c7ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c7e9a30-2d58-4a8f-98a4-c5b50440cacc",
              "parent_uuid": "17b56627-a516-400f-886d-49dfa1f609c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff7af969-da80-43ff-8b39-a3eaf62151c4",
                  "parent_uuid": "9c7e9a30-2d58-4a8f-98a4-c5b50440cacc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ccdd3ff6-4cbd-4494-96fb-1d52489bd168",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed08a147-c441-45c8-9ae1-418cd55a2857",
              "parent_uuid": "ccdd3ff6-4cbd-4494-96fb-1d52489bd168",
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
          "uuid": "14daa48d-2fcc-4d63-851d-b296434a57f2",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "046ae891-5989-471e-842b-ebd341602bea",
              "parent_uuid": "14daa48d-2fcc-4d63-851d-b296434a57f2",
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
          "uuid": "fdaa672c-5cbc-4de6-aaf1-b5af3f31f243",
          "parent_uuid": "26b56039-64a6-45ca-b139-9d03dc954d20",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d35b968f-d0dd-4327-8862-2dd26146e3cf",
              "parent_uuid": "fdaa672c-5cbc-4de6-aaf1-b5af3f31f243",
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
                  "uuid": "503d9495-6e84-454b-8950-d01cd5210eee",
                  "parent_uuid": "d35b968f-d0dd-4327-8862-2dd26146e3cf",
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
    ,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS cl_uid 
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
		,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '698EA23D-485A-4CEE-9B06-2E130A3A5626'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

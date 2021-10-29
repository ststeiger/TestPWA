
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
  "uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "44b3398f-cac9-4c7b-8fe6-1559de5bb799",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "a6dcfaf5-dbc3-4669-8922-3d8fbec23465",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "4efbb125-2879-4808-a180-57a4a4e6be63",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "a71f19b8-5a69-4038-8bf9-989f63cbee57",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "e55c4615-e4c1-4751-8d04-8c398ea4de3f",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "cf8b4ac6-764f-4f32-a92b-7a7fe94a9371",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "046a4e24-2dd8-4f58-9ae8-a472172f1203",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
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
      "uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
      "parent_uuid": "cc367da3-5231-4950-8d21-aa7f96b6ff4a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1dea3550-0177-4155-9593-d88174d47f33",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "b1058516-88fa-49fa-b3c7-4ddb93c39e31",
              "parent_uuid": "1dea3550-0177-4155-9593-d88174d47f33",
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
              "uuid": "745b7859-3c70-499a-a641-32ca10a2aae5",
              "parent_uuid": "1dea3550-0177-4155-9593-d88174d47f33",
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
              "uuid": "979db104-ffa4-43fe-b450-bf2705e64f6f",
              "parent_uuid": "1dea3550-0177-4155-9593-d88174d47f33",
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
              "uuid": "2d99978d-4050-4e99-b801-2c5a47357bdf",
              "parent_uuid": "1dea3550-0177-4155-9593-d88174d47f33",
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
          "uuid": "ef24f349-c4dc-48f8-a637-1ba8b518c63b",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "1cc70c7e-5493-4f41-9305-cc88cd7b994b",
              "parent_uuid": "ef24f349-c4dc-48f8-a637-1ba8b518c63b",
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
              "uuid": "d9720aaa-6d60-4e95-a9e6-8aa2d044cabd",
              "parent_uuid": "ef24f349-c4dc-48f8-a637-1ba8b518c63b",
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
              "uuid": "de714af1-a2a8-4f38-ad92-2a1ca12c7169",
              "parent_uuid": "ef24f349-c4dc-48f8-a637-1ba8b518c63b",
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
              "uuid": "eee99836-55b1-4797-b4f8-774adfa3f7ce",
              "parent_uuid": "ef24f349-c4dc-48f8-a637-1ba8b518c63b",
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
          "uuid": "3730f5cd-4f94-4f05-9c62-66901c959255",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "647e82f5-4d4a-4966-a1d9-0b4888e0d73e",
              "parent_uuid": "3730f5cd-4f94-4f05-9c62-66901c959255",
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
              "uuid": "c84734a4-c4d0-4ffc-8db3-24d1e84143b7",
              "parent_uuid": "3730f5cd-4f94-4f05-9c62-66901c959255",
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
              "uuid": "716a7bc8-27af-4791-9a78-99453775214f",
              "parent_uuid": "3730f5cd-4f94-4f05-9c62-66901c959255",
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
              "uuid": "1146f03f-a050-4a60-9e8f-aefbb1a8f6e4",
              "parent_uuid": "3730f5cd-4f94-4f05-9c62-66901c959255",
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
              "uuid": "8e4cc449-52b2-424c-9b4c-fe6a403b0a01",
              "parent_uuid": "3730f5cd-4f94-4f05-9c62-66901c959255",
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
              "uuid": "56c4ae06-e6b9-462e-a2e9-87cae72fd494",
              "parent_uuid": "3730f5cd-4f94-4f05-9c62-66901c959255",
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
          "uuid": "35e1a854-6a56-4e68-acbd-2cd00f510a40",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f4dc079b-51aa-4719-ad29-09a6b1f96832",
              "parent_uuid": "35e1a854-6a56-4e68-acbd-2cd00f510a40",
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
          "uuid": "f4263772-4c3c-4a55-ab8a-74da44b3da05",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba088d69-0308-4836-a9af-e6a05b9a2625",
              "parent_uuid": "f4263772-4c3c-4a55-ab8a-74da44b3da05",
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
              "uuid": "dcd0246b-f9de-4164-9db4-73170d5c069e",
              "parent_uuid": "f4263772-4c3c-4a55-ab8a-74da44b3da05",
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
              "uuid": "a0a2edeb-2ca9-452d-b242-c0ab4fde6edb",
              "parent_uuid": "f4263772-4c3c-4a55-ab8a-74da44b3da05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42c2635b-f7c7-45aa-a868-92b9a632201e",
                  "parent_uuid": "a0a2edeb-2ca9-452d-b242-c0ab4fde6edb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28b9f578-de05-41b9-ba42-739b549d7508",
              "parent_uuid": "f4263772-4c3c-4a55-ab8a-74da44b3da05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "712ee2ea-857d-4616-983f-e603f784c390",
                  "parent_uuid": "28b9f578-de05-41b9-ba42-739b549d7508",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5a0846a-7214-42c2-8140-1924958ef54d",
              "parent_uuid": "f4263772-4c3c-4a55-ab8a-74da44b3da05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e4b4654-c3cb-47a4-a099-67e0011c8425",
                  "parent_uuid": "c5a0846a-7214-42c2-8140-1924958ef54d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2924d44-f540-405a-80a1-ccaf532b6fa2",
              "parent_uuid": "f4263772-4c3c-4a55-ab8a-74da44b3da05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98a75f2b-5b68-46d4-9607-d6f53d4fbdbb",
                  "parent_uuid": "e2924d44-f540-405a-80a1-ccaf532b6fa2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6c404ff-5c39-41b0-ab01-241b13ac11a0",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f283ceec-cd2b-43a1-b720-5a9ba02ce6b0",
              "parent_uuid": "d6c404ff-5c39-41b0-ab01-241b13ac11a0",
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
              "uuid": "52066c2e-a30b-46f8-a238-cd6bf5cf36c7",
              "parent_uuid": "d6c404ff-5c39-41b0-ab01-241b13ac11a0",
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
              "uuid": "98cb136d-589c-495b-a7c0-47c854544500",
              "parent_uuid": "d6c404ff-5c39-41b0-ab01-241b13ac11a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1396e6d-3ddb-4f44-9e05-407d16d709e9",
                  "parent_uuid": "98cb136d-589c-495b-a7c0-47c854544500",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b53c25f9-69ad-4b56-b4eb-5f801b8aef15",
              "parent_uuid": "d6c404ff-5c39-41b0-ab01-241b13ac11a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0b4a2aa-133a-43a5-b81e-1e6afecf6296",
                  "parent_uuid": "b53c25f9-69ad-4b56-b4eb-5f801b8aef15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6097d25-dc01-4764-8dec-bd13c89c6ad5",
              "parent_uuid": "d6c404ff-5c39-41b0-ab01-241b13ac11a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f396599f-0d81-4b4c-a113-7d4c5c274b58",
                  "parent_uuid": "d6097d25-dc01-4764-8dec-bd13c89c6ad5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2693ef34-ab9f-4641-939f-1871abc31911",
              "parent_uuid": "d6c404ff-5c39-41b0-ab01-241b13ac11a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01c49e44-f155-409a-ae04-4af6e66a77c2",
                  "parent_uuid": "2693ef34-ab9f-4641-939f-1871abc31911",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "182ee83a-971f-4ef0-8986-d90e6dd85028",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69c4ad5e-d31d-4082-b7bd-3258c3702a38",
              "parent_uuid": "182ee83a-971f-4ef0-8986-d90e6dd85028",
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
              "uuid": "55e7c144-37a6-4b08-8a7d-6047595af89c",
              "parent_uuid": "182ee83a-971f-4ef0-8986-d90e6dd85028",
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
              "uuid": "625973fb-e70a-4a43-b263-724bb89f45fc",
              "parent_uuid": "182ee83a-971f-4ef0-8986-d90e6dd85028",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5899f960-9d1e-4778-b12b-ce4de3810f5d",
                  "parent_uuid": "625973fb-e70a-4a43-b263-724bb89f45fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34ac9560-1898-4c01-a2f2-de33b3cbc500",
              "parent_uuid": "182ee83a-971f-4ef0-8986-d90e6dd85028",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "148d3653-3e4c-4df9-949a-90a185afd1af",
                  "parent_uuid": "34ac9560-1898-4c01-a2f2-de33b3cbc500",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7752c12f-7dfa-4f18-9a53-2dc1dedd6b5b",
              "parent_uuid": "182ee83a-971f-4ef0-8986-d90e6dd85028",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de9a8131-d693-4575-a116-70a7021b4d3a",
                  "parent_uuid": "7752c12f-7dfa-4f18-9a53-2dc1dedd6b5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea52e927-42bb-4fe9-b89f-dd9e2eb4a70f",
              "parent_uuid": "182ee83a-971f-4ef0-8986-d90e6dd85028",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52f3f998-d707-4d17-8e8a-2651a6542aaa",
                  "parent_uuid": "ea52e927-42bb-4fe9-b89f-dd9e2eb4a70f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ea9aa3f4-36fe-4b03-9694-fb3d303963ab",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88bd57a1-2321-401c-aa58-8d282e86e4f5",
              "parent_uuid": "ea9aa3f4-36fe-4b03-9694-fb3d303963ab",
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
              "uuid": "be4152d8-cced-46e8-8898-3e173d285318",
              "parent_uuid": "ea9aa3f4-36fe-4b03-9694-fb3d303963ab",
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
              "uuid": "0085e2b7-a1b6-43ef-ba90-921d87893493",
              "parent_uuid": "ea9aa3f4-36fe-4b03-9694-fb3d303963ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f719e0b-d102-48db-854d-f72dbc836b6b",
                  "parent_uuid": "0085e2b7-a1b6-43ef-ba90-921d87893493",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b59d3e32-3179-4c1f-8c5f-57056193e7c4",
              "parent_uuid": "ea9aa3f4-36fe-4b03-9694-fb3d303963ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae12acc6-e728-4e63-b445-635245389e00",
                  "parent_uuid": "b59d3e32-3179-4c1f-8c5f-57056193e7c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c51956a-01a9-4491-9357-13ae5b8918a3",
              "parent_uuid": "ea9aa3f4-36fe-4b03-9694-fb3d303963ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c12308fc-3ae9-4228-9d2c-f6fe9e82ac7a",
                  "parent_uuid": "3c51956a-01a9-4491-9357-13ae5b8918a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5501473a-cb2a-4ebb-9e54-5baf48087874",
              "parent_uuid": "ea9aa3f4-36fe-4b03-9694-fb3d303963ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08756115-94ae-4978-9c7c-7d2b1f4f96d6",
                  "parent_uuid": "5501473a-cb2a-4ebb-9e54-5baf48087874",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3b398866-1975-4755-b994-9bde759f2323",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4d1e81e-e6fa-41ca-adee-7688a3412f8e",
              "parent_uuid": "3b398866-1975-4755-b994-9bde759f2323",
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
              "uuid": "ba18e250-2843-4dbb-93e5-04a65dd34d4b",
              "parent_uuid": "3b398866-1975-4755-b994-9bde759f2323",
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
              "uuid": "d62e723e-4f7c-43cf-897f-80caeb73a93e",
              "parent_uuid": "3b398866-1975-4755-b994-9bde759f2323",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "7bb1cb91-9739-4c81-b1b2-784a54c48866",
                  "parent_uuid": "d62e723e-4f7c-43cf-897f-80caeb73a93e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eafdfbdd-e858-402c-8d51-276bb9d4c78f",
              "parent_uuid": "3b398866-1975-4755-b994-9bde759f2323",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "01cd9792-71d1-4bbd-ad65-bc48ef5b2dd5",
                  "parent_uuid": "eafdfbdd-e858-402c-8d51-276bb9d4c78f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d58aac4b-ad0a-4f79-b781-7a539ff854e1",
              "parent_uuid": "3b398866-1975-4755-b994-9bde759f2323",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "01f6677b-144b-4714-94dd-4ee4f9f6bb61",
                  "parent_uuid": "d58aac4b-ad0a-4f79-b781-7a539ff854e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c713e98-237a-4578-a7db-427e70220ec7",
              "parent_uuid": "3b398866-1975-4755-b994-9bde759f2323",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "da1750d2-f531-44bb-bb43-7bffb3c99c31",
                  "parent_uuid": "5c713e98-237a-4578-a7db-427e70220ec7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3b4539e8-13b7-41fc-b85f-6ef32dd5a0af",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "829287d9-c6bd-4802-aeeb-56d816c8bb8f",
              "parent_uuid": "3b4539e8-13b7-41fc-b85f-6ef32dd5a0af",
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
              "uuid": "bc1578f1-87fa-46a0-a395-2b8dabf8610a",
              "parent_uuid": "3b4539e8-13b7-41fc-b85f-6ef32dd5a0af",
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
              "uuid": "ee91215e-66cc-4988-89a1-0f77c1c4c489",
              "parent_uuid": "3b4539e8-13b7-41fc-b85f-6ef32dd5a0af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc12697d-e8e6-4237-9f52-c47ea9cdffc7",
                  "parent_uuid": "ee91215e-66cc-4988-89a1-0f77c1c4c489",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e94d6462-985e-442a-bdcf-75923f0e370e",
              "parent_uuid": "3b4539e8-13b7-41fc-b85f-6ef32dd5a0af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32ca534e-b371-4e87-b19a-4e019a707a4b",
                  "parent_uuid": "e94d6462-985e-442a-bdcf-75923f0e370e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b9dfcf9-9ea8-4b14-88cd-691397da9caf",
              "parent_uuid": "3b4539e8-13b7-41fc-b85f-6ef32dd5a0af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb6678b7-06d4-4390-a891-a7602a5b272a",
                  "parent_uuid": "7b9dfcf9-9ea8-4b14-88cd-691397da9caf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "621469f7-2117-40ed-b2dd-e486db7207cd",
              "parent_uuid": "3b4539e8-13b7-41fc-b85f-6ef32dd5a0af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84ff0d90-414a-479d-bb28-1630853c77f3",
                  "parent_uuid": "621469f7-2117-40ed-b2dd-e486db7207cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5d6c1a83-a5f0-400f-926a-c7f5bb4873ba",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c607e2f0-c69d-4cda-9c95-4e8ef43c4a54",
              "parent_uuid": "5d6c1a83-a5f0-400f-926a-c7f5bb4873ba",
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
              "uuid": "f401c626-b605-4ef3-a082-600f16b02f36",
              "parent_uuid": "5d6c1a83-a5f0-400f-926a-c7f5bb4873ba",
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
              "uuid": "46b30bc8-68d1-4ada-96fd-b37ef586b093",
              "parent_uuid": "5d6c1a83-a5f0-400f-926a-c7f5bb4873ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a14b0c8-a41d-48b2-a343-46a03fe211c3",
                  "parent_uuid": "46b30bc8-68d1-4ada-96fd-b37ef586b093",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28a7d639-3b77-4ec6-b307-3217584ff37c",
              "parent_uuid": "5d6c1a83-a5f0-400f-926a-c7f5bb4873ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5949b94f-1f11-45eb-82b1-bb3a75ba7525",
                  "parent_uuid": "28a7d639-3b77-4ec6-b307-3217584ff37c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acbfb0d8-9419-42a9-8537-092699a57519",
              "parent_uuid": "5d6c1a83-a5f0-400f-926a-c7f5bb4873ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1f72eaf-5c35-4fe5-8558-073f40867a00",
                  "parent_uuid": "acbfb0d8-9419-42a9-8537-092699a57519",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21e3bee0-4f56-42e9-8878-77f07f5f9106",
              "parent_uuid": "5d6c1a83-a5f0-400f-926a-c7f5bb4873ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03017281-0dfb-4992-9371-0c7ad74dd4a4",
                  "parent_uuid": "21e3bee0-4f56-42e9-8878-77f07f5f9106",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d8fad3f5-bd63-46ba-9332-c93665d7056c",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1783fa1-2f59-4198-a18d-c1e1aef2d81c",
              "parent_uuid": "d8fad3f5-bd63-46ba-9332-c93665d7056c",
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
              "uuid": "8807f4d3-23b5-4a7f-83aa-56ae3f2149a8",
              "parent_uuid": "d8fad3f5-bd63-46ba-9332-c93665d7056c",
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
              "uuid": "c26c3f75-b854-4863-9d57-a9b351785fea",
              "parent_uuid": "d8fad3f5-bd63-46ba-9332-c93665d7056c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c7e7ef0-930d-4e6f-9b6e-05abb9eec742",
                  "parent_uuid": "c26c3f75-b854-4863-9d57-a9b351785fea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "693b8579-8faf-4c7e-99b3-2ff759cc22d9",
              "parent_uuid": "d8fad3f5-bd63-46ba-9332-c93665d7056c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cb228bc-aad1-4a7b-82ba-6c950bd98c3b",
                  "parent_uuid": "693b8579-8faf-4c7e-99b3-2ff759cc22d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5742bdf4-f816-400a-bc8f-5e592e8fbfe8",
              "parent_uuid": "d8fad3f5-bd63-46ba-9332-c93665d7056c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac8d8f90-8eec-4218-83c5-33a94214d6a8",
                  "parent_uuid": "5742bdf4-f816-400a-bc8f-5e592e8fbfe8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c59fc191-800a-4227-9cca-e6b334ee5db0",
              "parent_uuid": "d8fad3f5-bd63-46ba-9332-c93665d7056c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be448c2f-f9cf-49dc-b20b-81c5463a9830",
                  "parent_uuid": "c59fc191-800a-4227-9cca-e6b334ee5db0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d785b863-439b-4ba2-96d2-40ec5571de5d",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f4badaf-6de8-43fd-98ec-05245623a445",
              "parent_uuid": "d785b863-439b-4ba2-96d2-40ec5571de5d",
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
              "uuid": "726aeff4-e3a7-476c-84ef-37352ba22083",
              "parent_uuid": "d785b863-439b-4ba2-96d2-40ec5571de5d",
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
              "uuid": "da8ec2e7-a6e0-4520-befe-ad599595e949",
              "parent_uuid": "d785b863-439b-4ba2-96d2-40ec5571de5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dd7b677-18ae-4de1-824a-8a2baaa51d8c",
                  "parent_uuid": "da8ec2e7-a6e0-4520-befe-ad599595e949",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10cfb2b7-0088-46c3-9aa0-67a6a65ebb59",
              "parent_uuid": "d785b863-439b-4ba2-96d2-40ec5571de5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d9a133c-c267-4013-b481-214de74374a7",
                  "parent_uuid": "10cfb2b7-0088-46c3-9aa0-67a6a65ebb59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fafb7f3-63ca-467f-8f77-b89f40cbcf87",
              "parent_uuid": "d785b863-439b-4ba2-96d2-40ec5571de5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14583dc8-fd6a-4993-a2dd-d374c176c0fc",
                  "parent_uuid": "6fafb7f3-63ca-467f-8f77-b89f40cbcf87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f20f359f-cd7e-4d83-a6dc-0c79034108a5",
              "parent_uuid": "d785b863-439b-4ba2-96d2-40ec5571de5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f597c1a6-140a-49bb-97d8-d27170cc496b",
                  "parent_uuid": "f20f359f-cd7e-4d83-a6dc-0c79034108a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c722b176-c50d-43d5-8616-6dfe607dda7a",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63f408dd-ad57-4121-af88-91a03ce13348",
              "parent_uuid": "c722b176-c50d-43d5-8616-6dfe607dda7a",
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
              "uuid": "d43206ad-89ff-4058-8ad7-59c83657abef",
              "parent_uuid": "c722b176-c50d-43d5-8616-6dfe607dda7a",
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
              "uuid": "62d727bf-7131-4ab2-94e8-3c57d69b412f",
              "parent_uuid": "c722b176-c50d-43d5-8616-6dfe607dda7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f80bbec-e6b7-4bb9-9d10-c9760de72371",
                  "parent_uuid": "62d727bf-7131-4ab2-94e8-3c57d69b412f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55fa9328-8546-4569-9c51-6208d68b0711",
              "parent_uuid": "c722b176-c50d-43d5-8616-6dfe607dda7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a732f82-319e-4ed3-bbae-5eb0b2e2d57b",
                  "parent_uuid": "55fa9328-8546-4569-9c51-6208d68b0711",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8f6bdf7-634f-41f9-87ae-e30ff57df8a4",
              "parent_uuid": "c722b176-c50d-43d5-8616-6dfe607dda7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03fc0ad8-e7e4-4862-916b-d83878486592",
                  "parent_uuid": "a8f6bdf7-634f-41f9-87ae-e30ff57df8a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3ac4088-5601-4d56-bbd6-a91e9bee8fa1",
              "parent_uuid": "c722b176-c50d-43d5-8616-6dfe607dda7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a389fe24-0e0b-42d2-aaae-946489ec5a12",
                  "parent_uuid": "b3ac4088-5601-4d56-bbd6-a91e9bee8fa1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f76209e3-5370-45db-8ba8-43e90b8f3f75",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9edcd15b-5978-46d3-8e3a-11455f583e28",
              "parent_uuid": "f76209e3-5370-45db-8ba8-43e90b8f3f75",
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
              "uuid": "32676c6a-1612-4199-9319-13c117421c41",
              "parent_uuid": "f76209e3-5370-45db-8ba8-43e90b8f3f75",
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
              "uuid": "93f3988d-9fb8-497e-b87d-9bea5418fe6a",
              "parent_uuid": "f76209e3-5370-45db-8ba8-43e90b8f3f75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4a55d0c-3895-4a71-8345-04ada0597c50",
                  "parent_uuid": "93f3988d-9fb8-497e-b87d-9bea5418fe6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a25d9e7f-1096-49c6-97b1-10f243534e12",
              "parent_uuid": "f76209e3-5370-45db-8ba8-43e90b8f3f75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fceb57f8-1c52-42bd-a6f5-5c9533ae34b4",
                  "parent_uuid": "a25d9e7f-1096-49c6-97b1-10f243534e12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4225e7c7-cd76-4b45-a6db-33b5bd53dd6a",
              "parent_uuid": "f76209e3-5370-45db-8ba8-43e90b8f3f75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f8e51c3-8b41-4f05-8ea0-2a6fdc85818d",
                  "parent_uuid": "4225e7c7-cd76-4b45-a6db-33b5bd53dd6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7539fd3-6f75-4386-81eb-b278581830e7",
              "parent_uuid": "f76209e3-5370-45db-8ba8-43e90b8f3f75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1268588e-1c59-4fd0-b75f-9bd827a16c85",
                  "parent_uuid": "d7539fd3-6f75-4386-81eb-b278581830e7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9e76bd79-434a-48fe-9d8c-7244149a3eb1",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5de8399c-7b40-4363-a910-a9734d03d940",
              "parent_uuid": "9e76bd79-434a-48fe-9d8c-7244149a3eb1",
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
              "uuid": "868b07c1-c4e9-48d5-a57b-c9db0190f4ef",
              "parent_uuid": "9e76bd79-434a-48fe-9d8c-7244149a3eb1",
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
              "uuid": "9c14c5bd-8216-4d80-ac68-82df2857c0b4",
              "parent_uuid": "9e76bd79-434a-48fe-9d8c-7244149a3eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96fd2425-8a8f-43d5-941b-381a05554365",
                  "parent_uuid": "9c14c5bd-8216-4d80-ac68-82df2857c0b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f71b69f2-ad54-4ff4-bb36-be84a02fc25f",
              "parent_uuid": "9e76bd79-434a-48fe-9d8c-7244149a3eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dca63196-1147-4893-9080-d6c1283c2f97",
                  "parent_uuid": "f71b69f2-ad54-4ff4-bb36-be84a02fc25f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "630c422e-ab7b-4786-8c7a-e174fcf17b38",
              "parent_uuid": "9e76bd79-434a-48fe-9d8c-7244149a3eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a74b97e0-1222-4f9c-afd1-53956c245a75",
                  "parent_uuid": "630c422e-ab7b-4786-8c7a-e174fcf17b38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2068e723-fd37-4036-b005-9e19ba5706e7",
              "parent_uuid": "9e76bd79-434a-48fe-9d8c-7244149a3eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e522d94-cc3e-403e-b09a-c8035b9c8ceb",
                  "parent_uuid": "2068e723-fd37-4036-b005-9e19ba5706e7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9d8a667-cbcf-4669-a2e9-47d492bdd554",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8822ff4-d229-4a48-a924-fc88e832e9ff",
              "parent_uuid": "b9d8a667-cbcf-4669-a2e9-47d492bdd554",
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
              "uuid": "2776e9c7-b880-41ca-bd52-0d5392c0999d",
              "parent_uuid": "b9d8a667-cbcf-4669-a2e9-47d492bdd554",
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
              "uuid": "5f4cb3e1-f480-44e1-8f19-9c0807260450",
              "parent_uuid": "b9d8a667-cbcf-4669-a2e9-47d492bdd554",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d300606-3b90-452f-b95b-0c6efd0db3bf",
                  "parent_uuid": "5f4cb3e1-f480-44e1-8f19-9c0807260450",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb35c5cb-4e61-4e8e-bdd0-bd7d7ad6857e",
              "parent_uuid": "b9d8a667-cbcf-4669-a2e9-47d492bdd554",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d906ec3-2c5c-4229-9007-d706605e106f",
                  "parent_uuid": "fb35c5cb-4e61-4e8e-bdd0-bd7d7ad6857e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9221497-65c7-49e3-a47b-d78cf54d4d3a",
              "parent_uuid": "b9d8a667-cbcf-4669-a2e9-47d492bdd554",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c75c6ea4-0822-48cf-979c-c0180acc0529",
                  "parent_uuid": "f9221497-65c7-49e3-a47b-d78cf54d4d3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "daac2e77-501c-4642-b6cb-74bf7cc35aff",
              "parent_uuid": "b9d8a667-cbcf-4669-a2e9-47d492bdd554",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0af80ded-c15e-4499-a06f-7966e705557e",
                  "parent_uuid": "daac2e77-501c-4642-b6cb-74bf7cc35aff",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd4f9055-8f70-42e4-a986-76ed26be62f4",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53e04b16-5c68-4182-926a-c7ed03064bcd",
              "parent_uuid": "fd4f9055-8f70-42e4-a986-76ed26be62f4",
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
              "uuid": "57091bd4-f138-4e25-a4fa-7c52e9cebedb",
              "parent_uuid": "fd4f9055-8f70-42e4-a986-76ed26be62f4",
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
              "uuid": "5a0cb8fa-9088-47f9-809e-f99bf909567f",
              "parent_uuid": "fd4f9055-8f70-42e4-a986-76ed26be62f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0865fa41-98f3-4255-a75a-c8615f79698f",
                  "parent_uuid": "5a0cb8fa-9088-47f9-809e-f99bf909567f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f73aa72c-1578-47bd-8872-8edc8200b09c",
              "parent_uuid": "fd4f9055-8f70-42e4-a986-76ed26be62f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27057c09-ce98-499d-becd-ad9a39de18e1",
                  "parent_uuid": "f73aa72c-1578-47bd-8872-8edc8200b09c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8335202-c4f6-48e2-8a15-1924eac0b957",
              "parent_uuid": "fd4f9055-8f70-42e4-a986-76ed26be62f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8f4fdf6-9eda-4dfd-b607-1780a31339a0",
                  "parent_uuid": "c8335202-c4f6-48e2-8a15-1924eac0b957",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9e03405-925a-43f0-b3a9-326a1afb0530",
              "parent_uuid": "fd4f9055-8f70-42e4-a986-76ed26be62f4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "536171fc-02d6-4dcc-9c92-611208042444",
                  "parent_uuid": "f9e03405-925a-43f0-b3a9-326a1afb0530",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6fcdbe14-a597-42d7-818d-994fc6a4706a",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "72ba6afa-e604-47f7-9f51-a2c6aec04c4e",
              "parent_uuid": "6fcdbe14-a597-42d7-818d-994fc6a4706a",
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
          "uuid": "e6c1109d-8548-4a3a-a6f2-2b1ce9090c0f",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "041e2306-77ae-44ff-95e4-d756b6b9c637",
              "parent_uuid": "e6c1109d-8548-4a3a-a6f2-2b1ce9090c0f",
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
          "uuid": "f344970b-048c-4781-92c2-3b1ab30f9413",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "105e4d9f-3937-4b0a-b9f9-6a75a77dd9ac",
              "parent_uuid": "f344970b-048c-4781-92c2-3b1ab30f9413",
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
                  "uuid": "76b23a93-b3d9-4f77-b3ad-51d83b2264e9",
                  "parent_uuid": "105e4d9f-3937-4b0a-b9f9-6a75a77dd9ac",
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
          "uuid": "43a974c2-d53f-4b3c-a675-2a4af6c390cc",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "139a9ac9-cfc1-441e-80bc-68eac988113f",
              "parent_uuid": "43a974c2-d53f-4b3c-a675-2a4af6c390cc",
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
          "uuid": "bc29a175-d8e6-4040-a384-b9ef6fb5774c",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cb2bf0ad-5580-4da3-a5e8-c381c73e0cce",
              "parent_uuid": "bc29a175-d8e6-4040-a384-b9ef6fb5774c",
              "tagName": "td",
              "properties": [
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
          "uuid": "124f050b-9bd4-49b5-8a77-d0a895bb83d5",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a515333e-e061-4854-8f37-d15c715f2f49",
              "parent_uuid": "124f050b-9bd4-49b5-8a77-d0a895bb83d5",
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
              "uuid": "7c90e97c-ea5a-4f91-a396-23c09fbcaeac",
              "parent_uuid": "124f050b-9bd4-49b5-8a77-d0a895bb83d5",
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
              "uuid": "c50060c6-1452-491f-aeb4-4d7f922d2522",
              "parent_uuid": "124f050b-9bd4-49b5-8a77-d0a895bb83d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b02d70fa-1d5c-48dc-a040-3045e7591b55",
                  "parent_uuid": "c50060c6-1452-491f-aeb4-4d7f922d2522",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f656b20e-291b-4aa9-bcdb-2e6dfd482b9f",
              "parent_uuid": "124f050b-9bd4-49b5-8a77-d0a895bb83d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44406d30-271b-4bc4-abce-a23f78c467ee",
                  "parent_uuid": "f656b20e-291b-4aa9-bcdb-2e6dfd482b9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03480606-5840-472d-bd46-3207bd5b9e86",
              "parent_uuid": "124f050b-9bd4-49b5-8a77-d0a895bb83d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2619ce2a-0425-4556-ab15-17a7667bcbfe",
                  "parent_uuid": "03480606-5840-472d-bd46-3207bd5b9e86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7826592e-7e16-4552-a055-bb4d7dd9bf49",
              "parent_uuid": "124f050b-9bd4-49b5-8a77-d0a895bb83d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c028ea4-9b10-4f35-8114-989410c882d7",
                  "parent_uuid": "7826592e-7e16-4552-a055-bb4d7dd9bf49",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2da9d68c-60de-4c1d-93c1-a4aae8e06ab0",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51e33e69-bf2b-4453-93cd-8bc2ffdd9d4e",
              "parent_uuid": "2da9d68c-60de-4c1d-93c1-a4aae8e06ab0",
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
              "uuid": "74f9fb5e-54bc-4104-b52a-1b5df4b26c4c",
              "parent_uuid": "2da9d68c-60de-4c1d-93c1-a4aae8e06ab0",
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
              "uuid": "180d4875-41c8-4c7d-a767-9279db838127",
              "parent_uuid": "2da9d68c-60de-4c1d-93c1-a4aae8e06ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "682b7208-8d1c-43c5-ae88-1abb3f789980",
                  "parent_uuid": "180d4875-41c8-4c7d-a767-9279db838127",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7bccf45-022a-4fe5-ac08-c727a7732996",
              "parent_uuid": "2da9d68c-60de-4c1d-93c1-a4aae8e06ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67015d8b-4535-48f2-9915-751e07f739ce",
                  "parent_uuid": "e7bccf45-022a-4fe5-ac08-c727a7732996",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afd59ca2-69b6-4ead-9358-ba30794e1a4a",
              "parent_uuid": "2da9d68c-60de-4c1d-93c1-a4aae8e06ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25cbb6f5-f7b7-41c8-8ecf-67b27bd92422",
                  "parent_uuid": "afd59ca2-69b6-4ead-9358-ba30794e1a4a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "242851a6-7eb0-476c-9bea-b0938e7a45c3",
              "parent_uuid": "2da9d68c-60de-4c1d-93c1-a4aae8e06ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2382862f-f13e-4a9d-9ad8-00ccc6db26b9",
                  "parent_uuid": "242851a6-7eb0-476c-9bea-b0938e7a45c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8050d014-8c3d-463c-88b0-0e51a920db78",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12fc95ca-f08b-4c39-8a43-d8a9f5afcf5a",
              "parent_uuid": "8050d014-8c3d-463c-88b0-0e51a920db78",
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
              "uuid": "1734a8ce-eacd-40f8-9c2a-76b5346b3d01",
              "parent_uuid": "8050d014-8c3d-463c-88b0-0e51a920db78",
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
              "uuid": "dc8e0eb4-a8a7-49a9-ad3d-95c5b3d06c40",
              "parent_uuid": "8050d014-8c3d-463c-88b0-0e51a920db78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbc7f16d-c47c-48df-8a5b-da4e00f084dd",
                  "parent_uuid": "dc8e0eb4-a8a7-49a9-ad3d-95c5b3d06c40",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51224103-d625-4747-98ef-453a6f2816d6",
              "parent_uuid": "8050d014-8c3d-463c-88b0-0e51a920db78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd428b5f-a232-4acf-b0d0-f4b536ef3773",
                  "parent_uuid": "51224103-d625-4747-98ef-453a6f2816d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf755979-76fa-49e5-92d7-8154828bf944",
              "parent_uuid": "8050d014-8c3d-463c-88b0-0e51a920db78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0d932d5-3517-49de-adf6-263845553e11",
                  "parent_uuid": "bf755979-76fa-49e5-92d7-8154828bf944",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75ec562a-478f-4d0f-9cb7-fb04470c4f5b",
              "parent_uuid": "8050d014-8c3d-463c-88b0-0e51a920db78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e5bca99-a375-4c2a-a795-d4cd4a0eed7b",
                  "parent_uuid": "75ec562a-478f-4d0f-9cb7-fb04470c4f5b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e5c5e13a-faa0-4e1b-9e41-65b76bd60bce",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e637c974-5555-4a3e-b2a0-a4c876804fb7",
              "parent_uuid": "e5c5e13a-faa0-4e1b-9e41-65b76bd60bce",
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
              "uuid": "d821244d-77de-446d-9284-692328db51e9",
              "parent_uuid": "e5c5e13a-faa0-4e1b-9e41-65b76bd60bce",
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
              "uuid": "aab70b85-b6b0-4c09-93bf-07ed42421dae",
              "parent_uuid": "e5c5e13a-faa0-4e1b-9e41-65b76bd60bce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa1cd71c-773f-48f2-9663-7891db7e9068",
                  "parent_uuid": "aab70b85-b6b0-4c09-93bf-07ed42421dae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ced95c12-475b-4d23-a82d-ad3ccbfadbbf",
              "parent_uuid": "e5c5e13a-faa0-4e1b-9e41-65b76bd60bce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aab6c5b7-f0ea-4756-b4e8-20742dc283fe",
                  "parent_uuid": "ced95c12-475b-4d23-a82d-ad3ccbfadbbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccf41e0b-00e5-459e-bc0d-69cfc395d7e8",
              "parent_uuid": "e5c5e13a-faa0-4e1b-9e41-65b76bd60bce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83afbec3-a8fa-478b-b010-e35722a96451",
                  "parent_uuid": "ccf41e0b-00e5-459e-bc0d-69cfc395d7e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9dbf62f-dbc2-45a8-be1e-ab3a60d8fa0a",
              "parent_uuid": "e5c5e13a-faa0-4e1b-9e41-65b76bd60bce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d8bfdbf-470b-435f-a04a-08d7cbc322f7",
                  "parent_uuid": "a9dbf62f-dbc2-45a8-be1e-ab3a60d8fa0a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b5c0f799-19f8-47bb-b0d5-1e7e01db2048",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2f77ca13-173b-4714-af6d-2ba5e891f06f",
              "parent_uuid": "b5c0f799-19f8-47bb-b0d5-1e7e01db2048",
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
          "uuid": "36663edd-fbda-486c-ba1b-83635035de82",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc7a17ed-1f41-490a-9b79-3b57aa9133b3",
              "parent_uuid": "36663edd-fbda-486c-ba1b-83635035de82",
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
              "uuid": "4f8e90bf-2ae7-4a7a-8554-65af149ccd37",
              "parent_uuid": "36663edd-fbda-486c-ba1b-83635035de82",
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
              "uuid": "50b92296-7818-4e70-956f-254934916531",
              "parent_uuid": "36663edd-fbda-486c-ba1b-83635035de82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3696366-dd44-4c6b-a078-5115242dfc5a",
                  "parent_uuid": "50b92296-7818-4e70-956f-254934916531",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc432d10-5be3-4e3d-8473-db63dc717f36",
              "parent_uuid": "36663edd-fbda-486c-ba1b-83635035de82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e5676c7-a48a-43ec-b551-cc16c5355cfd",
                  "parent_uuid": "dc432d10-5be3-4e3d-8473-db63dc717f36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed1b9aa1-073b-4950-8a4a-740e8f201092",
              "parent_uuid": "36663edd-fbda-486c-ba1b-83635035de82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93a7e8ce-c52e-48ad-a909-8284af64ee92",
                  "parent_uuid": "ed1b9aa1-073b-4950-8a4a-740e8f201092",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d45a3154-c023-4c8f-9a63-fec163dcbc75",
              "parent_uuid": "36663edd-fbda-486c-ba1b-83635035de82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0e53546-0c5d-4bba-9c12-afd5369cfdd8",
                  "parent_uuid": "d45a3154-c023-4c8f-9a63-fec163dcbc75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d383abf3-98fa-41e8-9778-6bf2149a16e5",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae9c95a6-fe1f-45bf-acbe-49621d67892d",
              "parent_uuid": "d383abf3-98fa-41e8-9778-6bf2149a16e5",
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
              "uuid": "acdec844-4963-492e-8e22-e97696930f79",
              "parent_uuid": "d383abf3-98fa-41e8-9778-6bf2149a16e5",
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
              "uuid": "e38294bc-464b-4bb1-9714-2a13e10b7263",
              "parent_uuid": "d383abf3-98fa-41e8-9778-6bf2149a16e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25cb6f35-4896-434e-98c4-f609a5f4fd4f",
                  "parent_uuid": "e38294bc-464b-4bb1-9714-2a13e10b7263",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e713d1b8-8db7-4218-b32f-b7054628e4eb",
              "parent_uuid": "d383abf3-98fa-41e8-9778-6bf2149a16e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5678fcce-c9b6-4296-98e0-962610537eb0",
                  "parent_uuid": "e713d1b8-8db7-4218-b32f-b7054628e4eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dc93690-e0b0-4933-8c65-c34e69990390",
              "parent_uuid": "d383abf3-98fa-41e8-9778-6bf2149a16e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8f46775-8493-45cf-bafa-7ca23ccc447a",
                  "parent_uuid": "0dc93690-e0b0-4933-8c65-c34e69990390",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58c877f3-e4a0-4ec2-825b-bf4049f0253e",
              "parent_uuid": "d383abf3-98fa-41e8-9778-6bf2149a16e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9fc3eee-aadf-4d53-822b-76333fe5a732",
                  "parent_uuid": "58c877f3-e4a0-4ec2-825b-bf4049f0253e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "20620f88-63d0-4a6c-baff-254efd8f8ece",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75d37c76-cf59-45af-a185-51d1a833c8d8",
              "parent_uuid": "20620f88-63d0-4a6c-baff-254efd8f8ece",
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
              "uuid": "be27c272-0de8-4261-8b4a-ebc600f1cc80",
              "parent_uuid": "20620f88-63d0-4a6c-baff-254efd8f8ece",
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
              "uuid": "a6d834ea-e2f2-49e6-924a-a0fd8c755f90",
              "parent_uuid": "20620f88-63d0-4a6c-baff-254efd8f8ece",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "511fbb70-9d2f-4a68-b90a-dd69e16d6b4c",
                  "parent_uuid": "a6d834ea-e2f2-49e6-924a-a0fd8c755f90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99491c9d-32e5-4beb-9aea-a34072594186",
              "parent_uuid": "20620f88-63d0-4a6c-baff-254efd8f8ece",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7a2affa-c182-4518-8356-6472368c98bc",
                  "parent_uuid": "99491c9d-32e5-4beb-9aea-a34072594186",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdaa2347-96c2-4da7-ad4f-8fcc4ea72770",
              "parent_uuid": "20620f88-63d0-4a6c-baff-254efd8f8ece",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e23f8707-0f53-4427-9af1-18ee8efd9707",
                  "parent_uuid": "cdaa2347-96c2-4da7-ad4f-8fcc4ea72770",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7706be73-d3ae-4d52-97ed-212d2c589314",
              "parent_uuid": "20620f88-63d0-4a6c-baff-254efd8f8ece",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "666d4f1a-4331-430d-8a5a-85b5d00b885e",
                  "parent_uuid": "7706be73-d3ae-4d52-97ed-212d2c589314",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a79db03d-8d67-4ff6-9286-0665ae5e5bc9",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b087f5b-0fdc-4742-90e4-68bbce75c043",
              "parent_uuid": "a79db03d-8d67-4ff6-9286-0665ae5e5bc9",
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
              "uuid": "745923ca-2ddc-4b0d-9e06-24c7a3c53610",
              "parent_uuid": "a79db03d-8d67-4ff6-9286-0665ae5e5bc9",
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
              "uuid": "2a9e7223-087c-43ad-accc-9b34383dc998",
              "parent_uuid": "a79db03d-8d67-4ff6-9286-0665ae5e5bc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91e34422-9f2f-4fd9-95ab-907fae3f17be",
                  "parent_uuid": "2a9e7223-087c-43ad-accc-9b34383dc998",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fab639f8-78ec-456e-91b1-8fac04f878ab",
              "parent_uuid": "a79db03d-8d67-4ff6-9286-0665ae5e5bc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8b72841-460d-4b1c-8e2a-076fb61ea06a",
                  "parent_uuid": "fab639f8-78ec-456e-91b1-8fac04f878ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "853ab3af-f68a-4853-8bb3-cbd5a65f50e6",
              "parent_uuid": "a79db03d-8d67-4ff6-9286-0665ae5e5bc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fec3a386-1269-4025-877d-6ac608419b08",
                  "parent_uuid": "853ab3af-f68a-4853-8bb3-cbd5a65f50e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8129e25c-e9b3-4b24-91bc-1e91347c8d90",
              "parent_uuid": "a79db03d-8d67-4ff6-9286-0665ae5e5bc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5984d1df-fc52-4a79-b397-2186aa4d7392",
                  "parent_uuid": "8129e25c-e9b3-4b24-91bc-1e91347c8d90",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5e9a13f7-84dc-4b0f-a4b8-d6378f2bf646",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "940c21f4-aae3-4e44-a682-958c1c204444",
              "parent_uuid": "5e9a13f7-84dc-4b0f-a4b8-d6378f2bf646",
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
          "uuid": "fff6c798-5e67-4eb0-9ed8-0555cca64ed2",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cd4d03f-56d3-4595-9781-77d4840e81c7",
              "parent_uuid": "fff6c798-5e67-4eb0-9ed8-0555cca64ed2",
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
          "uuid": "5c988395-b72e-4138-ae67-7e1664e172fa",
          "parent_uuid": "724a67bd-608a-429c-aec7-35f6c49409a3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8407ea9-2ffd-4956-97d5-ce61e2774159",
              "parent_uuid": "5c988395-b72e-4138-ae67-7e1664e172fa",
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
                  "uuid": "9a2160de-0c1f-4795-a3fb-6ba48ca8806e",
                  "parent_uuid": "c8407ea9-2ffd-4956-97d5-ce61e2774159",
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

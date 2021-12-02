
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
  "uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
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
      "uuid": "4c0f47f8-3a57-44e1-936c-329584873761",
      "parent_uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
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
      "uuid": "7931e0ed-7030-435c-9e2e-458af3f76578",
      "parent_uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
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
      "uuid": "a1530248-4355-455a-9daa-aecc5977e56b",
      "parent_uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
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
      "uuid": "81269f22-ed9a-47fd-bccd-985475342363",
      "parent_uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
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
      "uuid": "ccf33cad-da95-4c2b-b81b-487b3d4b4bd4",
      "parent_uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
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
      "uuid": "31116cf6-6e1a-470d-aa26-eea72b8a8cc3",
      "parent_uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
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
      "uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
      "parent_uuid": "9db3ffe7-d53f-4e7f-90c0-ae38ecc60cf6",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "bcfa270f-4d72-41a8-97e7-d1761cc8622d",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "0e6dad1b-6c73-4cfb-8ee9-6a9fd51c5a63",
              "parent_uuid": "bcfa270f-4d72-41a8-97e7-d1761cc8622d",
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
              "uuid": "ee3bc22b-09c4-4523-8f8a-f2d96fab00ea",
              "parent_uuid": "bcfa270f-4d72-41a8-97e7-d1761cc8622d",
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
              "uuid": "10d791aa-6dc3-445c-bf1f-0105e543aa34",
              "parent_uuid": "bcfa270f-4d72-41a8-97e7-d1761cc8622d",
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
              "uuid": "63b315bf-592d-4839-b4f7-89d0b10258f0",
              "parent_uuid": "bcfa270f-4d72-41a8-97e7-d1761cc8622d",
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
          "uuid": "c47eea9e-507e-408d-9a54-4c75850c3dd3",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "5c04fcbc-11b9-400c-983a-59363b857f6a",
              "parent_uuid": "c47eea9e-507e-408d-9a54-4c75850c3dd3",
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
              "uuid": "8b98e43c-f551-4fd2-a56a-a356b9105268",
              "parent_uuid": "c47eea9e-507e-408d-9a54-4c75850c3dd3",
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
              "uuid": "05bb2401-71d7-4226-987c-365001b32776",
              "parent_uuid": "c47eea9e-507e-408d-9a54-4c75850c3dd3",
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
              "uuid": "0d6a66c5-bb08-4083-a4d0-2e3496a8484c",
              "parent_uuid": "c47eea9e-507e-408d-9a54-4c75850c3dd3",
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
          "uuid": "21b295c0-c72d-4f6c-98a6-b7eeedfee1e6",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c987ad4f-17a3-46c6-8de0-f8c0dc0e662d",
              "parent_uuid": "21b295c0-c72d-4f6c-98a6-b7eeedfee1e6",
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
              "uuid": "8736f0b2-934e-48f1-ad52-4af982666a5e",
              "parent_uuid": "21b295c0-c72d-4f6c-98a6-b7eeedfee1e6",
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
              "uuid": "bbeda251-4cb3-4081-9e63-1e5175fddd0b",
              "parent_uuid": "21b295c0-c72d-4f6c-98a6-b7eeedfee1e6",
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
              "uuid": "89805ead-7eaf-4ae8-a628-5fa5857049e0",
              "parent_uuid": "21b295c0-c72d-4f6c-98a6-b7eeedfee1e6",
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
              "uuid": "f9851dad-eaff-4b68-8389-bc4000e84f77",
              "parent_uuid": "21b295c0-c72d-4f6c-98a6-b7eeedfee1e6",
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
          "uuid": "f0d20cd2-6e6e-4805-a110-ec4a5f0c93c8",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e64c770e-987b-4c9c-af30-e8b1d87597d3",
              "parent_uuid": "f0d20cd2-6e6e-4805-a110-ec4a5f0c93c8",
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
          "uuid": "37c50b9e-2dab-41f8-a226-8b71f072d7a3",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41a1cd23-c01d-4d37-b5c6-c4c8d1bdc11d",
              "parent_uuid": "37c50b9e-2dab-41f8-a226-8b71f072d7a3",
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
              "uuid": "9e01f40f-798e-403b-b1c4-148043b355a9",
              "parent_uuid": "37c50b9e-2dab-41f8-a226-8b71f072d7a3",
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
              "uuid": "52b440d0-d2f8-4faa-8116-acd71160d5af",
              "parent_uuid": "37c50b9e-2dab-41f8-a226-8b71f072d7a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba20afc8-8946-4e6a-99e4-d47efd89fbe1",
                  "parent_uuid": "52b440d0-d2f8-4faa-8116-acd71160d5af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c748b18-f578-4ae0-8d13-7b292039674c",
              "parent_uuid": "37c50b9e-2dab-41f8-a226-8b71f072d7a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44c0763f-e4f0-4d36-bdf5-d8f8eea40885",
                  "parent_uuid": "5c748b18-f578-4ae0-8d13-7b292039674c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5149a121-ca7a-407c-b6c1-de65fef9db9c",
              "parent_uuid": "37c50b9e-2dab-41f8-a226-8b71f072d7a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "169fee16-92f4-45d3-b33d-0939dffb80c8",
                  "parent_uuid": "5149a121-ca7a-407c-b6c1-de65fef9db9c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "93331851-e472-4ac9-bba9-1368231150db",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aef2a8a7-e1b2-43cf-b29a-027a3934bd57",
              "parent_uuid": "93331851-e472-4ac9-bba9-1368231150db",
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
              "uuid": "4bc44273-a9c4-4fa4-92b3-4320414949cb",
              "parent_uuid": "93331851-e472-4ac9-bba9-1368231150db",
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
              "uuid": "a14cdd2e-1101-4672-9797-cdca7e5fe4fd",
              "parent_uuid": "93331851-e472-4ac9-bba9-1368231150db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6223dd8-bad0-416d-adcc-9643139fb62f",
                  "parent_uuid": "a14cdd2e-1101-4672-9797-cdca7e5fe4fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e067c55-e66b-40a1-a720-43c76cbdf77f",
              "parent_uuid": "93331851-e472-4ac9-bba9-1368231150db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4876b408-2f3d-4cef-a378-c3759443e57b",
                  "parent_uuid": "7e067c55-e66b-40a1-a720-43c76cbdf77f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "245f0725-beda-4ae9-905e-23b274e30db1",
              "parent_uuid": "93331851-e472-4ac9-bba9-1368231150db",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47e49afc-7808-4288-a1ea-ae7b21eb2754",
                  "parent_uuid": "245f0725-beda-4ae9-905e-23b274e30db1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "117d71f5-743c-4149-9a97-076336ed4bb2",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fb10685-e27f-40d8-bd97-c6d19aff7cba",
              "parent_uuid": "117d71f5-743c-4149-9a97-076336ed4bb2",
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
              "uuid": "9a13c6f0-7b9a-43c6-946f-589d66523c87",
              "parent_uuid": "117d71f5-743c-4149-9a97-076336ed4bb2",
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
              "uuid": "396dcb7d-8ff3-4091-b93d-ea8e0e585602",
              "parent_uuid": "117d71f5-743c-4149-9a97-076336ed4bb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcc5d739-f985-4c45-9dee-2c50f809aa8a",
                  "parent_uuid": "396dcb7d-8ff3-4091-b93d-ea8e0e585602",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d865ccfb-b4e8-476a-8068-01ea3098c3a0",
              "parent_uuid": "117d71f5-743c-4149-9a97-076336ed4bb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4fbfa11a-5841-4929-985d-61a681454f1e",
                  "parent_uuid": "d865ccfb-b4e8-476a-8068-01ea3098c3a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4120b155-21f8-4417-b909-54de133bf9d0",
              "parent_uuid": "117d71f5-743c-4149-9a97-076336ed4bb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c4420f4-568b-4813-85c2-2bed57ce861c",
                  "parent_uuid": "4120b155-21f8-4417-b909-54de133bf9d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70fd3e4f-7608-41c3-abe1-1deb283e990b",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90f1bea2-5205-4646-a4f7-936198effa3d",
              "parent_uuid": "70fd3e4f-7608-41c3-abe1-1deb283e990b",
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
              "uuid": "6d6516ba-bbfe-4acf-8016-da520929134f",
              "parent_uuid": "70fd3e4f-7608-41c3-abe1-1deb283e990b",
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
              "uuid": "6bdaacc7-c8de-4769-8fe6-9fab5d5cec35",
              "parent_uuid": "70fd3e4f-7608-41c3-abe1-1deb283e990b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6071cfd8-5c18-4a73-a66e-45499571c126",
                  "parent_uuid": "6bdaacc7-c8de-4769-8fe6-9fab5d5cec35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26058a99-b202-472d-aaef-88d6dbc28be4",
              "parent_uuid": "70fd3e4f-7608-41c3-abe1-1deb283e990b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a93aaad1-ae47-4556-a6ff-5c87ab5327ba",
                  "parent_uuid": "26058a99-b202-472d-aaef-88d6dbc28be4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21f0818b-58a7-4e50-9283-4e8988c80e31",
              "parent_uuid": "70fd3e4f-7608-41c3-abe1-1deb283e990b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "151fe321-4ab0-4c31-acbb-a34e0cdd1569",
                  "parent_uuid": "21f0818b-58a7-4e50-9283-4e8988c80e31",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fdc60987-afd6-41ee-bf8e-fbce943f6a8d",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcbad3cf-acd5-4ff9-b25b-8caf8cf3c245",
              "parent_uuid": "fdc60987-afd6-41ee-bf8e-fbce943f6a8d",
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
              "uuid": "c4362a8c-c410-4c27-a7f8-f538a5175eaa",
              "parent_uuid": "fdc60987-afd6-41ee-bf8e-fbce943f6a8d",
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
              "uuid": "c58a1979-29f8-45a1-bf0f-c9452b271acd",
              "parent_uuid": "fdc60987-afd6-41ee-bf8e-fbce943f6a8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c5adffa-025d-4b9e-8737-0639942862e3",
                  "parent_uuid": "c58a1979-29f8-45a1-bf0f-c9452b271acd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b870df9f-6945-4b15-8978-5e0db2dec378",
              "parent_uuid": "fdc60987-afd6-41ee-bf8e-fbce943f6a8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d451db93-f2c4-42cd-94af-a43ed3e43116",
                  "parent_uuid": "b870df9f-6945-4b15-8978-5e0db2dec378",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0d7bb92-bdcc-4312-9527-0184bec9a0cc",
              "parent_uuid": "fdc60987-afd6-41ee-bf8e-fbce943f6a8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17016e53-c7fd-407e-8d7a-bc495f3d8dc6",
                  "parent_uuid": "b0d7bb92-bdcc-4312-9527-0184bec9a0cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a74c1824-d747-4109-8b35-b106f8688cb8",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d8034a2-7190-4399-bc79-7a7c0d7923fa",
              "parent_uuid": "a74c1824-d747-4109-8b35-b106f8688cb8",
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
              "uuid": "2ac37f97-5895-494c-8f18-c59f4bea321c",
              "parent_uuid": "a74c1824-d747-4109-8b35-b106f8688cb8",
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
              "uuid": "9236d0c0-6a13-4e28-a2a4-4ee468bef658",
              "parent_uuid": "a74c1824-d747-4109-8b35-b106f8688cb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "424d92d2-7dfd-41fb-a532-5226c07fcdfd",
                  "parent_uuid": "9236d0c0-6a13-4e28-a2a4-4ee468bef658",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bb2ad2c-2ac5-498e-b375-c3868d96bb2c",
              "parent_uuid": "a74c1824-d747-4109-8b35-b106f8688cb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e868c5c2-7fa3-4603-84d6-e29d6b3b062b",
                  "parent_uuid": "9bb2ad2c-2ac5-498e-b375-c3868d96bb2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e2826f1-886e-4675-aeb5-b3abc4a23b33",
              "parent_uuid": "a74c1824-d747-4109-8b35-b106f8688cb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ca0209b-370b-45ff-90ce-84c12a413a79",
                  "parent_uuid": "0e2826f1-886e-4675-aeb5-b3abc4a23b33",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bcf42644-7b63-4bfc-aba4-7d2199a71d74",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac21e3df-4535-4cba-b5a9-258798d1c25d",
              "parent_uuid": "bcf42644-7b63-4bfc-aba4-7d2199a71d74",
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
              "uuid": "46ad1e68-f49f-4c32-b57c-81ea3c59c967",
              "parent_uuid": "bcf42644-7b63-4bfc-aba4-7d2199a71d74",
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
              "uuid": "eda75a6b-0ffe-4b6d-9a17-c063f7435109",
              "parent_uuid": "bcf42644-7b63-4bfc-aba4-7d2199a71d74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "948c84cc-367b-4f7e-b290-67bd629ce5b9",
                  "parent_uuid": "eda75a6b-0ffe-4b6d-9a17-c063f7435109",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb98b3c9-95f5-4b56-a3e5-9bece8391363",
              "parent_uuid": "bcf42644-7b63-4bfc-aba4-7d2199a71d74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d73935f-9231-4ced-a311-ed81d3766539",
                  "parent_uuid": "bb98b3c9-95f5-4b56-a3e5-9bece8391363",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b024f277-b392-4f30-8992-3b476b6ba302",
              "parent_uuid": "bcf42644-7b63-4bfc-aba4-7d2199a71d74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69d538bb-296b-4f30-b31f-f906cb722b3b",
                  "parent_uuid": "b024f277-b392-4f30-8992-3b476b6ba302",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2eaa102d-cd2c-4a3c-9862-f8acc5e58e85",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "153cadc7-5cc5-478a-b250-0b6e02df7d7d",
              "parent_uuid": "2eaa102d-cd2c-4a3c-9862-f8acc5e58e85",
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
              "uuid": "67e63f4c-6ff8-48d6-be12-64d47a5baef9",
              "parent_uuid": "2eaa102d-cd2c-4a3c-9862-f8acc5e58e85",
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
              "uuid": "befc50df-c727-4d86-9830-02d5772314ce",
              "parent_uuid": "2eaa102d-cd2c-4a3c-9862-f8acc5e58e85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82f7d969-68d6-414a-9cf8-a72d13cb7c89",
                  "parent_uuid": "befc50df-c727-4d86-9830-02d5772314ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f50c4811-2df4-4305-88c7-757957b54fb6",
              "parent_uuid": "2eaa102d-cd2c-4a3c-9862-f8acc5e58e85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6d557e8-c4d2-4429-aedf-262ab489af98",
                  "parent_uuid": "f50c4811-2df4-4305-88c7-757957b54fb6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c86ee51f-206d-4df3-b7e4-8358d6c89bc3",
              "parent_uuid": "2eaa102d-cd2c-4a3c-9862-f8acc5e58e85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2b9a349-0749-4ab9-b014-f16157cfbd74",
                  "parent_uuid": "c86ee51f-206d-4df3-b7e4-8358d6c89bc3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35067021-3439-4fcd-ac3f-0fdd1ea6c20c",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f416f52f-ae9d-465b-a219-65ef22761a28",
              "parent_uuid": "35067021-3439-4fcd-ac3f-0fdd1ea6c20c",
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
              "uuid": "d24f6b7c-f66b-4439-b251-024457f032ef",
              "parent_uuid": "35067021-3439-4fcd-ac3f-0fdd1ea6c20c",
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
              "uuid": "2beb9a64-7af7-48e3-95f7-35edca7315a3",
              "parent_uuid": "35067021-3439-4fcd-ac3f-0fdd1ea6c20c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0f00713-c7df-4052-8794-3aa7dfd84b84",
                  "parent_uuid": "2beb9a64-7af7-48e3-95f7-35edca7315a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "548eb8fe-e994-41e5-a4aa-c101dcdb5d4b",
              "parent_uuid": "35067021-3439-4fcd-ac3f-0fdd1ea6c20c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38427625-3013-414f-b1a8-6b4e558ddd1e",
                  "parent_uuid": "548eb8fe-e994-41e5-a4aa-c101dcdb5d4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c88d808-f5ef-4be5-8f92-1071f1362b01",
              "parent_uuid": "35067021-3439-4fcd-ac3f-0fdd1ea6c20c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57c25af4-1d6a-451a-b616-16f7b65ea1e1",
                  "parent_uuid": "5c88d808-f5ef-4be5-8f92-1071f1362b01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86c2bdec-0da7-4ea8-b9cf-45d9fc99a862",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a1879ac0-806a-4b35-886c-64aed57c813d",
              "parent_uuid": "86c2bdec-0da7-4ea8-b9cf-45d9fc99a862",
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
              "uuid": "233c3500-144c-4fe4-82c1-ffc89cef07f2",
              "parent_uuid": "86c2bdec-0da7-4ea8-b9cf-45d9fc99a862",
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
              "uuid": "7261a6f7-4414-4e11-8152-e6340b32f241",
              "parent_uuid": "86c2bdec-0da7-4ea8-b9cf-45d9fc99a862",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "624f4981-89bd-4d30-827a-5295c2f15b4b",
                  "parent_uuid": "7261a6f7-4414-4e11-8152-e6340b32f241",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53803898-387d-48b5-ad23-cb0e3fd0c874",
              "parent_uuid": "86c2bdec-0da7-4ea8-b9cf-45d9fc99a862",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a102c7f6-e678-40ad-8617-5ee64f252a98",
                  "parent_uuid": "53803898-387d-48b5-ad23-cb0e3fd0c874",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "251a3a11-2da7-4ac6-92e8-7583208741bd",
              "parent_uuid": "86c2bdec-0da7-4ea8-b9cf-45d9fc99a862",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ec90a07-b848-43e7-854c-0fb1978b939a",
                  "parent_uuid": "251a3a11-2da7-4ac6-92e8-7583208741bd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14830b4d-6683-4321-8e9a-77041007abbf",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c135506a-2c2c-43be-bb86-f7eb64f8383b",
              "parent_uuid": "14830b4d-6683-4321-8e9a-77041007abbf",
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
              "uuid": "438665eb-510d-4760-a3cb-b0197ad98057",
              "parent_uuid": "14830b4d-6683-4321-8e9a-77041007abbf",
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
              "uuid": "a1b4c4b4-9daf-498c-9c53-386dac1090c5",
              "parent_uuid": "14830b4d-6683-4321-8e9a-77041007abbf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f190d072-c720-4bc3-bb7e-9f31b0e26781",
                  "parent_uuid": "a1b4c4b4-9daf-498c-9c53-386dac1090c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64ebc655-39d0-423c-946c-cac72d2cd07d",
              "parent_uuid": "14830b4d-6683-4321-8e9a-77041007abbf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45ff945a-17d8-4966-a8a5-e1f530cf2821",
                  "parent_uuid": "64ebc655-39d0-423c-946c-cac72d2cd07d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8d530e2-daa0-4d2d-ac12-481517b42693",
              "parent_uuid": "14830b4d-6683-4321-8e9a-77041007abbf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cc79616-cfb0-4404-91ec-afacd25d4e9b",
                  "parent_uuid": "e8d530e2-daa0-4d2d-ac12-481517b42693",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a123c321-f8f4-4f2e-9048-a5a30539e0c7",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1201a6d1-57a5-4a84-a80e-01c4bc7e10ab",
              "parent_uuid": "a123c321-f8f4-4f2e-9048-a5a30539e0c7",
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
              "uuid": "c30431c8-e5d0-4233-8412-7bb0516e1840",
              "parent_uuid": "a123c321-f8f4-4f2e-9048-a5a30539e0c7",
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
              "uuid": "0b546973-2fac-477c-8810-571834742f77",
              "parent_uuid": "a123c321-f8f4-4f2e-9048-a5a30539e0c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56673f00-0d00-42fd-8104-3db869c42f44",
                  "parent_uuid": "0b546973-2fac-477c-8810-571834742f77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73e1e953-ca9e-4dfa-9e62-f45680c565eb",
              "parent_uuid": "a123c321-f8f4-4f2e-9048-a5a30539e0c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5eee235-cdd8-4042-9eaa-3997150b954f",
                  "parent_uuid": "73e1e953-ca9e-4dfa-9e62-f45680c565eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb393491-a396-4a19-9cd7-4ed2b2e79a1e",
              "parent_uuid": "a123c321-f8f4-4f2e-9048-a5a30539e0c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8258af71-e471-4c1e-9280-7fda5cdb0803",
                  "parent_uuid": "eb393491-a396-4a19-9cd7-4ed2b2e79a1e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84308d7f-25d7-4a94-8c6d-63d09d5c2467",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae811b4a-5363-4e28-a347-5d6aaac796b7",
              "parent_uuid": "84308d7f-25d7-4a94-8c6d-63d09d5c2467",
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
              "uuid": "4969adbc-1b6b-4930-b058-2b776d6a4a4c",
              "parent_uuid": "84308d7f-25d7-4a94-8c6d-63d09d5c2467",
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
              "uuid": "d5f30cc1-c357-4000-95ca-0a066d163b42",
              "parent_uuid": "84308d7f-25d7-4a94-8c6d-63d09d5c2467",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f125cdab-c358-42df-8274-16290a4a2536",
                  "parent_uuid": "d5f30cc1-c357-4000-95ca-0a066d163b42",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61c38e36-e9ae-4436-99e6-a2e80e96f509",
              "parent_uuid": "84308d7f-25d7-4a94-8c6d-63d09d5c2467",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdfb5ba3-6e13-4ea3-8347-8bb74ea9f3e9",
                  "parent_uuid": "61c38e36-e9ae-4436-99e6-a2e80e96f509",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69f406ac-72a6-4c26-93ed-02062d8a85e1",
              "parent_uuid": "84308d7f-25d7-4a94-8c6d-63d09d5c2467",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bd422e7-b501-4f35-93f8-b47304a09e71",
                  "parent_uuid": "69f406ac-72a6-4c26-93ed-02062d8a85e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1f39d321-175d-4fb4-b6f5-450d682e633f",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7c50876-82b9-4023-a5c8-6278b0c3f799",
              "parent_uuid": "1f39d321-175d-4fb4-b6f5-450d682e633f",
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
              "uuid": "2d7b436a-5e1a-4af7-8b0a-b4e91d0ed2b9",
              "parent_uuid": "1f39d321-175d-4fb4-b6f5-450d682e633f",
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
              "uuid": "471ac9f2-201d-48cc-bfbd-362097d87d1e",
              "parent_uuid": "1f39d321-175d-4fb4-b6f5-450d682e633f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffd65195-4dff-4ba4-9ca7-bf3c0907604b",
                  "parent_uuid": "471ac9f2-201d-48cc-bfbd-362097d87d1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3989626a-3e16-4d35-a40f-52d36aa827da",
              "parent_uuid": "1f39d321-175d-4fb4-b6f5-450d682e633f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f7592f5-395f-4fc4-a104-71ce61ebb86d",
                  "parent_uuid": "3989626a-3e16-4d35-a40f-52d36aa827da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc8c110c-47ca-46ee-8924-c3d48b4fd09a",
              "parent_uuid": "1f39d321-175d-4fb4-b6f5-450d682e633f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9dac0c3e-540e-4c6a-b457-b6fe2c53e66c",
                  "parent_uuid": "fc8c110c-47ca-46ee-8924-c3d48b4fd09a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9022e287-2442-4225-b888-7d210a5db9ad",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28e056fe-123f-476e-83ee-ce0a436c1fed",
              "parent_uuid": "9022e287-2442-4225-b888-7d210a5db9ad",
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
              "uuid": "f71bf8d0-8d76-4e30-9229-e13836516942",
              "parent_uuid": "9022e287-2442-4225-b888-7d210a5db9ad",
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
              "uuid": "dc68620d-d830-413d-a929-66f419c4618d",
              "parent_uuid": "9022e287-2442-4225-b888-7d210a5db9ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63c857f1-0a5d-407e-96c1-e094a9fa5d36",
                  "parent_uuid": "dc68620d-d830-413d-a929-66f419c4618d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf55e794-980e-451b-821b-6821467b1dc1",
              "parent_uuid": "9022e287-2442-4225-b888-7d210a5db9ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25d1e365-12f7-43f3-8bbd-30c6c8e8b414",
                  "parent_uuid": "cf55e794-980e-451b-821b-6821467b1dc1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bf54a21-c947-44e6-8954-1611ceaec34e",
              "parent_uuid": "9022e287-2442-4225-b888-7d210a5db9ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c68c2cf-c6a2-4a23-8cdf-b15d78810001",
                  "parent_uuid": "2bf54a21-c947-44e6-8954-1611ceaec34e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "41bbdd10-8371-418f-8773-4eb3f16096e1",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c407bfb-a14c-47cb-8648-d9669fbbc8af",
              "parent_uuid": "41bbdd10-8371-418f-8773-4eb3f16096e1",
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
              "uuid": "61637461-bce6-4bde-b293-17924070c6ba",
              "parent_uuid": "41bbdd10-8371-418f-8773-4eb3f16096e1",
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
              "uuid": "d8fe1ed5-db2c-43f7-9f68-ec48bb054b30",
              "parent_uuid": "41bbdd10-8371-418f-8773-4eb3f16096e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "891481ec-8352-447a-94fd-2dee1a0b0fce",
                  "parent_uuid": "d8fe1ed5-db2c-43f7-9f68-ec48bb054b30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c92710b0-1d0a-4009-aa2f-a54124b5cff5",
              "parent_uuid": "41bbdd10-8371-418f-8773-4eb3f16096e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cabfb6f-b2ce-4088-9fa0-4207098809c7",
                  "parent_uuid": "c92710b0-1d0a-4009-aa2f-a54124b5cff5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8c48fd8-5427-4179-9c0e-09bf8678d291",
              "parent_uuid": "41bbdd10-8371-418f-8773-4eb3f16096e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbdab437-649b-45d0-9c9e-671a6394d1ac",
                  "parent_uuid": "f8c48fd8-5427-4179-9c0e-09bf8678d291",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e8e54001-f459-49d5-86dd-f6c4cccadeb3",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78f29bf6-d7a1-4dd7-844d-308d489b4d6e",
              "parent_uuid": "e8e54001-f459-49d5-86dd-f6c4cccadeb3",
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
          "uuid": "ee680770-89a5-45bb-a70e-94c4e545ee64",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b50f7f8b-8520-46eb-b659-54a08bc0bc6e",
              "parent_uuid": "ee680770-89a5-45bb-a70e-94c4e545ee64",
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
          "uuid": "b493ffbb-ff1b-4f42-83bb-70e6b023d406",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1cc84c98-b0f3-43bf-9393-a565e155ff80",
              "parent_uuid": "b493ffbb-ff1b-4f42-83bb-70e6b023d406",
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
                  "uuid": "d560f677-3d6d-4f0a-bf24-0b6f5f074e61",
                  "parent_uuid": "1cc84c98-b0f3-43bf-9393-a565e155ff80",
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
          "uuid": "3deb0a8d-5ad6-46c8-99a6-3ddb5d2a4c24",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "e890e6ea-b9d5-4134-8df5-f05df33d3ea7",
              "parent_uuid": "3deb0a8d-5ad6-46c8-99a6-3ddb5d2a4c24",
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
          "uuid": "fea79303-de40-4b07-b7d0-e2328a48e045",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c2b1444e-e352-4f01-a45e-f648230d55ea",
              "parent_uuid": "fea79303-de40-4b07-b7d0-e2328a48e045",
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
          "uuid": "739bb6f2-d0ff-41d0-825a-605e82f24656",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "290b6257-5ea5-456b-afad-3fc965331487",
              "parent_uuid": "739bb6f2-d0ff-41d0-825a-605e82f24656",
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
              "uuid": "00c1982d-b516-49bc-b62f-d577b99314cd",
              "parent_uuid": "739bb6f2-d0ff-41d0-825a-605e82f24656",
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
              "uuid": "4edb5736-7166-4d77-847b-c6f4cc6bf2c4",
              "parent_uuid": "739bb6f2-d0ff-41d0-825a-605e82f24656",
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
              "uuid": "53463815-c80a-4135-947e-7a43cc53a74e",
              "parent_uuid": "739bb6f2-d0ff-41d0-825a-605e82f24656",
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
              "uuid": "f347282b-215c-472b-900f-70587231e3cd",
              "parent_uuid": "739bb6f2-d0ff-41d0-825a-605e82f24656",
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
          "uuid": "e2483490-770f-4257-aefa-9bfd226ab2ed",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "4e98307c-7781-4f39-913b-b70199118b60",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8e3127f4-c538-4fad-98d5-7f3673b4be04",
              "parent_uuid": "4e98307c-7781-4f39-913b-b70199118b60",
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
              "uuid": "05c67934-adbd-4956-bbaa-76d37295977f",
              "parent_uuid": "4e98307c-7781-4f39-913b-b70199118b60",
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
              "uuid": "d174575d-46ac-44f6-a32a-17a4f684b319",
              "parent_uuid": "4e98307c-7781-4f39-913b-b70199118b60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "661aed01-ef61-47ac-a47e-dea5dbe58068",
                  "parent_uuid": "d174575d-46ac-44f6-a32a-17a4f684b319",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a520dc8a-c490-44e3-9821-ae43d65298c7",
              "parent_uuid": "4e98307c-7781-4f39-913b-b70199118b60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56002b7e-3571-49b8-9ede-7c54cc9c5e2b",
                  "parent_uuid": "a520dc8a-c490-44e3-9821-ae43d65298c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cac070f0-71a3-4f32-940b-537cbb1a08b9",
              "parent_uuid": "4e98307c-7781-4f39-913b-b70199118b60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e49f718-c242-40c1-ac89-5321db9c5aa9",
                  "parent_uuid": "cac070f0-71a3-4f32-940b-537cbb1a08b9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0fb3fa4f-9ea8-433f-b6d3-429575b16afe",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7e7a2eb-b051-4be0-a25d-bf41cea4c0d7",
              "parent_uuid": "0fb3fa4f-9ea8-433f-b6d3-429575b16afe",
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
              "uuid": "a8786e63-f139-4970-a0a7-ea09aa41f89a",
              "parent_uuid": "0fb3fa4f-9ea8-433f-b6d3-429575b16afe",
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
              "uuid": "1210a489-ece9-47b3-b330-11f98b108acc",
              "parent_uuid": "0fb3fa4f-9ea8-433f-b6d3-429575b16afe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f79dc41-01c4-41b8-801e-f379b4cea045",
                  "parent_uuid": "1210a489-ece9-47b3-b330-11f98b108acc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6df75bfe-5c32-4323-af24-9eb0a0801e3a",
              "parent_uuid": "0fb3fa4f-9ea8-433f-b6d3-429575b16afe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75c36fac-9fe8-4aa1-ad28-d7a9fd683a8a",
                  "parent_uuid": "6df75bfe-5c32-4323-af24-9eb0a0801e3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "995abb19-1d00-452b-9fad-f517fce4ace5",
              "parent_uuid": "0fb3fa4f-9ea8-433f-b6d3-429575b16afe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25310560-7072-4161-a1cf-40706f9287f2",
                  "parent_uuid": "995abb19-1d00-452b-9fad-f517fce4ace5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "16fd8fb9-6992-42af-a53d-faad6510b547",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ded30d2-d05e-4adf-b452-c12fdbdd7a70",
              "parent_uuid": "16fd8fb9-6992-42af-a53d-faad6510b547",
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
              "uuid": "52e44a3c-8682-452b-af10-e298335999ca",
              "parent_uuid": "16fd8fb9-6992-42af-a53d-faad6510b547",
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
              "uuid": "8f7336e4-386b-4b5a-99e0-68c77a20ee3c",
              "parent_uuid": "16fd8fb9-6992-42af-a53d-faad6510b547",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69b785af-e4a3-4f28-88cf-0ce046111b40",
                  "parent_uuid": "8f7336e4-386b-4b5a-99e0-68c77a20ee3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "031f7b92-9880-420f-aae2-d463abdcfc12",
              "parent_uuid": "16fd8fb9-6992-42af-a53d-faad6510b547",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de280b10-cd7a-4d6e-8384-7ed7390f88b2",
                  "parent_uuid": "031f7b92-9880-420f-aae2-d463abdcfc12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f886cdc-d3a1-45ef-9dfa-393a57da495b",
              "parent_uuid": "16fd8fb9-6992-42af-a53d-faad6510b547",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "055b1fb9-5c4f-4a31-b385-9f36ec91ad55",
                  "parent_uuid": "4f886cdc-d3a1-45ef-9dfa-393a57da495b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "30962b68-61b5-4b05-bd90-3f2b9043073e",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d76f286d-d790-4028-83c3-61df89cf00dd",
              "parent_uuid": "30962b68-61b5-4b05-bd90-3f2b9043073e",
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
              "uuid": "712a762b-18bc-49f4-bd6b-243515edb03e",
              "parent_uuid": "30962b68-61b5-4b05-bd90-3f2b9043073e",
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
              "uuid": "d486b5e4-e060-409d-b1d0-eeb25361905b",
              "parent_uuid": "30962b68-61b5-4b05-bd90-3f2b9043073e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd3c0d4b-87d4-4440-80e2-935541a2983d",
                  "parent_uuid": "d486b5e4-e060-409d-b1d0-eeb25361905b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3f6082b-c0a2-4802-92c9-f905a721a8bc",
              "parent_uuid": "30962b68-61b5-4b05-bd90-3f2b9043073e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a01a649e-42a2-43c6-a852-5fb59ebed1a2",
                  "parent_uuid": "f3f6082b-c0a2-4802-92c9-f905a721a8bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a86c1d9-a1c5-4b3d-8546-69228b581663",
              "parent_uuid": "30962b68-61b5-4b05-bd90-3f2b9043073e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34f100c4-d997-4609-b41e-1797f7741475",
                  "parent_uuid": "2a86c1d9-a1c5-4b3d-8546-69228b581663",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "974d5f77-8504-4c3b-9d0f-740579f847b1",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31bfdffe-b7f5-43a0-bb02-7f231730ff6a",
              "parent_uuid": "974d5f77-8504-4c3b-9d0f-740579f847b1",
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
          "uuid": "e85ceca5-a2c0-4045-b27f-f944b0ea07a5",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "510dad8f-8bae-494e-a27d-92d2c1d70b79",
              "parent_uuid": "e85ceca5-a2c0-4045-b27f-f944b0ea07a5",
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
          "uuid": "f94b8191-147e-44cd-89f6-006ae44b54bf",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9952391-d51e-4229-b3f5-27c1a08b58f0",
              "parent_uuid": "f94b8191-147e-44cd-89f6-006ae44b54bf",
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
                  "uuid": "fb786e9e-8885-43d0-950e-48abdd4a7a38",
                  "parent_uuid": "d9952391-d51e-4229-b3f5-27c1a08b58f0",
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
          "uuid": "9374f210-f28b-41ac-8d69-a8bfd954a5aa",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "bc68fb6b-d974-4c9f-9b96-6c0da1194a13",
              "parent_uuid": "9374f210-f28b-41ac-8d69-a8bfd954a5aa",
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
          "uuid": "9f93fb20-3dc4-4521-80ca-b53911de9863",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2e744d3b-7d6d-47f4-8505-2c4386fb00f9",
              "parent_uuid": "9f93fb20-3dc4-4521-80ca-b53911de9863",
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
          "uuid": "63355b51-f94b-4e0a-9c5f-325664b44224",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34c102a7-ba5f-43ad-8710-01fa92b5929c",
              "parent_uuid": "63355b51-f94b-4e0a-9c5f-325664b44224",
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
              "uuid": "ec2094ee-4af4-487f-84ba-b232c03d0083",
              "parent_uuid": "63355b51-f94b-4e0a-9c5f-325664b44224",
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
              "uuid": "319f44c1-95b6-4254-9708-8c2994753062",
              "parent_uuid": "63355b51-f94b-4e0a-9c5f-325664b44224",
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
              "uuid": "493a4bf6-d1e4-4ce1-a9d5-79c120aea41e",
              "parent_uuid": "63355b51-f94b-4e0a-9c5f-325664b44224",
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
              "uuid": "87079b80-d684-4d6a-b873-a1a344a8b261",
              "parent_uuid": "63355b51-f94b-4e0a-9c5f-325664b44224",
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
          "uuid": "5729abb0-0bd9-4ad2-b8fe-c36a64bc867e",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "132ce4ba-79bf-452b-a66b-3afbe3d9304a",
              "parent_uuid": "5729abb0-0bd9-4ad2-b8fe-c36a64bc867e",
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
              "uuid": "cd093026-2a5c-4909-a437-5f26ce625b49",
              "parent_uuid": "5729abb0-0bd9-4ad2-b8fe-c36a64bc867e",
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
              "uuid": "404b373a-3933-4028-aacd-32d6b7877b55",
              "parent_uuid": "5729abb0-0bd9-4ad2-b8fe-c36a64bc867e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f80f585d-42ce-43bc-b1f5-70ce42e5dff5",
                  "parent_uuid": "404b373a-3933-4028-aacd-32d6b7877b55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8bf5a1d-f563-4a6a-846c-20a3390cc556",
              "parent_uuid": "5729abb0-0bd9-4ad2-b8fe-c36a64bc867e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58f4e5b1-5864-49ab-beef-20ec1a824b45",
                  "parent_uuid": "e8bf5a1d-f563-4a6a-846c-20a3390cc556",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1223b51e-e346-4c82-bdbc-2a6e0378dbec",
              "parent_uuid": "5729abb0-0bd9-4ad2-b8fe-c36a64bc867e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97ac912e-a85a-46a2-8886-6442919a72ab",
                  "parent_uuid": "1223b51e-e346-4c82-bdbc-2a6e0378dbec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "97c827a1-b977-44d1-83b2-dce758d3d642",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "939981d1-f125-44e5-8595-95c9f0507c07",
              "parent_uuid": "97c827a1-b977-44d1-83b2-dce758d3d642",
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
              "uuid": "e2b4fd2d-5319-4830-a96c-f0ff0edbb968",
              "parent_uuid": "97c827a1-b977-44d1-83b2-dce758d3d642",
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
              "uuid": "afd9679a-93cb-48f0-8657-a89a2d517469",
              "parent_uuid": "97c827a1-b977-44d1-83b2-dce758d3d642",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e21b4c1-d6d5-4da6-abb1-47671049a28f",
                  "parent_uuid": "afd9679a-93cb-48f0-8657-a89a2d517469",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "459b7254-bec5-421a-b00f-6c1a4a9b03c7",
              "parent_uuid": "97c827a1-b977-44d1-83b2-dce758d3d642",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e27d721-fbf4-4ae2-9823-64bfa3854727",
                  "parent_uuid": "459b7254-bec5-421a-b00f-6c1a4a9b03c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b16aec8-bab6-4cc9-80a5-5d63787af43f",
              "parent_uuid": "97c827a1-b977-44d1-83b2-dce758d3d642",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20c91878-dc15-4e06-8aa6-0fa6bf44d12e",
                  "parent_uuid": "3b16aec8-bab6-4cc9-80a5-5d63787af43f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "089796ba-d4b8-491e-8725-187fa279dfd5",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81d7e3bc-9a0c-41d3-b6e3-cb866b99a2ff",
              "parent_uuid": "089796ba-d4b8-491e-8725-187fa279dfd5",
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
              "uuid": "31da1cff-a1fd-496c-8b6e-a66e144d37e2",
              "parent_uuid": "089796ba-d4b8-491e-8725-187fa279dfd5",
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
              "uuid": "781aca12-7a39-4c4a-851a-e6903ccf8d42",
              "parent_uuid": "089796ba-d4b8-491e-8725-187fa279dfd5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1d64c66-3dba-4f13-910a-b54e5dfc184f",
                  "parent_uuid": "781aca12-7a39-4c4a-851a-e6903ccf8d42",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b577fb34-2d7e-4460-bb3e-ae78e95105c9",
              "parent_uuid": "089796ba-d4b8-491e-8725-187fa279dfd5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "965347c3-da76-4f4e-a521-c71ca72b5dc1",
                  "parent_uuid": "b577fb34-2d7e-4460-bb3e-ae78e95105c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1564ed3f-c555-4a43-a5cc-a183aa69ca96",
              "parent_uuid": "089796ba-d4b8-491e-8725-187fa279dfd5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90cc3de4-081e-4570-874b-c1ed881ef4d9",
                  "parent_uuid": "1564ed3f-c555-4a43-a5cc-a183aa69ca96",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7238b5d-ce12-46db-91a3-c73ee15e96de",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ad09a11-d10c-4b49-972d-d2739afe2079",
              "parent_uuid": "a7238b5d-ce12-46db-91a3-c73ee15e96de",
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
              "uuid": "e3b37e15-4be7-4f97-955f-1388ed0ff128",
              "parent_uuid": "a7238b5d-ce12-46db-91a3-c73ee15e96de",
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
              "uuid": "10886f3f-4794-49fb-b771-1d36eb4b2e38",
              "parent_uuid": "a7238b5d-ce12-46db-91a3-c73ee15e96de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c545c6cb-45ab-4d49-a8e9-c2abe905b900",
                  "parent_uuid": "10886f3f-4794-49fb-b771-1d36eb4b2e38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e1ae47d-3a02-42be-8c96-c4d77d812920",
              "parent_uuid": "a7238b5d-ce12-46db-91a3-c73ee15e96de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fe28669-cbfc-4017-a3d0-4c39864feb1a",
                  "parent_uuid": "4e1ae47d-3a02-42be-8c96-c4d77d812920",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c11fc2ca-1595-4d89-80ce-3eb84ea028b2",
              "parent_uuid": "a7238b5d-ce12-46db-91a3-c73ee15e96de",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02f1e1a5-4048-471e-8fe3-a1bc7f2ba2e6",
                  "parent_uuid": "c11fc2ca-1595-4d89-80ce-3eb84ea028b2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e7683f4c-31aa-4960-867c-2174125028f0",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de1c9852-3f49-40d3-a850-447359a029ff",
              "parent_uuid": "e7683f4c-31aa-4960-867c-2174125028f0",
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
              "uuid": "c9f18222-5da2-4281-916a-5d1d5ecb5624",
              "parent_uuid": "e7683f4c-31aa-4960-867c-2174125028f0",
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
              "uuid": "5c768214-e284-4e48-a2da-94810253c9a9",
              "parent_uuid": "e7683f4c-31aa-4960-867c-2174125028f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a09e5b5-734f-43b7-b13d-1ecda235cd36",
                  "parent_uuid": "5c768214-e284-4e48-a2da-94810253c9a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecc031e8-bd29-478e-9b71-0742701cb8d2",
              "parent_uuid": "e7683f4c-31aa-4960-867c-2174125028f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d22b1afa-2d44-43ef-a5fe-9a90c51dcf49",
                  "parent_uuid": "ecc031e8-bd29-478e-9b71-0742701cb8d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57255df4-16c6-41bc-b7d4-2f6da43279fb",
              "parent_uuid": "e7683f4c-31aa-4960-867c-2174125028f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa35ff53-b24c-4f78-9f1a-a9feb8575aaf",
                  "parent_uuid": "57255df4-16c6-41bc-b7d4-2f6da43279fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a3d44a9-764c-4f12-9032-cb6cd67e82ed",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb008cf9-4091-4cc4-a028-e159572ce284",
              "parent_uuid": "2a3d44a9-764c-4f12-9032-cb6cd67e82ed",
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
              "uuid": "95749f22-b685-4fde-800e-bc40e89ce4f9",
              "parent_uuid": "2a3d44a9-764c-4f12-9032-cb6cd67e82ed",
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
              "uuid": "a7a3246e-4c4d-40fb-81ce-4d02defddb57",
              "parent_uuid": "2a3d44a9-764c-4f12-9032-cb6cd67e82ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "094a18d3-297c-4cc3-a2b8-f828902d753e",
                  "parent_uuid": "a7a3246e-4c4d-40fb-81ce-4d02defddb57",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0051b535-ce4b-4bad-9f6c-d07692a44103",
              "parent_uuid": "2a3d44a9-764c-4f12-9032-cb6cd67e82ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ace9057-d56b-4e33-9a69-a450413db3bf",
                  "parent_uuid": "0051b535-ce4b-4bad-9f6c-d07692a44103",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b2d25e2-d973-4ca9-87b3-cb31c112209f",
              "parent_uuid": "2a3d44a9-764c-4f12-9032-cb6cd67e82ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43b9bf43-e9f9-464a-99e3-feba4cb743e6",
                  "parent_uuid": "4b2d25e2-d973-4ca9-87b3-cb31c112209f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c6dace6-2ae6-4f68-ade2-10fed14a0a68",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bdd53bc4-c4d2-455b-8954-2b46fcba1689",
              "parent_uuid": "7c6dace6-2ae6-4f68-ade2-10fed14a0a68",
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
          "uuid": "4d3e2264-52bd-4641-90cb-b9948e288219",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d6eadfc-dc51-406f-92f6-9880b24fd374",
              "parent_uuid": "4d3e2264-52bd-4641-90cb-b9948e288219",
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
          "uuid": "44e6191a-a851-440c-8f7b-0363019c72b8",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "633de31f-e725-4580-beae-683bbb5031e7",
              "parent_uuid": "44e6191a-a851-440c-8f7b-0363019c72b8",
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
                  "uuid": "5a12cc92-821a-459e-babe-c6fa5d2834c9",
                  "parent_uuid": "633de31f-e725-4580-beae-683bbb5031e7",
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
          "uuid": "c5c427d2-0582-4f1c-92fb-e3f92496a479",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "121f2314-06e3-423a-a691-3e31af9606ae",
              "parent_uuid": "c5c427d2-0582-4f1c-92fb-e3f92496a479",
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
          "uuid": "5ca0a938-bed3-4c1c-8f86-df4be6c7fbf4",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5b4ceb7f-6f77-4588-a4d1-6006c3878faf",
              "parent_uuid": "5ca0a938-bed3-4c1c-8f86-df4be6c7fbf4",
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
          "uuid": "5055f430-4d79-420c-a095-fbee39e92826",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88e342b6-d6f1-4ee0-af7b-3d8fd69b8437",
              "parent_uuid": "5055f430-4d79-420c-a095-fbee39e92826",
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
              "uuid": "005a8c4c-fb82-4fa1-88a4-8658d1406dc5",
              "parent_uuid": "5055f430-4d79-420c-a095-fbee39e92826",
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
              "uuid": "aea108f3-d960-4100-a7c5-c546cb5df59c",
              "parent_uuid": "5055f430-4d79-420c-a095-fbee39e92826",
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
              "uuid": "413e4f8d-cbc4-4d25-bba2-ca1c31c11a9d",
              "parent_uuid": "5055f430-4d79-420c-a095-fbee39e92826",
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
          "uuid": "36fd3b1b-53a1-4839-86ea-6a660eac51a3",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f7fbf63-379e-4f65-8de4-cdc1d1d37937",
              "parent_uuid": "36fd3b1b-53a1-4839-86ea-6a660eac51a3",
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
              "uuid": "ac574c8b-99e1-4d8c-bd2a-e143fe94422f",
              "parent_uuid": "36fd3b1b-53a1-4839-86ea-6a660eac51a3",
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
              "uuid": "e0fd9877-fbcb-4389-9157-7cc792ffdfb3",
              "parent_uuid": "36fd3b1b-53a1-4839-86ea-6a660eac51a3",
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
              "uuid": "5e3ebe75-4ca7-4790-b35c-8289eb78e28d",
              "parent_uuid": "36fd3b1b-53a1-4839-86ea-6a660eac51a3",
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
          "uuid": "20c1f7bf-61f5-4a7c-9527-4251506ca9cf",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a1c9111-3215-4516-94f8-fb5f1b1108ee",
              "parent_uuid": "20c1f7bf-61f5-4a7c-9527-4251506ca9cf",
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
              "uuid": "6d9062e0-556b-46e6-8762-e9135e2e9dd0",
              "parent_uuid": "20c1f7bf-61f5-4a7c-9527-4251506ca9cf",
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
              "uuid": "26e5b06c-e2a8-4385-83e1-d9246034d977",
              "parent_uuid": "20c1f7bf-61f5-4a7c-9527-4251506ca9cf",
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
              "uuid": "e747046f-85c2-40d1-84e1-dab4c49a0942",
              "parent_uuid": "20c1f7bf-61f5-4a7c-9527-4251506ca9cf",
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
          "uuid": "c9321b7c-b9dd-405d-94d1-5c6c8ef86974",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f74c280e-0386-4f92-91b4-4ac6d6bdbd66",
              "parent_uuid": "c9321b7c-b9dd-405d-94d1-5c6c8ef86974",
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
              "uuid": "abc5b0c2-808d-4980-bb32-6dc69f5a8039",
              "parent_uuid": "c9321b7c-b9dd-405d-94d1-5c6c8ef86974",
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
              "uuid": "b9e55567-4d49-4cc7-842e-d0fea4a67c54",
              "parent_uuid": "c9321b7c-b9dd-405d-94d1-5c6c8ef86974",
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
              "uuid": "cc162e4d-4821-4449-9417-8a3732113fc4",
              "parent_uuid": "c9321b7c-b9dd-405d-94d1-5c6c8ef86974",
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
          "uuid": "183bc8ef-2859-49e0-a2d1-8a39ba92c572",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a633715-1bd8-4c06-a219-a11b49e54e55",
              "parent_uuid": "183bc8ef-2859-49e0-a2d1-8a39ba92c572",
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
              "uuid": "5c7f792d-49d8-472f-97b7-5d904211c865",
              "parent_uuid": "183bc8ef-2859-49e0-a2d1-8a39ba92c572",
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
              "uuid": "45e7397b-90a4-4f32-92d0-9b478feac79d",
              "parent_uuid": "183bc8ef-2859-49e0-a2d1-8a39ba92c572",
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
              "uuid": "b65c1dbb-e091-4338-abc3-80e33b4ab1de",
              "parent_uuid": "183bc8ef-2859-49e0-a2d1-8a39ba92c572",
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
          "uuid": "d946be3d-99a5-4b84-a336-14271ba4f88c",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a4a3128-9fce-4416-a2b2-6f3c494e8b5f",
              "parent_uuid": "d946be3d-99a5-4b84-a336-14271ba4f88c",
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
              "uuid": "94f6547f-44fc-48f0-b984-1c7c349c5566",
              "parent_uuid": "d946be3d-99a5-4b84-a336-14271ba4f88c",
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
              "uuid": "3e256db0-69cc-4296-996a-297f5d6e39a8",
              "parent_uuid": "d946be3d-99a5-4b84-a336-14271ba4f88c",
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
              "uuid": "5574a7a5-8dc6-4ab7-854b-5bfafd65564e",
              "parent_uuid": "d946be3d-99a5-4b84-a336-14271ba4f88c",
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
          "uuid": "c4b98b36-f0e9-44f1-939b-05c8b2f6a7ff",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "128c6e7d-a53c-4935-8204-06f528b6e873",
              "parent_uuid": "c4b98b36-f0e9-44f1-939b-05c8b2f6a7ff",
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
              "uuid": "7ccca84a-8f0b-412d-868c-19c7092d5409",
              "parent_uuid": "c4b98b36-f0e9-44f1-939b-05c8b2f6a7ff",
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
              "uuid": "e88ed510-6b48-4987-b85b-833057c6368a",
              "parent_uuid": "c4b98b36-f0e9-44f1-939b-05c8b2f6a7ff",
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
              "uuid": "9c21bc7e-9982-4f77-8b0e-9232ddf1b2ba",
              "parent_uuid": "c4b98b36-f0e9-44f1-939b-05c8b2f6a7ff",
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
          "uuid": "ec2fd3a8-f1dc-450f-8fba-d9b04b48b68e",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3c678ca-2db0-4d54-9a36-0e265b546b32",
              "parent_uuid": "ec2fd3a8-f1dc-450f-8fba-d9b04b48b68e",
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
              "uuid": "b718d12a-0734-4c8c-848b-e94b2b8fd043",
              "parent_uuid": "ec2fd3a8-f1dc-450f-8fba-d9b04b48b68e",
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
              "uuid": "a2702362-1314-4168-b99a-29971a5e3840",
              "parent_uuid": "ec2fd3a8-f1dc-450f-8fba-d9b04b48b68e",
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
              "uuid": "19e05646-3838-4d1e-95d8-6b7d163a7cba",
              "parent_uuid": "ec2fd3a8-f1dc-450f-8fba-d9b04b48b68e",
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
          "uuid": "e4fd084c-d530-48d4-994c-e5fca016faed",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "502adcbd-3401-4099-8ebe-9853adf6d889",
              "parent_uuid": "e4fd084c-d530-48d4-994c-e5fca016faed",
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
              "uuid": "b78a6344-8458-41b1-870b-6c75d86b2713",
              "parent_uuid": "e4fd084c-d530-48d4-994c-e5fca016faed",
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
              "uuid": "6238e821-8816-4c93-ad3b-0d9ec08e8f76",
              "parent_uuid": "e4fd084c-d530-48d4-994c-e5fca016faed",
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
              "uuid": "1a69a6fe-d553-4a6a-9472-068e0dad752b",
              "parent_uuid": "e4fd084c-d530-48d4-994c-e5fca016faed",
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
          "uuid": "de7bd0db-2453-42e4-8d53-61c0d5ccd126",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9c30a02-aab7-488f-b309-6a9cd1e41c10",
              "parent_uuid": "de7bd0db-2453-42e4-8d53-61c0d5ccd126",
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
              "uuid": "95fef63b-858c-48da-8750-3b996998059e",
              "parent_uuid": "de7bd0db-2453-42e4-8d53-61c0d5ccd126",
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
              "uuid": "71b54647-1ab0-4b56-beb9-8aa7bc89db52",
              "parent_uuid": "de7bd0db-2453-42e4-8d53-61c0d5ccd126",
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
              "uuid": "76f2bd34-a1e4-4185-89ec-7bd9eba10828",
              "parent_uuid": "de7bd0db-2453-42e4-8d53-61c0d5ccd126",
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
          "uuid": "047c0623-72ec-4132-b8b7-3a8e35c7d1e1",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "096083e9-31d3-41bc-b38d-94a089ebe923",
              "parent_uuid": "047c0623-72ec-4132-b8b7-3a8e35c7d1e1",
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
              "uuid": "10c7d867-9f52-4447-ab82-80b2ad62621c",
              "parent_uuid": "047c0623-72ec-4132-b8b7-3a8e35c7d1e1",
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
              "uuid": "c1393cd9-85af-4d2e-b6bb-ac37eddeda18",
              "parent_uuid": "047c0623-72ec-4132-b8b7-3a8e35c7d1e1",
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
              "uuid": "25a81f65-6808-45ca-96cf-9fe3173d2b61",
              "parent_uuid": "047c0623-72ec-4132-b8b7-3a8e35c7d1e1",
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
          "uuid": "4bc070df-2959-4cf3-bd96-913242756e29",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4610d337-4f27-4429-8347-b75ee83c6e3e",
              "parent_uuid": "4bc070df-2959-4cf3-bd96-913242756e29",
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
              "uuid": "07c3f16c-87b2-4cbe-90e2-255cf6b28464",
              "parent_uuid": "4bc070df-2959-4cf3-bd96-913242756e29",
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
              "uuid": "d20ed1d7-ad57-4ad9-b3e7-c174d8a5d5ca",
              "parent_uuid": "4bc070df-2959-4cf3-bd96-913242756e29",
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
              "uuid": "05f6842a-65d3-42e5-bab2-ae8707ff10b5",
              "parent_uuid": "4bc070df-2959-4cf3-bd96-913242756e29",
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
          "uuid": "be8593e7-6b9e-45b4-98e8-8e1f057393fe",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62a3ce61-b3e6-451d-8696-5f4301b10fab",
              "parent_uuid": "be8593e7-6b9e-45b4-98e8-8e1f057393fe",
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
              "uuid": "364ceb39-27ed-45b6-9369-76ad1babe3ed",
              "parent_uuid": "be8593e7-6b9e-45b4-98e8-8e1f057393fe",
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
              "uuid": "4569848d-7a4a-4e56-b815-9929e0af139d",
              "parent_uuid": "be8593e7-6b9e-45b4-98e8-8e1f057393fe",
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
              "uuid": "aa8f809c-9524-4ac0-9809-6a8b13a8fda2",
              "parent_uuid": "be8593e7-6b9e-45b4-98e8-8e1f057393fe",
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
          "uuid": "18263acb-3a4e-49b2-a3fe-47720bcf1b27",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c4b33e5-e210-47ad-82d9-6edee4046fa3",
              "parent_uuid": "18263acb-3a4e-49b2-a3fe-47720bcf1b27",
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
          "uuid": "8804b886-81d9-4149-a3fe-8a1ce209390d",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c5a1d89-c05f-4478-aabd-393179bc5b5b",
              "parent_uuid": "8804b886-81d9-4149-a3fe-8a1ce209390d",
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
          "uuid": "3f2a0d2f-e6f9-4378-b177-d69bdb1cd64c",
          "parent_uuid": "baee9bbe-8c28-427b-bfc4-76ed01a92ab3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26b028e5-8bb6-48e5-a525-ba1659c6dce5",
              "parent_uuid": "3f2a0d2f-e6f9-4378-b177-d69bdb1cd64c",
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
                  "uuid": "a43ee786-dca2-4509-a985-2b6a0a7e1dc8",
                  "parent_uuid": "26b028e5-8bb6-48e5-a525-ba1659c6dce5",
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
		,'26456198-0699-4718-AAF7-B8119BE9D705' AS ELE_CLV_UID -- uniqueidentifier
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
SET @__cl_uid = 'F1A2DD8A-2D11-496E-9B14-13559405089F'; 

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

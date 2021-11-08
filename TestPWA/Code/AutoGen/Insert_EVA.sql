
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
  "uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "3918dbfd-4c8e-4abc-90bf-0628442200ed",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "8aeb8d3f-15e6-46b0-80a4-9342dfb9c0c9",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "c605edda-1e55-4345-8504-df798e49508d",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "f60bd1f9-7402-4745-8ee0-a9bb50872859",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "c301a96f-d19d-45b4-a0cc-c501e4751cf9",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "5740ecaa-dc3d-4ce2-856d-bb686a1066f5",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "856aea24-ff0a-4972-a0da-cb026b45e76b",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
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
      "uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
      "parent_uuid": "e27e7a4d-5df7-4ac6-866e-1e45b5f4be49",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "5d39bd37-92c4-4fcc-9827-24e8666f50b0",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "43486f48-0155-49c3-8ed8-e8bae45aa72f",
              "parent_uuid": "5d39bd37-92c4-4fcc-9827-24e8666f50b0",
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
              "uuid": "17b46796-80ee-4cc2-b0d4-be19335bab65",
              "parent_uuid": "5d39bd37-92c4-4fcc-9827-24e8666f50b0",
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
              "uuid": "9976af40-e317-4e1b-bdee-c05481b52467",
              "parent_uuid": "5d39bd37-92c4-4fcc-9827-24e8666f50b0",
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
              "uuid": "110e3172-a0be-4197-a023-3b5a0a598ffa",
              "parent_uuid": "5d39bd37-92c4-4fcc-9827-24e8666f50b0",
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
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Ent- und Verpackungsanlage</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "ef0ff1bf-5f39-4ad2-9d93-1c69c57348a0",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "c3b888c7-4d7d-4fe6-a792-114c8e6e9daa",
              "parent_uuid": "ef0ff1bf-5f39-4ad2-9d93-1c69c57348a0",
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
              "uuid": "1a2a2058-80d5-4495-85a0-9dfc5d006c4d",
              "parent_uuid": "ef0ff1bf-5f39-4ad2-9d93-1c69c57348a0",
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
              "uuid": "9ac87fbe-4b9a-4671-907e-4d389a4fcb7e",
              "parent_uuid": "ef0ff1bf-5f39-4ad2-9d93-1c69c57348a0",
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
              "uuid": "f7a25dae-20d6-4396-87fd-fc68ea24ec0c",
              "parent_uuid": "ef0ff1bf-5f39-4ad2-9d93-1c69c57348a0",
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
          "uuid": "ec24c15f-7426-4c1f-a911-2877ed9a89b1",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "249ed306-4fd0-4214-b4dd-060877bc6a1b",
              "parent_uuid": "ec24c15f-7426-4c1f-a911-2877ed9a89b1",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1cdf007c-0c57-4f73-b007-f0b62c1d13c0",
              "parent_uuid": "ec24c15f-7426-4c1f-a911-2877ed9a89b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4.5cm;"
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
              "uuid": "1977a8e4-a591-4b6a-89ce-c9bbd0887a8b",
              "parent_uuid": "ec24c15f-7426-4c1f-a911-2877ed9a89b1",
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
              "uuid": "0d261c68-45c6-4a45-bb68-a323981a7ed9",
              "parent_uuid": "ec24c15f-7426-4c1f-a911-2877ed9a89b1",
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
              "uuid": "1889c551-71b6-4c7a-ab39-e991bc25957b",
              "parent_uuid": "ec24c15f-7426-4c1f-a911-2877ed9a89b1",
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
              "uuid": "e46e740d-a3ae-4ab6-93b6-7d307388f172",
              "parent_uuid": "ec24c15f-7426-4c1f-a911-2877ed9a89b1",
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
          "uuid": "caaac3c3-d82c-4771-ac35-9784dd816f22",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "716ff718-7776-4d0c-a81a-c69146c48f76",
              "parent_uuid": "caaac3c3-d82c-4771-ac35-9784dd816f22",
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
          "uuid": "9bdb23ec-0e41-44bb-a448-552b9209f131",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "007355ee-4b5e-44ee-8d66-de707b807109",
              "parent_uuid": "9bdb23ec-0e41-44bb-a448-552b9209f131",
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
              "uuid": "0fd577d3-afba-459a-8d36-f9cbdf8589e8",
              "parent_uuid": "9bdb23ec-0e41-44bb-a448-552b9209f131",
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
              "uuid": "87b79b2a-90e5-42c7-ac93-dec6dec7f96a",
              "parent_uuid": "9bdb23ec-0e41-44bb-a448-552b9209f131",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1e55c3c-e796-454c-b088-0e189332c06f",
                  "parent_uuid": "87b79b2a-90e5-42c7-ac93-dec6dec7f96a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "340a32ee-1711-4dcd-8eba-a4c094f49e9a",
              "parent_uuid": "9bdb23ec-0e41-44bb-a448-552b9209f131",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe08cdb8-753d-453a-b66f-28fb0d60637a",
                  "parent_uuid": "340a32ee-1711-4dcd-8eba-a4c094f49e9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e491395d-eff8-424b-9dc5-1e0b505cfc7b",
              "parent_uuid": "9bdb23ec-0e41-44bb-a448-552b9209f131",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63c74c07-54fd-4335-875d-a44afb909e83",
                  "parent_uuid": "e491395d-eff8-424b-9dc5-1e0b505cfc7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a655b76-b84d-42c1-bbaf-fc6de220383a",
              "parent_uuid": "9bdb23ec-0e41-44bb-a448-552b9209f131",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01647d52-86aa-4d5d-aaec-dbfb3f721d6b",
                  "parent_uuid": "9a655b76-b84d-42c1-bbaf-fc6de220383a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a9c85b3-2886-4589-bcfb-591eeb96530c",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e2d49af-fcaf-4561-8e32-6eb89649fc49",
              "parent_uuid": "2a9c85b3-2886-4589-bcfb-591eeb96530c",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Sicherheitsschalter beim Steigband</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "da3ec3bc-95b5-4fc1-b50e-d3cb27445505",
              "parent_uuid": "2a9c85b3-2886-4589-bcfb-591eeb96530c",
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
              "uuid": "5c1c00bb-cbdc-4948-87c7-bd6dd812e93c",
              "parent_uuid": "2a9c85b3-2886-4589-bcfb-591eeb96530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44272925-dc96-4409-9f80-ca083700eda9",
                  "parent_uuid": "5c1c00bb-cbdc-4948-87c7-bd6dd812e93c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e81f915-bd76-4c2e-b627-86794cbf57ac",
              "parent_uuid": "2a9c85b3-2886-4589-bcfb-591eeb96530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bda0e9e-387b-4352-9382-3e8171e0c82c",
                  "parent_uuid": "9e81f915-bd76-4c2e-b627-86794cbf57ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26697426-054d-41c3-b25d-3024ee201efd",
              "parent_uuid": "2a9c85b3-2886-4589-bcfb-591eeb96530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb86ffc9-6051-4f86-9d5f-2e6272207681",
                  "parent_uuid": "26697426-054d-41c3-b25d-3024ee201efd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be754547-628f-4361-bd96-259db0a677c2",
              "parent_uuid": "2a9c85b3-2886-4589-bcfb-591eeb96530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d077e46-ea1c-466a-852b-d5ccfe8aa92b",
                  "parent_uuid": "be754547-628f-4361-bd96-259db0a677c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "43ab960b-c1f8-4eea-849b-a67d893cab52",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "681b26b0-4906-4be1-b5ac-e4e7203d3300",
              "parent_uuid": "43ab960b-c1f8-4eea-849b-a67d893cab52",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "255acea4-82df-430b-9777-809f13fffb11",
              "parent_uuid": "43ab960b-c1f8-4eea-849b-a67d893cab52",
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
              "uuid": "fd22c183-af70-4ddc-a564-bb37cfebf39e",
              "parent_uuid": "43ab960b-c1f8-4eea-849b-a67d893cab52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d02d403-a785-4fc2-aed2-c903cfd588f5",
                  "parent_uuid": "fd22c183-af70-4ddc-a564-bb37cfebf39e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2850653b-9058-4fe4-8dad-4ce2b22fc921",
              "parent_uuid": "43ab960b-c1f8-4eea-849b-a67d893cab52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba39aa9b-9c2a-4fd8-8af0-2596aab0ce3a",
                  "parent_uuid": "2850653b-9058-4fe4-8dad-4ce2b22fc921",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c57981a-2759-491a-bce2-c1fbd3cf00b5",
              "parent_uuid": "43ab960b-c1f8-4eea-849b-a67d893cab52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "478fd4ce-5699-40f3-aafc-e6a8fdd7fb17",
                  "parent_uuid": "0c57981a-2759-491a-bce2-c1fbd3cf00b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d19458d-2bd1-484a-8c28-ab85f3f8c5ac",
              "parent_uuid": "43ab960b-c1f8-4eea-849b-a67d893cab52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98690d15-d282-44b9-ab12-c69a24deaedb",
                  "parent_uuid": "4d19458d-2bd1-484a-8c28-ab85f3f8c5ac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f5330eb0-3361-47e8-bc26-f555b20c1486",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60b91295-7f1f-4d70-b212-36abd2d88a6c",
              "parent_uuid": "f5330eb0-3361-47e8-bc26-f555b20c1486",
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
              "innerHtml": "\r\n                    <span>Geräteprüfung nach SNR 462638 durchgeführt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d05783dd-6d99-4392-be94-fcf5a212a8e4",
              "parent_uuid": "f5330eb0-3361-47e8-bc26-f555b20c1486",
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
              "innerHtml": "<span>2J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fdf98b89-9901-4d6f-a5b8-8c62c72289c5",
              "parent_uuid": "f5330eb0-3361-47e8-bc26-f555b20c1486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee0a76cc-0d01-4102-b762-2e0cba2e2a4c",
                  "parent_uuid": "fdf98b89-9901-4d6f-a5b8-8c62c72289c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea629b66-87ba-4a4f-a47b-ca3d7e256b9b",
              "parent_uuid": "f5330eb0-3361-47e8-bc26-f555b20c1486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "333f9d6e-a1c8-4e3b-9acb-c5e73c6f1aad",
                  "parent_uuid": "ea629b66-87ba-4a4f-a47b-ca3d7e256b9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e856414-aef6-451e-b6f7-850fd7b9c12c",
              "parent_uuid": "f5330eb0-3361-47e8-bc26-f555b20c1486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8bab765-95eb-4208-a4bf-b51196bc18cc",
                  "parent_uuid": "0e856414-aef6-451e-b6f7-850fd7b9c12c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27c5eb10-cdd1-4788-b603-1bf3ed5000c4",
              "parent_uuid": "f5330eb0-3361-47e8-bc26-f555b20c1486",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f51da9b7-7b5e-4dae-897c-deec445499e3",
                  "parent_uuid": "27c5eb10-cdd1-4788-b603-1bf3ed5000c4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de32dbba-9f4d-4760-b531-af51eb8092b7",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75f9540a-6aed-4d4d-b557-97f3e09c52e6",
              "parent_uuid": "de32dbba-9f4d-4760-b531-af51eb8092b7",
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
              "innerHtml": "\r\n                    <span>Steigband auf Beschädigungen oder Risse prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c5cc794f-5806-4cef-b31b-663b3bd911b5",
              "parent_uuid": "de32dbba-9f4d-4760-b531-af51eb8092b7",
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
              "uuid": "627e7040-b2d7-45e2-b996-5b0a0678b1d0",
              "parent_uuid": "de32dbba-9f4d-4760-b531-af51eb8092b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a422e323-53f0-4b1f-b5c6-fd7adb8380e8",
                  "parent_uuid": "627e7040-b2d7-45e2-b996-5b0a0678b1d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cbed2d4-9fac-44cf-965c-e933003f9956",
              "parent_uuid": "de32dbba-9f4d-4760-b531-af51eb8092b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b672e1c5-9c92-457c-8f3e-19bc7928a3fc",
                  "parent_uuid": "6cbed2d4-9fac-44cf-965c-e933003f9956",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "98f66eab-00b0-4676-91b2-fa0e64f38e5a",
              "parent_uuid": "de32dbba-9f4d-4760-b531-af51eb8092b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19454493-c02e-43e2-aa75-82ebac3f974e",
                  "parent_uuid": "98f66eab-00b0-4676-91b2-fa0e64f38e5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed35f46f-eac3-4e10-b6e8-2342106ecba5",
              "parent_uuid": "de32dbba-9f4d-4760-b531-af51eb8092b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70a5ce69-b618-4074-b333-5ff913d05884",
                  "parent_uuid": "ed35f46f-eac3-4e10-b6e8-2342106ecba5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "07590bd5-2aa5-4fb8-8f04-b44e2ec7303f",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07951c38-2d8f-4110-9ef7-76a4f7375771",
              "parent_uuid": "07590bd5-2aa5-4fb8-8f04-b44e2ec7303f",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Steigband Zentrierung des Fördergurts prüfen. Der seitliche Abstand links/rechts sollte ca. identisch sein.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "51b80f14-8f57-4b0c-9577-e07ff9ed2bbf",
              "parent_uuid": "07590bd5-2aa5-4fb8-8f04-b44e2ec7303f",
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
              "uuid": "024353e3-dd9b-474c-866c-8c7010aba4b9",
              "parent_uuid": "07590bd5-2aa5-4fb8-8f04-b44e2ec7303f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5881f102-a1b7-4d13-8ad0-a539b2aa0e29",
                  "parent_uuid": "024353e3-dd9b-474c-866c-8c7010aba4b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a44bd9a-fa30-4ddb-a6b1-83a004b479ab",
              "parent_uuid": "07590bd5-2aa5-4fb8-8f04-b44e2ec7303f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fca2c572-de95-4aa1-a000-c45ea07c25fa",
                  "parent_uuid": "9a44bd9a-fa30-4ddb-a6b1-83a004b479ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36a0a500-2b17-43d6-8117-47068557a727",
              "parent_uuid": "07590bd5-2aa5-4fb8-8f04-b44e2ec7303f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a93d31d-4247-41bb-ba71-8ba17d710c8c",
                  "parent_uuid": "36a0a500-2b17-43d6-8117-47068557a727",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc389ce4-6d7e-4a0c-9b68-66665c682747",
              "parent_uuid": "07590bd5-2aa5-4fb8-8f04-b44e2ec7303f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a0af1f5-931a-4def-b7df-daa1ef71ef4c",
                  "parent_uuid": "cc389ce4-6d7e-4a0c-9b68-66665c682747",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "04639212-3958-4d60-aec2-bbd07d0ba592",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a1e3ba3-c85f-4a81-98bb-decd05364700",
              "parent_uuid": "04639212-3958-4d60-aec2-bbd07d0ba592",
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
                  "33"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Transferband auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "be64fb8b-5bd2-49f5-9eda-acb28f0fd374",
              "parent_uuid": "04639212-3958-4d60-aec2-bbd07d0ba592",
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
              "uuid": "aa571261-8137-4cfc-8756-4066b4c66ffc",
              "parent_uuid": "04639212-3958-4d60-aec2-bbd07d0ba592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f689e00-b53e-43dd-90c8-68f912f62116",
                  "parent_uuid": "aa571261-8137-4cfc-8756-4066b4c66ffc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab84ad4d-f4b9-41a3-847e-7b0a19ca6590",
              "parent_uuid": "04639212-3958-4d60-aec2-bbd07d0ba592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0012e827-ccd6-48dd-9b4b-1e0061330cbb",
                  "parent_uuid": "ab84ad4d-f4b9-41a3-847e-7b0a19ca6590",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e9c75db-e270-4ea1-a3b4-b255598eff2d",
              "parent_uuid": "04639212-3958-4d60-aec2-bbd07d0ba592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf581a28-0eed-4921-bda7-a79ecb9e9d62",
                  "parent_uuid": "4e9c75db-e270-4ea1-a3b4-b255598eff2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ca9e652-c16e-4193-a63b-a24768a47c4c",
              "parent_uuid": "04639212-3958-4d60-aec2-bbd07d0ba592",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01d65c4c-c994-4bf5-bbb0-c65cc4abb1f9",
                  "parent_uuid": "1ca9e652-c16e-4193-a63b-a24768a47c4c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f7d87c87-e752-49c6-b7fe-bda41a21ce56",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc49539f-b848-4fc2-b13d-da070488c9bd",
              "parent_uuid": "f7d87c87-e752-49c6-b7fe-bda41a21ce56",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Mitnehmerstege auf den Förderbändern mechanisch prüfen und fixieren wenn gelockert</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ad76bd66-5e5a-4215-b08c-e612216f3271",
              "parent_uuid": "f7d87c87-e752-49c6-b7fe-bda41a21ce56",
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
              "uuid": "6636a4ad-7671-4447-a97e-44973bb9dc18",
              "parent_uuid": "f7d87c87-e752-49c6-b7fe-bda41a21ce56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06652d2c-201d-47dd-9361-2349bd17f6e2",
                  "parent_uuid": "6636a4ad-7671-4447-a97e-44973bb9dc18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8cbc2a5d-bc7c-44bf-a12b-c31e6955e753",
              "parent_uuid": "f7d87c87-e752-49c6-b7fe-bda41a21ce56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ac1c7b3-98d0-4df4-8fbc-b41d8f38067f",
                  "parent_uuid": "8cbc2a5d-bc7c-44bf-a12b-c31e6955e753",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f50fbd0b-c376-4ab6-9ef0-9bfed18c7230",
              "parent_uuid": "f7d87c87-e752-49c6-b7fe-bda41a21ce56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ad28271-fcdc-4d23-96bd-80fcd1f1b2fe",
                  "parent_uuid": "f50fbd0b-c376-4ab6-9ef0-9bfed18c7230",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "783ba5ca-490d-43e5-8670-61074b5b877f",
              "parent_uuid": "f7d87c87-e752-49c6-b7fe-bda41a21ce56",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f15c0e15-5cbb-4924-886e-64269492314c",
                  "parent_uuid": "783ba5ca-490d-43e5-8670-61074b5b877f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8da11a82-d2fb-4cad-a3de-23f1ad3c9d0e",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52fad58d-1c09-4c6e-b7a0-89b0f36af682",
              "parent_uuid": "8da11a82-d2fb-4cad-a3de-23f1ad3c9d0e",
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
              "innerHtml": "\r\n                    <span>Antriebsmotoren für die Transportbänder prüfen (Geräusche, Laufruhe, Lager, Kabelanschlüsse, Schraubenkontrolle)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d5dd6aa0-61c9-4f28-8a62-cfe621d1e7b6",
              "parent_uuid": "8da11a82-d2fb-4cad-a3de-23f1ad3c9d0e",
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
              "uuid": "b1b6a063-5fa3-4c50-a139-512c6487dd2e",
              "parent_uuid": "8da11a82-d2fb-4cad-a3de-23f1ad3c9d0e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b40b6d96-d589-467b-a067-7ee0f4ad40dd",
                  "parent_uuid": "b1b6a063-5fa3-4c50-a139-512c6487dd2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "403c9d9d-bee4-4152-a031-c314e9bb20d3",
              "parent_uuid": "8da11a82-d2fb-4cad-a3de-23f1ad3c9d0e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48208627-7112-40ca-a64f-f477924ba0d7",
                  "parent_uuid": "403c9d9d-bee4-4152-a031-c314e9bb20d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "493bd378-7817-479c-9756-9484708c504b",
              "parent_uuid": "8da11a82-d2fb-4cad-a3de-23f1ad3c9d0e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7fb515c-9c89-4be7-b6d7-4091a2db5dac",
                  "parent_uuid": "493bd378-7817-479c-9756-9484708c504b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f26d770-ede9-49be-924e-58de3cd2c7b6",
              "parent_uuid": "8da11a82-d2fb-4cad-a3de-23f1ad3c9d0e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c2ffd8c-20c9-4ec5-a4c3-18e465d472db",
                  "parent_uuid": "8f26d770-ede9-49be-924e-58de3cd2c7b6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "caa3a61b-ffe9-4cb3-800b-155e4fc49491",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c6c7290-5d80-4cfa-bb33-d54ffecf21dd",
              "parent_uuid": "caa3a61b-ffe9-4cb3-800b-155e4fc49491",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rollenförderer bei Ent- und Verpackungsstation auf Beschädigungen prüfen (Laufruhe, Geräusche, Riemen, Anschlusskabel)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1da6626a-96dd-46e9-adca-d90192e2726d",
              "parent_uuid": "caa3a61b-ffe9-4cb3-800b-155e4fc49491",
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
              "uuid": "fbc8174a-9aef-47a2-b02e-800a082d601a",
              "parent_uuid": "caa3a61b-ffe9-4cb3-800b-155e4fc49491",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "849afdbd-cef4-486d-8954-6bd9edcad6ea",
                  "parent_uuid": "fbc8174a-9aef-47a2-b02e-800a082d601a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d183b401-c1aa-4e7c-b285-762e9762abe7",
              "parent_uuid": "caa3a61b-ffe9-4cb3-800b-155e4fc49491",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fec7dab8-8f94-475a-9d16-69d122ae5d67",
                  "parent_uuid": "d183b401-c1aa-4e7c-b285-762e9762abe7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "094345ab-2c1d-4ad2-81d5-bb0704126201",
              "parent_uuid": "caa3a61b-ffe9-4cb3-800b-155e4fc49491",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82b18c51-64f6-4162-9004-8faeaf675138",
                  "parent_uuid": "094345ab-2c1d-4ad2-81d5-bb0704126201",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36f879b6-d16f-43e0-98a3-ffcb4235380c",
              "parent_uuid": "caa3a61b-ffe9-4cb3-800b-155e4fc49491",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8948319-fffb-4df8-91cc-c6735e958d43",
                  "parent_uuid": "36f879b6-d16f-43e0-98a3-ffcb4235380c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fe1fe375-3bb9-4879-a5d8-e9454e5ec10f",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eafef4d0-d3e3-4e04-9c8a-54ff6dc5ace2",
              "parent_uuid": "fe1fe375-3bb9-4879-a5d8-e9454e5ec10f",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Ausrichtung der Sensoren prüfen (Lichtschranke, Positionsschalter,Reflektoren, Füllstandssensor)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "98f9b961-83e3-43df-ae59-34678136940a",
              "parent_uuid": "fe1fe375-3bb9-4879-a5d8-e9454e5ec10f",
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
              "uuid": "ceea5c81-7698-4ad6-a745-b5da06a2438e",
              "parent_uuid": "fe1fe375-3bb9-4879-a5d8-e9454e5ec10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "238b60fc-86df-47c4-a69d-d95ae25e5766",
                  "parent_uuid": "ceea5c81-7698-4ad6-a745-b5da06a2438e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "050f265e-b401-442c-8e2c-88720ad14516",
              "parent_uuid": "fe1fe375-3bb9-4879-a5d8-e9454e5ec10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d754cad-d230-412e-abfc-5dc2123a4829",
                  "parent_uuid": "050f265e-b401-442c-8e2c-88720ad14516",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bebf4e9-1507-47fc-82aa-55ebd270878e",
              "parent_uuid": "fe1fe375-3bb9-4879-a5d8-e9454e5ec10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a57443cf-c8ff-4b8a-ab14-29f71715e686",
                  "parent_uuid": "4bebf4e9-1507-47fc-82aa-55ebd270878e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3618edfd-99c6-496f-9ee7-33cad58321a5",
              "parent_uuid": "fe1fe375-3bb9-4879-a5d8-e9454e5ec10f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e3ddd3b-d6c4-4b85-9759-70e55825f568",
                  "parent_uuid": "3618edfd-99c6-496f-9ee7-33cad58321a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5a0479d2-e70f-4cf7-9b36-bc97041ef3e6",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c7e175d-3104-4393-875b-9f618fafd513",
              "parent_uuid": "5a0479d2-e70f-4cf7-9b36-bc97041ef3e6",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Linearantriebe bei Befüllung Münzrollierer und Schüttgutcontainer prüfen (Bewegungen, Positionierung, Geräusche)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "66ff2e3f-df95-4078-af9d-f0a0e28187cc",
              "parent_uuid": "5a0479d2-e70f-4cf7-9b36-bc97041ef3e6",
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
              "uuid": "9ee4394f-e14a-449f-aef9-aa76d5d52c86",
              "parent_uuid": "5a0479d2-e70f-4cf7-9b36-bc97041ef3e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04e4abfe-456c-4006-8c76-92699fb72032",
                  "parent_uuid": "9ee4394f-e14a-449f-aef9-aa76d5d52c86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3521598b-1c92-4573-94d2-86b698510b3e",
              "parent_uuid": "5a0479d2-e70f-4cf7-9b36-bc97041ef3e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67c5dd82-74bb-4d73-9250-eee10e14c48c",
                  "parent_uuid": "3521598b-1c92-4573-94d2-86b698510b3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "990d9922-8114-40fe-8ceb-3cc1b5860835",
              "parent_uuid": "5a0479d2-e70f-4cf7-9b36-bc97041ef3e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0afa6c55-9cc2-46d1-a39a-746b31ff64ff",
                  "parent_uuid": "990d9922-8114-40fe-8ceb-3cc1b5860835",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "682b45b9-9484-46fa-af4f-2fa29ac551ae",
              "parent_uuid": "5a0479d2-e70f-4cf7-9b36-bc97041ef3e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a91e37b8-00e0-4bd8-a358-a2619c6a3ee6",
                  "parent_uuid": "682b45b9-9484-46fa-af4f-2fa29ac551ae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "01567778-850b-4900-9ff1-616ec10833c1",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6824ecc5-ad1c-4ccb-8863-01dadbce04ef",
              "parent_uuid": "01567778-850b-4900-9ff1-616ec10833c1",
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
                  "70"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand der zwei Pneumatikeinheiten kontrollieren<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "16d295ae-359e-4052-9017-9c7cfe1d7307",
              "parent_uuid": "01567778-850b-4900-9ff1-616ec10833c1",
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
              "uuid": "16f2ef1c-f170-41e0-8c86-4caeee523758",
              "parent_uuid": "01567778-850b-4900-9ff1-616ec10833c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65996cc5-bc24-4725-9057-43be00951116",
                  "parent_uuid": "16f2ef1c-f170-41e0-8c86-4caeee523758",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "457597e4-4828-48ef-a11a-e47a630ef99f",
              "parent_uuid": "01567778-850b-4900-9ff1-616ec10833c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c07fb2aa-ba75-4a3e-abd0-d59855ce4922",
                  "parent_uuid": "457597e4-4828-48ef-a11a-e47a630ef99f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e44b7cf3-f90c-46be-b9c0-7e181cd50998",
              "parent_uuid": "01567778-850b-4900-9ff1-616ec10833c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8f6eb43-f495-49a1-a323-a028b2b295d1",
                  "parent_uuid": "e44b7cf3-f90c-46be-b9c0-7e181cd50998",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76e9181a-2e96-4712-b7a6-6957757cc3b9",
              "parent_uuid": "01567778-850b-4900-9ff1-616ec10833c1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "707e3178-9bbc-4f91-8831-88ab60b7ecec",
                  "parent_uuid": "76e9181a-2e96-4712-b7a6-6957757cc3b9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "66d38868-c26d-4f03-8a84-1cf921be1163",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1d2323e-54b0-4e6f-b740-17074f083281",
              "parent_uuid": "66d38868-c26d-4f03-8a84-1cf921be1163",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Mechanische Kontrolle der pneumatischen Stopper, Zentrierer, Abschieber bei Münzverpacker prüfen<br>- Bewegungsgeschwindigkeit, Druck<br>- Endanschlag</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2f6cc400-4d18-4320-9459-40077589719b",
              "parent_uuid": "66d38868-c26d-4f03-8a84-1cf921be1163",
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
              "uuid": "7e7e8416-921d-466c-9ff7-a1579cb59eda",
              "parent_uuid": "66d38868-c26d-4f03-8a84-1cf921be1163",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a1fb1d5-75e1-4a5f-9d6a-60f38c6ea5ee",
                  "parent_uuid": "7e7e8416-921d-466c-9ff7-a1579cb59eda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc75cec0-1175-49af-9797-7ae46aec17a0",
              "parent_uuid": "66d38868-c26d-4f03-8a84-1cf921be1163",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bba3117-f2d8-45da-860b-520608d9edd2",
                  "parent_uuid": "dc75cec0-1175-49af-9797-7ae46aec17a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6da82cdd-85cf-4cd8-a9be-7183e5a20682",
              "parent_uuid": "66d38868-c26d-4f03-8a84-1cf921be1163",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae0d2da2-5c01-4414-a482-946fe09d798d",
                  "parent_uuid": "6da82cdd-85cf-4cd8-a9be-7183e5a20682",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b839816d-5362-4cc5-b7e4-225dca1d5489",
              "parent_uuid": "66d38868-c26d-4f03-8a84-1cf921be1163",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74b3c8b9-dfa5-4141-820d-e3d27d8834c2",
                  "parent_uuid": "b839816d-5362-4cc5-b7e4-225dca1d5489",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "deabbf06-a102-4ea1-8618-e315a7a088ca",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a1fffb59-7c25-45db-8122-74a5712552d9",
              "parent_uuid": "deabbf06-a102-4ea1-8618-e315a7a088ca",
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
          "uuid": "6b58f808-24aa-4f89-bef2-5dd8487139eb",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0c159f1b-89c6-4cbf-920f-d9c67c451e8c",
              "parent_uuid": "6b58f808-24aa-4f89-bef2-5dd8487139eb",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "9e71b159-449d-468f-98e7-dfbecb3bde1d",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e31a02e9-b2c5-491c-905c-2d12da4c24de",
              "parent_uuid": "9e71b159-449d-468f-98e7-dfbecb3bde1d",
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
                  "72"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kartonverdichter, Wasserstopp Schlauchplatzsicherung prüfen.<br>-Wasserhahn bei Kartonverdichter schliessen<br>-Wasser Auffanggefäss unter Wasserhahn stellen<br>-Wasserhahn sprunghaft voll öffnen. </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6818c796-76d7-4dd4-83a2-bdafeb3f91b8",
              "parent_uuid": "9e71b159-449d-468f-98e7-dfbecb3bde1d",
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
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1ec474f0-55eb-4ab8-881d-921a8d86e437",
              "parent_uuid": "9e71b159-449d-468f-98e7-dfbecb3bde1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0436f70a-5c3a-4053-827b-d3a8a60a57f6",
                  "parent_uuid": "1ec474f0-55eb-4ab8-881d-921a8d86e437",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15a736df-901a-4409-a3c8-b23653f18720",
              "parent_uuid": "9e71b159-449d-468f-98e7-dfbecb3bde1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f151c3d3-68de-4813-ac23-ef1060e94d03",
                  "parent_uuid": "15a736df-901a-4409-a3c8-b23653f18720",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "360a92a4-eb51-4658-bcd4-98c33850aaa7",
              "parent_uuid": "9e71b159-449d-468f-98e7-dfbecb3bde1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6e39ab5-9bb7-46f2-8b45-0d17bd53e318",
                  "parent_uuid": "360a92a4-eb51-4658-bcd4-98c33850aaa7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8200151e-c7ee-40ac-866a-67c568808124",
              "parent_uuid": "9e71b159-449d-468f-98e7-dfbecb3bde1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76c66223-8bc3-41a7-8200-1561a7db5772",
                  "parent_uuid": "8200151e-c7ee-40ac-866a-67c568808124",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1fb8797d-2639-4f31-aa73-37036863cf4d",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "801b39ec-c926-4705-8683-cdcfc245167f",
              "parent_uuid": "1fb8797d-2639-4f31-aa73-37036863cf4d",
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
              "innerHtml": "\r\n                    <span>Filtermatten an den Schaltschränken bei starker Verschmutzung austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "003bbb67-ac9c-4e42-ad7b-105a62649ee0",
              "parent_uuid": "1fb8797d-2639-4f31-aa73-37036863cf4d",
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
              "uuid": "4906f384-171d-4f66-92c9-cdfd8358c054",
              "parent_uuid": "1fb8797d-2639-4f31-aa73-37036863cf4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ee14d31-60e3-412c-b0d7-e14fd51da090",
                  "parent_uuid": "4906f384-171d-4f66-92c9-cdfd8358c054",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4b6c928-0259-4d1f-9a55-a529465c27cb",
              "parent_uuid": "1fb8797d-2639-4f31-aa73-37036863cf4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d5d8ab9-f5f2-4fdf-812a-bcf6b0ef8480",
                  "parent_uuid": "e4b6c928-0259-4d1f-9a55-a529465c27cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "451440c2-938e-463e-8316-49e94fcc930d",
              "parent_uuid": "1fb8797d-2639-4f31-aa73-37036863cf4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0572872-4c73-4a81-97c3-ee92bf29ad66",
                  "parent_uuid": "451440c2-938e-463e-8316-49e94fcc930d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2720e944-9b9c-49f9-bb5e-0b40d5ca8e40",
              "parent_uuid": "1fb8797d-2639-4f31-aa73-37036863cf4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adbe5584-2d56-4bf7-affb-0c63c2614c0a",
                  "parent_uuid": "2720e944-9b9c-49f9-bb5e-0b40d5ca8e40",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c85a12b-87f0-45e7-906b-b813af71fa97",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e85de90-8f5a-4670-8636-0bbf0f08bca2",
              "parent_uuid": "4c85a12b-87f0-45e7-906b-b813af71fa97",
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
              "innerHtml": "\r\n                    <span>Sensoren mit trockenem, fusselfreien Tuch reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f1075fb9-f87e-42c6-a633-003779bc368a",
              "parent_uuid": "4c85a12b-87f0-45e7-906b-b813af71fa97",
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
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a6061121-3bf2-4e53-87ea-7d00e1ef4a35",
              "parent_uuid": "4c85a12b-87f0-45e7-906b-b813af71fa97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12a3d5d4-b5af-48dc-a8da-b199c9c5e315",
                  "parent_uuid": "a6061121-3bf2-4e53-87ea-7d00e1ef4a35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3043d56f-edc6-4b78-91dd-d6cbe5b9b0d7",
              "parent_uuid": "4c85a12b-87f0-45e7-906b-b813af71fa97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efe3bc82-e99e-4971-bd6f-7370db73c04a",
                  "parent_uuid": "3043d56f-edc6-4b78-91dd-d6cbe5b9b0d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0687f4b5-e5f4-4f15-93ee-5e111cc5ca54",
              "parent_uuid": "4c85a12b-87f0-45e7-906b-b813af71fa97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8fa1238-16c7-41b0-9c4f-a86c6ae79276",
                  "parent_uuid": "0687f4b5-e5f4-4f15-93ee-5e111cc5ca54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6307858f-b24a-4c1a-b605-0738601d7023",
              "parent_uuid": "4c85a12b-87f0-45e7-906b-b813af71fa97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab0c59f5-011d-45f0-bc61-108b1decc5ff",
                  "parent_uuid": "6307858f-b24a-4c1a-b605-0738601d7023",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "fb6f9739-6ab1-4dab-b4e8-8f43fb444613",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e5c63dc-7b55-47b6-8ce3-f8b9637704c4",
              "parent_uuid": "fb6f9739-6ab1-4dab-b4e8-8f43fb444613",
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
              "innerHtml": "\r\n                    <span>Förderstrecken reinigen (Münzablagerungen, Papierresten)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e604760e-1642-40b3-9fcd-fbc75d93f6ea",
              "parent_uuid": "fb6f9739-6ab1-4dab-b4e8-8f43fb444613",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4b7454eb-09ad-450f-a54d-90e6443d5ee6",
              "parent_uuid": "fb6f9739-6ab1-4dab-b4e8-8f43fb444613",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "698e69cb-f2f2-481e-9d49-a3a0010a6485",
                  "parent_uuid": "4b7454eb-09ad-450f-a54d-90e6443d5ee6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79bbc152-fbef-46f3-9eb6-40fe1b7c1817",
              "parent_uuid": "fb6f9739-6ab1-4dab-b4e8-8f43fb444613",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f62a71c1-ddf4-4412-91e4-d0f13b851e43",
                  "parent_uuid": "79bbc152-fbef-46f3-9eb6-40fe1b7c1817",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36c51dd3-7b76-4852-96c3-56854792739e",
              "parent_uuid": "fb6f9739-6ab1-4dab-b4e8-8f43fb444613",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80776e43-7419-4f56-909d-f21a1798bc9c",
                  "parent_uuid": "36c51dd3-7b76-4852-96c3-56854792739e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11906d3f-9889-4808-bd93-2bc0426ca28e",
              "parent_uuid": "fb6f9739-6ab1-4dab-b4e8-8f43fb444613",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a6ee360-ddea-4ad9-9bab-5284d3b7fad3",
                  "parent_uuid": "11906d3f-9889-4808-bd93-2bc0426ca28e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eddd7075-0f54-4eb1-817e-70e379376931",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e8b0cdb-3fa4-4c4a-9b12-4a7e7439a8cc",
              "parent_uuid": "eddd7075-0f54-4eb1-817e-70e379376931",
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
              "innerHtml": "\r\n                    <span>Roboterbereiche von Roboter 1-5 von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7291d58e-d269-44d6-ad2b-d8d98c3a8904",
              "parent_uuid": "eddd7075-0f54-4eb1-817e-70e379376931",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d34137e1-34d7-4526-a27d-171918217b86",
              "parent_uuid": "eddd7075-0f54-4eb1-817e-70e379376931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23a78ec5-6262-4e2d-81f8-8311ceb1c7f9",
                  "parent_uuid": "d34137e1-34d7-4526-a27d-171918217b86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d91c17f-3262-43ed-8315-0f3b2137d5b4",
              "parent_uuid": "eddd7075-0f54-4eb1-817e-70e379376931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c3b9469-3a2e-49c5-b4fa-c4412054f1ec",
                  "parent_uuid": "6d91c17f-3262-43ed-8315-0f3b2137d5b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb014b43-69f5-4219-87ad-d6efe7712d53",
              "parent_uuid": "eddd7075-0f54-4eb1-817e-70e379376931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87102a19-72a8-477a-b701-2937220b26a9",
                  "parent_uuid": "cb014b43-69f5-4219-87ad-d6efe7712d53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77827161-e9a5-4119-bba1-129e8a3020bf",
              "parent_uuid": "eddd7075-0f54-4eb1-817e-70e379376931",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27ad14cd-a4d5-4deb-b702-8d45f8200870",
                  "parent_uuid": "77827161-e9a5-4119-bba1-129e8a3020bf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "57ee110e-7b67-4a21-976e-1bb2d1f13862",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a6fde604-229f-4b0b-97e3-61c146c1f603",
              "parent_uuid": "57ee110e-7b67-4a21-976e-1bb2d1f13862",
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
              "innerHtml": "\r\n                    <span>Alle drei Münzrollierer von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e84c1020-9813-486d-88a7-d70af11724ca",
              "parent_uuid": "57ee110e-7b67-4a21-976e-1bb2d1f13862",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8a6865b5-f629-4591-9273-d616f4c8e8af",
              "parent_uuid": "57ee110e-7b67-4a21-976e-1bb2d1f13862",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44ca9f35-bf17-4410-acf3-c7413a3984bc",
                  "parent_uuid": "8a6865b5-f629-4591-9273-d616f4c8e8af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95962c02-fa75-45cb-9a47-7700a39118d0",
              "parent_uuid": "57ee110e-7b67-4a21-976e-1bb2d1f13862",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cf2d485-0c6a-4668-b96f-40fb7da47433",
                  "parent_uuid": "95962c02-fa75-45cb-9a47-7700a39118d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5fc8a1dc-8439-4e19-960e-5f69a8745936",
              "parent_uuid": "57ee110e-7b67-4a21-976e-1bb2d1f13862",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7571c7fb-9b3e-4091-a63a-0c9c72d1a913",
                  "parent_uuid": "5fc8a1dc-8439-4e19-960e-5f69a8745936",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ef47af0-294f-4456-8afc-0744802dc4b8",
              "parent_uuid": "57ee110e-7b67-4a21-976e-1bb2d1f13862",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe977425-4562-47a2-a8a3-bdaf840780e3",
                  "parent_uuid": "6ef47af0-294f-4456-8afc-0744802dc4b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ae44f363-2e82-48a2-9aeb-3d00f53511e3",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "667bf1b0-630b-4d18-b4c1-e4bb20aa5eba",
              "parent_uuid": "ae44f363-2e82-48a2-9aeb-3d00f53511e3",
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
              "innerHtml": "\r\n                    <span>Kartonsverschliesser von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4f1e56f5-b078-418b-bf8b-ec3585650a9b",
              "parent_uuid": "ae44f363-2e82-48a2-9aeb-3d00f53511e3",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1f4d1783-3d00-4ecd-a319-dca0c1e6dc1d",
              "parent_uuid": "ae44f363-2e82-48a2-9aeb-3d00f53511e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bce16fa4-7fe1-4365-8a18-a56ba7ac4723",
                  "parent_uuid": "1f4d1783-3d00-4ecd-a319-dca0c1e6dc1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3894fa6-6f78-4a28-9042-3252b01e0fbb",
              "parent_uuid": "ae44f363-2e82-48a2-9aeb-3d00f53511e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ae66eb5-549b-4561-a043-7c730efa1070",
                  "parent_uuid": "b3894fa6-6f78-4a28-9042-3252b01e0fbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c379df86-2027-45bf-ae02-d86140f165e7",
              "parent_uuid": "ae44f363-2e82-48a2-9aeb-3d00f53511e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9fdd038-bf23-46f2-b2ed-b7cfa8c675a6",
                  "parent_uuid": "c379df86-2027-45bf-ae02-d86140f165e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "509d095b-c3a9-4be2-8d32-88877aec679f",
              "parent_uuid": "ae44f363-2e82-48a2-9aeb-3d00f53511e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f50201ba-8306-4b20-b1e9-869c9b5d69d6",
                  "parent_uuid": "509d095b-c3a9-4be2-8d32-88877aec679f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29ae3d18-3753-4874-9371-6d35adfaa8d0",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b195b1f9-5a83-449c-a38b-242ec21073f0",
              "parent_uuid": "29ae3d18-3753-4874-9371-6d35adfaa8d0",
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
              "innerHtml": "\r\n                    <span>Bereich der Strapex Bindegeräte von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9edfa89d-bf96-4d25-b2d0-8807ce7921fb",
              "parent_uuid": "29ae3d18-3753-4874-9371-6d35adfaa8d0",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "cfb1471b-b033-41fe-b83d-c48bc75a3d3c",
              "parent_uuid": "29ae3d18-3753-4874-9371-6d35adfaa8d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "624775bc-f29f-4f48-9457-7c14efeb54ea",
                  "parent_uuid": "cfb1471b-b033-41fe-b83d-c48bc75a3d3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5208fde7-1f0d-478d-8b39-1948a6ca0ceb",
              "parent_uuid": "29ae3d18-3753-4874-9371-6d35adfaa8d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "299a58e0-10db-482c-a9cf-2804c0aa78e3",
                  "parent_uuid": "5208fde7-1f0d-478d-8b39-1948a6ca0ceb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b93ab3ab-9609-4510-9f39-48ac5da8bced",
              "parent_uuid": "29ae3d18-3753-4874-9371-6d35adfaa8d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48e684a3-839d-49b8-a236-b7fbc03186a0",
                  "parent_uuid": "b93ab3ab-9609-4510-9f39-48ac5da8bced",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2482c4a4-0611-4f93-8407-ed577f3fccc5",
              "parent_uuid": "29ae3d18-3753-4874-9371-6d35adfaa8d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f0b2b06-8b6d-4d47-843d-72aac6d6ece4",
                  "parent_uuid": "2482c4a4-0611-4f93-8407-ed577f3fccc5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e936c8a-2c28-45b0-bcdd-f1d204c51bc6",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3887df18-dc7f-4429-b767-a999856f17cf",
              "parent_uuid": "8e936c8a-2c28-45b0-bcdd-f1d204c51bc6",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "04d1f901-ae57-4c83-974a-24c90511c152",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "661df519-732e-4ea7-9574-934aece6dda3",
              "parent_uuid": "04d1f901-ae57-4c83-974a-24c90511c152",
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
              "innerHtml": "\r\n                    <span>Etikettierer von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5baf79ef-ead7-4ee1-80ae-2ee0677dbe11",
              "parent_uuid": "04d1f901-ae57-4c83-974a-24c90511c152",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "78859bf0-65cf-49e4-af60-a66cef48a4ae",
              "parent_uuid": "04d1f901-ae57-4c83-974a-24c90511c152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c466c0ae-8308-4b7d-8f5f-beb2202139d8",
                  "parent_uuid": "78859bf0-65cf-49e4-af60-a66cef48a4ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ab1cdde-2b39-4d49-8efa-88e7b1569c55",
              "parent_uuid": "04d1f901-ae57-4c83-974a-24c90511c152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5268729-dd43-40dc-ab02-69c5c2eb4c67",
                  "parent_uuid": "8ab1cdde-2b39-4d49-8efa-88e7b1569c55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "861cb5da-dff2-4534-b206-21a5d0b66a69",
              "parent_uuid": "04d1f901-ae57-4c83-974a-24c90511c152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "359aadac-29b3-4caa-a8c7-18c649f51767",
                  "parent_uuid": "861cb5da-dff2-4534-b206-21a5d0b66a69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7d43f67-3163-4784-8461-9c59b778ed09",
              "parent_uuid": "04d1f901-ae57-4c83-974a-24c90511c152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "000eeb34-fd57-4d7c-a453-3f51e9e1ac6b",
                  "parent_uuid": "e7d43f67-3163-4784-8461-9c59b778ed09",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5855d5ab-61d4-40e0-a29e-514ad9229e30",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e769bd3-25fa-4ad1-b685-913fd9cffc81",
              "parent_uuid": "5855d5ab-61d4-40e0-a29e-514ad9229e30",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen ob die Daten auf der Datenablage auf dem NAS abgelegt werden, Speicher-platzbelegung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c4677476-1e43-45f6-8c78-fb9ada75563b",
              "parent_uuid": "5855d5ab-61d4-40e0-a29e-514ad9229e30",
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
              "innerHtml": "\r\n                    <span>1M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d4a6e6cd-9f67-46fd-a755-6088f5dffacd",
              "parent_uuid": "5855d5ab-61d4-40e0-a29e-514ad9229e30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "739c63db-543e-47c2-95d9-367bb8fb50b0",
                  "parent_uuid": "d4a6e6cd-9f67-46fd-a755-6088f5dffacd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "431987db-46a0-4424-8ce4-bc58a6695931",
              "parent_uuid": "5855d5ab-61d4-40e0-a29e-514ad9229e30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17fc139a-b2db-4dec-ab8d-f7607e3eadc7",
                  "parent_uuid": "431987db-46a0-4424-8ce4-bc58a6695931",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b87c756-33a3-4ed0-8c69-bc7d3eadaf73",
              "parent_uuid": "5855d5ab-61d4-40e0-a29e-514ad9229e30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4342594-d876-4cc7-a114-719e88268466",
                  "parent_uuid": "6b87c756-33a3-4ed0-8c69-bc7d3eadaf73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80381b6c-69cb-4929-9cd7-0c6513524fd0",
              "parent_uuid": "5855d5ab-61d4-40e0-a29e-514ad9229e30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93799136-ffe7-4173-9d57-fda33866d8c5",
                  "parent_uuid": "80381b6c-69cb-4929-9cd7-0c6513524fd0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f70abaed-4846-4dcf-ad04-9029c64192b3",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72e92dc3-a8ce-407c-8856-d9c34bf603c8",
              "parent_uuid": "f70abaed-4846-4dcf-ad04-9029c64192b3",
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
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "93c25fd3-3fdb-4658-8f3d-9e8f7bd72274",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59b9e18d-d0eb-4c04-be5d-3ce4a71f02bc",
              "parent_uuid": "93c25fd3-3fdb-4658-8f3d-9e8f7bd72274",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "06d51165-bc35-4c42-a80e-15fbbd73a524",
          "parent_uuid": "5cef256d-79f9-4d28-a214-2d301fc25a14",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b217e14-d910-45d4-9d00-ed3a409c338d",
              "parent_uuid": "06d51165-bc35-4c42-a80e-15fbbd73a524",
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
                  "uuid": "de9b5200-5609-4738-a79c-026026bac544",
                  "parent_uuid": "0b217e14-d910-45d4-9d00-ed3a409c338d",
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
    ,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS cl_uid 
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
		,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '1F6BEE57-38A8-4B29-9986-BFAD7D107215'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

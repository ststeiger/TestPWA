
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
  "uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
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
      "uuid": "838a0a79-1bb2-4a06-9e95-294ab99318a7",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "2"
        ],
        [
          "width",
          "88"
        ]
      ],
      "children": [],
      "sort": 0,
      "lvl": 0
    },
    {
      "uuid": "1e18c99c-13d8-48de-8020-26872664ca38",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
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
      "uuid": "19ae57d7-5201-4ee0-9f21-7c68dfa1225d",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
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
      "uuid": "1d865ab2-54d4-4251-b498-eb25ffee6a43",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
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
      "uuid": "c3bf92e8-f720-4042-9495-749d9136d629",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
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
      "uuid": "480f22f9-99bb-48f0-9b3e-e5124795df7c",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
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
      "uuid": "223eb4aa-2356-4842-98e9-0c9986353a83",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
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
      "uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
      "parent_uuid": "f10e9a01-8461-47a6-b4b2-2539b35a1aae",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "c64df33d-4c1f-4ea9-a434-3d2f4023965c",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "010b5e5f-f770-49d0-8845-cf80a888ed45",
              "parent_uuid": "c64df33d-4c1f-4ea9-a434-3d2f4023965c",
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
              "uuid": "9f3e37f7-b032-4d5a-ab1c-a627d87168a1",
              "parent_uuid": "c64df33d-4c1f-4ea9-a434-3d2f4023965c",
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
              "uuid": "1eb00a72-72db-4f9b-9f4b-9d571fdbde1c",
              "parent_uuid": "c64df33d-4c1f-4ea9-a434-3d2f4023965c",
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
              "uuid": "26cb5269-523f-4389-9bbd-b9b4fc0e6c1a",
              "parent_uuid": "c64df33d-4c1f-4ea9-a434-3d2f4023965c",
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
          "uuid": "696628cc-06ec-45de-8394-cf1998d3fa24",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "fbed3800-68bb-4e4a-9928-c83b5416d941",
              "parent_uuid": "696628cc-06ec-45de-8394-cf1998d3fa24",
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
              "uuid": "f452cf4c-9dc8-47d3-86f5-523791723b5e",
              "parent_uuid": "696628cc-06ec-45de-8394-cf1998d3fa24",
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
              "uuid": "469c78d8-1334-4d04-8ff0-6b274ea21817",
              "parent_uuid": "696628cc-06ec-45de-8394-cf1998d3fa24",
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
              "uuid": "44f6e27b-16c6-499c-89dd-3270443ca4dd",
              "parent_uuid": "696628cc-06ec-45de-8394-cf1998d3fa24",
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
          "uuid": "fe8d9cba-f7a6-4c64-aee0-0147360f6674",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9cf89495-0b99-4de1-bc03-06f17767352e",
              "parent_uuid": "fe8d9cba-f7a6-4c64-aee0-0147360f6674",
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
              "uuid": "107a48e9-8b8e-4c7f-8972-9c9dc7c8eacb",
              "parent_uuid": "fe8d9cba-f7a6-4c64-aee0-0147360f6674",
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
              "uuid": "d3b1c719-0dc8-47ec-8cd6-3a94348c134d",
              "parent_uuid": "fe8d9cba-f7a6-4c64-aee0-0147360f6674",
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
              "uuid": "bcf29159-1158-4f4d-8abe-2cf883db5cd2",
              "parent_uuid": "fe8d9cba-f7a6-4c64-aee0-0147360f6674",
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
              "uuid": "b5efd66c-a48e-4ab8-aeb8-4ac8be7b10a6",
              "parent_uuid": "fe8d9cba-f7a6-4c64-aee0-0147360f6674",
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
              "uuid": "010888a1-7c0d-4483-acee-c9de4f366cd7",
              "parent_uuid": "fe8d9cba-f7a6-4c64-aee0-0147360f6674",
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
          "uuid": "216f3ada-f813-4f65-a30a-8c3be2f4cc02",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "405cf046-9106-486e-a264-8ff782355adb",
              "parent_uuid": "216f3ada-f813-4f65-a30a-8c3be2f4cc02",
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
          "uuid": "c2728e56-94cf-43f9-9a99-7cdb7ae15272",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c695bc6-c5ea-4937-85bb-ecd4045a4ef8",
              "parent_uuid": "c2728e56-94cf-43f9-9a99-7cdb7ae15272",
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
              "uuid": "862cbe6b-38ef-4b70-a924-8194c5d081a5",
              "parent_uuid": "c2728e56-94cf-43f9-9a99-7cdb7ae15272",
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
              "uuid": "55d71898-49e5-409c-88ee-cc618f650c8d",
              "parent_uuid": "c2728e56-94cf-43f9-9a99-7cdb7ae15272",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3135752c-a37f-47de-b538-52f56d1621c7",
                  "parent_uuid": "55d71898-49e5-409c-88ee-cc618f650c8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f998a201-9762-4d22-9592-6a049bbfcdae",
              "parent_uuid": "c2728e56-94cf-43f9-9a99-7cdb7ae15272",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6d62a95-f204-4e94-9a88-b67a5694866b",
                  "parent_uuid": "f998a201-9762-4d22-9592-6a049bbfcdae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbbb6b93-550b-47fd-95cf-9389c156c6f0",
              "parent_uuid": "c2728e56-94cf-43f9-9a99-7cdb7ae15272",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b93890ca-20f5-462d-89d3-21ba6345dfe4",
                  "parent_uuid": "fbbb6b93-550b-47fd-95cf-9389c156c6f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd4624c3-5f7e-42b8-aefb-2367bcc9f982",
              "parent_uuid": "c2728e56-94cf-43f9-9a99-7cdb7ae15272",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f5d20d6-5ee1-42db-b7e1-8c67e3157d5e",
                  "parent_uuid": "cd4624c3-5f7e-42b8-aefb-2367bcc9f982",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c1a2c88-16cf-41e4-9597-5f4138053ad0",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "243f0f80-b776-4f27-9fe7-515fad52b038",
              "parent_uuid": "4c1a2c88-16cf-41e4-9597-5f4138053ad0",
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
              "uuid": "1a7db862-f7fb-4818-ba41-04e47af95eac",
              "parent_uuid": "4c1a2c88-16cf-41e4-9597-5f4138053ad0",
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
              "uuid": "11f52ae6-ac53-4e78-a306-abbf6e43c6ed",
              "parent_uuid": "4c1a2c88-16cf-41e4-9597-5f4138053ad0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6ec98b7-a81a-403f-9ce8-7c45daca40a9",
                  "parent_uuid": "11f52ae6-ac53-4e78-a306-abbf6e43c6ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6414e68-8c1c-4de8-ad32-19fffe7a1eb0",
              "parent_uuid": "4c1a2c88-16cf-41e4-9597-5f4138053ad0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72651c2d-f290-410d-9492-f50527ceeebc",
                  "parent_uuid": "c6414e68-8c1c-4de8-ad32-19fffe7a1eb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40146339-ac9d-470a-9c74-430ef78488c2",
              "parent_uuid": "4c1a2c88-16cf-41e4-9597-5f4138053ad0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48b7c858-bdee-48a8-839f-c9aaae6ba0df",
                  "parent_uuid": "40146339-ac9d-470a-9c74-430ef78488c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc21c00a-52cb-48ba-8626-288d20cd2d7c",
              "parent_uuid": "4c1a2c88-16cf-41e4-9597-5f4138053ad0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bb84e3e-1c07-4eed-86a5-28e8dc793318",
                  "parent_uuid": "dc21c00a-52cb-48ba-8626-288d20cd2d7c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c1cf96f4-5de3-43da-bf9b-6299be58ceb4",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a45c3da9-a65b-46d9-b633-cf5b8aa69e7b",
              "parent_uuid": "c1cf96f4-5de3-43da-bf9b-6299be58ceb4",
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
              "uuid": "641e3eae-3d15-4028-bc7e-31b8c10dcff2",
              "parent_uuid": "c1cf96f4-5de3-43da-bf9b-6299be58ceb4",
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
              "uuid": "e33bc94b-2009-4441-a001-b61c5b0feab1",
              "parent_uuid": "c1cf96f4-5de3-43da-bf9b-6299be58ceb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "916448fb-9f33-42b4-bbcc-8430b010ce61",
                  "parent_uuid": "e33bc94b-2009-4441-a001-b61c5b0feab1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de11a0f2-ac3c-4212-9f6a-6fe1ab9ce981",
              "parent_uuid": "c1cf96f4-5de3-43da-bf9b-6299be58ceb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63a56aa7-70f0-476c-beb0-ed59545f2af5",
                  "parent_uuid": "de11a0f2-ac3c-4212-9f6a-6fe1ab9ce981",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d3584af-bf2c-4fc1-a801-619b11ee6801",
              "parent_uuid": "c1cf96f4-5de3-43da-bf9b-6299be58ceb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae0f6797-bbe6-464e-ab1f-11cda6da4597",
                  "parent_uuid": "4d3584af-bf2c-4fc1-a801-619b11ee6801",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0052fc28-a688-40e2-b27d-cf9c2dd7ba0b",
              "parent_uuid": "c1cf96f4-5de3-43da-bf9b-6299be58ceb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fee479bb-2bb9-4a01-8473-e643d8fc6375",
                  "parent_uuid": "0052fc28-a688-40e2-b27d-cf9c2dd7ba0b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "502db7e1-cc21-4140-bb81-f076e16295d3",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab79e6e0-1c45-452c-8189-b4a65eb57055",
              "parent_uuid": "502db7e1-cc21-4140-bb81-f076e16295d3",
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
              "uuid": "41338743-05a4-469a-9276-4f810dca1ab2",
              "parent_uuid": "502db7e1-cc21-4140-bb81-f076e16295d3",
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
              "uuid": "a9370f2b-0c59-4ef3-b057-2ec53354371d",
              "parent_uuid": "502db7e1-cc21-4140-bb81-f076e16295d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f33c9fdc-748c-4d5e-8f2b-441abdc6d229",
                  "parent_uuid": "a9370f2b-0c59-4ef3-b057-2ec53354371d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19f04aec-37c2-4e32-a1ee-a32b0f9bec73",
              "parent_uuid": "502db7e1-cc21-4140-bb81-f076e16295d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20075eda-0876-4298-9bc3-3921d0f93f50",
                  "parent_uuid": "19f04aec-37c2-4e32-a1ee-a32b0f9bec73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "578ff5f6-5840-40d9-99da-23d300a859ac",
              "parent_uuid": "502db7e1-cc21-4140-bb81-f076e16295d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "615f6964-3d1b-4da9-a8f7-cf39db5c06c2",
                  "parent_uuid": "578ff5f6-5840-40d9-99da-23d300a859ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96830f66-9ec4-4180-ae4a-d9af18102e35",
              "parent_uuid": "502db7e1-cc21-4140-bb81-f076e16295d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fb1d9eb-723d-495c-abe4-ae8c8c0d32e9",
                  "parent_uuid": "96830f66-9ec4-4180-ae4a-d9af18102e35",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c1fd92a-bf89-495c-9b8b-02e00f76f1a0",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b1361bd-e05a-4471-a870-a0183ac1c8cb",
              "parent_uuid": "6c1fd92a-bf89-495c-9b8b-02e00f76f1a0",
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
              "uuid": "4f0b4b13-598e-4e8b-8f2c-a4ebf5ce0e62",
              "parent_uuid": "6c1fd92a-bf89-495c-9b8b-02e00f76f1a0",
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
              "uuid": "bdff1f92-bf10-471a-ba62-2ebb78985299",
              "parent_uuid": "6c1fd92a-bf89-495c-9b8b-02e00f76f1a0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "a1cd3da9-4142-42b1-9a88-e52ebf4d7768",
                  "parent_uuid": "bdff1f92-bf10-471a-ba62-2ebb78985299",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8f6ec62-e0b5-45f4-a930-0fee707dc428",
              "parent_uuid": "6c1fd92a-bf89-495c-9b8b-02e00f76f1a0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "2ea5dd39-ca7f-4059-9766-4fc9496ed687",
                  "parent_uuid": "c8f6ec62-e0b5-45f4-a930-0fee707dc428",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9370c3b1-24c7-4dac-bb17-57bac8e569ad",
              "parent_uuid": "6c1fd92a-bf89-495c-9b8b-02e00f76f1a0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "ab5a87fa-cfbe-4c10-9fd9-8416e658d0ae",
                  "parent_uuid": "9370c3b1-24c7-4dac-bb17-57bac8e569ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6d5fa9d-4a5f-4df9-892c-a7b55d3b60f0",
              "parent_uuid": "6c1fd92a-bf89-495c-9b8b-02e00f76f1a0",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "640bc739-546b-41ce-b5df-5c6de9431760",
                  "parent_uuid": "c6d5fa9d-4a5f-4df9-892c-a7b55d3b60f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "557dfa93-a668-46a7-b829-b8018ff82b10",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88456266-8fb9-4b64-9ed8-069095ca5cb1",
              "parent_uuid": "557dfa93-a668-46a7-b829-b8018ff82b10",
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
              "uuid": "60c9b8d5-2184-453d-bef6-b205336b2660",
              "parent_uuid": "557dfa93-a668-46a7-b829-b8018ff82b10",
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
              "uuid": "0c165e38-7700-458a-a258-02c9abac53ba",
              "parent_uuid": "557dfa93-a668-46a7-b829-b8018ff82b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8163009-7ac7-48b3-b177-cf0def8bb550",
                  "parent_uuid": "0c165e38-7700-458a-a258-02c9abac53ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd0c5d0d-5bac-4bd5-aa79-ebfe25dc8912",
              "parent_uuid": "557dfa93-a668-46a7-b829-b8018ff82b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e361f5d0-d4cb-4fdd-84eb-0ae7fc498ad2",
                  "parent_uuid": "cd0c5d0d-5bac-4bd5-aa79-ebfe25dc8912",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8301c990-1324-4faf-b2cd-59107e0ee15d",
              "parent_uuid": "557dfa93-a668-46a7-b829-b8018ff82b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "741fa0b3-2dc6-4fe4-bc63-7613eb429d78",
                  "parent_uuid": "8301c990-1324-4faf-b2cd-59107e0ee15d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40d63646-d79b-4e28-b800-2ad62250457b",
              "parent_uuid": "557dfa93-a668-46a7-b829-b8018ff82b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f1604c4-6ffd-4e1c-a69b-9be8a9ea52c7",
                  "parent_uuid": "40d63646-d79b-4e28-b800-2ad62250457b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c0daec10-714c-4ba0-a3e7-34acfc7d6cc7",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea56ff50-b1b8-48ba-ae16-067220284292",
              "parent_uuid": "c0daec10-714c-4ba0-a3e7-34acfc7d6cc7",
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
              "uuid": "22ecbe88-d328-46d8-9659-ef284335aa5f",
              "parent_uuid": "c0daec10-714c-4ba0-a3e7-34acfc7d6cc7",
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
              "uuid": "36886117-cbc3-48bd-aacb-e9dc60acae8f",
              "parent_uuid": "c0daec10-714c-4ba0-a3e7-34acfc7d6cc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c0f5655-3a6a-4480-aee5-e95f1a13673c",
                  "parent_uuid": "36886117-cbc3-48bd-aacb-e9dc60acae8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1637db48-2707-429a-9f82-82117b8caea4",
              "parent_uuid": "c0daec10-714c-4ba0-a3e7-34acfc7d6cc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32bab560-8e3c-479e-a02b-f92e0b56d168",
                  "parent_uuid": "1637db48-2707-429a-9f82-82117b8caea4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2be53ff2-f21d-4698-9a99-ba27a7290096",
              "parent_uuid": "c0daec10-714c-4ba0-a3e7-34acfc7d6cc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51cbc23d-9f45-43a8-8d38-fc6fec8f4616",
                  "parent_uuid": "2be53ff2-f21d-4698-9a99-ba27a7290096",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b62e507e-9cb1-4679-a514-dc25dade6694",
              "parent_uuid": "c0daec10-714c-4ba0-a3e7-34acfc7d6cc7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e34eff9-715b-4058-8e63-ed787046e1db",
                  "parent_uuid": "b62e507e-9cb1-4679-a514-dc25dade6694",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3eaaa6e0-a61e-417b-a349-66b722f2618a",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2d63d42-a125-4ad0-8eb5-8383cccb33ed",
              "parent_uuid": "3eaaa6e0-a61e-417b-a349-66b722f2618a",
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
              "uuid": "96191ca4-35ac-4878-8de7-4c040cd68093",
              "parent_uuid": "3eaaa6e0-a61e-417b-a349-66b722f2618a",
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
              "uuid": "c0c779cc-b172-4a35-abed-60d2c8d936e1",
              "parent_uuid": "3eaaa6e0-a61e-417b-a349-66b722f2618a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ba28b29-5864-4708-9fad-28fbea9fc974",
                  "parent_uuid": "c0c779cc-b172-4a35-abed-60d2c8d936e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4c1017b-e4d8-43a5-9df9-0738eff82be3",
              "parent_uuid": "3eaaa6e0-a61e-417b-a349-66b722f2618a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4365a38-3184-4c83-a632-14aedeb01ab2",
                  "parent_uuid": "e4c1017b-e4d8-43a5-9df9-0738eff82be3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90b43273-a882-4363-bba4-b769120d917e",
              "parent_uuid": "3eaaa6e0-a61e-417b-a349-66b722f2618a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e55c1f22-f165-422f-9783-550d2c7ebc79",
                  "parent_uuid": "90b43273-a882-4363-bba4-b769120d917e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3093310d-d934-4bdd-bff3-2615f913c036",
              "parent_uuid": "3eaaa6e0-a61e-417b-a349-66b722f2618a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4659fd62-1d0d-403a-8368-9dde7d7105fb",
                  "parent_uuid": "3093310d-d934-4bdd-bff3-2615f913c036",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35537f20-9b5b-4b81-bc00-856cb983d3b1",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7af18b2b-31b3-459c-9e78-59fcdba15c15",
              "parent_uuid": "35537f20-9b5b-4b81-bc00-856cb983d3b1",
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
              "uuid": "1b2306cd-d02c-41db-bad5-c6155405451c",
              "parent_uuid": "35537f20-9b5b-4b81-bc00-856cb983d3b1",
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
              "uuid": "c1295412-c24a-481e-aacf-34a72fa52f81",
              "parent_uuid": "35537f20-9b5b-4b81-bc00-856cb983d3b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41fbc081-0a23-4ded-baff-62324c02cbdd",
                  "parent_uuid": "c1295412-c24a-481e-aacf-34a72fa52f81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2528f61-d188-4bf7-ab33-4c9a0a0b43e4",
              "parent_uuid": "35537f20-9b5b-4b81-bc00-856cb983d3b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56b03a06-113d-4a8c-987d-7402e9bb12e7",
                  "parent_uuid": "a2528f61-d188-4bf7-ab33-4c9a0a0b43e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f37bdc91-31ee-478a-866d-31e8eb429817",
              "parent_uuid": "35537f20-9b5b-4b81-bc00-856cb983d3b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1feda4d9-6432-439d-878f-9c48d9388690",
                  "parent_uuid": "f37bdc91-31ee-478a-866d-31e8eb429817",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0e7ef99-496c-407e-9ce9-f7bc6c218838",
              "parent_uuid": "35537f20-9b5b-4b81-bc00-856cb983d3b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65f8f181-bbf7-4af4-b768-e0226a276d77",
                  "parent_uuid": "d0e7ef99-496c-407e-9ce9-f7bc6c218838",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "be33de9e-7b92-43a6-bea2-31e77f438174",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2de77690-a180-4db5-83b9-c02d9676f06a",
              "parent_uuid": "be33de9e-7b92-43a6-bea2-31e77f438174",
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
              "uuid": "327f8660-6e3d-42e2-8d65-73853e486687",
              "parent_uuid": "be33de9e-7b92-43a6-bea2-31e77f438174",
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
              "uuid": "c58b67b5-e788-407d-8d3b-32dc6c7c5ae6",
              "parent_uuid": "be33de9e-7b92-43a6-bea2-31e77f438174",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "482e5c28-5c00-4ec9-acf4-8e74f0d5363f",
                  "parent_uuid": "c58b67b5-e788-407d-8d3b-32dc6c7c5ae6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d54ae34d-71f8-43f4-a5f4-2df6d457e163",
              "parent_uuid": "be33de9e-7b92-43a6-bea2-31e77f438174",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19f00a2d-6841-4e77-9cd7-a32b708f6135",
                  "parent_uuid": "d54ae34d-71f8-43f4-a5f4-2df6d457e163",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4dbb070d-d7ff-4cf3-9574-b84607af33a0",
              "parent_uuid": "be33de9e-7b92-43a6-bea2-31e77f438174",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2bbe612-bd5e-49c6-a128-eb5dc68fea3d",
                  "parent_uuid": "4dbb070d-d7ff-4cf3-9574-b84607af33a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a53655af-cae7-4ccb-b786-8770b91e2da2",
              "parent_uuid": "be33de9e-7b92-43a6-bea2-31e77f438174",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69579c9c-b069-4e2c-832b-c28c58328c1e",
                  "parent_uuid": "a53655af-cae7-4ccb-b786-8770b91e2da2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c3b6e7d9-6bb3-48f5-9179-6ae03351efdc",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48428435-0552-4d70-9641-1542adbf7525",
              "parent_uuid": "c3b6e7d9-6bb3-48f5-9179-6ae03351efdc",
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
              "uuid": "e2624a7e-b47c-43b9-a1dd-5420fb8aa1ca",
              "parent_uuid": "c3b6e7d9-6bb3-48f5-9179-6ae03351efdc",
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
              "uuid": "cd4808a6-690e-4102-bc33-7bb2350dda8b",
              "parent_uuid": "c3b6e7d9-6bb3-48f5-9179-6ae03351efdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a15d6f23-c732-43e6-83fc-989c5bf8f62c",
                  "parent_uuid": "cd4808a6-690e-4102-bc33-7bb2350dda8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "541faae6-4b70-49a9-82af-e12c1e84839c",
              "parent_uuid": "c3b6e7d9-6bb3-48f5-9179-6ae03351efdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14454ffb-5dbe-4344-8cad-aca3b0d6c005",
                  "parent_uuid": "541faae6-4b70-49a9-82af-e12c1e84839c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2bae237-4409-4c6e-b374-0048a1b45144",
              "parent_uuid": "c3b6e7d9-6bb3-48f5-9179-6ae03351efdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f96f0b30-dd2e-48b7-be7f-fb186235b216",
                  "parent_uuid": "e2bae237-4409-4c6e-b374-0048a1b45144",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd00daa6-7858-4c71-a9ea-9b430501adab",
              "parent_uuid": "c3b6e7d9-6bb3-48f5-9179-6ae03351efdc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "933f2b34-d2b9-48cc-aece-a990f72c3c69",
                  "parent_uuid": "dd00daa6-7858-4c71-a9ea-9b430501adab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af8704a3-fdff-465b-88dc-dbe074f9fbd1",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f7b49cb-6f6e-43e8-b31a-226887b5eb21",
              "parent_uuid": "af8704a3-fdff-465b-88dc-dbe074f9fbd1",
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
              "uuid": "317872a1-a202-4ec6-a04c-c241f49bb95a",
              "parent_uuid": "af8704a3-fdff-465b-88dc-dbe074f9fbd1",
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
              "uuid": "f5ddaeea-f2c4-4e33-9105-20fa60baaa0a",
              "parent_uuid": "af8704a3-fdff-465b-88dc-dbe074f9fbd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba794b70-dad1-4497-ac5f-0d260c7b30ed",
                  "parent_uuid": "f5ddaeea-f2c4-4e33-9105-20fa60baaa0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ade530ca-978e-42f2-b571-efe29c93bb2f",
              "parent_uuid": "af8704a3-fdff-465b-88dc-dbe074f9fbd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2288d02-6460-4a73-8954-4ad350578eb3",
                  "parent_uuid": "ade530ca-978e-42f2-b571-efe29c93bb2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff8f1e56-b697-4ee7-b2fe-efbf4647e192",
              "parent_uuid": "af8704a3-fdff-465b-88dc-dbe074f9fbd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf21be6b-7b00-4993-bebb-edb4b8b23088",
                  "parent_uuid": "ff8f1e56-b697-4ee7-b2fe-efbf4647e192",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2e3be91-70c8-44d2-a22c-719b81106f86",
              "parent_uuid": "af8704a3-fdff-465b-88dc-dbe074f9fbd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3eae6c39-46e8-40eb-a1c0-ea0db03e1c14",
                  "parent_uuid": "a2e3be91-70c8-44d2-a22c-719b81106f86",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3be21897-6b16-45f2-a0fd-63507d0649a0",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7cad042f-0f9a-48ba-b0f1-ac330e6a7461",
              "parent_uuid": "3be21897-6b16-45f2-a0fd-63507d0649a0",
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
              "innerHtml": "\r\n                    <span><b>Zustand und Funktion an EBG/Shuttle 01 - 13</b><br>- Sensoren, Distanzen<br>- Laufräder für Längs- und Querfahrwerk, Seitenführungsrad (Lagerung, Laufruhe)<br>- Teleskoparme, Antriebkette<br>- Drehgeber, Induktivgeber<br>- Gassenfahrt, Quergassenfahrt, Behälterentnahme, Behältereinlagerung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e9429667-762c-40bd-8e0e-3f66ba7af2aa",
              "parent_uuid": "3be21897-6b16-45f2-a0fd-63507d0649a0",
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
              "uuid": "d4c454e6-82a9-40f1-836b-cb5ee400cce1",
              "parent_uuid": "3be21897-6b16-45f2-a0fd-63507d0649a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4668bd0e-0356-475c-8a49-3b17bd473ce9",
                  "parent_uuid": "d4c454e6-82a9-40f1-836b-cb5ee400cce1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f94d62d-efff-4ceb-b08a-4c0c23847768",
              "parent_uuid": "3be21897-6b16-45f2-a0fd-63507d0649a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba1142cf-e67b-4d92-a7af-d7d5e65c91ab",
                  "parent_uuid": "1f94d62d-efff-4ceb-b08a-4c0c23847768",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b80c964b-ed46-4e60-9641-c1469b570268",
              "parent_uuid": "3be21897-6b16-45f2-a0fd-63507d0649a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b307ebb-9d63-42fc-b149-6ff86e011c95",
                  "parent_uuid": "b80c964b-ed46-4e60-9641-c1469b570268",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39f57484-bffb-41b7-9fc6-1d8c11fa14bb",
              "parent_uuid": "3be21897-6b16-45f2-a0fd-63507d0649a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ca66a65-c58c-4ccc-a41f-0ea9ee1bbaeb",
                  "parent_uuid": "39f57484-bffb-41b7-9fc6-1d8c11fa14bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ffab3d5e-ceb7-4118-a565-2a8bd20b40c4",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "931ccab5-63f8-45ed-a6b9-19df3da43642",
              "parent_uuid": "ffab3d5e-ceb7-4118-a565-2a8bd20b40c4",
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Schutzvorrichtung zu den Gassenbereichen<br>- Knapp-Lock<br>- Not-Halt Taster<br>- Schutzzaun, Schutzabdeckung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4b3b9624-a90a-4c22-8a6b-86103c4d2512",
              "parent_uuid": "ffab3d5e-ceb7-4118-a565-2a8bd20b40c4",
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
              "uuid": "7ef0cf5d-6e5c-49fd-95c4-866b8a5394df",
              "parent_uuid": "ffab3d5e-ceb7-4118-a565-2a8bd20b40c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "034de010-cd87-4f74-bd80-58c1de6fe215",
                  "parent_uuid": "7ef0cf5d-6e5c-49fd-95c4-866b8a5394df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2308c3cd-e3de-41dc-acc3-52b2eb49bac8",
              "parent_uuid": "ffab3d5e-ceb7-4118-a565-2a8bd20b40c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97388884-124f-4731-b2a7-cd38e9981b23",
                  "parent_uuid": "2308c3cd-e3de-41dc-acc3-52b2eb49bac8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d429915f-ef45-4d04-8cf0-687370369dae",
              "parent_uuid": "ffab3d5e-ceb7-4118-a565-2a8bd20b40c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fc70c96-a2f1-4662-a83a-4da78c38f96b",
                  "parent_uuid": "d429915f-ef45-4d04-8cf0-687370369dae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9823a2b4-6a2c-4984-a882-8261ad415f4e",
              "parent_uuid": "ffab3d5e-ceb7-4118-a565-2a8bd20b40c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "314503d0-c0ea-4fc6-87ec-05bc483317a0",
                  "parent_uuid": "9823a2b4-6a2c-4984-a882-8261ad415f4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6bef5bf2-d334-4eff-8ebd-42a37d359be3",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "2eadcb84-8ca4-434c-8f28-0a67c2f24664",
              "parent_uuid": "6bef5bf2-d334-4eff-8ebd-42a37d359be3",
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
          "uuid": "f646ffac-8baf-4e30-a42c-889aff86c3f0",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be79ac34-694e-4817-b0ed-77b027489abb",
              "parent_uuid": "f646ffac-8baf-4e30-a42c-889aff86c3f0",
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
          "uuid": "86390193-78af-411a-a7f1-2c7abbbeb733",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "912d81a2-e2b2-4afc-9133-7feb76079896",
              "parent_uuid": "86390193-78af-411a-a7f1-2c7abbbeb733",
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
                  "uuid": "843bb1be-9cf8-4e9b-8470-f5f38316d07b",
                  "parent_uuid": "912d81a2-e2b2-4afc-9133-7feb76079896",
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
          "uuid": "2f1d24f8-61d5-4ace-b399-a5ca187d1ade",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef4002f8-0bd5-4f72-ad57-09cbab4946be",
              "parent_uuid": "2f1d24f8-61d5-4ace-b399-a5ca187d1ade",
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
          "uuid": "0135454c-eaf5-4bb3-915d-495e0c52671d",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "bd5c1906-2e47-4ca7-a08d-e6e38ef491f3",
              "parent_uuid": "0135454c-eaf5-4bb3-915d-495e0c52671d",
              "tagName": "td",
              "properties": [
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
          "uuid": "b64a9419-53fb-409e-bb64-a22bf5ab04a7",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a57e2c7f-0f49-49d3-9770-540c9d9c4701",
              "parent_uuid": "b64a9419-53fb-409e-bb64-a22bf5ab04a7",
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
              "uuid": "59d40e6a-37ac-4980-8172-6446bae40cd2",
              "parent_uuid": "b64a9419-53fb-409e-bb64-a22bf5ab04a7",
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
              "uuid": "f369ee95-ad84-44b0-bf45-82bf60a59507",
              "parent_uuid": "b64a9419-53fb-409e-bb64-a22bf5ab04a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa90a849-dda6-48c7-a8ed-839a0100d8c4",
                  "parent_uuid": "f369ee95-ad84-44b0-bf45-82bf60a59507",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "adcb64f3-7d5b-4c44-9e5a-d32a3da5996b",
              "parent_uuid": "b64a9419-53fb-409e-bb64-a22bf5ab04a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38463ac1-6853-4561-bd63-6ded7205588a",
                  "parent_uuid": "adcb64f3-7d5b-4c44-9e5a-d32a3da5996b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b86ea53-edee-4969-932b-6b28a02b0bbc",
              "parent_uuid": "b64a9419-53fb-409e-bb64-a22bf5ab04a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10a04193-5650-4480-b6d2-754f937a11f2",
                  "parent_uuid": "9b86ea53-edee-4969-932b-6b28a02b0bbc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94f4b086-06f6-42b1-8096-f5949f159c1d",
              "parent_uuid": "b64a9419-53fb-409e-bb64-a22bf5ab04a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97e38d4b-179b-446d-af31-c66a74ad98f3",
                  "parent_uuid": "94f4b086-06f6-42b1-8096-f5949f159c1d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "83e9a8aa-8290-4974-8eea-8bae5b0b6b67",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "279e18b8-5a50-4b46-b9a5-ecee247c0917",
              "parent_uuid": "83e9a8aa-8290-4974-8eea-8bae5b0b6b67",
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
              "uuid": "11437a95-c978-4c98-97d1-e0b83c843e5b",
              "parent_uuid": "83e9a8aa-8290-4974-8eea-8bae5b0b6b67",
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
              "uuid": "733cdee3-2507-4a0c-bc0c-c8897c733302",
              "parent_uuid": "83e9a8aa-8290-4974-8eea-8bae5b0b6b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a24bb51-f125-4be2-a9f2-b635b09b290b",
                  "parent_uuid": "733cdee3-2507-4a0c-bc0c-c8897c733302",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "510fea89-1ce4-4373-a3cc-833a9ffbcf9e",
              "parent_uuid": "83e9a8aa-8290-4974-8eea-8bae5b0b6b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44b90b20-49f8-46db-92b5-f2e20a1e6046",
                  "parent_uuid": "510fea89-1ce4-4373-a3cc-833a9ffbcf9e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2f0a0d9-4e3c-466d-b9fb-00333b660b26",
              "parent_uuid": "83e9a8aa-8290-4974-8eea-8bae5b0b6b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6a0ce1a-0c22-42ca-9961-0ac5ffa509aa",
                  "parent_uuid": "a2f0a0d9-4e3c-466d-b9fb-00333b660b26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0602cddd-49ce-43a0-b297-b6df669fd7c7",
              "parent_uuid": "83e9a8aa-8290-4974-8eea-8bae5b0b6b67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31592874-cde3-431a-be4b-7c94db38b0e5",
                  "parent_uuid": "0602cddd-49ce-43a0-b297-b6df669fd7c7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2271ce66-5bfe-4a99-acd5-e5a5d0928386",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e65c1b1-8144-473c-a195-13ebf5c2af69",
              "parent_uuid": "2271ce66-5bfe-4a99-acd5-e5a5d0928386",
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
              "uuid": "9c7e324d-e1f7-4202-9111-554dcf9b0e26",
              "parent_uuid": "2271ce66-5bfe-4a99-acd5-e5a5d0928386",
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
              "uuid": "c89998cf-f7f9-4e3e-98af-641a5e6c4644",
              "parent_uuid": "2271ce66-5bfe-4a99-acd5-e5a5d0928386",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ad9b956-6e0c-4af8-81ad-f781765b1827",
                  "parent_uuid": "c89998cf-f7f9-4e3e-98af-641a5e6c4644",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6af2c916-3f05-4361-9914-15c2ac4678f8",
              "parent_uuid": "2271ce66-5bfe-4a99-acd5-e5a5d0928386",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12b8e66a-896f-408f-8f99-bfb97fdbc2d1",
                  "parent_uuid": "6af2c916-3f05-4361-9914-15c2ac4678f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d21be913-0fee-484d-b67f-8b320e90fc8a",
              "parent_uuid": "2271ce66-5bfe-4a99-acd5-e5a5d0928386",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8459b153-8bb5-4073-89b8-f3160a84c16c",
                  "parent_uuid": "d21be913-0fee-484d-b67f-8b320e90fc8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cf4c296-ccdc-4ccd-8d6f-ec64de54afd8",
              "parent_uuid": "2271ce66-5bfe-4a99-acd5-e5a5d0928386",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42b926e5-52e5-4e29-9c86-38ef5133a450",
                  "parent_uuid": "3cf4c296-ccdc-4ccd-8d6f-ec64de54afd8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a78ba274-2d4c-4e89-ba0c-378b64271901",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f867b3be-23b2-4250-b5ed-570fa00ff4f9",
              "parent_uuid": "a78ba274-2d4c-4e89-ba0c-378b64271901",
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
              "uuid": "63bf5d55-b4ba-4e5b-b1a7-4d270383677e",
              "parent_uuid": "a78ba274-2d4c-4e89-ba0c-378b64271901",
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
              "uuid": "db5b90d3-38bc-4f15-b287-48c618222f99",
              "parent_uuid": "a78ba274-2d4c-4e89-ba0c-378b64271901",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f325f1f8-d4c8-4930-97b0-c0c5bdd8224e",
                  "parent_uuid": "db5b90d3-38bc-4f15-b287-48c618222f99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45a61ccb-6d69-4ca3-9da5-7dc2eedbddff",
              "parent_uuid": "a78ba274-2d4c-4e89-ba0c-378b64271901",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c25a76d4-bf0d-4fc2-8fab-1f23a3e55418",
                  "parent_uuid": "45a61ccb-6d69-4ca3-9da5-7dc2eedbddff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f135090c-cff5-451d-8f14-51577651bc59",
              "parent_uuid": "a78ba274-2d4c-4e89-ba0c-378b64271901",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "427edafe-0bf7-4e60-98a1-cc730de9604b",
                  "parent_uuid": "f135090c-cff5-451d-8f14-51577651bc59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d93ad76-d4eb-418b-be36-e14584630999",
              "parent_uuid": "a78ba274-2d4c-4e89-ba0c-378b64271901",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6694b54-e829-40d2-bcec-6f475389d125",
                  "parent_uuid": "8d93ad76-d4eb-418b-be36-e14584630999",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c8e747d-2c87-469b-9576-63c80e1a9ee5",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a3004a8c-50d2-442d-9935-928ea1b13bd7",
              "parent_uuid": "4c8e747d-2c87-469b-9576-63c80e1a9ee5",
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
          "uuid": "481e159a-f820-4508-89d3-bff343f1e894",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da1a6590-548e-4e01-869c-f2a8de566bcf",
              "parent_uuid": "481e159a-f820-4508-89d3-bff343f1e894",
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
              "uuid": "b9facd50-0312-457d-a301-1de58db8275e",
              "parent_uuid": "481e159a-f820-4508-89d3-bff343f1e894",
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
              "uuid": "a630926d-e4e4-47ac-b0d8-e5e4ca2e5857",
              "parent_uuid": "481e159a-f820-4508-89d3-bff343f1e894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03ee881b-ef62-42d6-aee7-ab1092afe804",
                  "parent_uuid": "a630926d-e4e4-47ac-b0d8-e5e4ca2e5857",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c72047e-db33-43cb-be7a-8bfe6381fcb1",
              "parent_uuid": "481e159a-f820-4508-89d3-bff343f1e894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36ce6a46-83fa-4fe3-ae27-01c8df4762d3",
                  "parent_uuid": "6c72047e-db33-43cb-be7a-8bfe6381fcb1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7fedecc-f323-4aab-8d06-b9c21ced333c",
              "parent_uuid": "481e159a-f820-4508-89d3-bff343f1e894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a35d484-a1aa-4f1c-baae-4f024ec593b0",
                  "parent_uuid": "e7fedecc-f323-4aab-8d06-b9c21ced333c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed53729e-d90a-46ff-8ae1-d45b24f67487",
              "parent_uuid": "481e159a-f820-4508-89d3-bff343f1e894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fe8a53c-451e-4804-9ff3-7d91845554de",
                  "parent_uuid": "ed53729e-d90a-46ff-8ae1-d45b24f67487",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "40ff6294-5e37-456e-a320-d397e35fd458",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b358baa-7758-4a88-a203-bd7a35f0634c",
              "parent_uuid": "40ff6294-5e37-456e-a320-d397e35fd458",
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
              "uuid": "bc25713b-010d-4322-80f3-267eb64ccf4a",
              "parent_uuid": "40ff6294-5e37-456e-a320-d397e35fd458",
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
              "uuid": "4e2797a9-301b-449d-be45-b407d8a3a7bb",
              "parent_uuid": "40ff6294-5e37-456e-a320-d397e35fd458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb3d924c-6a02-442e-b51d-0723a9f85e86",
                  "parent_uuid": "4e2797a9-301b-449d-be45-b407d8a3a7bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b6c2ebf-b8f5-46f2-958c-e7b9aa1080ca",
              "parent_uuid": "40ff6294-5e37-456e-a320-d397e35fd458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1220588-5602-4682-ba25-73aa28997476",
                  "parent_uuid": "7b6c2ebf-b8f5-46f2-958c-e7b9aa1080ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fed0755b-9e99-4ef8-9fcd-d8c800d8f660",
              "parent_uuid": "40ff6294-5e37-456e-a320-d397e35fd458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a08d0974-591b-446c-b20b-27c3754f28d0",
                  "parent_uuid": "fed0755b-9e99-4ef8-9fcd-d8c800d8f660",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1efbbc43-f9da-4584-8544-f24fd4b93087",
              "parent_uuid": "40ff6294-5e37-456e-a320-d397e35fd458",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc08ce66-ebd6-412f-9e2b-1635320ae163",
                  "parent_uuid": "1efbbc43-f9da-4584-8544-f24fd4b93087",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4d19a9c2-400b-4066-8383-3858e00c07f2",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6721b8c6-ad32-48a1-8c9f-b7c4ff356d1e",
              "parent_uuid": "4d19a9c2-400b-4066-8383-3858e00c07f2",
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
              "uuid": "6b579d64-04fe-4712-972a-8bd74d1c513e",
              "parent_uuid": "4d19a9c2-400b-4066-8383-3858e00c07f2",
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
              "uuid": "1c797f8d-6087-4fab-a8d1-1f02f52fbf1a",
              "parent_uuid": "4d19a9c2-400b-4066-8383-3858e00c07f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d7bc9bf-fa21-4e58-aa7b-2cf8167246a4",
                  "parent_uuid": "1c797f8d-6087-4fab-a8d1-1f02f52fbf1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb783ff5-784c-4a00-bff8-3a875ce1f4ab",
              "parent_uuid": "4d19a9c2-400b-4066-8383-3858e00c07f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19f72f4b-48ca-4547-a2de-378c9a2cbea2",
                  "parent_uuid": "cb783ff5-784c-4a00-bff8-3a875ce1f4ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea5be24b-595b-46aa-8a1f-1511c55aec0d",
              "parent_uuid": "4d19a9c2-400b-4066-8383-3858e00c07f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "525ba6d8-7059-4a5d-89b9-af6921bcd6bb",
                  "parent_uuid": "ea5be24b-595b-46aa-8a1f-1511c55aec0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a0afa67-c3d7-4ada-b651-3f7f76ee288d",
              "parent_uuid": "4d19a9c2-400b-4066-8383-3858e00c07f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ef4af45-39f2-4793-ba1c-09fa80109361",
                  "parent_uuid": "0a0afa67-c3d7-4ada-b651-3f7f76ee288d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c88cdee0-d278-41f2-b281-b13238a69fb3",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "515d13ef-05f3-41e3-91ba-db31b67ba9b1",
              "parent_uuid": "c88cdee0-d278-41f2-b281-b13238a69fb3",
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
              "uuid": "14b1ffd3-7e6c-406a-8523-b34c08dbead7",
              "parent_uuid": "c88cdee0-d278-41f2-b281-b13238a69fb3",
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
              "uuid": "a311739d-85b5-43be-a7e1-b8c89bda1694",
              "parent_uuid": "c88cdee0-d278-41f2-b281-b13238a69fb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be3aa72e-0ed8-47d4-b391-204df11cc47f",
                  "parent_uuid": "a311739d-85b5-43be-a7e1-b8c89bda1694",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f467e133-7366-4394-af70-ddc042445506",
              "parent_uuid": "c88cdee0-d278-41f2-b281-b13238a69fb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "013cf093-a9c0-47d7-86bf-6afe95b910f4",
                  "parent_uuid": "f467e133-7366-4394-af70-ddc042445506",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de25c72d-298c-4549-8d69-30d5f22474db",
              "parent_uuid": "c88cdee0-d278-41f2-b281-b13238a69fb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "627e39fa-864f-48b0-8446-005f56ed01a0",
                  "parent_uuid": "de25c72d-298c-4549-8d69-30d5f22474db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4da167e5-2394-488a-ae9a-eb31fb4e63c0",
              "parent_uuid": "c88cdee0-d278-41f2-b281-b13238a69fb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd21f94d-e1b4-4aa3-b9f0-00b2688d939e",
                  "parent_uuid": "4da167e5-2394-488a-ae9a-eb31fb4e63c0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b29f6196-58b5-489c-8409-15deef350323",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff1dad38-9fad-4039-bf4e-c2c33fbbff8c",
              "parent_uuid": "b29f6196-58b5-489c-8409-15deef350323",
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
          "uuid": "5894639b-e9eb-4e4b-abfa-1aa1083ca53f",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a290a80c-6051-4231-b197-d28890ffb772",
              "parent_uuid": "5894639b-e9eb-4e4b-abfa-1aa1083ca53f",
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
          "uuid": "bc570f3a-db54-451a-85fb-38132408d23e",
          "parent_uuid": "20e0fce3-9fcf-44a7-8595-b8e9d2c6b790",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5a6c2ed-96df-4715-bc2b-0871eb85e704",
              "parent_uuid": "bc570f3a-db54-451a-85fb-38132408d23e",
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
                  "uuid": "ff3e6610-faa6-46a5-9974-f358b4f647ec",
                  "parent_uuid": "e5a6c2ed-96df-4715-bc2b-0871eb85e704",
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



DECLARE @allChecklists TABLE (CL_UID uniqueidentifier NOT NULL PRIMARY KEY, CL_Name nvarchar(256) NULL, CL_Sort int NULL) 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Sort) 
          SELECT 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID, N'Schüttgutcontainer' AS CL_Name, 1 AS CL_Sort 
UNION ALL SELECT '1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS CL_UID, N'EVA' AS CL_Name, 2 AS CL_Sort 
UNION ALL SELECT '58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS CL_UID, N'CIS' AS CL_Name, 3 AS CL_Sort 
UNION ALL SELECT 'DA19D272-9439-47A7-9749-153DAFAB2B69' AS CL_UID, N'VHP' AS CL_Name, 4 AS CL_Sort 
UNION ALL SELECT '698EA23D-485A-4CEE-9B06-2E130A3A5626' AS CL_UID, N'NPL' AS CL_Name, 5 AS CL_Sort 
UNION ALL SELECT 'F1A2DD8A-2D11-496E-9B14-13559405089F' AS CL_UID, N'BPS_M7' AS CL_Name, 6 AS CL_Sort 
UNION ALL SELECT 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS CL_UID, N'BPS_1020' AS CL_Name, 7 AS CL_Sort 
; 



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

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         CL_UID 
        ,CL_Name 
    ) 
    VALUES 
    ( 
         CTE.CL_UID 
        ,CTE.CL_Name 
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

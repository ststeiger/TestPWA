
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
  "uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "e53dbc3e-f166-41c5-a3b3-01451f0695b6",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "56cf6acf-c3a2-46c3-a83f-60b86d8f734d",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "0d5908e5-726b-4301-af35-9dbf79a5c297",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "7a108042-e269-44ef-8da6-d174531b5c69",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "34d4e254-802c-45fa-aafd-b2e9b698877e",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "b05940cd-1f47-49bf-b9e6-0666b329717f",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "13ecbc2e-eca3-4744-b5ae-959a4027b5ca",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
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
      "uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
      "parent_uuid": "7b894fd7-9436-4e5f-bbdd-635c22e505f1",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "69f48dc9-588f-4960-9a50-2c3fcf89955d",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "873b9ece-0fbc-455c-ac9e-5f91ec66d1fa",
              "parent_uuid": "69f48dc9-588f-4960-9a50-2c3fcf89955d",
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
              "uuid": "cc7ec6e4-20bf-4f2b-9359-6ed71da6d167",
              "parent_uuid": "69f48dc9-588f-4960-9a50-2c3fcf89955d",
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
              "uuid": "09f49512-7019-4712-8377-df29f6691ab2",
              "parent_uuid": "69f48dc9-588f-4960-9a50-2c3fcf89955d",
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
              "uuid": "f9f4c54a-f309-4ffc-873a-0c1444f4c2ea",
              "parent_uuid": "69f48dc9-588f-4960-9a50-2c3fcf89955d",
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
          "uuid": "af41e967-5408-40e6-a44a-aa41c085d7fd",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "1f47dda5-e4de-430f-a3b1-c036b6159a8d",
              "parent_uuid": "af41e967-5408-40e6-a44a-aa41c085d7fd",
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
              "uuid": "815ab0ca-b734-4e18-9439-08abad37b5b3",
              "parent_uuid": "af41e967-5408-40e6-a44a-aa41c085d7fd",
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
              "uuid": "6ef1891e-66cb-4714-b6d6-d255be7e7511",
              "parent_uuid": "af41e967-5408-40e6-a44a-aa41c085d7fd",
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
              "uuid": "b77e6d1b-9ff7-4d7a-886c-906d5fa232fe",
              "parent_uuid": "af41e967-5408-40e6-a44a-aa41c085d7fd",
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
          "uuid": "4092f4db-3f3d-4988-bc72-45c8a727781d",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d19208a6-59a4-44be-b0a2-fc43fdd24cae",
              "parent_uuid": "4092f4db-3f3d-4988-bc72-45c8a727781d",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "20284a87-f6f7-402c-8d40-607550ba4d44",
              "parent_uuid": "4092f4db-3f3d-4988-bc72-45c8a727781d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "max-height: 4cm;"
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
              "uuid": "5edaa0ab-4695-4041-8e5e-d746961b6c16",
              "parent_uuid": "4092f4db-3f3d-4988-bc72-45c8a727781d",
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
              "uuid": "8ed2e0bf-66de-4e4c-8f47-e584edc590f9",
              "parent_uuid": "4092f4db-3f3d-4988-bc72-45c8a727781d",
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
              "uuid": "1460d6b3-e556-4452-a8a3-e41d47dbcad9",
              "parent_uuid": "4092f4db-3f3d-4988-bc72-45c8a727781d",
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
              "uuid": "913b8bd3-26c3-4519-9169-49bc40f48cc4",
              "parent_uuid": "4092f4db-3f3d-4988-bc72-45c8a727781d",
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
          "uuid": "f920dd35-f3e8-4c45-85c3-c4f2dcf5c8a5",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "017e56da-2470-4ae6-b98b-f82ed9e18a40",
              "parent_uuid": "f920dd35-f3e8-4c45-85c3-c4f2dcf5c8a5",
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
          "uuid": "8b5b8d06-e8d3-4063-b52e-a24370fd2645",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "694e16f1-8f88-489d-89db-54949bc32606",
              "parent_uuid": "8b5b8d06-e8d3-4063-b52e-a24370fd2645",
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
              "uuid": "d58ea8f1-59f5-497a-9e7e-15b415a4f73e",
              "parent_uuid": "8b5b8d06-e8d3-4063-b52e-a24370fd2645",
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
              "uuid": "6c4b82ef-7827-4ac7-a6ab-75a18424c8b9",
              "parent_uuid": "8b5b8d06-e8d3-4063-b52e-a24370fd2645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22e8731a-24af-4582-9eb5-eeb3fdd24dd0",
                  "parent_uuid": "6c4b82ef-7827-4ac7-a6ab-75a18424c8b9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13e97989-133f-4771-8be4-3f3b45c2a464",
              "parent_uuid": "8b5b8d06-e8d3-4063-b52e-a24370fd2645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcb638a7-0af8-4252-9b98-ba346bc13f66",
                  "parent_uuid": "13e97989-133f-4771-8be4-3f3b45c2a464",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5e236d7-5a91-4ac5-84c8-57d69cf8cd97",
              "parent_uuid": "8b5b8d06-e8d3-4063-b52e-a24370fd2645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c52f93ab-48d4-4e31-b1cd-7f7ba3ea2e63",
                  "parent_uuid": "a5e236d7-5a91-4ac5-84c8-57d69cf8cd97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f2da2e6-0936-4fc8-894d-81967c716eb3",
              "parent_uuid": "8b5b8d06-e8d3-4063-b52e-a24370fd2645",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59da594a-c8a6-4887-a155-91296888c77a",
                  "parent_uuid": "5f2da2e6-0936-4fc8-894d-81967c716eb3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1390d14b-30b1-4eea-b2de-f7b737c22278",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e24c158-fc06-4694-908b-5201a4a5b21c",
              "parent_uuid": "1390d14b-30b1-4eea-b2de-f7b737c22278",
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
              "uuid": "e9676b30-d839-4ba2-9659-d02be126ded9",
              "parent_uuid": "1390d14b-30b1-4eea-b2de-f7b737c22278",
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
              "uuid": "1bf0e527-699f-4d44-b31d-b2ea32a1b8eb",
              "parent_uuid": "1390d14b-30b1-4eea-b2de-f7b737c22278",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1df4297-828f-4b32-9afb-7960d8dcdf6b",
                  "parent_uuid": "1bf0e527-699f-4d44-b31d-b2ea32a1b8eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a1e3999-c543-442d-8423-fbcb1b54c561",
              "parent_uuid": "1390d14b-30b1-4eea-b2de-f7b737c22278",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2868e8f2-0d51-4c14-8f90-960306dde031",
                  "parent_uuid": "7a1e3999-c543-442d-8423-fbcb1b54c561",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86081b98-4810-4b40-b75b-967fd87e0b6e",
              "parent_uuid": "1390d14b-30b1-4eea-b2de-f7b737c22278",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47c8f1d3-b279-4404-9b52-a27be878918b",
                  "parent_uuid": "86081b98-4810-4b40-b75b-967fd87e0b6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2386d1e8-7eb1-44d5-bec4-edc75344e97c",
              "parent_uuid": "1390d14b-30b1-4eea-b2de-f7b737c22278",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70f67511-a40d-40a0-901b-c1da5ee832b9",
                  "parent_uuid": "2386d1e8-7eb1-44d5-bec4-edc75344e97c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "12e70e83-cf8a-484b-96be-6d5f4c017acb",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4bf645bb-06e7-4875-8de3-9ca18c0c236f",
              "parent_uuid": "12e70e83-cf8a-484b-96be-6d5f4c017acb",
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
              "uuid": "0ee256aa-2106-44c0-9c1a-2a9a2b1d1f52",
              "parent_uuid": "12e70e83-cf8a-484b-96be-6d5f4c017acb",
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
              "uuid": "948d8ab7-7dcb-4d0c-8f9e-812436be73e4",
              "parent_uuid": "12e70e83-cf8a-484b-96be-6d5f4c017acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63b09718-a6c9-4686-9156-b91ab8b2a1bc",
                  "parent_uuid": "948d8ab7-7dcb-4d0c-8f9e-812436be73e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a65207b9-6c37-4a73-be51-acb69022eec8",
              "parent_uuid": "12e70e83-cf8a-484b-96be-6d5f4c017acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52dfe4be-d15d-4328-89c6-efc5986f6553",
                  "parent_uuid": "a65207b9-6c37-4a73-be51-acb69022eec8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dcb2c7c6-509f-4993-99c8-51a236e0a053",
              "parent_uuid": "12e70e83-cf8a-484b-96be-6d5f4c017acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a99a40e-2012-459c-a0f2-d35ea8adcb2a",
                  "parent_uuid": "dcb2c7c6-509f-4993-99c8-51a236e0a053",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e1143b1-8977-4118-8eed-1f009ac455c3",
              "parent_uuid": "12e70e83-cf8a-484b-96be-6d5f4c017acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44a08ed0-14af-486d-8e15-69ce3f39e735",
                  "parent_uuid": "6e1143b1-8977-4118-8eed-1f009ac455c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dcbad1a9-c7c7-49e6-b025-4be3a03a9a16",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09176c45-6da4-4d57-b9cb-107dc759820e",
              "parent_uuid": "dcbad1a9-c7c7-49e6-b025-4be3a03a9a16",
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
              "uuid": "9c627940-3409-4501-aa80-447931e55c41",
              "parent_uuid": "dcbad1a9-c7c7-49e6-b025-4be3a03a9a16",
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
              "uuid": "3705f139-1b19-4da7-8a0b-d1aca10d69d1",
              "parent_uuid": "dcbad1a9-c7c7-49e6-b025-4be3a03a9a16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0c96ac6-0bf8-4310-9b7a-f35d9f53b906",
                  "parent_uuid": "3705f139-1b19-4da7-8a0b-d1aca10d69d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b16c2c3c-5347-4d0b-851f-ee7ee405fd2b",
              "parent_uuid": "dcbad1a9-c7c7-49e6-b025-4be3a03a9a16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dffb6e72-f55d-49d7-995a-9ed4007c7b1d",
                  "parent_uuid": "b16c2c3c-5347-4d0b-851f-ee7ee405fd2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e9c90c8-4645-4355-9ca6-149d8d7f6947",
              "parent_uuid": "dcbad1a9-c7c7-49e6-b025-4be3a03a9a16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b0c2016-eb1d-4c52-bb10-508330f2e640",
                  "parent_uuid": "8e9c90c8-4645-4355-9ca6-149d8d7f6947",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57b6d731-3c97-4c18-b1a9-e309e597bb27",
              "parent_uuid": "dcbad1a9-c7c7-49e6-b025-4be3a03a9a16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7aa72ad9-5a14-42a0-9d8d-80410d65cfdf",
                  "parent_uuid": "57b6d731-3c97-4c18-b1a9-e309e597bb27",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b97e941-0774-4f04-803b-c63644eed583",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee8e9dfe-ddfb-4d54-90e0-aeb216698be9",
              "parent_uuid": "8b97e941-0774-4f04-803b-c63644eed583",
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
              "uuid": "d54e12cd-3f62-47a6-a612-f098da835edf",
              "parent_uuid": "8b97e941-0774-4f04-803b-c63644eed583",
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
              "uuid": "19867f84-4078-42cf-9780-1906275cedd6",
              "parent_uuid": "8b97e941-0774-4f04-803b-c63644eed583",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "35c31605-4e8c-4499-9cb5-6ff0acc4e304",
                  "parent_uuid": "19867f84-4078-42cf-9780-1906275cedd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d5ace86-d3f2-4ff9-b9d8-1aa335f54116",
              "parent_uuid": "8b97e941-0774-4f04-803b-c63644eed583",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "7e34ccad-f595-483e-92e4-5ebaf6ac8848",
                  "parent_uuid": "3d5ace86-d3f2-4ff9-b9d8-1aa335f54116",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49dabde2-b634-4b2b-be5e-409c4aee77d3",
              "parent_uuid": "8b97e941-0774-4f04-803b-c63644eed583",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "52db304f-85c9-4199-95c6-28fa0157b138",
                  "parent_uuid": "49dabde2-b634-4b2b-be5e-409c4aee77d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97177bd6-b7e0-470e-89d4-92b1d224e742",
              "parent_uuid": "8b97e941-0774-4f04-803b-c63644eed583",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "b2b36175-7363-4a60-bebe-22b49178ad82",
                  "parent_uuid": "97177bd6-b7e0-470e-89d4-92b1d224e742",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5fda2be0-cd93-4bb8-9ece-abe7c8e1d545",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7aa15f2-e717-400c-8288-ad783d5091f6",
              "parent_uuid": "5fda2be0-cd93-4bb8-9ece-abe7c8e1d545",
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
              "uuid": "e7fec1b1-ed8a-4890-acc3-db84ecb9dc65",
              "parent_uuid": "5fda2be0-cd93-4bb8-9ece-abe7c8e1d545",
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
              "uuid": "6b9a8d12-01f1-4967-be39-9809baa9ca73",
              "parent_uuid": "5fda2be0-cd93-4bb8-9ece-abe7c8e1d545",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd3fe610-e45c-4971-810f-e949e884c576",
                  "parent_uuid": "6b9a8d12-01f1-4967-be39-9809baa9ca73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4aa024d-b497-4532-8d4b-fe6bec66180f",
              "parent_uuid": "5fda2be0-cd93-4bb8-9ece-abe7c8e1d545",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec0c9632-9ac4-455a-81c9-2e3f8aab612d",
                  "parent_uuid": "a4aa024d-b497-4532-8d4b-fe6bec66180f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d090a106-0f66-4620-864c-6f61e174a25e",
              "parent_uuid": "5fda2be0-cd93-4bb8-9ece-abe7c8e1d545",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b81a8f3-544b-4fd6-8f17-d681b871a1c8",
                  "parent_uuid": "d090a106-0f66-4620-864c-6f61e174a25e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd36769d-a8bb-46d3-a280-ef9e70d3c83b",
              "parent_uuid": "5fda2be0-cd93-4bb8-9ece-abe7c8e1d545",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58ea71bd-6750-44ee-94e3-0a99937fc0f7",
                  "parent_uuid": "dd36769d-a8bb-46d3-a280-ef9e70d3c83b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "74fcf7fd-8b16-4036-9b61-3591b5187c4c",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5bbc1e06-786c-4a25-8c8e-1876c0c90ca0",
              "parent_uuid": "74fcf7fd-8b16-4036-9b61-3591b5187c4c",
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
              "uuid": "abb1a2be-0236-4b75-9373-83223ead54a3",
              "parent_uuid": "74fcf7fd-8b16-4036-9b61-3591b5187c4c",
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
              "uuid": "6b5eae5f-33ed-4e24-9105-ada4cf93e3b3",
              "parent_uuid": "74fcf7fd-8b16-4036-9b61-3591b5187c4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d03d7b4-f677-42af-adf8-2bb65eae2c04",
                  "parent_uuid": "6b5eae5f-33ed-4e24-9105-ada4cf93e3b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c1e1fbf-76be-4370-8ceb-4263043d4468",
              "parent_uuid": "74fcf7fd-8b16-4036-9b61-3591b5187c4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd696b45-6f86-43f6-b7ba-7240f05b673f",
                  "parent_uuid": "4c1e1fbf-76be-4370-8ceb-4263043d4468",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3e93099-91da-4abb-b4f4-02ae5df1fd80",
              "parent_uuid": "74fcf7fd-8b16-4036-9b61-3591b5187c4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d49c6b34-098f-4fc6-b315-22aa80f7ab81",
                  "parent_uuid": "c3e93099-91da-4abb-b4f4-02ae5df1fd80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6996e38-6f71-4100-ba83-a3c59b83c048",
              "parent_uuid": "74fcf7fd-8b16-4036-9b61-3591b5187c4c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1e47c1a-1fed-4208-a1ee-1f156164a316",
                  "parent_uuid": "c6996e38-6f71-4100-ba83-a3c59b83c048",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86bae316-15dc-414c-af35-f2edb5a33e5a",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9cd1024b-dc32-47a1-aaf3-9aba02512855",
              "parent_uuid": "86bae316-15dc-414c-af35-f2edb5a33e5a",
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
              "uuid": "1c08efd3-3d6b-45cf-832f-35972cf43dec",
              "parent_uuid": "86bae316-15dc-414c-af35-f2edb5a33e5a",
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
              "uuid": "1fc68296-91ce-42e8-b499-e8ffd6d46b75",
              "parent_uuid": "86bae316-15dc-414c-af35-f2edb5a33e5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa8d6538-2428-4f52-a21c-7914b5f10744",
                  "parent_uuid": "1fc68296-91ce-42e8-b499-e8ffd6d46b75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8e2181b-4dfc-4c3f-a297-b0b14b128662",
              "parent_uuid": "86bae316-15dc-414c-af35-f2edb5a33e5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c10149e1-bd62-4c78-aa71-4f9e957a9119",
                  "parent_uuid": "b8e2181b-4dfc-4c3f-a297-b0b14b128662",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3be17842-1181-4ee1-85be-d091172e95be",
              "parent_uuid": "86bae316-15dc-414c-af35-f2edb5a33e5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d03597ac-6f0c-4b59-ac5a-501942e6edc2",
                  "parent_uuid": "3be17842-1181-4ee1-85be-d091172e95be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf81a0d7-7e30-4b00-960a-5d938d5dd769",
              "parent_uuid": "86bae316-15dc-414c-af35-f2edb5a33e5a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3607933e-5bc3-47bd-b8c1-23ec4f8cde72",
                  "parent_uuid": "bf81a0d7-7e30-4b00-960a-5d938d5dd769",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "41b59305-9bc2-4c2c-9378-c324c109f12a",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62d59da6-09b0-4c35-b88c-ef713808715d",
              "parent_uuid": "41b59305-9bc2-4c2c-9378-c324c109f12a",
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
              "uuid": "cf9cebc3-c10d-46c6-80cd-21c0e36d5dc9",
              "parent_uuid": "41b59305-9bc2-4c2c-9378-c324c109f12a",
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
              "uuid": "1072b908-3129-4802-8bd9-b98e55574589",
              "parent_uuid": "41b59305-9bc2-4c2c-9378-c324c109f12a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "250f33c5-0260-45e2-b59e-adc0e8f599ee",
                  "parent_uuid": "1072b908-3129-4802-8bd9-b98e55574589",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbfcf648-87eb-4fff-91d2-72886c5cbde9",
              "parent_uuid": "41b59305-9bc2-4c2c-9378-c324c109f12a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b223b64f-08b9-4f96-a3c0-8a814dd8468e",
                  "parent_uuid": "bbfcf648-87eb-4fff-91d2-72886c5cbde9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "caa65697-130d-4cbb-9976-62ca6cbf0a95",
              "parent_uuid": "41b59305-9bc2-4c2c-9378-c324c109f12a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bebc9b35-f26e-49ad-81a9-224794d158b4",
                  "parent_uuid": "caa65697-130d-4cbb-9976-62ca6cbf0a95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72febd21-aa60-449e-b22f-3e7e6abddb5e",
              "parent_uuid": "41b59305-9bc2-4c2c-9378-c324c109f12a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5964c5bf-8ae7-47b3-819a-89589b7bbdda",
                  "parent_uuid": "72febd21-aa60-449e-b22f-3e7e6abddb5e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "00110be9-732c-4079-bfef-501543307800",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18bed1ad-b21d-4895-b8d1-e362d461f99d",
              "parent_uuid": "00110be9-732c-4079-bfef-501543307800",
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
              "uuid": "68b7e5af-9b9b-4ee4-bc6e-8170b1fb2979",
              "parent_uuid": "00110be9-732c-4079-bfef-501543307800",
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
              "uuid": "2b0fef61-ef13-4967-89a7-e7f47d276893",
              "parent_uuid": "00110be9-732c-4079-bfef-501543307800",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21fdfe00-fe61-4cf9-b4c0-52e4ba361ced",
                  "parent_uuid": "2b0fef61-ef13-4967-89a7-e7f47d276893",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be3b9c8b-571f-4b29-824d-f4bb028e78e4",
              "parent_uuid": "00110be9-732c-4079-bfef-501543307800",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a7b75f1-89fb-436b-952a-b23a4d1995f7",
                  "parent_uuid": "be3b9c8b-571f-4b29-824d-f4bb028e78e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5dedd31-c586-4639-9b7a-4baa69a9c744",
              "parent_uuid": "00110be9-732c-4079-bfef-501543307800",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc174f00-75dd-44f7-bf4c-064faec53ab9",
                  "parent_uuid": "f5dedd31-c586-4639-9b7a-4baa69a9c744",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87c1a174-bc65-4876-82e5-a5ee65688217",
              "parent_uuid": "00110be9-732c-4079-bfef-501543307800",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55ddf5d7-59dd-48cc-83df-91749e7a48b9",
                  "parent_uuid": "87c1a174-bc65-4876-82e5-a5ee65688217",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fbcbcd18-2a4f-4696-9d12-001833ce3d09",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78b290b2-cc3e-4d6f-851b-f65d03b08e70",
              "parent_uuid": "fbcbcd18-2a4f-4696-9d12-001833ce3d09",
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
              "uuid": "804dae7b-db20-4d97-8f03-996f284151f7",
              "parent_uuid": "fbcbcd18-2a4f-4696-9d12-001833ce3d09",
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
              "uuid": "cd6a2535-22c5-470f-81c7-c494a01a3f1a",
              "parent_uuid": "fbcbcd18-2a4f-4696-9d12-001833ce3d09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29384ca6-b07e-417e-9459-c4504e3c5e18",
                  "parent_uuid": "cd6a2535-22c5-470f-81c7-c494a01a3f1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09fcb788-61ed-400d-a615-b16c0bd65798",
              "parent_uuid": "fbcbcd18-2a4f-4696-9d12-001833ce3d09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6f5c14b-1b18-482e-928a-71dbb9f2abeb",
                  "parent_uuid": "09fcb788-61ed-400d-a615-b16c0bd65798",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95f4b308-1d42-4dd1-bc12-95526c11c738",
              "parent_uuid": "fbcbcd18-2a4f-4696-9d12-001833ce3d09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce22e2e2-fc5a-48a6-9e46-395e907346c9",
                  "parent_uuid": "95f4b308-1d42-4dd1-bc12-95526c11c738",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "701f7380-387c-499a-8e7f-1967e0c5c187",
              "parent_uuid": "fbcbcd18-2a4f-4696-9d12-001833ce3d09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7566c87a-1117-4bf5-98d2-36241d99529f",
                  "parent_uuid": "701f7380-387c-499a-8e7f-1967e0c5c187",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d35d8e13-d366-42ee-bf53-ce31bc042915",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "423cf658-5493-48be-b033-e5f8ab9a25ad",
              "parent_uuid": "d35d8e13-d366-42ee-bf53-ce31bc042915",
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
              "uuid": "c940c4eb-3571-450f-8727-f0cf281232a3",
              "parent_uuid": "d35d8e13-d366-42ee-bf53-ce31bc042915",
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
              "uuid": "ba031775-ab82-4362-9f76-f6e97ccea557",
              "parent_uuid": "d35d8e13-d366-42ee-bf53-ce31bc042915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7014d086-59fc-461f-932b-a2a4083a7a68",
                  "parent_uuid": "ba031775-ab82-4362-9f76-f6e97ccea557",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a54a6db-a3ec-49ca-be53-f8ce5b822942",
              "parent_uuid": "d35d8e13-d366-42ee-bf53-ce31bc042915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9fe91bf-d57a-4538-b9eb-e4ef5279da8b",
                  "parent_uuid": "1a54a6db-a3ec-49ca-be53-f8ce5b822942",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d0bd359-d501-4677-8c6f-10c553adb075",
              "parent_uuid": "d35d8e13-d366-42ee-bf53-ce31bc042915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "893cad7d-a9df-4b61-afd3-042bd43e5e05",
                  "parent_uuid": "9d0bd359-d501-4677-8c6f-10c553adb075",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a29831f-610c-4e3b-bcc2-4e9fed889ec8",
              "parent_uuid": "d35d8e13-d366-42ee-bf53-ce31bc042915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28d86f7c-8cf6-4f61-9e8e-d5928c381951",
                  "parent_uuid": "2a29831f-610c-4e3b-bcc2-4e9fed889ec8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "90de022e-d31d-4635-ae15-bb6af4408842",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae875317-e8d8-4e75-8ca7-ef1b955bd3c4",
              "parent_uuid": "90de022e-d31d-4635-ae15-bb6af4408842",
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
              "uuid": "a4e4f99b-be93-481d-b320-85134e22fd87",
              "parent_uuid": "90de022e-d31d-4635-ae15-bb6af4408842",
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
              "uuid": "71fb5f38-fb79-4bf3-8d84-0673c94225a0",
              "parent_uuid": "90de022e-d31d-4635-ae15-bb6af4408842",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d2822b9-b3e7-44a6-bf8d-71a9c35c47d5",
                  "parent_uuid": "71fb5f38-fb79-4bf3-8d84-0673c94225a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da2cc6d6-818d-41f3-8d2a-6911e6ebb8fa",
              "parent_uuid": "90de022e-d31d-4635-ae15-bb6af4408842",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2041dff7-5ab2-4470-b122-b9842c0a6966",
                  "parent_uuid": "da2cc6d6-818d-41f3-8d2a-6911e6ebb8fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b69a742-c399-4b7f-a08d-8d7a865e197d",
              "parent_uuid": "90de022e-d31d-4635-ae15-bb6af4408842",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc32516b-e161-4e87-89fc-00808b625624",
                  "parent_uuid": "2b69a742-c399-4b7f-a08d-8d7a865e197d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cd6f976-b2ba-4d0b-948f-25c6cc383e1d",
              "parent_uuid": "90de022e-d31d-4635-ae15-bb6af4408842",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93dc082b-a4f6-453f-b3fe-0a8b205d28b1",
                  "parent_uuid": "5cd6f976-b2ba-4d0b-948f-25c6cc383e1d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "46ba9d2b-2b84-441d-95cb-12c18bb3e3fc",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f843ad69-9e20-48df-926b-b8e89f17c923",
              "parent_uuid": "46ba9d2b-2b84-441d-95cb-12c18bb3e3fc",
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
              "uuid": "385c2576-68d3-4194-8bca-693f824ec0ff",
              "parent_uuid": "46ba9d2b-2b84-441d-95cb-12c18bb3e3fc",
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
              "uuid": "59179b99-cec6-4be0-9cd6-77332ab2a3dc",
              "parent_uuid": "46ba9d2b-2b84-441d-95cb-12c18bb3e3fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b2db0f2-6b01-4551-ae27-9377b624cbb3",
                  "parent_uuid": "59179b99-cec6-4be0-9cd6-77332ab2a3dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0399d5b-de22-4ff5-9bb1-48260e90d594",
              "parent_uuid": "46ba9d2b-2b84-441d-95cb-12c18bb3e3fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9125ec9-3823-4cb7-a208-91e74bb4d386",
                  "parent_uuid": "b0399d5b-de22-4ff5-9bb1-48260e90d594",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "471aaf54-7b3b-499b-bd86-883e31c2da3e",
              "parent_uuid": "46ba9d2b-2b84-441d-95cb-12c18bb3e3fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb199b72-19c0-4260-a3c3-14a88ef7d55d",
                  "parent_uuid": "471aaf54-7b3b-499b-bd86-883e31c2da3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ed86008-52c2-4f1a-b277-69e175cb0e63",
              "parent_uuid": "46ba9d2b-2b84-441d-95cb-12c18bb3e3fc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a833c783-4fe5-43a5-ab55-db04f321ca61",
                  "parent_uuid": "0ed86008-52c2-4f1a-b277-69e175cb0e63",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "56ac36ed-552f-4416-bf44-4068c1313cab",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "765d8ec5-6882-4746-bb30-9773829bd840",
              "parent_uuid": "56ac36ed-552f-4416-bf44-4068c1313cab",
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
          "uuid": "89363789-9a89-455e-b3b7-b404d7b47fa2",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e00a2895-e439-49fc-a0a5-d73ceb1f9520",
              "parent_uuid": "89363789-9a89-455e-b3b7-b404d7b47fa2",
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
          "uuid": "c7e70bb9-212e-45a0-9e63-dc11b4faa06d",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e04a345d-598b-423d-b2ee-252bb643da96",
              "parent_uuid": "c7e70bb9-212e-45a0-9e63-dc11b4faa06d",
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
                  "uuid": "dcc11d0e-346a-4eb3-87cf-762500cb5ba4",
                  "parent_uuid": "e04a345d-598b-423d-b2ee-252bb643da96",
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
          "uuid": "5126d1f6-9804-4264-b146-05874f1245cf",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28c2eae0-97fc-4df6-81e4-b79168893680",
              "parent_uuid": "5126d1f6-9804-4264-b146-05874f1245cf",
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
          "uuid": "ccad16e1-bc03-460c-84e9-80d43084bd24",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8de5578c-717e-4299-8a84-41ec84ec2bcc",
              "parent_uuid": "ccad16e1-bc03-460c-84e9-80d43084bd24",
              "tagName": "td",
              "properties": [
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
          "uuid": "0d7449e3-5666-414b-9634-5353b2dceac8",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f5cf0566-329f-41bd-98c8-fe9783d4afc4",
              "parent_uuid": "0d7449e3-5666-414b-9634-5353b2dceac8",
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
              "uuid": "0eb07050-a01d-49cd-bae5-aa779004d358",
              "parent_uuid": "0d7449e3-5666-414b-9634-5353b2dceac8",
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
              "uuid": "caa8cc47-8b88-4428-9c28-64611db2c069",
              "parent_uuid": "0d7449e3-5666-414b-9634-5353b2dceac8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ba6472d-553b-49b6-9628-846bd7b22b8d",
                  "parent_uuid": "caa8cc47-8b88-4428-9c28-64611db2c069",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "483635a0-adc4-4373-b50d-e1c82c392753",
              "parent_uuid": "0d7449e3-5666-414b-9634-5353b2dceac8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4edfe358-a3bb-4d83-864c-25dc2a92db9a",
                  "parent_uuid": "483635a0-adc4-4373-b50d-e1c82c392753",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "554fd4db-a5b3-4b51-9461-5c6de13645a2",
              "parent_uuid": "0d7449e3-5666-414b-9634-5353b2dceac8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cdf5ae6-f42e-4953-aa59-2bac0f169902",
                  "parent_uuid": "554fd4db-a5b3-4b51-9461-5c6de13645a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b28f84ee-a619-4aa0-9cbe-e40df3c24359",
              "parent_uuid": "0d7449e3-5666-414b-9634-5353b2dceac8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e557fe3f-e08a-4e3e-bea7-b9e9626eead8",
                  "parent_uuid": "b28f84ee-a619-4aa0-9cbe-e40df3c24359",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "335df1d5-b644-45ed-b7e8-6b9be437bc97",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9403b1a8-4bdd-451e-9a2e-ef856464655e",
              "parent_uuid": "335df1d5-b644-45ed-b7e8-6b9be437bc97",
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
              "uuid": "d48bb418-7e9d-4808-b69c-fca2970cc76e",
              "parent_uuid": "335df1d5-b644-45ed-b7e8-6b9be437bc97",
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
              "uuid": "3c6f614d-e4f9-42da-ab2a-867e4a0673d1",
              "parent_uuid": "335df1d5-b644-45ed-b7e8-6b9be437bc97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ebc8117-6ac2-41b7-9666-2d73803aac51",
                  "parent_uuid": "3c6f614d-e4f9-42da-ab2a-867e4a0673d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4429512-434a-43be-a625-9ee6cf73576b",
              "parent_uuid": "335df1d5-b644-45ed-b7e8-6b9be437bc97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddc43ce0-ae4a-4ca2-92cf-40abcc2d5976",
                  "parent_uuid": "d4429512-434a-43be-a625-9ee6cf73576b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e47b58f-238d-4d44-a12d-864127b000fc",
              "parent_uuid": "335df1d5-b644-45ed-b7e8-6b9be437bc97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea8c271c-ed85-42de-a452-7643b04062f8",
                  "parent_uuid": "0e47b58f-238d-4d44-a12d-864127b000fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f7148a7-add9-4872-8be9-7a7009153269",
              "parent_uuid": "335df1d5-b644-45ed-b7e8-6b9be437bc97",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "844414fb-7c65-4a8c-8631-6f6275a1db83",
                  "parent_uuid": "2f7148a7-add9-4872-8be9-7a7009153269",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "962f260b-681d-4b27-8d5d-ec71ddbd4267",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ffd0e69f-feb2-4caa-87b3-cadf6e43ba0f",
              "parent_uuid": "962f260b-681d-4b27-8d5d-ec71ddbd4267",
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
              "uuid": "e97b0011-0a9f-4252-a93d-06d2c7e7fcc1",
              "parent_uuid": "962f260b-681d-4b27-8d5d-ec71ddbd4267",
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
              "uuid": "6a6c4b14-5662-416f-b4b9-f79987adbb6c",
              "parent_uuid": "962f260b-681d-4b27-8d5d-ec71ddbd4267",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f06f6f9-63b6-4b39-8de0-0722d69f48ed",
                  "parent_uuid": "6a6c4b14-5662-416f-b4b9-f79987adbb6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "501e61d5-0423-4f62-956b-31a18d124446",
              "parent_uuid": "962f260b-681d-4b27-8d5d-ec71ddbd4267",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e781fde4-7514-42a7-a468-517154d0c330",
                  "parent_uuid": "501e61d5-0423-4f62-956b-31a18d124446",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30f8251d-d113-4f73-9d16-b1d6b2fab03d",
              "parent_uuid": "962f260b-681d-4b27-8d5d-ec71ddbd4267",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8dce840-cb7d-41c9-aa78-4336c4371ac5",
                  "parent_uuid": "30f8251d-d113-4f73-9d16-b1d6b2fab03d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe0bc05f-5c42-4b50-a94f-e7d78f0e0235",
              "parent_uuid": "962f260b-681d-4b27-8d5d-ec71ddbd4267",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "311a99e3-2166-4976-903c-ad7a51b1bd6e",
                  "parent_uuid": "fe0bc05f-5c42-4b50-a94f-e7d78f0e0235",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b1464b5-0fc8-49fb-bce5-799eb164d27e",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb88f1e8-fc54-41d2-b780-562207be4de1",
              "parent_uuid": "7b1464b5-0fc8-49fb-bce5-799eb164d27e",
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
              "uuid": "993139a8-125e-40b6-81b1-7afe9c4a30a1",
              "parent_uuid": "7b1464b5-0fc8-49fb-bce5-799eb164d27e",
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
              "uuid": "15331d56-cfeb-4151-9842-58fe65b8cc4c",
              "parent_uuid": "7b1464b5-0fc8-49fb-bce5-799eb164d27e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa597768-db2f-4feb-9974-12edbfc5d7fe",
                  "parent_uuid": "15331d56-cfeb-4151-9842-58fe65b8cc4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa28dcaf-b568-4c48-9569-a0f6cabf6654",
              "parent_uuid": "7b1464b5-0fc8-49fb-bce5-799eb164d27e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3f5b969-c360-4b21-9727-c6a658da58a5",
                  "parent_uuid": "aa28dcaf-b568-4c48-9569-a0f6cabf6654",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d20fd3b-a6a6-4e3e-8b11-7b8dbe68a68c",
              "parent_uuid": "7b1464b5-0fc8-49fb-bce5-799eb164d27e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80a85e01-caaf-4fb2-98d3-78d95e223788",
                  "parent_uuid": "6d20fd3b-a6a6-4e3e-8b11-7b8dbe68a68c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9487d25c-98a5-4f2a-8d9a-ec2768bd6abe",
              "parent_uuid": "7b1464b5-0fc8-49fb-bce5-799eb164d27e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f89354b1-9631-4c10-be6b-86ef8b7e4705",
                  "parent_uuid": "9487d25c-98a5-4f2a-8d9a-ec2768bd6abe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e1b2bde8-83d9-43e5-8714-82a151ee2492",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1345a407-b008-4e80-814f-653ae73ddbf9",
              "parent_uuid": "e1b2bde8-83d9-43e5-8714-82a151ee2492",
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
          "uuid": "a6f39a81-ee19-4903-89ab-af809a69f867",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac1b94a5-675b-40a7-847f-22f6b6f13298",
              "parent_uuid": "a6f39a81-ee19-4903-89ab-af809a69f867",
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
              "uuid": "382a49cc-cc82-418e-8fab-0340e2e92fd1",
              "parent_uuid": "a6f39a81-ee19-4903-89ab-af809a69f867",
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
              "uuid": "eb7e002c-5765-4b20-a1c2-b5276bc49a7b",
              "parent_uuid": "a6f39a81-ee19-4903-89ab-af809a69f867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f1703dc-ce9c-416b-890f-60ad8bb688e7",
                  "parent_uuid": "eb7e002c-5765-4b20-a1c2-b5276bc49a7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30e6644b-ffd1-45ba-a572-34ecd46dd6a9",
              "parent_uuid": "a6f39a81-ee19-4903-89ab-af809a69f867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d335e25b-7f71-40bc-ab33-7f76d51cf890",
                  "parent_uuid": "30e6644b-ffd1-45ba-a572-34ecd46dd6a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04fe0278-e024-40a3-8f1d-30ef880b9958",
              "parent_uuid": "a6f39a81-ee19-4903-89ab-af809a69f867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76397932-9698-4a35-92f3-fc8877c85484",
                  "parent_uuid": "04fe0278-e024-40a3-8f1d-30ef880b9958",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39c49d4b-1481-4537-8018-b19c61eb2601",
              "parent_uuid": "a6f39a81-ee19-4903-89ab-af809a69f867",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8caf1190-dc5d-4e38-abfb-26f7b0821c35",
                  "parent_uuid": "39c49d4b-1481-4537-8018-b19c61eb2601",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d27395f5-6a46-4ecc-97f7-65e33faca376",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e20f7046-badc-4a69-b3ac-775d5149d401",
              "parent_uuid": "d27395f5-6a46-4ecc-97f7-65e33faca376",
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
              "uuid": "6a4411ff-08fe-4580-9d56-7d28f101f311",
              "parent_uuid": "d27395f5-6a46-4ecc-97f7-65e33faca376",
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
              "uuid": "b7be5737-d832-425c-885b-e047e644cbd1",
              "parent_uuid": "d27395f5-6a46-4ecc-97f7-65e33faca376",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d65286a2-668e-4cec-902e-530b9edecd35",
                  "parent_uuid": "b7be5737-d832-425c-885b-e047e644cbd1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6aa0fd1f-39f1-4ce7-8b36-224ebe130841",
              "parent_uuid": "d27395f5-6a46-4ecc-97f7-65e33faca376",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3eb74141-5a3e-4f95-a6d1-0092575cbd9d",
                  "parent_uuid": "6aa0fd1f-39f1-4ce7-8b36-224ebe130841",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b3408b7-07f5-4acc-a8b4-776ef8669198",
              "parent_uuid": "d27395f5-6a46-4ecc-97f7-65e33faca376",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cfedcf4-5cbc-4b4f-b778-c9f85ed3e914",
                  "parent_uuid": "1b3408b7-07f5-4acc-a8b4-776ef8669198",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d9c917f-74c9-4d9b-8c34-1483a07f9e37",
              "parent_uuid": "d27395f5-6a46-4ecc-97f7-65e33faca376",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fce262a-933c-469f-a949-dfc063dae596",
                  "parent_uuid": "9d9c917f-74c9-4d9b-8c34-1483a07f9e37",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "210dde15-b161-4abf-80af-327c69405054",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49b9e2e9-9bc5-4b6a-9343-7f6f7802825f",
              "parent_uuid": "210dde15-b161-4abf-80af-327c69405054",
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
              "uuid": "54fe5c9d-1e1f-4dcf-8d4f-73b7fcebb1be",
              "parent_uuid": "210dde15-b161-4abf-80af-327c69405054",
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
              "uuid": "092dffe2-9d9b-428a-81e5-397ed1296fee",
              "parent_uuid": "210dde15-b161-4abf-80af-327c69405054",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20a07374-8779-40f1-bed2-a165cc236fb4",
                  "parent_uuid": "092dffe2-9d9b-428a-81e5-397ed1296fee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "934eb645-fa18-4bc4-acd5-5cf9ce9b171c",
              "parent_uuid": "210dde15-b161-4abf-80af-327c69405054",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a320cc7-1e6f-4ff4-aac6-8eb451ea7cf7",
                  "parent_uuid": "934eb645-fa18-4bc4-acd5-5cf9ce9b171c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24f487a5-31b0-4e55-ba63-6465030bd4ee",
              "parent_uuid": "210dde15-b161-4abf-80af-327c69405054",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd0a47a2-4662-4d80-9b2e-1f681d38988f",
                  "parent_uuid": "24f487a5-31b0-4e55-ba63-6465030bd4ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4818e90-9ef1-4a8b-85ac-42afe3b744e3",
              "parent_uuid": "210dde15-b161-4abf-80af-327c69405054",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c7f05f6-052d-4a09-a51f-9f04185d76e5",
                  "parent_uuid": "f4818e90-9ef1-4a8b-85ac-42afe3b744e3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aef2e514-ea6b-4ead-bade-3bd585441316",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae607033-35ca-417e-879f-76fa39bfd8ef",
              "parent_uuid": "aef2e514-ea6b-4ead-bade-3bd585441316",
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
              "uuid": "1591e948-c0f4-46f6-822b-c12f0852b2fe",
              "parent_uuid": "aef2e514-ea6b-4ead-bade-3bd585441316",
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
              "uuid": "8a70cee5-3b57-4728-af92-87cba35f3740",
              "parent_uuid": "aef2e514-ea6b-4ead-bade-3bd585441316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b4b77a9-8f43-44f5-bd04-8c75a5548329",
                  "parent_uuid": "8a70cee5-3b57-4728-af92-87cba35f3740",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f52eb6e-8749-4edc-96ae-8ec5c94ef7bd",
              "parent_uuid": "aef2e514-ea6b-4ead-bade-3bd585441316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bd7b87c-5741-4b74-b6af-a7d32b7043ff",
                  "parent_uuid": "0f52eb6e-8749-4edc-96ae-8ec5c94ef7bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d28a6e51-5bb2-4933-bccd-c3875ddf855f",
              "parent_uuid": "aef2e514-ea6b-4ead-bade-3bd585441316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f42c204e-01b8-4d87-942e-48ccca9e386e",
                  "parent_uuid": "d28a6e51-5bb2-4933-bccd-c3875ddf855f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b0ad796-20b7-4c08-9493-2e2e6858a8bd",
              "parent_uuid": "aef2e514-ea6b-4ead-bade-3bd585441316",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e93cce0a-e734-4e2e-8a0f-bbf2379095e0",
                  "parent_uuid": "9b0ad796-20b7-4c08-9493-2e2e6858a8bd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79243b8f-74b0-4263-89d6-f925acad9564",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4bb19ca-edf9-427e-8299-0a71cefd14f1",
              "parent_uuid": "79243b8f-74b0-4263-89d6-f925acad9564",
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
          "uuid": "d3e9dae3-0188-4c46-80c6-fc66b9b60cc1",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "64ba817c-bf5c-4ee7-aa2b-09759ebce427",
              "parent_uuid": "d3e9dae3-0188-4c46-80c6-fc66b9b60cc1",
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
          "uuid": "96b03e85-be67-4895-a6c2-98b83f334e27",
          "parent_uuid": "d7588c85-d3ae-4e57-8e50-288969878b81",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b56bd42c-5067-4d12-b45b-9a53e85590da",
              "parent_uuid": "96b03e85-be67-4895-a6c2-98b83f334e27",
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
                  "uuid": "e2a762bc-65b4-4922-96b9-1bb4e857ca0b",
                  "parent_uuid": "b56bd42c-5067-4d12-b45b-9a53e85590da",
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


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
  "uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
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
      "uuid": "babb499d-6a7d-4c4c-826f-b51b9258a735",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
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
      "uuid": "dcbffdce-55f8-4dab-9c39-5d9a53030603",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "35"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "d2948985-b35d-40ec-9ca0-90c2e5c14494",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
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
      "uuid": "eb468d85-13b9-4849-863c-ef4a129ee827",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
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
      "uuid": "0930328f-b80c-4f26-b4f2-fdece50a784f",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "80"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "8fc6cb82-c91f-4d44-af77-860e4ec874ed",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
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
      "uuid": "39686da2-2b1d-4cbc-bcab-2163a178c41e",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
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
      "uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
      "parent_uuid": "2c3beef4-9686-465e-a43a-771730a64e4f",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "6b5b168c-25b5-4a87-b3f4-5e8db70c32f0",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "uuid": "6816ae2c-784e-482a-ad5e-ab294cf30cbb",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "uuid": "66f15637-4dec-4f4d-bb00-336a9ba5f7c5",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "uuid": "0d9de596-2612-47b8-bb7c-ee804b7e5e3c",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Visuelle Handarbeitsplatz</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "3dbec6b5-3491-409d-a286-08819c0dbdce",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "7daa886b-585a-4d52-a5e9-98d38a874834",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "d105e96a-3ef8-4577-a4ec-2f2d6c424123",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "innerHtml": "\r\n                    <span>Nr.</span>\r\n                ",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "7e2b5662-32ed-49d4-b336-0a4e76b5932a",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "sort": 7,
              "lvl": 0
            },
            {
              "uuid": "3a0d5fc2-f29d-42a7-8b21-d053a4972232",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "sort": 8,
              "lvl": 0
            },
            {
              "uuid": "2554c3ca-86bf-4263-8acd-422a9c7b5ff2",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "sort": 9,
              "lvl": 0
            },
            {
              "uuid": "7dd2d611-c6c8-49c0-8306-1320bfab1ead",
              "parent_uuid": "dcec5c7b-a643-4fca-af2c-b08c7741d9ad",
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
              "sort": 10,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "bfc10ef6-e655-40a1-8811-3d164da3bc43",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "12e89a5c-77d0-407a-9a86-359fc99bd0f2",
              "parent_uuid": "bfc10ef6-e655-40a1-8811-3d164da3bc43",
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
              "uuid": "d9c0dee6-3843-437a-82b6-ffe5361964ee",
              "parent_uuid": "bfc10ef6-e655-40a1-8811-3d164da3bc43",
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
              "uuid": "080c9b0b-fb5e-43be-8fad-6b8432478aaf",
              "parent_uuid": "bfc10ef6-e655-40a1-8811-3d164da3bc43",
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
              "uuid": "a2c39c03-bcce-4d97-9b36-4d16e1995f89",
              "parent_uuid": "bfc10ef6-e655-40a1-8811-3d164da3bc43",
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
          "uuid": "11589493-f478-43b7-b565-b2cb54ffb3da",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32bc6c62-6652-4e1c-a822-462ff5fbcfd6",
              "parent_uuid": "11589493-f478-43b7-b565-b2cb54ffb3da",
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
              "uuid": "962546bc-cdf2-4d67-a037-d50ca4a9c644",
              "parent_uuid": "11589493-f478-43b7-b565-b2cb54ffb3da",
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
              "uuid": "bc783a3a-32fb-4f1f-8152-a583bc9af2a7",
              "parent_uuid": "11589493-f478-43b7-b565-b2cb54ffb3da",
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
              "uuid": "114988a6-8568-4449-95b6-eb8158e3b0ed",
              "parent_uuid": "11589493-f478-43b7-b565-b2cb54ffb3da",
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
              "uuid": "5416e1ac-9a4a-426f-8077-aea542c58813",
              "parent_uuid": "11589493-f478-43b7-b565-b2cb54ffb3da",
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
              "uuid": "fc397ca9-368b-4030-b2a7-f797e7cafcdd",
              "parent_uuid": "11589493-f478-43b7-b565-b2cb54ffb3da",
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
          "uuid": "14cfe933-a54c-41ee-a434-359cf1737438",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "478aff3b-159e-451f-936e-69658b7b9a8c",
              "parent_uuid": "14cfe933-a54c-41ee-a434-359cf1737438",
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
          "uuid": "2565816a-5fae-447d-b3da-eed1dfcb670e",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e75d252b-63e8-4456-8199-b06b096257fb",
              "parent_uuid": "2565816a-5fae-447d-b3da-eed1dfcb670e",
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
              "uuid": "ae71536e-7a11-49c9-bee8-2c361ee77731",
              "parent_uuid": "2565816a-5fae-447d-b3da-eed1dfcb670e",
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
              "uuid": "db9d16e0-1dfd-4b5e-851f-483823b8b193",
              "parent_uuid": "2565816a-5fae-447d-b3da-eed1dfcb670e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "580875da-bb30-4acd-8768-35d39e9c6aac",
                  "parent_uuid": "db9d16e0-1dfd-4b5e-851f-483823b8b193",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26ca79ab-d826-49ee-884e-6d71de1838de",
              "parent_uuid": "2565816a-5fae-447d-b3da-eed1dfcb670e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b64af83f-b6d8-4d25-8580-2a220fccb31e",
                  "parent_uuid": "26ca79ab-d826-49ee-884e-6d71de1838de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ce956dd-4219-4241-8f87-254020f7328b",
              "parent_uuid": "2565816a-5fae-447d-b3da-eed1dfcb670e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e9c50a9-b213-4c2d-b944-87b7547405ec",
                  "parent_uuid": "6ce956dd-4219-4241-8f87-254020f7328b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71403043-653d-4258-89cc-2e69f44150d9",
              "parent_uuid": "2565816a-5fae-447d-b3da-eed1dfcb670e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b503b5fd-8440-4775-8dd4-d935387e2f45",
                  "parent_uuid": "71403043-653d-4258-89cc-2e69f44150d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5babd6e0-8f5e-4715-8825-cbd199e165f5",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a4ef1fe-2eb0-4664-b12f-7020622d3532",
              "parent_uuid": "5babd6e0-8f5e-4715-8825-cbd199e165f5",
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
              "uuid": "f9fab088-a9d9-4b8d-9fad-1f7da86718ee",
              "parent_uuid": "5babd6e0-8f5e-4715-8825-cbd199e165f5",
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
              "uuid": "7001d493-893d-4831-a905-cfc15da04326",
              "parent_uuid": "5babd6e0-8f5e-4715-8825-cbd199e165f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9ee991f3-4609-4aef-aa6e-e9164322a959",
                  "parent_uuid": "7001d493-893d-4831-a905-cfc15da04326",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7843fcc2-5c03-4c95-9742-10203de71441",
              "parent_uuid": "5babd6e0-8f5e-4715-8825-cbd199e165f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0cfbb4b-0a39-4f1b-a85e-2828d9e61c52",
                  "parent_uuid": "7843fcc2-5c03-4c95-9742-10203de71441",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6771c9a0-f0a3-4b81-9e66-750aa07b92d8",
              "parent_uuid": "5babd6e0-8f5e-4715-8825-cbd199e165f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc30945a-cecf-44a4-93be-1a8638ca99dc",
                  "parent_uuid": "6771c9a0-f0a3-4b81-9e66-750aa07b92d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5976bd2d-159d-40ad-a985-576266552fbd",
              "parent_uuid": "5babd6e0-8f5e-4715-8825-cbd199e165f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59ffd380-8fc0-479c-acb9-cd8913502023",
                  "parent_uuid": "5976bd2d-159d-40ad-a985-576266552fbd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a840fd97-7980-4d66-a286-b98f769f45c6",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa06f14e-0f85-41c3-8952-759b23f23600",
              "parent_uuid": "a840fd97-7980-4d66-a286-b98f769f45c6",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Andeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "df80090b-cbc4-4b78-9f89-6f5d0881a4df",
              "parent_uuid": "a840fd97-7980-4d66-a286-b98f769f45c6",
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
              "uuid": "0afbc975-19ed-4a8a-be66-06e3aacf10cd",
              "parent_uuid": "a840fd97-7980-4d66-a286-b98f769f45c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01c9ed1c-3c6a-46f6-b50e-85130a1b43e6",
                  "parent_uuid": "0afbc975-19ed-4a8a-be66-06e3aacf10cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e246639-a62e-4bdd-894f-b98c42c63072",
              "parent_uuid": "a840fd97-7980-4d66-a286-b98f769f45c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a0e9950-5e1e-4edf-aaeb-4a701db773b0",
                  "parent_uuid": "7e246639-a62e-4bdd-894f-b98c42c63072",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1510709a-b673-4255-b54e-3fb8271690c0",
              "parent_uuid": "a840fd97-7980-4d66-a286-b98f769f45c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "deab30a4-0f3e-4cf6-9ebc-f437ec8d02b2",
                  "parent_uuid": "1510709a-b673-4255-b54e-3fb8271690c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebb2caa1-1245-43a1-a77f-79e9ef9941aa",
              "parent_uuid": "a840fd97-7980-4d66-a286-b98f769f45c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c34cc5d-f001-4906-8065-46c88bc1f77c",
                  "parent_uuid": "ebb2caa1-1245-43a1-a77f-79e9ef9941aa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1f782328-140e-4aa6-8f72-f9570a100d34",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2357f72-3f30-4b0c-8acc-94ea738f5553",
              "parent_uuid": "1f782328-140e-4aa6-8f72-f9570a100d34",
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
              "uuid": "fa43929f-b250-4095-b43d-2bd139b30ab9",
              "parent_uuid": "1f782328-140e-4aa6-8f72-f9570a100d34",
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
              "innerHtml": "\r\n                    <span>2J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "cd63476b-5f16-4004-a6c0-6728001ea954",
              "parent_uuid": "1f782328-140e-4aa6-8f72-f9570a100d34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70c681c6-ca2d-42de-8c53-f1d727966a32",
                  "parent_uuid": "cd63476b-5f16-4004-a6c0-6728001ea954",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a783563a-8fba-4803-a875-a7d1b89ddbb1",
              "parent_uuid": "1f782328-140e-4aa6-8f72-f9570a100d34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fad3ca9d-1f50-462f-af4b-4e4c75329245",
                  "parent_uuid": "a783563a-8fba-4803-a875-a7d1b89ddbb1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbb9e6bf-38c0-48de-aaad-a8055c08a7bc",
              "parent_uuid": "1f782328-140e-4aa6-8f72-f9570a100d34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "889bc1bd-d07e-48d2-b398-1f6bea2c58b3",
                  "parent_uuid": "fbb9e6bf-38c0-48de-aaad-a8055c08a7bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92e60a10-95cd-4aa7-9155-6c81c2ec93f2",
              "parent_uuid": "1f782328-140e-4aa6-8f72-f9570a100d34",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6f538fb-9b15-4d3c-8894-0d682a77047f",
                  "parent_uuid": "92e60a10-95cd-4aa7-9155-6c81c2ec93f2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e4bb96ce-f980-4b6d-be76-bbb1b6f7814c",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e28e85b0-6f7a-4840-99b2-9c29af95cd33",
              "parent_uuid": "e4bb96ce-f980-4b6d-be76-bbb1b6f7814c",
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
              "uuid": "457ef10d-f8a9-4623-97a9-322b8949d7f9",
              "parent_uuid": "e4bb96ce-f980-4b6d-be76-bbb1b6f7814c",
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
              "uuid": "812493e0-9d89-4cd8-b1cb-a9327f4a883c",
              "parent_uuid": "e4bb96ce-f980-4b6d-be76-bbb1b6f7814c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79a656e8-8563-4fba-afb2-89bc82e70c11",
                  "parent_uuid": "812493e0-9d89-4cd8-b1cb-a9327f4a883c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f63222c3-79d2-44ce-b6d9-15967b7314f0",
              "parent_uuid": "e4bb96ce-f980-4b6d-be76-bbb1b6f7814c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb7cd31f-18ef-49a5-be35-b3a8f5952fcb",
                  "parent_uuid": "f63222c3-79d2-44ce-b6d9-15967b7314f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57ed8e78-7d2a-4f4a-84ef-eeb751559fad",
              "parent_uuid": "e4bb96ce-f980-4b6d-be76-bbb1b6f7814c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e494fa83-f72e-410a-aa93-ed78208fd8e9",
                  "parent_uuid": "57ed8e78-7d2a-4f4a-84ef-eeb751559fad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3603476f-a1b9-4052-9d70-501232494d13",
              "parent_uuid": "e4bb96ce-f980-4b6d-be76-bbb1b6f7814c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55a669dd-1dec-4b91-b982-9978b34be9d6",
                  "parent_uuid": "3603476f-a1b9-4052-9d70-501232494d13",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "049f4ab5-b43f-4227-81f5-cbb14959fecb",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c35fb676-9e0e-411d-ad9f-b946d415a6c9",
              "parent_uuid": "049f4ab5-b43f-4227-81f5-cbb14959fecb",
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
              "uuid": "6514902c-1ff8-4b4b-a283-16e2397477d6",
              "parent_uuid": "049f4ab5-b43f-4227-81f5-cbb14959fecb",
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
              "uuid": "ffeeeb73-edbb-474a-a08b-407e5c23934e",
              "parent_uuid": "049f4ab5-b43f-4227-81f5-cbb14959fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8aa90207-08ed-4daa-a8ae-31ed20dba48a",
                  "parent_uuid": "ffeeeb73-edbb-474a-a08b-407e5c23934e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1f05f3a-2222-4de6-888f-ef6dd89399c3",
              "parent_uuid": "049f4ab5-b43f-4227-81f5-cbb14959fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "759acf99-a51f-4918-92a2-37a1d9504972",
                  "parent_uuid": "d1f05f3a-2222-4de6-888f-ef6dd89399c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf5254c4-9140-4bc9-975d-4951c4e7e772",
              "parent_uuid": "049f4ab5-b43f-4227-81f5-cbb14959fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61f05c35-4c67-459b-a6e1-31883d3a76a4",
                  "parent_uuid": "bf5254c4-9140-4bc9-975d-4951c4e7e772",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc4e0c61-7995-43cc-8acb-af460ab3d195",
              "parent_uuid": "049f4ab5-b43f-4227-81f5-cbb14959fecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa3dabd4-24d9-4e23-b198-c324bf0ae408",
                  "parent_uuid": "dc4e0c61-7995-43cc-8acb-af460ab3d195",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fe6b3ce8-2a11-45a7-a49d-23c5781ecded",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f6c234d-032d-493c-932d-f9872601d764",
              "parent_uuid": "fe6b3ce8-2a11-45a7-a49d-23c5781ecded",
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
              "uuid": "889d2b74-2a3a-46c3-b609-29d623a54802",
              "parent_uuid": "fe6b3ce8-2a11-45a7-a49d-23c5781ecded",
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
              "uuid": "03cb680b-66b8-4cf8-9f0b-87b12ddb8649",
              "parent_uuid": "fe6b3ce8-2a11-45a7-a49d-23c5781ecded",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03241f98-7bcf-4063-8733-d6be48a698df",
                  "parent_uuid": "03cb680b-66b8-4cf8-9f0b-87b12ddb8649",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba52086d-fede-424b-b892-2c7e85e73c16",
              "parent_uuid": "fe6b3ce8-2a11-45a7-a49d-23c5781ecded",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e071bdae-5cfb-47a7-9a21-8743aeb21d0c",
                  "parent_uuid": "ba52086d-fede-424b-b892-2c7e85e73c16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6461f0bd-9f07-4636-ae54-50c3b48e3de8",
              "parent_uuid": "fe6b3ce8-2a11-45a7-a49d-23c5781ecded",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59daa5bd-f1f1-4700-9a9a-22da992b422b",
                  "parent_uuid": "6461f0bd-9f07-4636-ae54-50c3b48e3de8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4b2b172-61e8-4470-9a26-a0117572ce73",
              "parent_uuid": "fe6b3ce8-2a11-45a7-a49d-23c5781ecded",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e51e350b-f67d-4038-aa87-850f53fa56ec",
                  "parent_uuid": "d4b2b172-61e8-4470-9a26-a0117572ce73",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "30887d41-6dda-4dc2-91ed-ed8d98ca1589",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8498c9a0-3b4d-4804-8cd5-1ba389acddc5",
              "parent_uuid": "30887d41-6dda-4dc2-91ed-ed8d98ca1589",
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
              "innerHtml": "\r\n                    <span>Bei den zwei Antriebsmotoren die Laufruhe, Geräuschentwicklung und Lagerung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e2a99493-220d-4de9-9a85-0f8015c126ed",
              "parent_uuid": "30887d41-6dda-4dc2-91ed-ed8d98ca1589",
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
              "uuid": "7e0cf646-633f-4c85-aa28-734fca9077b4",
              "parent_uuid": "30887d41-6dda-4dc2-91ed-ed8d98ca1589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36e06ada-c25f-46f7-9ca5-7e13ed0c0b3a",
                  "parent_uuid": "7e0cf646-633f-4c85-aa28-734fca9077b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17ac0b78-c11b-4b70-a070-60228b7fca41",
              "parent_uuid": "30887d41-6dda-4dc2-91ed-ed8d98ca1589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9556ac2f-124f-4879-b374-0a74dbdc0855",
                  "parent_uuid": "17ac0b78-c11b-4b70-a070-60228b7fca41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c5ea1f3-5eb0-43ab-8d47-d173f978f11f",
              "parent_uuid": "30887d41-6dda-4dc2-91ed-ed8d98ca1589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc75b305-4abe-4354-8df8-a3f06d6c8934",
                  "parent_uuid": "3c5ea1f3-5eb0-43ab-8d47-d173f978f11f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f578b9e5-5a2b-4ef7-85f7-f04c0ee015a6",
              "parent_uuid": "30887d41-6dda-4dc2-91ed-ed8d98ca1589",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83071411-ff25-4f02-aef9-b5db107fa515",
                  "parent_uuid": "f578b9e5-5a2b-4ef7-85f7-f04c0ee015a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8bb3dde3-9e96-4ace-804c-a0ddee34d21a",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "71536021-48b0-4ed7-8cf8-ef1fd4680f4b",
              "parent_uuid": "8bb3dde3-9e96-4ace-804c-a0ddee34d21a",
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "6fb9ca75-aefc-4a72-a66a-13af2f24969c",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b0fccb3-5a5e-4453-a59e-7fdfced9de0c",
              "parent_uuid": "6fb9ca75-aefc-4a72-a66a-13af2f24969c",
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
              "innerHtml": "\r\n                    <span>Reinigung des HAP mittels Staubsauger und Reinigungsmittel u.a. Bremsenreiniger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b72bfa09-9f11-42e0-ba4f-e97069d7a92b",
              "parent_uuid": "6fb9ca75-aefc-4a72-a66a-13af2f24969c",
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
              "uuid": "0ded16c3-b1f0-491c-8f0b-b0fc6f4956ab",
              "parent_uuid": "6fb9ca75-aefc-4a72-a66a-13af2f24969c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a74c6fe-8caa-4110-b3fd-dcddedd1fdb4",
                  "parent_uuid": "0ded16c3-b1f0-491c-8f0b-b0fc6f4956ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae1f26a1-10c6-4502-a6cd-22c9aa859f7f",
              "parent_uuid": "6fb9ca75-aefc-4a72-a66a-13af2f24969c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60402771-fb25-4a08-843d-68e0755ac8ae",
                  "parent_uuid": "ae1f26a1-10c6-4502-a6cd-22c9aa859f7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "450a0f4c-a98d-4644-9035-7e43f822eea6",
              "parent_uuid": "6fb9ca75-aefc-4a72-a66a-13af2f24969c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f6ec669-1de5-4614-b0ab-00c276f02782",
                  "parent_uuid": "450a0f4c-a98d-4644-9035-7e43f822eea6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "834924f5-c193-41d7-83d8-63cbfca0918b",
              "parent_uuid": "6fb9ca75-aefc-4a72-a66a-13af2f24969c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ba3818b-eb58-4ae8-9cbf-20072fa92c12",
                  "parent_uuid": "834924f5-c193-41d7-83d8-63cbfca0918b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5bfd5b56-b1af-459c-b349-9fa8c851c2a4",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbe25c7f-f0e4-456c-8edf-0bc8f6948c3b",
              "parent_uuid": "5bfd5b56-b1af-459c-b349-9fa8c851c2a4",
              "tagName": "td",
              "properties": [
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "cedb926a-498d-4c38-b0fb-8434c3143393",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6825b729-82b8-418d-bb36-e45802f6d1cc",
              "parent_uuid": "cedb926a-498d-4c38-b0fb-8434c3143393",
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "40b36b0f-0355-470b-bde6-e6b8aa6bb81e",
          "parent_uuid": "f75719a1-ce86-4064-a811-dae0c4da6b06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1921bd0-c982-44fe-b676-6c63e12c8247",
              "parent_uuid": "40b36b0f-0355-470b-bde6-e6b8aa6bb81e",
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
                  "uuid": "9d2b6660-20e4-4c50-b2e5-509950eaf0d4",
                  "parent_uuid": "e1921bd0-c982-44fe-b676-6c63e12c8247",
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
          "sort": 16,
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

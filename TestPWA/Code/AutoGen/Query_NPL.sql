
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
  "uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "6c35dd0f-15f4-4a29-ad24-e78f61555d63",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "9c64e826-3c3f-4bc6-9fa4-5cf0e1cdfa40",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "b0a6dcae-b6b6-4b09-894a-a65d445a8aea",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "7f5f356d-4616-49b7-9478-accd41fbb739",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "a1e23454-9c33-4114-9e7b-c368f868e3fb",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "e461b33b-ff7c-4401-b420-07ba82f75653",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "a5d09707-a98f-4679-9059-d5b1fda71078",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
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
      "uuid": "d3faad83-86f4-4798-b187-fd7434307561",
      "parent_uuid": "d27ab84d-910f-4e91-b38c-420b4e9637cd",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "ef415d15-ef12-4c0e-bf4d-bb549a34c078",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "96305602-e7be-4340-8e49-f83d721ca8e0",
              "parent_uuid": "ef415d15-ef12-4c0e-bf4d-bb549a34c078",
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
              "uuid": "b387848a-fa4c-454e-b62c-468610ac42fe",
              "parent_uuid": "ef415d15-ef12-4c0e-bf4d-bb549a34c078",
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
              "uuid": "64145ea9-efb5-47e8-b44b-ac161605bea8",
              "parent_uuid": "ef415d15-ef12-4c0e-bf4d-bb549a34c078",
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
              "uuid": "ac331f8d-647d-4d4f-b477-fa17d4041b5c",
              "parent_uuid": "ef415d15-ef12-4c0e-bf4d-bb549a34c078",
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
          "uuid": "cf653a92-16c7-403e-8164-91c44dfb08a8",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "df72151a-aa4d-496f-b267-9d335f024c06",
              "parent_uuid": "cf653a92-16c7-403e-8164-91c44dfb08a8",
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
              "uuid": "88840507-ea73-41c1-bc97-b8964d10381d",
              "parent_uuid": "cf653a92-16c7-403e-8164-91c44dfb08a8",
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
              "uuid": "16a82ac3-1e61-47cb-ba9f-afed878d4ad9",
              "parent_uuid": "cf653a92-16c7-403e-8164-91c44dfb08a8",
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
              "uuid": "75894ad0-84c6-452a-9af9-b011e5e64456",
              "parent_uuid": "cf653a92-16c7-403e-8164-91c44dfb08a8",
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
          "uuid": "68a24658-88fe-4d56-8ac8-939b0d45f581",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ece894e1-bedc-4c76-a235-d1b55db1932e",
              "parent_uuid": "68a24658-88fe-4d56-8ac8-939b0d45f581",
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
              "uuid": "a3744cf3-84bf-4688-b266-93a01ac3a083",
              "parent_uuid": "68a24658-88fe-4d56-8ac8-939b0d45f581",
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
              "uuid": "63b2f466-437b-4643-a8c7-af5f8c25dfed",
              "parent_uuid": "68a24658-88fe-4d56-8ac8-939b0d45f581",
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
              "uuid": "823eb723-7fd1-4346-a419-0383dd0adf9a",
              "parent_uuid": "68a24658-88fe-4d56-8ac8-939b0d45f581",
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
              "uuid": "30ccbab2-1d8d-4c03-aa8b-5b2f1bb48089",
              "parent_uuid": "68a24658-88fe-4d56-8ac8-939b0d45f581",
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
              "uuid": "1e805a5c-34c6-4cc7-a98b-4c2e03b90823",
              "parent_uuid": "68a24658-88fe-4d56-8ac8-939b0d45f581",
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
          "uuid": "fd47772d-0bad-4a71-becf-fe566a410486",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "36ea9687-2381-441f-82e9-fecd19796899",
              "parent_uuid": "fd47772d-0bad-4a71-becf-fe566a410486",
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
          "uuid": "cb64a36c-6578-48d2-bcb2-b3a9a67f2cec",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f877f8bd-9e4f-4fc8-b346-0b06a3ed30dd",
              "parent_uuid": "cb64a36c-6578-48d2-bcb2-b3a9a67f2cec",
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
              "uuid": "475d7f27-a725-453c-8f56-0308c185a2ab",
              "parent_uuid": "cb64a36c-6578-48d2-bcb2-b3a9a67f2cec",
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
              "uuid": "e6893ccb-b072-4a6e-9436-0090328ebfef",
              "parent_uuid": "cb64a36c-6578-48d2-bcb2-b3a9a67f2cec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8d18a20-2820-43f1-a788-0bc0682d6093",
                  "parent_uuid": "e6893ccb-b072-4a6e-9436-0090328ebfef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65d5318a-ad23-48a4-816e-65c078dd7860",
              "parent_uuid": "cb64a36c-6578-48d2-bcb2-b3a9a67f2cec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c94bd8c7-9747-44d1-873e-ff6216c7a2a9",
                  "parent_uuid": "65d5318a-ad23-48a4-816e-65c078dd7860",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08b4d383-d51b-4575-954e-12ae7ba5e699",
              "parent_uuid": "cb64a36c-6578-48d2-bcb2-b3a9a67f2cec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "957bc78a-4b4e-41b3-9804-28fcb88249d5",
                  "parent_uuid": "08b4d383-d51b-4575-954e-12ae7ba5e699",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29bcf559-b15e-4cc2-a533-c8dc2e80dc11",
              "parent_uuid": "cb64a36c-6578-48d2-bcb2-b3a9a67f2cec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab25d7eb-12f4-43c4-8946-7ac86cff1892",
                  "parent_uuid": "29bcf559-b15e-4cc2-a533-c8dc2e80dc11",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c94590e-6a3d-4a01-af4d-f019a2ef80eb",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ced3d815-c7f8-44b9-8134-3ac0bab23390",
              "parent_uuid": "0c94590e-6a3d-4a01-af4d-f019a2ef80eb",
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
              "uuid": "3fd1645a-1a75-419a-8b35-9064f5f61f05",
              "parent_uuid": "0c94590e-6a3d-4a01-af4d-f019a2ef80eb",
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
              "uuid": "f9f9a8c0-7c4c-4949-bd9b-ce021e12c5e3",
              "parent_uuid": "0c94590e-6a3d-4a01-af4d-f019a2ef80eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f38e179d-1b6e-4caf-b7bd-5ec797fb848e",
                  "parent_uuid": "f9f9a8c0-7c4c-4949-bd9b-ce021e12c5e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01855e5d-3c0a-4741-b156-f2e4925715ca",
              "parent_uuid": "0c94590e-6a3d-4a01-af4d-f019a2ef80eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "264e7849-dcc8-40bd-ab3d-c8adc09e7353",
                  "parent_uuid": "01855e5d-3c0a-4741-b156-f2e4925715ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9ce67c1-f62f-43d5-9173-0e0ad1b49d26",
              "parent_uuid": "0c94590e-6a3d-4a01-af4d-f019a2ef80eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da92991a-0399-4d7a-9dfa-17c2ffce3b2e",
                  "parent_uuid": "b9ce67c1-f62f-43d5-9173-0e0ad1b49d26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8859cfdc-4ba4-45e5-9398-4cada2ee92de",
              "parent_uuid": "0c94590e-6a3d-4a01-af4d-f019a2ef80eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b83ac8d7-3e22-4ceb-812d-7ee4d97a29c9",
                  "parent_uuid": "8859cfdc-4ba4-45e5-9398-4cada2ee92de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7be85c29-b4d2-4546-93da-395e4e8d607d",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f04fdb2f-5e15-4920-9c00-acf2c821c4bf",
              "parent_uuid": "7be85c29-b4d2-4546-93da-395e4e8d607d",
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
              "uuid": "784fa134-c764-48f9-9ee2-a74c4663fb28",
              "parent_uuid": "7be85c29-b4d2-4546-93da-395e4e8d607d",
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
              "uuid": "dda3d748-5bc5-43ee-a02b-191179902cc7",
              "parent_uuid": "7be85c29-b4d2-4546-93da-395e4e8d607d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05ea3c1f-2b9f-4fb3-a29a-eb47baa430fd",
                  "parent_uuid": "dda3d748-5bc5-43ee-a02b-191179902cc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb529cce-809d-47a0-be68-305e1fd93624",
              "parent_uuid": "7be85c29-b4d2-4546-93da-395e4e8d607d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adee0c09-9238-41e6-8be0-7244e29d0536",
                  "parent_uuid": "fb529cce-809d-47a0-be68-305e1fd93624",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38a75539-e3b5-4410-88d6-db217409f63e",
              "parent_uuid": "7be85c29-b4d2-4546-93da-395e4e8d607d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8dd84ac6-ecd5-49d7-b119-eac2ddc35fdb",
                  "parent_uuid": "38a75539-e3b5-4410-88d6-db217409f63e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4eac52ca-c97d-4b97-89ad-cddc6e6ba9b7",
              "parent_uuid": "7be85c29-b4d2-4546-93da-395e4e8d607d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c92acd3-f7b1-4c8a-8f76-1a808875c6cf",
                  "parent_uuid": "4eac52ca-c97d-4b97-89ad-cddc6e6ba9b7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "be827cff-92d1-4b43-b814-63f9a96738f8",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dca50d4d-94cf-4b6d-8e86-b6ea128831cb",
              "parent_uuid": "be827cff-92d1-4b43-b814-63f9a96738f8",
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
              "uuid": "4a0da447-1723-48f4-944a-6d9c0dc6b5c1",
              "parent_uuid": "be827cff-92d1-4b43-b814-63f9a96738f8",
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
              "uuid": "5040b4e9-3498-47a4-ba49-f6831c2de7ed",
              "parent_uuid": "be827cff-92d1-4b43-b814-63f9a96738f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57d522ee-3be7-407d-8202-bdcfe34e3ef3",
                  "parent_uuid": "5040b4e9-3498-47a4-ba49-f6831c2de7ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b66f34f0-548b-4ad7-9037-7df750150a56",
              "parent_uuid": "be827cff-92d1-4b43-b814-63f9a96738f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4578eef-8ab5-402b-bd22-5150a8878654",
                  "parent_uuid": "b66f34f0-548b-4ad7-9037-7df750150a56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "555cb04c-827a-4ca0-93dd-ee69f82070e1",
              "parent_uuid": "be827cff-92d1-4b43-b814-63f9a96738f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86647c5b-85ae-4462-b641-9e8a98a58645",
                  "parent_uuid": "555cb04c-827a-4ca0-93dd-ee69f82070e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e937fe9a-eaee-4d33-8800-30190a5145a6",
              "parent_uuid": "be827cff-92d1-4b43-b814-63f9a96738f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b31b7c40-0d18-42a3-b61f-e59446d7110b",
                  "parent_uuid": "e937fe9a-eaee-4d33-8800-30190a5145a6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6f30a8b9-dace-41f0-8335-ba864f11259e",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb057856-e0fa-4551-980b-4a50a18d03b5",
              "parent_uuid": "6f30a8b9-dace-41f0-8335-ba864f11259e",
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
              "uuid": "b5e88eac-9ed5-4920-be58-24d997e57b40",
              "parent_uuid": "6f30a8b9-dace-41f0-8335-ba864f11259e",
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
              "uuid": "bd8512f4-db8e-4ed9-b251-4b0299686323",
              "parent_uuid": "6f30a8b9-dace-41f0-8335-ba864f11259e",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "b083828f-b7b2-448c-a646-5438b13955bd",
                  "parent_uuid": "bd8512f4-db8e-4ed9-b251-4b0299686323",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0ad069a-7970-42b4-900c-73a26f807ad8",
              "parent_uuid": "6f30a8b9-dace-41f0-8335-ba864f11259e",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "70bfe7e8-4b94-4e59-bcf9-5824bee2c356",
                  "parent_uuid": "c0ad069a-7970-42b4-900c-73a26f807ad8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcd73905-9075-4cf9-945c-bc480ef616f5",
              "parent_uuid": "6f30a8b9-dace-41f0-8335-ba864f11259e",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "99d9e5fd-81f9-4ebb-a8c4-1851d6a1228e",
                  "parent_uuid": "fcd73905-9075-4cf9-945c-bc480ef616f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e292b9c-972c-4e17-9653-ae3aff5d807e",
              "parent_uuid": "6f30a8b9-dace-41f0-8335-ba864f11259e",
              "tagName": "td",
              "properties": [
                [
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
                  "uuid": "2334d7fc-0a1d-4444-95cc-247bb5c66407",
                  "parent_uuid": "5e292b9c-972c-4e17-9653-ae3aff5d807e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c4b708e7-31d9-4008-9d22-171bbdd56c6b",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33a59167-be77-4b57-9180-cc435e3d28e8",
              "parent_uuid": "c4b708e7-31d9-4008-9d22-171bbdd56c6b",
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
              "uuid": "020842e2-7cee-486f-bf6e-af882898432a",
              "parent_uuid": "c4b708e7-31d9-4008-9d22-171bbdd56c6b",
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
              "uuid": "5fa7194d-bdd9-4244-a1e3-ed2bb0a85ce1",
              "parent_uuid": "c4b708e7-31d9-4008-9d22-171bbdd56c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2df1e4e-1023-45b5-97b2-6d6eb56598b1",
                  "parent_uuid": "5fa7194d-bdd9-4244-a1e3-ed2bb0a85ce1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72a1b3e8-6d49-4f91-b7f6-017a50d214b8",
              "parent_uuid": "c4b708e7-31d9-4008-9d22-171bbdd56c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fabaa581-866a-4cc0-9213-46de886c61fa",
                  "parent_uuid": "72a1b3e8-6d49-4f91-b7f6-017a50d214b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0b4cb85-f634-40dc-8f4d-2905de789f92",
              "parent_uuid": "c4b708e7-31d9-4008-9d22-171bbdd56c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36594c88-2b20-4286-924c-e8a66e6cd494",
                  "parent_uuid": "a0b4cb85-f634-40dc-8f4d-2905de789f92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "867521a9-6663-47b9-8c59-a8a64728b8d8",
              "parent_uuid": "c4b708e7-31d9-4008-9d22-171bbdd56c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9078dce9-660d-46c8-805d-727a5fd90974",
                  "parent_uuid": "867521a9-6663-47b9-8c59-a8a64728b8d8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c872c19d-62df-4f6c-98ab-74a1d0cb0213",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5b5e9b9-eeed-4dce-a0a6-ad7933371901",
              "parent_uuid": "c872c19d-62df-4f6c-98ab-74a1d0cb0213",
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
              "uuid": "52de985e-38d6-4e0b-a1a4-b3408575edcd",
              "parent_uuid": "c872c19d-62df-4f6c-98ab-74a1d0cb0213",
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
              "uuid": "612d1721-5dc5-458b-a771-c51414102621",
              "parent_uuid": "c872c19d-62df-4f6c-98ab-74a1d0cb0213",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b26f930-5f61-46f6-a6be-762a4352e12a",
                  "parent_uuid": "612d1721-5dc5-458b-a771-c51414102621",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c254e087-fdde-4ee3-9238-c4c991266da1",
              "parent_uuid": "c872c19d-62df-4f6c-98ab-74a1d0cb0213",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75dc9c6c-5f0b-46a5-a806-61db7e06be00",
                  "parent_uuid": "c254e087-fdde-4ee3-9238-c4c991266da1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1cd07b1-fa40-4e8d-bc21-fb6c23ab45de",
              "parent_uuid": "c872c19d-62df-4f6c-98ab-74a1d0cb0213",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a32a0bf0-97f3-4d94-893f-c1a683754426",
                  "parent_uuid": "a1cd07b1-fa40-4e8d-bc21-fb6c23ab45de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80704a28-e575-403a-bc04-d1c01a7da575",
              "parent_uuid": "c872c19d-62df-4f6c-98ab-74a1d0cb0213",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f5d6e7d-52b0-442f-8406-e710107d32c3",
                  "parent_uuid": "80704a28-e575-403a-bc04-d1c01a7da575",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0cde1202-5a2d-41d7-9611-9e80e0f8beac",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d3ea643-fc43-4568-a27e-a0ba5add9fd5",
              "parent_uuid": "0cde1202-5a2d-41d7-9611-9e80e0f8beac",
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
              "uuid": "71888380-9c9e-4ee3-85f3-4a9df3d470ab",
              "parent_uuid": "0cde1202-5a2d-41d7-9611-9e80e0f8beac",
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
              "uuid": "39946b82-3aba-4a50-a1c5-567a58ac9e8e",
              "parent_uuid": "0cde1202-5a2d-41d7-9611-9e80e0f8beac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afc39453-541d-45e9-bae6-5cc02ff10869",
                  "parent_uuid": "39946b82-3aba-4a50-a1c5-567a58ac9e8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11e16f35-820d-4508-bc32-4a7d6268bd4c",
              "parent_uuid": "0cde1202-5a2d-41d7-9611-9e80e0f8beac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e917e933-bc13-4d19-81f4-c6f21fae32cc",
                  "parent_uuid": "11e16f35-820d-4508-bc32-4a7d6268bd4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b4e7c06-1316-465d-9309-dc64d7e6ea7c",
              "parent_uuid": "0cde1202-5a2d-41d7-9611-9e80e0f8beac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06b20e27-ee49-4cfd-bd8d-e85876f838d4",
                  "parent_uuid": "5b4e7c06-1316-465d-9309-dc64d7e6ea7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80e356f2-4f81-4973-9b54-8ff26da46c47",
              "parent_uuid": "0cde1202-5a2d-41d7-9611-9e80e0f8beac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e102559-79a9-4417-a395-9752263ef360",
                  "parent_uuid": "80e356f2-4f81-4973-9b54-8ff26da46c47",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "59707d35-cead-46a6-a365-c3cf8db71817",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8d1ac47-3a30-4d78-97c8-97b89f3acb17",
              "parent_uuid": "59707d35-cead-46a6-a365-c3cf8db71817",
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
              "uuid": "13dbbbd1-ab00-42ee-a9da-a0664f0616d7",
              "parent_uuid": "59707d35-cead-46a6-a365-c3cf8db71817",
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
              "uuid": "108ac38a-f20d-40b5-9346-8f64f4d67380",
              "parent_uuid": "59707d35-cead-46a6-a365-c3cf8db71817",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "014e3595-b7b0-46ef-bc3b-80afb8b26087",
                  "parent_uuid": "108ac38a-f20d-40b5-9346-8f64f4d67380",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "241311c3-660b-423b-81c8-e871d776ecd4",
              "parent_uuid": "59707d35-cead-46a6-a365-c3cf8db71817",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "101bbd14-28e9-426e-9d37-06c155923b67",
                  "parent_uuid": "241311c3-660b-423b-81c8-e871d776ecd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "574dc29e-b72b-4c24-a88d-06fefd2beb5b",
              "parent_uuid": "59707d35-cead-46a6-a365-c3cf8db71817",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "317a381a-9cf7-4f00-b6b3-c3bf366393d4",
                  "parent_uuid": "574dc29e-b72b-4c24-a88d-06fefd2beb5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d98f39be-7123-4906-a0b9-e1eff359a151",
              "parent_uuid": "59707d35-cead-46a6-a365-c3cf8db71817",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a9c9cd5-f7ae-40da-ae95-1bc63a542493",
                  "parent_uuid": "d98f39be-7123-4906-a0b9-e1eff359a151",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7881e4ea-2eab-44c6-94e2-bf1c28bc6655",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa4e9599-eeef-4797-a1f8-e3b19292232f",
              "parent_uuid": "7881e4ea-2eab-44c6-94e2-bf1c28bc6655",
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
              "uuid": "6f84d703-7015-4959-a5f5-241a3fb9d1f6",
              "parent_uuid": "7881e4ea-2eab-44c6-94e2-bf1c28bc6655",
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
              "uuid": "6176bf99-fd82-4728-90e8-9900f4893d5c",
              "parent_uuid": "7881e4ea-2eab-44c6-94e2-bf1c28bc6655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3980f030-6f27-404a-bc88-9085792dd675",
                  "parent_uuid": "6176bf99-fd82-4728-90e8-9900f4893d5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e236cc19-9759-4ad8-a580-cb2eb88f3ee6",
              "parent_uuid": "7881e4ea-2eab-44c6-94e2-bf1c28bc6655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fdcf856-b05a-4327-b4ea-dc0cac4c245d",
                  "parent_uuid": "e236cc19-9759-4ad8-a580-cb2eb88f3ee6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef5b41a8-daa0-4603-adeb-a2fed153afcc",
              "parent_uuid": "7881e4ea-2eab-44c6-94e2-bf1c28bc6655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "750518d8-98c4-4458-b5a0-e1f6eb762b52",
                  "parent_uuid": "ef5b41a8-daa0-4603-adeb-a2fed153afcc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22aeed9a-2ff2-42de-bce8-22a235582e9d",
              "parent_uuid": "7881e4ea-2eab-44c6-94e2-bf1c28bc6655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc1922d1-d600-4afc-b7f7-d70c80125c09",
                  "parent_uuid": "22aeed9a-2ff2-42de-bce8-22a235582e9d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a935a3d7-b274-4ed7-9bb4-9fdd33470f2a",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47c08bda-e0b9-4e69-9030-5e8942b23be9",
              "parent_uuid": "a935a3d7-b274-4ed7-9bb4-9fdd33470f2a",
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
              "uuid": "feb4a3b6-2c1d-4a58-a937-ccb38bab9bf1",
              "parent_uuid": "a935a3d7-b274-4ed7-9bb4-9fdd33470f2a",
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
              "uuid": "e591ad2d-552b-49cb-b0e5-3269b70048ef",
              "parent_uuid": "a935a3d7-b274-4ed7-9bb4-9fdd33470f2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d23bee5-bca1-4253-bec7-9d29a56385d0",
                  "parent_uuid": "e591ad2d-552b-49cb-b0e5-3269b70048ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca435fa8-bbdd-4d50-a0b3-3df8f63c8e16",
              "parent_uuid": "a935a3d7-b274-4ed7-9bb4-9fdd33470f2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89aa66d7-c8e0-40d6-b708-2682f5648dc3",
                  "parent_uuid": "ca435fa8-bbdd-4d50-a0b3-3df8f63c8e16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d69027f3-3c10-4be4-9f1a-f8de52e6cfd2",
              "parent_uuid": "a935a3d7-b274-4ed7-9bb4-9fdd33470f2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9a98943-46b7-427e-89bb-0119f9345b9d",
                  "parent_uuid": "d69027f3-3c10-4be4-9f1a-f8de52e6cfd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1444b8e-51b2-4156-a163-c96ed156dab5",
              "parent_uuid": "a935a3d7-b274-4ed7-9bb4-9fdd33470f2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7cf3b26-e9e8-4927-8c62-53ee6d7b2181",
                  "parent_uuid": "f1444b8e-51b2-4156-a163-c96ed156dab5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "36404a86-3520-4089-8350-b940d53b8e85",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ba603a9-4161-4ade-8921-d344f58d77d8",
              "parent_uuid": "36404a86-3520-4089-8350-b940d53b8e85",
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
              "uuid": "004ed3ac-395d-4412-bca3-3cc8fc2a7110",
              "parent_uuid": "36404a86-3520-4089-8350-b940d53b8e85",
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
              "uuid": "2e2b8aa6-d012-4c2f-a3d6-38fde76995e2",
              "parent_uuid": "36404a86-3520-4089-8350-b940d53b8e85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2251870d-c39f-49f9-b2f7-8e5629ba60f4",
                  "parent_uuid": "2e2b8aa6-d012-4c2f-a3d6-38fde76995e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a143517-d968-4889-8aff-922ba56db0cf",
              "parent_uuid": "36404a86-3520-4089-8350-b940d53b8e85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2aaac50-7b3f-436d-b769-9e45d603a4e1",
                  "parent_uuid": "2a143517-d968-4889-8aff-922ba56db0cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c84d1b24-ca90-4075-abd2-cba5489dcc49",
              "parent_uuid": "36404a86-3520-4089-8350-b940d53b8e85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd05e0e5-4c3f-43c0-8890-d94ed53731e4",
                  "parent_uuid": "c84d1b24-ca90-4075-abd2-cba5489dcc49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "adc8f468-c812-4b6a-8a49-bc314846bd17",
              "parent_uuid": "36404a86-3520-4089-8350-b940d53b8e85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41047904-7a5b-4c4b-847d-84c0788d7679",
                  "parent_uuid": "adc8f468-c812-4b6a-8a49-bc314846bd17",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f9d40861-ea20-4846-b44f-be703da97d07",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c746907a-9c57-418b-9bbb-a324adf394a5",
              "parent_uuid": "f9d40861-ea20-4846-b44f-be703da97d07",
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
              "uuid": "018a11d2-0522-424b-a534-a0071e4b2ab3",
              "parent_uuid": "f9d40861-ea20-4846-b44f-be703da97d07",
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
              "uuid": "af222559-7afd-476a-be6b-99da8f768417",
              "parent_uuid": "f9d40861-ea20-4846-b44f-be703da97d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3baaa63-4fe6-48e8-94ba-73e7dc279e71",
                  "parent_uuid": "af222559-7afd-476a-be6b-99da8f768417",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af6582e2-fb42-4d42-97fd-3b97e4e940f6",
              "parent_uuid": "f9d40861-ea20-4846-b44f-be703da97d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd20f8bb-309b-402e-af70-b7c1755ab5f0",
                  "parent_uuid": "af6582e2-fb42-4d42-97fd-3b97e4e940f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "966c722a-217c-42e9-af80-714dc98150e5",
              "parent_uuid": "f9d40861-ea20-4846-b44f-be703da97d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce6ccc96-71cc-4ce9-90f7-55cb8e1253cd",
                  "parent_uuid": "966c722a-217c-42e9-af80-714dc98150e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90032e65-7a29-47cd-9cb8-13c75c7fa835",
              "parent_uuid": "f9d40861-ea20-4846-b44f-be703da97d07",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ff8ae5b-0792-4060-a9ca-9b569817e4aa",
                  "parent_uuid": "90032e65-7a29-47cd-9cb8-13c75c7fa835",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4cd4c1d7-1e8b-45e8-aef9-1cc86ee8ef6d",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "900f6848-f9e7-4738-bf34-79815ebaeaee",
              "parent_uuid": "4cd4c1d7-1e8b-45e8-aef9-1cc86ee8ef6d",
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
              "uuid": "943b90ff-693a-43bc-be94-3d268e4d535f",
              "parent_uuid": "4cd4c1d7-1e8b-45e8-aef9-1cc86ee8ef6d",
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
              "uuid": "826c8fac-29ab-45d3-969b-7dd95d2bacf9",
              "parent_uuid": "4cd4c1d7-1e8b-45e8-aef9-1cc86ee8ef6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f946fdb4-5e29-4bec-8a07-ebb1e79da535",
                  "parent_uuid": "826c8fac-29ab-45d3-969b-7dd95d2bacf9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c1e5e70-4a85-443f-809e-72cea6d1bbed",
              "parent_uuid": "4cd4c1d7-1e8b-45e8-aef9-1cc86ee8ef6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68cb8b32-ac5e-406e-b627-b5183f0a7856",
                  "parent_uuid": "0c1e5e70-4a85-443f-809e-72cea6d1bbed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e34c3d11-b2d0-4db7-be0b-32dec7bc066d",
              "parent_uuid": "4cd4c1d7-1e8b-45e8-aef9-1cc86ee8ef6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b869ca8-c557-4839-b2a3-67cd44d921f7",
                  "parent_uuid": "e34c3d11-b2d0-4db7-be0b-32dec7bc066d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d44db2af-59ff-40e8-89eb-99c912d7c8ac",
              "parent_uuid": "4cd4c1d7-1e8b-45e8-aef9-1cc86ee8ef6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fdd6585-b8e8-406f-9f77-ed49ddca93c5",
                  "parent_uuid": "d44db2af-59ff-40e8-89eb-99c912d7c8ac",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b1f01316-4395-4abd-9586-e43f4e69748b",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "9e4358b0-d60e-4b08-83c8-b95b7ddcf8df",
              "parent_uuid": "b1f01316-4395-4abd-9586-e43f4e69748b",
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
          "uuid": "fc6a3860-aa27-4cb1-93b9-8d32e62879ca",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8668de3-7aaf-4420-8b85-5d63772acf25",
              "parent_uuid": "fc6a3860-aa27-4cb1-93b9-8d32e62879ca",
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
          "uuid": "a5af19e9-2d70-4ee2-afbc-d13c699ea41a",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b45c135-77f2-4556-845c-5027402c2019",
              "parent_uuid": "a5af19e9-2d70-4ee2-afbc-d13c699ea41a",
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
                  "uuid": "69ea871c-03ab-4c96-85cc-5a464f42a1ff",
                  "parent_uuid": "3b45c135-77f2-4556-845c-5027402c2019",
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
          "uuid": "85797d75-7e8f-47bd-ba2c-2efd01b3faa3",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49c6a196-c13a-4d63-9cfd-acfc4579edf7",
              "parent_uuid": "85797d75-7e8f-47bd-ba2c-2efd01b3faa3",
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
          "uuid": "1affe420-ed6d-4a4f-9f74-026ed119395c",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3dcbf0a8-cb00-4ac1-9349-110e07c089f2",
              "parent_uuid": "1affe420-ed6d-4a4f-9f74-026ed119395c",
              "tagName": "td",
              "properties": [
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
          "uuid": "d166754b-5313-4351-a939-769c97b79868",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6205447c-821a-4005-ba89-c0fb780128de",
              "parent_uuid": "d166754b-5313-4351-a939-769c97b79868",
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
              "uuid": "6813d6a0-ac21-471a-a0b0-6cf4611e2b1f",
              "parent_uuid": "d166754b-5313-4351-a939-769c97b79868",
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
              "uuid": "27eb0505-100a-4421-9528-23ae9930895a",
              "parent_uuid": "d166754b-5313-4351-a939-769c97b79868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22f1fcb4-adcd-47f4-bc8d-8d17f1716953",
                  "parent_uuid": "27eb0505-100a-4421-9528-23ae9930895a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f59892d7-d122-414c-8758-9a5d3c0dde45",
              "parent_uuid": "d166754b-5313-4351-a939-769c97b79868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8519bbfe-4cea-40ec-b1f2-f519afb87160",
                  "parent_uuid": "f59892d7-d122-414c-8758-9a5d3c0dde45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb7a9f10-e463-40e1-9ac7-93e00045be16",
              "parent_uuid": "d166754b-5313-4351-a939-769c97b79868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2e9f33e-5c8b-4391-9415-57496c92602a",
                  "parent_uuid": "bb7a9f10-e463-40e1-9ac7-93e00045be16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d77c1a43-8da4-4769-8b06-293dc6dfd55e",
              "parent_uuid": "d166754b-5313-4351-a939-769c97b79868",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d5ffa8c-d0ee-46e5-9235-a44896157d59",
                  "parent_uuid": "d77c1a43-8da4-4769-8b06-293dc6dfd55e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c8583053-493e-4466-ba81-eff2a4bafe2d",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7176249-00fd-4fe3-bd2b-149bc7fc8786",
              "parent_uuid": "c8583053-493e-4466-ba81-eff2a4bafe2d",
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
              "uuid": "24353a37-70f4-42b4-85cd-18a11def8f5c",
              "parent_uuid": "c8583053-493e-4466-ba81-eff2a4bafe2d",
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
              "uuid": "1cfe2aac-0d73-4f3f-a8e0-5d3e2a1b0639",
              "parent_uuid": "c8583053-493e-4466-ba81-eff2a4bafe2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71cf6048-2bf0-45dc-a7d7-352c44982e90",
                  "parent_uuid": "1cfe2aac-0d73-4f3f-a8e0-5d3e2a1b0639",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b18de074-3a55-4b39-a46f-a2d04418947c",
              "parent_uuid": "c8583053-493e-4466-ba81-eff2a4bafe2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80b3ddea-a379-4ff5-96ad-2b52dd67dcca",
                  "parent_uuid": "b18de074-3a55-4b39-a46f-a2d04418947c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef6d27b2-f1ef-42e2-8e51-d788187e122d",
              "parent_uuid": "c8583053-493e-4466-ba81-eff2a4bafe2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae2876f3-7103-44bd-96c6-d48f778658da",
                  "parent_uuid": "ef6d27b2-f1ef-42e2-8e51-d788187e122d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a857205-964e-4c45-b4fc-cae60ba9dfce",
              "parent_uuid": "c8583053-493e-4466-ba81-eff2a4bafe2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb3c7697-5e92-406e-ac2c-1d54af3a869e",
                  "parent_uuid": "5a857205-964e-4c45-b4fc-cae60ba9dfce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "944cc2ed-8b11-4a1a-8c7a-c43b5ab684cd",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d44649fc-347b-4560-8a54-05aa9419c612",
              "parent_uuid": "944cc2ed-8b11-4a1a-8c7a-c43b5ab684cd",
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
              "uuid": "f2d8f037-25b0-4d42-ac1d-1cac715548ac",
              "parent_uuid": "944cc2ed-8b11-4a1a-8c7a-c43b5ab684cd",
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
              "uuid": "c3d7f37e-1ef0-409f-bc86-9a83b2ac169b",
              "parent_uuid": "944cc2ed-8b11-4a1a-8c7a-c43b5ab684cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6615b3b6-df58-427d-9a3d-cbeedb5d6277",
                  "parent_uuid": "c3d7f37e-1ef0-409f-bc86-9a83b2ac169b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f4eff90-0d71-47a6-9dc4-8f540946ec29",
              "parent_uuid": "944cc2ed-8b11-4a1a-8c7a-c43b5ab684cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29b3980c-be18-4744-930a-3f12fc483f03",
                  "parent_uuid": "8f4eff90-0d71-47a6-9dc4-8f540946ec29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e79cc611-63c0-489d-a681-0050d01f6e58",
              "parent_uuid": "944cc2ed-8b11-4a1a-8c7a-c43b5ab684cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db8aee2d-c99d-4a15-8979-d521bd157f19",
                  "parent_uuid": "e79cc611-63c0-489d-a681-0050d01f6e58",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "539e173d-fd22-4d1a-af06-6e08a2fd650c",
              "parent_uuid": "944cc2ed-8b11-4a1a-8c7a-c43b5ab684cd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23256a10-2df4-4897-ba13-13451e67b767",
                  "parent_uuid": "539e173d-fd22-4d1a-af06-6e08a2fd650c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84e95d98-9338-4e04-8b3e-d9a463a399da",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d804a013-b65a-4d8d-bd1f-b47080438fb3",
              "parent_uuid": "84e95d98-9338-4e04-8b3e-d9a463a399da",
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
              "uuid": "2e6e1942-5e61-41ef-98a1-634b87a2d465",
              "parent_uuid": "84e95d98-9338-4e04-8b3e-d9a463a399da",
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
              "uuid": "0c5eb087-ecc9-4d59-adff-ca3ddfe8571b",
              "parent_uuid": "84e95d98-9338-4e04-8b3e-d9a463a399da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4927a7d5-0382-4e18-8d52-a9aa0740531c",
                  "parent_uuid": "0c5eb087-ecc9-4d59-adff-ca3ddfe8571b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65bf8693-ba8f-457e-8d74-344776165613",
              "parent_uuid": "84e95d98-9338-4e04-8b3e-d9a463a399da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74ae4aef-5996-4ce4-bc7c-eef01d0e2459",
                  "parent_uuid": "65bf8693-ba8f-457e-8d74-344776165613",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51d279b6-fd08-49ef-b839-d310b3606db8",
              "parent_uuid": "84e95d98-9338-4e04-8b3e-d9a463a399da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58708368-5550-4f8d-83a6-cc07632ac170",
                  "parent_uuid": "51d279b6-fd08-49ef-b839-d310b3606db8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2600d47d-58c2-480a-ae37-205efc08afa1",
              "parent_uuid": "84e95d98-9338-4e04-8b3e-d9a463a399da",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a369e886-e8e5-4662-912a-0d12c09cee2e",
                  "parent_uuid": "2600d47d-58c2-480a-ae37-205efc08afa1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a999969-dea0-4ac4-9fff-a48dc5015ab0",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d62e67e1-a62d-42d4-a5f8-a29e0c5d6b56",
              "parent_uuid": "8a999969-dea0-4ac4-9fff-a48dc5015ab0",
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
          "uuid": "de4c45c7-71bd-49da-8ceb-7b7419765513",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "064f6381-f002-4b8c-b3af-d257acbd775d",
              "parent_uuid": "de4c45c7-71bd-49da-8ceb-7b7419765513",
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
              "uuid": "3a111ae5-2338-45b0-8ceb-67547e96400c",
              "parent_uuid": "de4c45c7-71bd-49da-8ceb-7b7419765513",
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
              "uuid": "8c811b3f-22c3-42bf-b54f-73ffb8b5c741",
              "parent_uuid": "de4c45c7-71bd-49da-8ceb-7b7419765513",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4763bbc-310f-4984-b9bc-998d78422a56",
                  "parent_uuid": "8c811b3f-22c3-42bf-b54f-73ffb8b5c741",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "966d627c-3ec4-4636-8b91-7ce276014093",
              "parent_uuid": "de4c45c7-71bd-49da-8ceb-7b7419765513",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59c687ac-a2be-4f91-8e7e-9e3518b89c49",
                  "parent_uuid": "966d627c-3ec4-4636-8b91-7ce276014093",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a34f737c-b1cf-40c3-94b4-f04ae59d79ca",
              "parent_uuid": "de4c45c7-71bd-49da-8ceb-7b7419765513",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "024a84d3-8cbf-42a1-bcb9-d6c4ddcce903",
                  "parent_uuid": "a34f737c-b1cf-40c3-94b4-f04ae59d79ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50c215b5-258c-4676-91c3-9dc6ba4f26fb",
              "parent_uuid": "de4c45c7-71bd-49da-8ceb-7b7419765513",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f44e7f8-670b-4080-9eca-bb2a6472a145",
                  "parent_uuid": "50c215b5-258c-4676-91c3-9dc6ba4f26fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7427bf40-f8ac-4cda-a4ee-4f5eaa5ed0f5",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21121531-aa41-4296-a2d5-4a5441dfcf98",
              "parent_uuid": "7427bf40-f8ac-4cda-a4ee-4f5eaa5ed0f5",
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
              "uuid": "4ee40faf-91c3-4025-b430-a6b41bb2abe9",
              "parent_uuid": "7427bf40-f8ac-4cda-a4ee-4f5eaa5ed0f5",
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
              "uuid": "df1e1f6e-b94c-4ae0-a6b1-39e49bd13f8a",
              "parent_uuid": "7427bf40-f8ac-4cda-a4ee-4f5eaa5ed0f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f707824-9a78-407c-a4ca-d7c93afaceb3",
                  "parent_uuid": "df1e1f6e-b94c-4ae0-a6b1-39e49bd13f8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "623f49e5-4b90-44c4-b8e0-b50f28cd2c68",
              "parent_uuid": "7427bf40-f8ac-4cda-a4ee-4f5eaa5ed0f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0349f2a8-64de-48ef-a4ab-443210e8bf1e",
                  "parent_uuid": "623f49e5-4b90-44c4-b8e0-b50f28cd2c68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b45eb722-7bf4-406e-b7e4-81b2fee200d9",
              "parent_uuid": "7427bf40-f8ac-4cda-a4ee-4f5eaa5ed0f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abcdbb7b-7fa9-4dd6-aaec-613eaddb5a74",
                  "parent_uuid": "b45eb722-7bf4-406e-b7e4-81b2fee200d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ab5aa7d-6c79-4a38-9298-9651e204b6e1",
              "parent_uuid": "7427bf40-f8ac-4cda-a4ee-4f5eaa5ed0f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e376144-4d07-4ddf-bac7-58d169864ab0",
                  "parent_uuid": "7ab5aa7d-6c79-4a38-9298-9651e204b6e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "048a2c44-7b0f-4298-a9d6-c7dd9ee73762",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3003914d-f294-4b77-b772-5d832fcac3b8",
              "parent_uuid": "048a2c44-7b0f-4298-a9d6-c7dd9ee73762",
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
              "uuid": "fab6f98e-c0c2-4d3d-83ba-28a64203e4ca",
              "parent_uuid": "048a2c44-7b0f-4298-a9d6-c7dd9ee73762",
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
              "uuid": "374b8162-79d2-4daa-9f7c-9f3db0702319",
              "parent_uuid": "048a2c44-7b0f-4298-a9d6-c7dd9ee73762",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9f1a7a3-94dd-43e0-be99-706bce665f5c",
                  "parent_uuid": "374b8162-79d2-4daa-9f7c-9f3db0702319",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "745c7159-372e-423b-977a-3454c089efc9",
              "parent_uuid": "048a2c44-7b0f-4298-a9d6-c7dd9ee73762",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22a79c39-fd12-4f82-9026-d6cba0d8cc04",
                  "parent_uuid": "745c7159-372e-423b-977a-3454c089efc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20bfa9dc-1d50-4956-b17e-783f0917ee3e",
              "parent_uuid": "048a2c44-7b0f-4298-a9d6-c7dd9ee73762",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dfdb7c4-4fb8-449c-a475-8ba42ee5858c",
                  "parent_uuid": "20bfa9dc-1d50-4956-b17e-783f0917ee3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b08135b-5ca2-42b7-be37-149b9e7c9990",
              "parent_uuid": "048a2c44-7b0f-4298-a9d6-c7dd9ee73762",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ee9bd39-ba69-4fa0-a743-0177f32681f6",
                  "parent_uuid": "4b08135b-5ca2-42b7-be37-149b9e7c9990",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "54a373c8-83ed-4479-8406-7b5fa8a87a3d",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89cf7b8c-aa39-4a4d-8beb-087ff2b5d5d0",
              "parent_uuid": "54a373c8-83ed-4479-8406-7b5fa8a87a3d",
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
              "uuid": "f2491ef5-33a5-4851-808c-8faf8dbd0480",
              "parent_uuid": "54a373c8-83ed-4479-8406-7b5fa8a87a3d",
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
              "uuid": "28c650f6-6089-45b3-9071-c271a38f17cd",
              "parent_uuid": "54a373c8-83ed-4479-8406-7b5fa8a87a3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d19600f4-ada0-4cec-907f-8b84a51ab1b6",
                  "parent_uuid": "28c650f6-6089-45b3-9071-c271a38f17cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa8b8a8d-3d4c-4b95-8623-e3f2831e46e1",
              "parent_uuid": "54a373c8-83ed-4479-8406-7b5fa8a87a3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4394b45f-36e8-4e03-8756-9b3e0c4f804d",
                  "parent_uuid": "aa8b8a8d-3d4c-4b95-8623-e3f2831e46e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a16d55d6-1374-47ec-875d-0d06cb909a2c",
              "parent_uuid": "54a373c8-83ed-4479-8406-7b5fa8a87a3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7a4ffd7-c553-446f-85c3-8023e8e9bb40",
                  "parent_uuid": "a16d55d6-1374-47ec-875d-0d06cb909a2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dda53c27-74a4-4684-9ba5-4f027566630a",
              "parent_uuid": "54a373c8-83ed-4479-8406-7b5fa8a87a3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70146d5e-bfeb-4229-a202-b5ae470a6b88",
                  "parent_uuid": "dda53c27-74a4-4684-9ba5-4f027566630a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "74811ada-806e-4712-ab04-22c1cac5be19",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee0e745d-ea94-433c-b6be-4e30e67dd9a5",
              "parent_uuid": "74811ada-806e-4712-ab04-22c1cac5be19",
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
          "uuid": "92bb65bf-20d2-484b-9b69-784348a4ab18",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fdb98bf2-aced-44b8-a516-a8a06b92e999",
              "parent_uuid": "92bb65bf-20d2-484b-9b69-784348a4ab18",
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
          "uuid": "ed7b1e9d-fc72-4121-8bf8-d24b57370bab",
          "parent_uuid": "d3faad83-86f4-4798-b187-fd7434307561",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb669064-1f1a-4663-b993-2fb642c96cfa",
              "parent_uuid": "ed7b1e9d-fc72-4121-8bf8-d24b57370bab",
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
                  "uuid": "321103a7-4285-4fca-adda-01d1aaa50299",
                  "parent_uuid": "fb669064-1f1a-4663-b993-2fb642c96cfa",
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

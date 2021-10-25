
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
  "uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "a0fc3bde-1316-4266-9f76-997fda2f9c1d",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "7f5db6ff-5fb9-4a65-98fd-436b7a8145ce",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "98c9b542-3b6f-46a9-b84b-86523dd951c5",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "2e10e1c2-45f1-40a3-abb1-6af7c220a822",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "74744ed1-26a1-4154-875d-cabc9bd5f5bf",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "c061abbb-6b81-44a9-8296-4b2edbcd71ce",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "128494a4-23b6-4054-96d6-f57dc43a5f04",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
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
      "uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
      "parent_uuid": "a99c622e-159f-46e5-a0b7-63a50f167167",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "4c664dfc-24e7-48e5-a870-54a4e196d121",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "6ddc8860-3499-4013-8f75-79e72836acdc",
              "parent_uuid": "4c664dfc-24e7-48e5-a870-54a4e196d121",
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
              "uuid": "d3f7dd39-5047-4d1c-988a-9788f95dae08",
              "parent_uuid": "4c664dfc-24e7-48e5-a870-54a4e196d121",
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
              "uuid": "2a0e5f42-a322-45fd-81cf-1b186e5ceeab",
              "parent_uuid": "4c664dfc-24e7-48e5-a870-54a4e196d121",
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
              "uuid": "dbfbb0b7-1f97-41a3-b596-c37307b6cb31",
              "parent_uuid": "4c664dfc-24e7-48e5-a870-54a4e196d121",
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
          "uuid": "98ff289c-ad97-43fe-9988-a7e78edb7feb",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "251cec2a-e2b9-4a17-b165-2db41ec40155",
              "parent_uuid": "98ff289c-ad97-43fe-9988-a7e78edb7feb",
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
              "uuid": "e7219da6-44f2-48fa-b9b3-a29603a89e6e",
              "parent_uuid": "98ff289c-ad97-43fe-9988-a7e78edb7feb",
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
              "uuid": "2e26aa26-635a-4c18-8e22-a9bbd317716b",
              "parent_uuid": "98ff289c-ad97-43fe-9988-a7e78edb7feb",
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
              "uuid": "5d65fc3e-81fe-43e9-970a-ffcc8811e641",
              "parent_uuid": "98ff289c-ad97-43fe-9988-a7e78edb7feb",
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
          "uuid": "e4699c64-9684-462b-b8e3-a9891f805851",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0eb6ae0-f678-4198-8373-9f5a4a7c8e5b",
              "parent_uuid": "e4699c64-9684-462b-b8e3-a9891f805851",
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
              "uuid": "2b0c3748-9b30-4b6d-9101-5fb8d6f1db6c",
              "parent_uuid": "e4699c64-9684-462b-b8e3-a9891f805851",
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
              "uuid": "c333c582-7809-4b6a-9541-2962ab5811d4",
              "parent_uuid": "e4699c64-9684-462b-b8e3-a9891f805851",
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
              "uuid": "2be79550-df17-41c4-adb5-5fdbbd11facd",
              "parent_uuid": "e4699c64-9684-462b-b8e3-a9891f805851",
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
              "uuid": "51178224-acc1-482c-a6b7-d595abc2f84a",
              "parent_uuid": "e4699c64-9684-462b-b8e3-a9891f805851",
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
              "uuid": "4802b714-8540-4b23-bde2-f6689414f785",
              "parent_uuid": "e4699c64-9684-462b-b8e3-a9891f805851",
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
          "uuid": "4f28562c-d5c7-4578-9724-bf7c801c2f0c",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6b08f214-cb89-4b28-bf3b-1fa3f9356dc1",
              "parent_uuid": "4f28562c-d5c7-4578-9724-bf7c801c2f0c",
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
          "uuid": "1f155b1a-c6fc-471f-ad8a-d18065b65cef",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb71b731-859f-49c2-ab80-c42fa13f1b5a",
              "parent_uuid": "1f155b1a-c6fc-471f-ad8a-d18065b65cef",
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
              "uuid": "e35ac4af-aa65-4081-8112-963a549e28e8",
              "parent_uuid": "1f155b1a-c6fc-471f-ad8a-d18065b65cef",
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
              "uuid": "21826bad-7cbb-4a4c-844a-9cd0731e7283",
              "parent_uuid": "1f155b1a-c6fc-471f-ad8a-d18065b65cef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46c37d29-31af-4fee-920a-045af65a1011",
                  "parent_uuid": "21826bad-7cbb-4a4c-844a-9cd0731e7283",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ede45ca7-1d4f-4757-a73e-4b0f328ed016",
              "parent_uuid": "1f155b1a-c6fc-471f-ad8a-d18065b65cef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a040075-0efb-4f22-b766-2d4fb0633134",
                  "parent_uuid": "ede45ca7-1d4f-4757-a73e-4b0f328ed016",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec326670-2903-477c-8541-c298b0166ce5",
              "parent_uuid": "1f155b1a-c6fc-471f-ad8a-d18065b65cef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18f618c3-6ce3-47a1-9b56-574c5598bbc6",
                  "parent_uuid": "ec326670-2903-477c-8541-c298b0166ce5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25dee8c0-0929-4cc6-aa54-711980123459",
              "parent_uuid": "1f155b1a-c6fc-471f-ad8a-d18065b65cef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "612a3708-9acd-456c-95f4-6439e5fcae17",
                  "parent_uuid": "25dee8c0-0929-4cc6-aa54-711980123459",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "00016a4d-c918-43a2-91cb-168ba4092700",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ead3d690-7427-4a42-b5af-90146ee97d08",
              "parent_uuid": "00016a4d-c918-43a2-91cb-168ba4092700",
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
              "uuid": "d79d2b9d-e59b-4e51-8c66-21612d4a1c96",
              "parent_uuid": "00016a4d-c918-43a2-91cb-168ba4092700",
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
              "uuid": "cba93e4b-2c43-410d-a078-a712cd101597",
              "parent_uuid": "00016a4d-c918-43a2-91cb-168ba4092700",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c66361b-5cf4-4cbd-864c-53ca40dfd7ac",
                  "parent_uuid": "cba93e4b-2c43-410d-a078-a712cd101597",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0569524a-9826-49c3-aa53-d42e1564018b",
              "parent_uuid": "00016a4d-c918-43a2-91cb-168ba4092700",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ad84502-775f-42f3-bd6a-de18e76d9685",
                  "parent_uuid": "0569524a-9826-49c3-aa53-d42e1564018b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57155d58-6db3-4cc4-8a4f-3491b5428f15",
              "parent_uuid": "00016a4d-c918-43a2-91cb-168ba4092700",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29e7833a-5572-4a36-b5b2-01f3feef7e24",
                  "parent_uuid": "57155d58-6db3-4cc4-8a4f-3491b5428f15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81006f95-7078-4d03-a4eb-10297ab8c0c6",
              "parent_uuid": "00016a4d-c918-43a2-91cb-168ba4092700",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b03ce1f-ff30-4b40-b774-af9bcb8d8195",
                  "parent_uuid": "81006f95-7078-4d03-a4eb-10297ab8c0c6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e2e45b64-e3ed-439c-8318-d7f2b09c1429",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8cb0df0c-6fe8-4482-8290-119fff5407be",
              "parent_uuid": "e2e45b64-e3ed-439c-8318-d7f2b09c1429",
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
              "uuid": "fccaa62c-98a8-4c4c-97b1-2fd7ffa62a5d",
              "parent_uuid": "e2e45b64-e3ed-439c-8318-d7f2b09c1429",
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
              "uuid": "727baa4b-6cba-4828-8e2b-f0b0ae1c122d",
              "parent_uuid": "e2e45b64-e3ed-439c-8318-d7f2b09c1429",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6383798-6025-4480-9856-675a20c1fad5",
                  "parent_uuid": "727baa4b-6cba-4828-8e2b-f0b0ae1c122d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ccc3503-fe63-4bf5-85d7-dad444495d54",
              "parent_uuid": "e2e45b64-e3ed-439c-8318-d7f2b09c1429",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "964266f9-cb96-44b4-80a4-8bc59b5fc119",
                  "parent_uuid": "1ccc3503-fe63-4bf5-85d7-dad444495d54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d26b5eb0-8844-4241-8cd4-d6fee20fc5a5",
              "parent_uuid": "e2e45b64-e3ed-439c-8318-d7f2b09c1429",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5f0ff51-1120-4e39-ba4a-344d528e5f44",
                  "parent_uuid": "d26b5eb0-8844-4241-8cd4-d6fee20fc5a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "056e3183-d3f2-4eb1-8011-e9969d188f98",
              "parent_uuid": "e2e45b64-e3ed-439c-8318-d7f2b09c1429",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5af42431-fd12-43b7-aa54-402129fff2a6",
                  "parent_uuid": "056e3183-d3f2-4eb1-8011-e9969d188f98",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "858d0ccf-fd35-4277-a56e-d993b05889a7",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3637c235-ab52-41b6-9ceb-296559dd9df1",
              "parent_uuid": "858d0ccf-fd35-4277-a56e-d993b05889a7",
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
              "uuid": "0b198b5c-ac5d-4577-a9da-f4bff6b077b4",
              "parent_uuid": "858d0ccf-fd35-4277-a56e-d993b05889a7",
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
              "uuid": "9ee878f7-efc0-44ce-9280-ef49e1c14681",
              "parent_uuid": "858d0ccf-fd35-4277-a56e-d993b05889a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7d661c1-c050-4aed-ade0-c74efa9c565a",
                  "parent_uuid": "9ee878f7-efc0-44ce-9280-ef49e1c14681",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35652110-c15c-4167-a0d4-45d9e2770746",
              "parent_uuid": "858d0ccf-fd35-4277-a56e-d993b05889a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79112d3d-e3d0-49d2-8784-e2e49a863366",
                  "parent_uuid": "35652110-c15c-4167-a0d4-45d9e2770746",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7763f88-7e7f-4ee3-9559-787ed5852d08",
              "parent_uuid": "858d0ccf-fd35-4277-a56e-d993b05889a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec85a2bd-0405-40e7-8332-9eba38550069",
                  "parent_uuid": "d7763f88-7e7f-4ee3-9559-787ed5852d08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e37bb91e-9f7d-46a4-a340-29bdb8896454",
              "parent_uuid": "858d0ccf-fd35-4277-a56e-d993b05889a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55467a90-63d4-42a0-bee0-7ff21e8287ee",
                  "parent_uuid": "e37bb91e-9f7d-46a4-a340-29bdb8896454",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "80617122-c5b9-4e1f-af98-cb717c576d3c",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2fccead8-ca42-43be-a716-6d49156e9eec",
              "parent_uuid": "80617122-c5b9-4e1f-af98-cb717c576d3c",
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
              "uuid": "f1eae8ef-76b8-47e7-bf3c-ad61524aca42",
              "parent_uuid": "80617122-c5b9-4e1f-af98-cb717c576d3c",
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
              "uuid": "da9dd2d9-3b7a-4342-8c8b-8e5289f748c0",
              "parent_uuid": "80617122-c5b9-4e1f-af98-cb717c576d3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a6ce180-64c2-41a5-b09b-4268cc70bd9f",
                  "parent_uuid": "da9dd2d9-3b7a-4342-8c8b-8e5289f748c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee3b0ab7-af0d-4e45-b510-b839c22cd6e5",
              "parent_uuid": "80617122-c5b9-4e1f-af98-cb717c576d3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c5a843f-2d54-4938-8c77-cd309f3bc31a",
                  "parent_uuid": "ee3b0ab7-af0d-4e45-b510-b839c22cd6e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e96c7dab-c0b0-4c68-943c-9d93c5e61bad",
              "parent_uuid": "80617122-c5b9-4e1f-af98-cb717c576d3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9758280b-822f-41e2-8f70-d84a085fd47a",
                  "parent_uuid": "e96c7dab-c0b0-4c68-943c-9d93c5e61bad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24b5db74-9888-4524-bb4b-77eccc7db84e",
              "parent_uuid": "80617122-c5b9-4e1f-af98-cb717c576d3c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa4b0870-81fe-4fd4-84f2-6ca179ccdff0",
                  "parent_uuid": "24b5db74-9888-4524-bb4b-77eccc7db84e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "06c357ac-e1c6-412b-82ea-89d8c64f3e79",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "918edf54-774b-4070-8ee1-8218cf6247e3",
              "parent_uuid": "06c357ac-e1c6-412b-82ea-89d8c64f3e79",
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
              "uuid": "3153d7c7-6b86-4b87-9303-0d223201ef86",
              "parent_uuid": "06c357ac-e1c6-412b-82ea-89d8c64f3e79",
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
              "uuid": "4a2e16f1-8dbe-429a-8a4b-dbf506c7a07a",
              "parent_uuid": "06c357ac-e1c6-412b-82ea-89d8c64f3e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e743eddc-58b3-44c2-94c6-1a73fbeb0df2",
                  "parent_uuid": "4a2e16f1-8dbe-429a-8a4b-dbf506c7a07a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0c2e0e2-f535-49f7-86f1-07cf35c414b8",
              "parent_uuid": "06c357ac-e1c6-412b-82ea-89d8c64f3e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23a5f2c3-bef8-4d0d-9df7-26776a823881",
                  "parent_uuid": "f0c2e0e2-f535-49f7-86f1-07cf35c414b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65bc4c39-2e41-4cc4-a2fd-c43d4e5bc0bd",
              "parent_uuid": "06c357ac-e1c6-412b-82ea-89d8c64f3e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc776d4b-70bc-4d88-ba97-d9d60de8494c",
                  "parent_uuid": "65bc4c39-2e41-4cc4-a2fd-c43d4e5bc0bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "905e6492-a015-442d-b695-11b0988a1170",
              "parent_uuid": "06c357ac-e1c6-412b-82ea-89d8c64f3e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a39e5a95-b25d-49ed-9a01-a348ffccf45d",
                  "parent_uuid": "905e6492-a015-442d-b695-11b0988a1170",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2420049d-6aa1-47d1-8cc5-a167c6989dec",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf0c11de-a878-4cb0-853e-5ac13ea42254",
              "parent_uuid": "2420049d-6aa1-47d1-8cc5-a167c6989dec",
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
              "uuid": "d85f64a9-9a58-4fb5-b256-183b3cadab8d",
              "parent_uuid": "2420049d-6aa1-47d1-8cc5-a167c6989dec",
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
              "uuid": "e5504794-7341-452a-8db3-de272800a0ad",
              "parent_uuid": "2420049d-6aa1-47d1-8cc5-a167c6989dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de638e9a-354c-42e6-bfee-9c2ea0a4eb44",
                  "parent_uuid": "e5504794-7341-452a-8db3-de272800a0ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb186163-3556-45d9-ae0f-812c40a2100b",
              "parent_uuid": "2420049d-6aa1-47d1-8cc5-a167c6989dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fc3d035-71b0-49c5-b6d6-58c6b630759a",
                  "parent_uuid": "eb186163-3556-45d9-ae0f-812c40a2100b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f883e878-5c56-4df8-b610-cc5e7bd09e4b",
              "parent_uuid": "2420049d-6aa1-47d1-8cc5-a167c6989dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26975868-046a-40ad-a456-adb6f0c9c2ac",
                  "parent_uuid": "f883e878-5c56-4df8-b610-cc5e7bd09e4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "500acdc5-c965-4433-a281-bd74e98ead94",
              "parent_uuid": "2420049d-6aa1-47d1-8cc5-a167c6989dec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "923c192c-22f7-408c-9166-86c684fd1ce7",
                  "parent_uuid": "500acdc5-c965-4433-a281-bd74e98ead94",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d0dea4ba-74c8-421a-92f1-0759826613ba",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d34709be-e861-4285-bb43-9b697c6bc0df",
              "parent_uuid": "d0dea4ba-74c8-421a-92f1-0759826613ba",
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
              "uuid": "154286fb-6690-4a41-b44f-72c47e1be412",
              "parent_uuid": "d0dea4ba-74c8-421a-92f1-0759826613ba",
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
              "uuid": "c584134e-afce-438a-a052-95374fd0e190",
              "parent_uuid": "d0dea4ba-74c8-421a-92f1-0759826613ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a763577f-e6b1-4318-b723-554f8ff34f9e",
                  "parent_uuid": "c584134e-afce-438a-a052-95374fd0e190",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ff811f1-c3f1-4d15-acd2-0ddf7bd5c74f",
              "parent_uuid": "d0dea4ba-74c8-421a-92f1-0759826613ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "866dfdce-7583-4374-9835-666146649bc0",
                  "parent_uuid": "3ff811f1-c3f1-4d15-acd2-0ddf7bd5c74f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74214c84-681e-45ff-9478-df06b70f76d3",
              "parent_uuid": "d0dea4ba-74c8-421a-92f1-0759826613ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06e8d246-00e9-4725-a517-d6b42a9fcc9f",
                  "parent_uuid": "74214c84-681e-45ff-9478-df06b70f76d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab35b960-a23e-4524-88ea-d7eef4f4bbb0",
              "parent_uuid": "d0dea4ba-74c8-421a-92f1-0759826613ba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "489eacb3-9ce4-4425-a368-7052c2582746",
                  "parent_uuid": "ab35b960-a23e-4524-88ea-d7eef4f4bbb0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ac66f6b9-a928-4ed4-9308-691e31188bc2",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed42fc43-e8b9-46b3-9320-2af3d27f7d29",
              "parent_uuid": "ac66f6b9-a928-4ed4-9308-691e31188bc2",
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
              "uuid": "b190ec14-2ba1-4c35-b5b9-f10d76ba1329",
              "parent_uuid": "ac66f6b9-a928-4ed4-9308-691e31188bc2",
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
              "uuid": "371c3cc3-f1c1-4830-8930-873b96f05349",
              "parent_uuid": "ac66f6b9-a928-4ed4-9308-691e31188bc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5baf63c8-e92e-4146-90ab-984c3639d1bc",
                  "parent_uuid": "371c3cc3-f1c1-4830-8930-873b96f05349",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8edaccf8-81b2-4a51-a89f-6cf993f4cc6e",
              "parent_uuid": "ac66f6b9-a928-4ed4-9308-691e31188bc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82d8ba1d-b394-49e8-b4e9-04a6ffea4afb",
                  "parent_uuid": "8edaccf8-81b2-4a51-a89f-6cf993f4cc6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51fda3b5-16b0-446a-bcd1-c6d276b1885d",
              "parent_uuid": "ac66f6b9-a928-4ed4-9308-691e31188bc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dce5f668-b93b-436a-8423-d5ff4d017727",
                  "parent_uuid": "51fda3b5-16b0-446a-bcd1-c6d276b1885d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff77cc9d-140d-4b0d-87e8-0bb69a7ab83b",
              "parent_uuid": "ac66f6b9-a928-4ed4-9308-691e31188bc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95d9e6e7-5480-4c98-a3aa-d2d2b75d4e58",
                  "parent_uuid": "ff77cc9d-140d-4b0d-87e8-0bb69a7ab83b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7da9633d-2263-4507-9e51-8605ba96138d",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08e8082a-dbc2-4052-8b59-ab20d666dcf0",
              "parent_uuid": "7da9633d-2263-4507-9e51-8605ba96138d",
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
              "uuid": "8894be47-bd95-4207-a021-9a0f8a01d4f8",
              "parent_uuid": "7da9633d-2263-4507-9e51-8605ba96138d",
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
              "uuid": "4261d0ea-319a-43c8-8b19-858a62ccced2",
              "parent_uuid": "7da9633d-2263-4507-9e51-8605ba96138d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d3874ce-9ce4-49ab-a825-78db3b30afd8",
                  "parent_uuid": "4261d0ea-319a-43c8-8b19-858a62ccced2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "900fb7aa-ed92-423b-bab3-eb0c8c60034d",
              "parent_uuid": "7da9633d-2263-4507-9e51-8605ba96138d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34d4942f-3340-474a-b17b-ad7eda536f45",
                  "parent_uuid": "900fb7aa-ed92-423b-bab3-eb0c8c60034d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc62f605-5ae9-4273-ad35-db709a707e72",
              "parent_uuid": "7da9633d-2263-4507-9e51-8605ba96138d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d92d64c5-14ba-4565-b27f-07fd5a1d13fd",
                  "parent_uuid": "bc62f605-5ae9-4273-ad35-db709a707e72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bc27330-e3ec-43d9-af5d-7ab0aee750e1",
              "parent_uuid": "7da9633d-2263-4507-9e51-8605ba96138d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "077a512d-4058-4373-ac21-38209c56d68a",
                  "parent_uuid": "9bc27330-e3ec-43d9-af5d-7ab0aee750e1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "20f13ba5-1fab-408a-a8d3-bf47e7d7594b",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27d602ff-3d24-4eb1-be09-7534d9f16a9a",
              "parent_uuid": "20f13ba5-1fab-408a-a8d3-bf47e7d7594b",
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
              "uuid": "ea4895b3-7629-4998-865a-3f9e04db179a",
              "parent_uuid": "20f13ba5-1fab-408a-a8d3-bf47e7d7594b",
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
              "uuid": "6dd2078c-2b71-4606-9170-fab7bd52fd05",
              "parent_uuid": "20f13ba5-1fab-408a-a8d3-bf47e7d7594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7ad66b5-177d-42de-89ab-5accc59e2d09",
                  "parent_uuid": "6dd2078c-2b71-4606-9170-fab7bd52fd05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f61bb0e7-a2da-4a83-aacc-9bebcfde869b",
              "parent_uuid": "20f13ba5-1fab-408a-a8d3-bf47e7d7594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88dfc376-d45f-4495-9a1e-b7624e2047f8",
                  "parent_uuid": "f61bb0e7-a2da-4a83-aacc-9bebcfde869b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80aace29-5e0c-4b5d-b025-04bf99b0bfe5",
              "parent_uuid": "20f13ba5-1fab-408a-a8d3-bf47e7d7594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b10bb231-5940-43b9-999c-44ac258dbdb1",
                  "parent_uuid": "80aace29-5e0c-4b5d-b025-04bf99b0bfe5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed4fffa6-7b41-433b-ab99-3eee49b9c952",
              "parent_uuid": "20f13ba5-1fab-408a-a8d3-bf47e7d7594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea66e000-8dde-4689-b50f-420bd851ef83",
                  "parent_uuid": "ed4fffa6-7b41-433b-ab99-3eee49b9c952",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b2e2d54f-5ddc-4b6a-8598-e27cec37ced7",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed1a0979-cd42-4d85-822f-a01316665abe",
              "parent_uuid": "b2e2d54f-5ddc-4b6a-8598-e27cec37ced7",
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
              "uuid": "d7bd96db-16df-4bdb-b0ee-1bb1b04edf2a",
              "parent_uuid": "b2e2d54f-5ddc-4b6a-8598-e27cec37ced7",
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
              "uuid": "5cf2bbea-7a82-4b0c-849d-38b8cf5b1c7b",
              "parent_uuid": "b2e2d54f-5ddc-4b6a-8598-e27cec37ced7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ee3432b-d756-40ee-bf93-176e4865b652",
                  "parent_uuid": "5cf2bbea-7a82-4b0c-849d-38b8cf5b1c7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b39e562c-f290-4522-874d-4166abaec41a",
              "parent_uuid": "b2e2d54f-5ddc-4b6a-8598-e27cec37ced7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abec1337-3da5-447f-9a06-66a0077a9e87",
                  "parent_uuid": "b39e562c-f290-4522-874d-4166abaec41a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3516dbe9-278d-4d1d-a5d9-ea54b1b5b0be",
              "parent_uuid": "b2e2d54f-5ddc-4b6a-8598-e27cec37ced7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e32080f-f4df-438d-99d4-e16f16a544af",
                  "parent_uuid": "3516dbe9-278d-4d1d-a5d9-ea54b1b5b0be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc0ab657-f895-4257-a0ac-d784211a9073",
              "parent_uuid": "b2e2d54f-5ddc-4b6a-8598-e27cec37ced7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1df594fc-9325-4503-98ed-fd5051b551b4",
                  "parent_uuid": "bc0ab657-f895-4257-a0ac-d784211a9073",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f81bf8ee-f1b3-4856-8122-b184fde5c370",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "405c3253-ed36-4d5c-9bb8-19b8ee3d6c11",
              "parent_uuid": "f81bf8ee-f1b3-4856-8122-b184fde5c370",
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
              "uuid": "ce0b7e1f-dc65-4f95-8d54-a9e9cd419231",
              "parent_uuid": "f81bf8ee-f1b3-4856-8122-b184fde5c370",
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
              "uuid": "934fbe7d-6f92-46e1-b2ec-08c909c11c67",
              "parent_uuid": "f81bf8ee-f1b3-4856-8122-b184fde5c370",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "013737fa-aac9-471f-8b62-18a8c2f9fbc1",
                  "parent_uuid": "934fbe7d-6f92-46e1-b2ec-08c909c11c67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "862c7b7f-b61b-4f8d-b675-05c41ae534a5",
              "parent_uuid": "f81bf8ee-f1b3-4856-8122-b184fde5c370",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e1ad410-1e52-4f9d-a8ba-97831d37aedd",
                  "parent_uuid": "862c7b7f-b61b-4f8d-b675-05c41ae534a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd54b30d-2ea3-4a6e-a492-166fd815e1de",
              "parent_uuid": "f81bf8ee-f1b3-4856-8122-b184fde5c370",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fba29e9-21a6-4690-b399-f9f92b45b47f",
                  "parent_uuid": "dd54b30d-2ea3-4a6e-a492-166fd815e1de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e1d5292-e24a-4738-a3e9-6ab64f95d423",
              "parent_uuid": "f81bf8ee-f1b3-4856-8122-b184fde5c370",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16d0f77c-5e8b-4e17-bf79-4fed359d02d1",
                  "parent_uuid": "1e1d5292-e24a-4738-a3e9-6ab64f95d423",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b10ee281-7744-4865-9154-d3af68435d68",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8698343d-8d12-4014-a2ee-58f980b10751",
              "parent_uuid": "b10ee281-7744-4865-9154-d3af68435d68",
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
              "uuid": "e38782b6-366f-48e2-b72b-415cc0e20b16",
              "parent_uuid": "b10ee281-7744-4865-9154-d3af68435d68",
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
              "uuid": "ff06cebd-1455-4c92-8f99-5347fa8d728f",
              "parent_uuid": "b10ee281-7744-4865-9154-d3af68435d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a724150-1d1f-4c26-903d-95993fce220b",
                  "parent_uuid": "ff06cebd-1455-4c92-8f99-5347fa8d728f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8789151-c860-47bf-b456-2d6d334b446e",
              "parent_uuid": "b10ee281-7744-4865-9154-d3af68435d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9f677b7-4c2d-4376-82e7-d854f1575f2a",
                  "parent_uuid": "c8789151-c860-47bf-b456-2d6d334b446e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56a0ae5e-76bf-4b0c-ade4-6ac53c25c220",
              "parent_uuid": "b10ee281-7744-4865-9154-d3af68435d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "566c87d2-2cb9-444e-9b9c-4304c37d90da",
                  "parent_uuid": "56a0ae5e-76bf-4b0c-ade4-6ac53c25c220",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60b77b69-84de-4465-adeb-0432db57f10d",
              "parent_uuid": "b10ee281-7744-4865-9154-d3af68435d68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bdb6d97-f587-445c-9893-e50c22a50b30",
                  "parent_uuid": "60b77b69-84de-4465-adeb-0432db57f10d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c7308362-513f-4c4e-87c0-d80a73e54541",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "281fa557-aed0-4973-a053-a5ec4ccf22ca",
              "parent_uuid": "c7308362-513f-4c4e-87c0-d80a73e54541",
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
          "uuid": "c6456796-c678-430e-afe0-af6b05238612",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c545df72-edb4-43b8-ba95-47edbee8c359",
              "parent_uuid": "c6456796-c678-430e-afe0-af6b05238612",
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
          "uuid": "25916a45-ba79-466f-a31e-cb6a5e807b3a",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "012c48c4-00bb-4d7c-a8c1-830988c6c8c6",
              "parent_uuid": "25916a45-ba79-466f-a31e-cb6a5e807b3a",
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
              "uuid": "86afba81-9ad1-4565-bc94-11c6a6d2ce31",
              "parent_uuid": "25916a45-ba79-466f-a31e-cb6a5e807b3a",
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
              "uuid": "5b2eaf30-06ac-4a17-861d-f5d734371aa8",
              "parent_uuid": "25916a45-ba79-466f-a31e-cb6a5e807b3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c491386f-3c8d-4749-91d5-dd9d69f54383",
                  "parent_uuid": "5b2eaf30-06ac-4a17-861d-f5d734371aa8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f215082-2942-4883-8814-4a32bc773534",
              "parent_uuid": "25916a45-ba79-466f-a31e-cb6a5e807b3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99f32874-9eac-4604-b54a-79819e3ae242",
                  "parent_uuid": "8f215082-2942-4883-8814-4a32bc773534",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3225a00-75ce-45e1-80ac-f07ab1de4299",
              "parent_uuid": "25916a45-ba79-466f-a31e-cb6a5e807b3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "278ba4e4-eb73-4a63-b754-7f281da00482",
                  "parent_uuid": "f3225a00-75ce-45e1-80ac-f07ab1de4299",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64ad59e8-d078-4d7f-be99-7ac4849ef65e",
              "parent_uuid": "25916a45-ba79-466f-a31e-cb6a5e807b3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38ff8c3a-0a5a-4ae3-a691-1c51d3bbdcdd",
                  "parent_uuid": "64ad59e8-d078-4d7f-be99-7ac4849ef65e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fc9770e5-3f74-448d-935a-d34705610da0",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f489ec9-85ea-4b48-870c-ae15103a0e45",
              "parent_uuid": "fc9770e5-3f74-448d-935a-d34705610da0",
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
              "uuid": "99874084-22e6-4536-a2d2-8842ec4b2677",
              "parent_uuid": "fc9770e5-3f74-448d-935a-d34705610da0",
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
              "uuid": "b333c95d-6352-4bb2-9874-880b201289eb",
              "parent_uuid": "fc9770e5-3f74-448d-935a-d34705610da0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a8454cd-19e6-400c-a477-3a38c16191e0",
                  "parent_uuid": "b333c95d-6352-4bb2-9874-880b201289eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd49fdfd-b698-41ef-9b37-b43fb33824c1",
              "parent_uuid": "fc9770e5-3f74-448d-935a-d34705610da0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ac077a6-b50f-4c78-894e-11371ca1e217",
                  "parent_uuid": "fd49fdfd-b698-41ef-9b37-b43fb33824c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c2022f1-6285-4fd1-a9f7-cd3449b569b0",
              "parent_uuid": "fc9770e5-3f74-448d-935a-d34705610da0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "719e28fb-d113-43ab-8f75-7825d6be490a",
                  "parent_uuid": "1c2022f1-6285-4fd1-a9f7-cd3449b569b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce296cb0-0179-42f1-bedb-75384af0bf50",
              "parent_uuid": "fc9770e5-3f74-448d-935a-d34705610da0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "759f8c27-1683-448d-8229-2405091fa293",
                  "parent_uuid": "ce296cb0-0179-42f1-bedb-75384af0bf50",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "16e6dc16-7212-4fa8-9b0c-79c33bfea097",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e75bb0a2-9620-4836-95e9-50564e61c613",
              "parent_uuid": "16e6dc16-7212-4fa8-9b0c-79c33bfea097",
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
              "uuid": "343560b8-cb22-467d-83b8-19974d268814",
              "parent_uuid": "16e6dc16-7212-4fa8-9b0c-79c33bfea097",
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
              "uuid": "5c45fa93-b41f-4a3f-a39d-0eb4161a5084",
              "parent_uuid": "16e6dc16-7212-4fa8-9b0c-79c33bfea097",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85f4e6b8-fa95-44a2-845a-436482f9fd8c",
                  "parent_uuid": "5c45fa93-b41f-4a3f-a39d-0eb4161a5084",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dee07152-5566-4257-9177-631ce210f018",
              "parent_uuid": "16e6dc16-7212-4fa8-9b0c-79c33bfea097",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e53aca4-1727-4812-a420-dcc43563b1e3",
                  "parent_uuid": "dee07152-5566-4257-9177-631ce210f018",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b1187b2-f80e-473f-b463-3ac5f881975d",
              "parent_uuid": "16e6dc16-7212-4fa8-9b0c-79c33bfea097",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b58240f-a8f8-4aed-8ce6-52b92cfb37f6",
                  "parent_uuid": "0b1187b2-f80e-473f-b463-3ac5f881975d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0711612f-197c-4e84-a8b2-fd1f2f38e919",
              "parent_uuid": "16e6dc16-7212-4fa8-9b0c-79c33bfea097",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "475869ca-74b2-4f31-a6b9-a7068e0d945b",
                  "parent_uuid": "0711612f-197c-4e84-a8b2-fd1f2f38e919",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "99670795-0d8f-469e-af8e-3a1563504528",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82e3b3ab-c312-4d21-8d6e-a197ac96ebe4",
              "parent_uuid": "99670795-0d8f-469e-af8e-3a1563504528",
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
              "uuid": "652cbe56-8842-447e-8da9-1bd6a071f8b1",
              "parent_uuid": "99670795-0d8f-469e-af8e-3a1563504528",
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
              "uuid": "91fa0115-517d-4f8d-a754-796bd7842d10",
              "parent_uuid": "99670795-0d8f-469e-af8e-3a1563504528",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bd2646f-b17d-4fcf-8ac7-953f0673b688",
                  "parent_uuid": "91fa0115-517d-4f8d-a754-796bd7842d10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e255e7ab-fcd9-4407-9270-0b6642a0a6f2",
              "parent_uuid": "99670795-0d8f-469e-af8e-3a1563504528",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e106e1ca-ffa7-4f41-85bf-5f02a9d9d314",
                  "parent_uuid": "e255e7ab-fcd9-4407-9270-0b6642a0a6f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcebb391-e8c1-41d3-9e4f-25f8282c9eeb",
              "parent_uuid": "99670795-0d8f-469e-af8e-3a1563504528",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fea1a110-72d4-4c33-b1a7-d6f2e25d149d",
                  "parent_uuid": "fcebb391-e8c1-41d3-9e4f-25f8282c9eeb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b308f2b6-45ba-4a46-9e59-91b0862009f5",
              "parent_uuid": "99670795-0d8f-469e-af8e-3a1563504528",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fa31335-a69c-419b-8c3f-2b9e9f68d66d",
                  "parent_uuid": "b308f2b6-45ba-4a46-9e59-91b0862009f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e41f773-c2f4-4146-bbdf-366444450969",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efc879e1-b402-44f9-8b88-f7c252c3beba",
              "parent_uuid": "8e41f773-c2f4-4146-bbdf-366444450969",
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
              "uuid": "5b232683-6509-4482-9af3-3b1e429d59f1",
              "parent_uuid": "8e41f773-c2f4-4146-bbdf-366444450969",
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
              "uuid": "95a0230a-b0f2-4b68-907d-b0fd12ba5fa6",
              "parent_uuid": "8e41f773-c2f4-4146-bbdf-366444450969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0aab744d-bbd7-42b5-860b-c625c861264f",
                  "parent_uuid": "95a0230a-b0f2-4b68-907d-b0fd12ba5fa6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff11dfb5-f918-4635-ba6d-c24a6e1c24cf",
              "parent_uuid": "8e41f773-c2f4-4146-bbdf-366444450969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50cbe625-6056-47a7-b5da-3bd380a2b720",
                  "parent_uuid": "ff11dfb5-f918-4635-ba6d-c24a6e1c24cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff6a0018-e655-4d17-91f5-d875c24c8061",
              "parent_uuid": "8e41f773-c2f4-4146-bbdf-366444450969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2632da1a-c8a8-426e-982d-119db4cdbd7f",
                  "parent_uuid": "ff6a0018-e655-4d17-91f5-d875c24c8061",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12ab05b0-c7ff-4b32-a3e0-5370e23c7c69",
              "parent_uuid": "8e41f773-c2f4-4146-bbdf-366444450969",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9957d47-79f9-4248-92e9-4099f58fe56a",
                  "parent_uuid": "12ab05b0-c7ff-4b32-a3e0-5370e23c7c69",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ca0232a4-02ca-46bb-9281-f815377f14c9",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d10f4bca-cca8-4dca-9abd-9a194a3b5f6e",
              "parent_uuid": "ca0232a4-02ca-46bb-9281-f815377f14c9",
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
              "uuid": "0588220a-effb-459f-935b-6999df37e088",
              "parent_uuid": "ca0232a4-02ca-46bb-9281-f815377f14c9",
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
              "uuid": "b5cf9b97-95b5-41f3-8a73-916bfe7fdd65",
              "parent_uuid": "ca0232a4-02ca-46bb-9281-f815377f14c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53548b13-55f9-4fa9-a650-182deaf807ae",
                  "parent_uuid": "b5cf9b97-95b5-41f3-8a73-916bfe7fdd65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8dd39aba-59e3-4123-896b-3970cdbcd513",
              "parent_uuid": "ca0232a4-02ca-46bb-9281-f815377f14c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9558143e-8f0e-4bdd-9228-a9ff1cb48572",
                  "parent_uuid": "8dd39aba-59e3-4123-896b-3970cdbcd513",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f746db44-f29f-46d3-9761-05eb984582fb",
              "parent_uuid": "ca0232a4-02ca-46bb-9281-f815377f14c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6eb01c5-0f9c-4191-8f99-5e0907245c71",
                  "parent_uuid": "f746db44-f29f-46d3-9761-05eb984582fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c0d7eb8-5190-4dd5-b19e-d0414cd9e26d",
              "parent_uuid": "ca0232a4-02ca-46bb-9281-f815377f14c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1637101e-964e-412f-9b76-ef35e3be21e2",
                  "parent_uuid": "8c0d7eb8-5190-4dd5-b19e-d0414cd9e26d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8100e4ba-ade5-48ca-9b07-4d083ea896c6",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41ff8878-d1cd-47f7-bfcf-72628c345357",
              "parent_uuid": "8100e4ba-ade5-48ca-9b07-4d083ea896c6",
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
              "uuid": "475d9a48-2e39-459f-b2bf-11b154257b8e",
              "parent_uuid": "8100e4ba-ade5-48ca-9b07-4d083ea896c6",
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
              "uuid": "c96877c4-6a3a-4e94-9a64-aed2a046bae7",
              "parent_uuid": "8100e4ba-ade5-48ca-9b07-4d083ea896c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abb20fcf-eb33-4271-b88e-8e03e3f928d1",
                  "parent_uuid": "c96877c4-6a3a-4e94-9a64-aed2a046bae7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59ece57f-ab30-4da5-91b3-118c89532afb",
              "parent_uuid": "8100e4ba-ade5-48ca-9b07-4d083ea896c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc534536-10b8-4396-9db8-33a75c23febd",
                  "parent_uuid": "59ece57f-ab30-4da5-91b3-118c89532afb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbecdd57-b1b6-4853-ba2e-0ac14bbe7994",
              "parent_uuid": "8100e4ba-ade5-48ca-9b07-4d083ea896c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "682b70a6-95e9-424a-aed6-014c307d7d5c",
                  "parent_uuid": "bbecdd57-b1b6-4853-ba2e-0ac14bbe7994",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44bc601a-55da-4609-b340-0a82ac2e66e0",
              "parent_uuid": "8100e4ba-ade5-48ca-9b07-4d083ea896c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3fecb97-08b3-45ad-91c3-d6c6d1144169",
                  "parent_uuid": "44bc601a-55da-4609-b340-0a82ac2e66e0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f93e1392-0226-4504-bead-02886f17022d",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "436c3a41-43be-4798-b472-0b5b01756645",
              "parent_uuid": "f93e1392-0226-4504-bead-02886f17022d",
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
              "uuid": "5d4e6129-f0c3-43c8-ac7e-8d1d030cc32c",
              "parent_uuid": "f93e1392-0226-4504-bead-02886f17022d",
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
              "uuid": "39555e6c-1bed-484b-8624-05956a95a0a9",
              "parent_uuid": "f93e1392-0226-4504-bead-02886f17022d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b15d2333-a89c-433b-98ec-8eb71d9bfbcc",
                  "parent_uuid": "39555e6c-1bed-484b-8624-05956a95a0a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0eb0db19-d9d4-4cb2-af7a-9f73e5f3f4f7",
              "parent_uuid": "f93e1392-0226-4504-bead-02886f17022d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7657e60-2e14-4a3d-abfa-ef5f47534ef5",
                  "parent_uuid": "0eb0db19-d9d4-4cb2-af7a-9f73e5f3f4f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd0efcd2-dbc1-484b-8952-2f61bb0e5e84",
              "parent_uuid": "f93e1392-0226-4504-bead-02886f17022d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3dec30bf-b1ff-4eea-ae4b-f140b7debe44",
                  "parent_uuid": "dd0efcd2-dbc1-484b-8952-2f61bb0e5e84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94811f6d-a128-4d01-99d1-ecfc46c1dcd0",
              "parent_uuid": "f93e1392-0226-4504-bead-02886f17022d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40bb4647-4fa7-4ff2-b212-97114ed94c70",
                  "parent_uuid": "94811f6d-a128-4d01-99d1-ecfc46c1dcd0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a6351e2-9dbb-4892-91d3-006bb774f696",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a212f557-aa80-4e2f-9ee4-b2a65e24edf2",
              "parent_uuid": "9a6351e2-9dbb-4892-91d3-006bb774f696",
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
          "uuid": "c09466d0-934e-4328-9152-2196797a56d9",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3eedd1ff-bea3-4558-a1b8-882074f5f976",
              "parent_uuid": "c09466d0-934e-4328-9152-2196797a56d9",
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
              "uuid": "f75f1630-cb94-4f4f-9022-680ddff067f8",
              "parent_uuid": "c09466d0-934e-4328-9152-2196797a56d9",
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
              "uuid": "6fd08fae-c96c-43b6-ac13-94fcb6cbfd33",
              "parent_uuid": "c09466d0-934e-4328-9152-2196797a56d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b76275c0-c448-455a-bf8d-37a63357a412",
                  "parent_uuid": "6fd08fae-c96c-43b6-ac13-94fcb6cbfd33",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4e93e18-27f4-47c6-83ba-a9532b4985df",
              "parent_uuid": "c09466d0-934e-4328-9152-2196797a56d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26efebc6-0b99-4a93-a3b4-846cebaef3dc",
                  "parent_uuid": "d4e93e18-27f4-47c6-83ba-a9532b4985df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb41c200-2ffe-4521-b65d-8e741bb61c96",
              "parent_uuid": "c09466d0-934e-4328-9152-2196797a56d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1914d515-ab22-4d9c-bd11-eff2c55d5ac7",
                  "parent_uuid": "fb41c200-2ffe-4521-b65d-8e741bb61c96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1bc0ade-9d14-4cd6-a531-73e1249335d2",
              "parent_uuid": "c09466d0-934e-4328-9152-2196797a56d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4454d6b0-f099-49e4-bee6-e4085dc83ca2",
                  "parent_uuid": "c1bc0ade-9d14-4cd6-a531-73e1249335d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70f20843-28df-4ea4-af8a-c2440d78735e",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ac5162e-8349-4c37-869d-a3858f9e5030",
              "parent_uuid": "70f20843-28df-4ea4-af8a-c2440d78735e",
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
              "uuid": "a29cb05b-f849-496d-9f3d-e36fac106332",
              "parent_uuid": "70f20843-28df-4ea4-af8a-c2440d78735e",
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
              "uuid": "5d47c044-452d-433c-ba85-161638a5fac4",
              "parent_uuid": "70f20843-28df-4ea4-af8a-c2440d78735e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf120f9a-288e-4343-8c06-b2906cfc114b",
                  "parent_uuid": "5d47c044-452d-433c-ba85-161638a5fac4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "306a5e32-8752-4e32-befe-67f05226ff12",
              "parent_uuid": "70f20843-28df-4ea4-af8a-c2440d78735e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4efd9dc-e020-4637-ac21-09b4507618d3",
                  "parent_uuid": "306a5e32-8752-4e32-befe-67f05226ff12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a4d8e51-c784-49f3-b7cf-f940187cccc0",
              "parent_uuid": "70f20843-28df-4ea4-af8a-c2440d78735e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfc03748-abe9-443a-adee-113911fc309f",
                  "parent_uuid": "4a4d8e51-c784-49f3-b7cf-f940187cccc0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76ee74a6-6b93-4114-8e2e-889d301c0cab",
              "parent_uuid": "70f20843-28df-4ea4-af8a-c2440d78735e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adedcc5a-e9eb-44ec-95d7-8197c9544c2f",
                  "parent_uuid": "76ee74a6-6b93-4114-8e2e-889d301c0cab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1e1b1dec-52cd-4379-9171-81362235c2c6",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96d176e8-5a2c-41d0-b8f4-119ddbcc1506",
              "parent_uuid": "1e1b1dec-52cd-4379-9171-81362235c2c6",
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
          "uuid": "9bb39fe7-1aba-49a8-b225-6a121aa405f2",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd9469e2-6afe-4103-b1d3-16531d5049ed",
              "parent_uuid": "9bb39fe7-1aba-49a8-b225-6a121aa405f2",
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
          "uuid": "3a18aa44-2ff2-4bc7-bb77-2694f292c2cd",
          "parent_uuid": "d0e4a8fa-4272-4f47-8081-0964a13d1c06",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e74c35cf-8baf-40ad-ac5e-01c00e9e11cc",
              "parent_uuid": "3a18aa44-2ff2-4bc7-bb77-2694f292c2cd",
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
                  "uuid": "94d9582d-1f9a-4860-8574-eb5a10ac3bbf",
                  "parent_uuid": "e74c35cf-8baf-40ad-ac5e-01c00e9e11cc",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

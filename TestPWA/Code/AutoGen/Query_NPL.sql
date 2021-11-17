
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
  "uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "951906da-97cd-4155-b64d-ff246d932e60",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "48febdf6-78b9-43d5-b277-8b92ecadf3b0",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "f14f13c1-3c3c-4c47-8cc3-9b7021261a69",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "3d26f87c-9cf4-4a39-8567-3b68a93457ff",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "d4bb7072-9f01-4d09-982a-1e7b63078983",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "99f3b19a-e040-4dbf-9fe0-0bdd832d83f7",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "d3489882-be86-49d0-9f87-bf456a92886f",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
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
      "uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
      "parent_uuid": "5e1fdc14-a61b-48de-aac9-37ac1a8664c3",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "b0e644b5-4a66-4e4e-a4cf-84fb8888881c",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "36121d6b-3d17-4102-8680-69760ae454fb",
              "parent_uuid": "b0e644b5-4a66-4e4e-a4cf-84fb8888881c",
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
              "uuid": "e4d73ece-ef3a-473e-93cc-2edabcfd92d2",
              "parent_uuid": "b0e644b5-4a66-4e4e-a4cf-84fb8888881c",
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
              "uuid": "8edec2d7-20f2-4aeb-af26-79f472dfed0f",
              "parent_uuid": "b0e644b5-4a66-4e4e-a4cf-84fb8888881c",
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
              "uuid": "0f207d59-0ade-4633-bb10-61c0089e879b",
              "parent_uuid": "b0e644b5-4a66-4e4e-a4cf-84fb8888881c",
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
          "uuid": "d670b3d4-fd2f-4e6f-bfd7-0f0b3a26911d",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "3f59dc61-5c15-41ff-83ff-463148c6704d",
              "parent_uuid": "d670b3d4-fd2f-4e6f-bfd7-0f0b3a26911d",
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
              "uuid": "3527e6a3-f87b-4f09-bfd2-909ffe95f432",
              "parent_uuid": "d670b3d4-fd2f-4e6f-bfd7-0f0b3a26911d",
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
              "uuid": "7258a4ce-9dc4-4f5b-9114-d97fd6f01134",
              "parent_uuid": "d670b3d4-fd2f-4e6f-bfd7-0f0b3a26911d",
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
              "uuid": "75137550-9fa1-4cdc-86cc-537859856bf8",
              "parent_uuid": "d670b3d4-fd2f-4e6f-bfd7-0f0b3a26911d",
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
          "uuid": "1e65a3e3-b444-4551-9c7d-3fbce09c65e2",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fcd14747-68d1-4b74-8ea0-0aaed818d81b",
              "parent_uuid": "1e65a3e3-b444-4551-9c7d-3fbce09c65e2",
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
              "uuid": "56c26f16-5638-4664-9bcb-e4f78f5bdb3f",
              "parent_uuid": "1e65a3e3-b444-4551-9c7d-3fbce09c65e2",
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
              "uuid": "47be591b-38fa-4d4f-9e45-483f228ccd97",
              "parent_uuid": "1e65a3e3-b444-4551-9c7d-3fbce09c65e2",
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
              "uuid": "8e7a55a3-7089-4ecd-9e82-b3b4a51d32b1",
              "parent_uuid": "1e65a3e3-b444-4551-9c7d-3fbce09c65e2",
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
              "uuid": "18a5b758-92e9-477e-859b-231a746161d9",
              "parent_uuid": "1e65a3e3-b444-4551-9c7d-3fbce09c65e2",
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
              "uuid": "41eeb235-d02e-4dd7-aae8-50acca3217b4",
              "parent_uuid": "1e65a3e3-b444-4551-9c7d-3fbce09c65e2",
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
          "uuid": "0ade1375-94dd-4de1-b49a-ac104ff42040",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "797fb0fe-6440-490d-b1dc-d7acf9443eda",
              "parent_uuid": "0ade1375-94dd-4de1-b49a-ac104ff42040",
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
          "uuid": "77884369-c4ab-41e2-b82d-f7af13faea8c",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "faa95830-5ab7-4841-9c92-f79199e46c1d",
              "parent_uuid": "77884369-c4ab-41e2-b82d-f7af13faea8c",
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
              "uuid": "429955a4-9124-4008-829d-00cfe3460eaf",
              "parent_uuid": "77884369-c4ab-41e2-b82d-f7af13faea8c",
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
              "uuid": "d13e95ef-4e73-45d2-8e61-f35486dd8aac",
              "parent_uuid": "77884369-c4ab-41e2-b82d-f7af13faea8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d80b008-cfa4-47af-a1cf-dbd4b2f6b119",
                  "parent_uuid": "d13e95ef-4e73-45d2-8e61-f35486dd8aac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25e99cd4-a0f6-4456-8e6d-59d672bac079",
              "parent_uuid": "77884369-c4ab-41e2-b82d-f7af13faea8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0735ea30-4cea-4d11-a8a1-1709ba359d4c",
                  "parent_uuid": "25e99cd4-a0f6-4456-8e6d-59d672bac079",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d252b30-8d92-43e9-8796-fba29ccf1618",
              "parent_uuid": "77884369-c4ab-41e2-b82d-f7af13faea8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b876027-8101-4d7a-922b-7f33ed544d69",
                  "parent_uuid": "2d252b30-8d92-43e9-8796-fba29ccf1618",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "484f555e-7baa-4353-8806-591f16e59d40",
              "parent_uuid": "77884369-c4ab-41e2-b82d-f7af13faea8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4207fcea-6dd2-4de4-81f7-43849ddeb5bf",
                  "parent_uuid": "484f555e-7baa-4353-8806-591f16e59d40",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f189d9fd-5475-4dd3-a9c7-4b48d6aa838f",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b240c8ae-9a99-444d-8483-2a60e8a8eeaf",
              "parent_uuid": "f189d9fd-5475-4dd3-a9c7-4b48d6aa838f",
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
              "uuid": "daec9ec4-8153-4b0f-9ff2-772f9e271371",
              "parent_uuid": "f189d9fd-5475-4dd3-a9c7-4b48d6aa838f",
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
              "uuid": "23432e5f-1706-44a6-9890-8bdeed314244",
              "parent_uuid": "f189d9fd-5475-4dd3-a9c7-4b48d6aa838f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff02aec1-5fe9-425e-8b07-e94901aed180",
                  "parent_uuid": "23432e5f-1706-44a6-9890-8bdeed314244",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81836533-93c1-47b4-9114-27e3cff5b796",
              "parent_uuid": "f189d9fd-5475-4dd3-a9c7-4b48d6aa838f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75b231a1-e62e-4f76-a2a6-67e2a0c4e8a4",
                  "parent_uuid": "81836533-93c1-47b4-9114-27e3cff5b796",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "798c9ad0-0f51-4865-9b7b-e9c56ca88f6c",
              "parent_uuid": "f189d9fd-5475-4dd3-a9c7-4b48d6aa838f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0bd33c22-3f34-4529-bf2a-8cb8ac145172",
                  "parent_uuid": "798c9ad0-0f51-4865-9b7b-e9c56ca88f6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbdfb337-78c6-4c7d-8650-8c91820e016d",
              "parent_uuid": "f189d9fd-5475-4dd3-a9c7-4b48d6aa838f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd849354-8271-4153-8834-2f5e238a9c60",
                  "parent_uuid": "dbdfb337-78c6-4c7d-8650-8c91820e016d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "021c3b99-0ab5-4346-9932-decb25532263",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d08688dd-64fd-4f7b-b694-9f7794a6984c",
              "parent_uuid": "021c3b99-0ab5-4346-9932-decb25532263",
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
              "uuid": "d80bed31-6270-435e-972e-f1226dec918e",
              "parent_uuid": "021c3b99-0ab5-4346-9932-decb25532263",
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
              "uuid": "3f3e1702-10a7-4082-9f56-b3e0f57a2b47",
              "parent_uuid": "021c3b99-0ab5-4346-9932-decb25532263",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8bb5238-9a8b-4ba2-af19-f8704688ec60",
                  "parent_uuid": "3f3e1702-10a7-4082-9f56-b3e0f57a2b47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d47a259-93fd-48c8-89eb-bf8a8d487d36",
              "parent_uuid": "021c3b99-0ab5-4346-9932-decb25532263",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9efcdded-2656-40bf-9ae6-1dbfa1130c37",
                  "parent_uuid": "2d47a259-93fd-48c8-89eb-bf8a8d487d36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e412f48b-8bd7-4bb4-ae76-453fb6108c59",
              "parent_uuid": "021c3b99-0ab5-4346-9932-decb25532263",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "883c449b-5a0e-4ab5-9c40-85d0349f15f8",
                  "parent_uuid": "e412f48b-8bd7-4bb4-ae76-453fb6108c59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16a96ab0-859c-4045-bc81-be15192e1302",
              "parent_uuid": "021c3b99-0ab5-4346-9932-decb25532263",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b070e3d9-66f9-47eb-88f4-6dec9fef5146",
                  "parent_uuid": "16a96ab0-859c-4045-bc81-be15192e1302",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dffcee0d-4d9d-4d13-be7d-8e59ef3ae03b",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19f2a56a-3bd8-465e-8ace-4e8d48a4d7c3",
              "parent_uuid": "dffcee0d-4d9d-4d13-be7d-8e59ef3ae03b",
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
              "uuid": "f0f8a4a3-c3de-4c05-a068-b4d98d154c20",
              "parent_uuid": "dffcee0d-4d9d-4d13-be7d-8e59ef3ae03b",
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
              "uuid": "df743fbf-1898-41f3-ba7c-b23c62c1df92",
              "parent_uuid": "dffcee0d-4d9d-4d13-be7d-8e59ef3ae03b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "580b55f7-82eb-4f37-8b9d-9446716d56be",
                  "parent_uuid": "df743fbf-1898-41f3-ba7c-b23c62c1df92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7036fe5-fc19-45c2-b871-e5b1e54ec059",
              "parent_uuid": "dffcee0d-4d9d-4d13-be7d-8e59ef3ae03b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd687299-906d-4524-ac67-93d034384fa4",
                  "parent_uuid": "b7036fe5-fc19-45c2-b871-e5b1e54ec059",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd000b53-bcfa-4742-beb9-356f3a641a2f",
              "parent_uuid": "dffcee0d-4d9d-4d13-be7d-8e59ef3ae03b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "255ab7ac-a79d-4b5c-bdc9-b82e6c5a4f8e",
                  "parent_uuid": "dd000b53-bcfa-4742-beb9-356f3a641a2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53564b63-0548-402d-855c-d536ef02d253",
              "parent_uuid": "dffcee0d-4d9d-4d13-be7d-8e59ef3ae03b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ed7a422-7dd0-4033-8629-a47dd760c94c",
                  "parent_uuid": "53564b63-0548-402d-855c-d536ef02d253",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35ae7bf5-e972-40a1-a3da-f94ce6bb48a0",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b5aefb22-5204-4b98-b07c-ca4677c285c8",
              "parent_uuid": "35ae7bf5-e972-40a1-a3da-f94ce6bb48a0",
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
              "uuid": "c5d8c91d-95e7-471f-b044-78ce4e83eab0",
              "parent_uuid": "35ae7bf5-e972-40a1-a3da-f94ce6bb48a0",
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
              "uuid": "497b4529-6b00-4f73-8985-f78539878536",
              "parent_uuid": "35ae7bf5-e972-40a1-a3da-f94ce6bb48a0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eb0a8aeb-b7b2-4c67-8c79-5ab2fcc5719a",
                  "parent_uuid": "497b4529-6b00-4f73-8985-f78539878536",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77a24229-cd6e-4c97-8105-b41fa0621bcf",
              "parent_uuid": "35ae7bf5-e972-40a1-a3da-f94ce6bb48a0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "946760fb-d25c-4d1a-9210-ed4d96f6a8f3",
                  "parent_uuid": "77a24229-cd6e-4c97-8105-b41fa0621bcf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0da71633-2912-4936-b03e-2c254c9ba719",
              "parent_uuid": "35ae7bf5-e972-40a1-a3da-f94ce6bb48a0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b9e3192c-f35b-4899-90e8-c6cdbe1f6007",
                  "parent_uuid": "0da71633-2912-4936-b03e-2c254c9ba719",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be0da9fa-a057-40d6-844d-c31f8d6cde82",
              "parent_uuid": "35ae7bf5-e972-40a1-a3da-f94ce6bb48a0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6562b6f1-73ba-4f58-bb77-e173d1669458",
                  "parent_uuid": "be0da9fa-a057-40d6-844d-c31f8d6cde82",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "98dfeba1-bfbf-4645-85d3-4f553445af2f",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31e6cde6-95ef-4a94-82e0-4f04408636b6",
              "parent_uuid": "98dfeba1-bfbf-4645-85d3-4f553445af2f",
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
              "uuid": "28229c3a-45e2-496e-9d15-81b56ba260ee",
              "parent_uuid": "98dfeba1-bfbf-4645-85d3-4f553445af2f",
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
              "uuid": "686e31dd-7f5e-40bf-9da9-5506f8e44ac7",
              "parent_uuid": "98dfeba1-bfbf-4645-85d3-4f553445af2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7760638-7551-4b65-ba21-3ef41b9e4506",
                  "parent_uuid": "686e31dd-7f5e-40bf-9da9-5506f8e44ac7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7cb1edf-b813-4079-99e0-cfc727c6f3f1",
              "parent_uuid": "98dfeba1-bfbf-4645-85d3-4f553445af2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c44cac5-f07d-432d-9655-cecaa50c7b1d",
                  "parent_uuid": "b7cb1edf-b813-4079-99e0-cfc727c6f3f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "041d1c44-07ff-4b46-a74f-811966cb7566",
              "parent_uuid": "98dfeba1-bfbf-4645-85d3-4f553445af2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29be5182-6cad-449d-8ab8-c794877e6d45",
                  "parent_uuid": "041d1c44-07ff-4b46-a74f-811966cb7566",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5428a9b1-53be-4a52-b2ac-2fea542f5ae0",
              "parent_uuid": "98dfeba1-bfbf-4645-85d3-4f553445af2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acdeabe7-6454-44d9-88da-65dcad37773e",
                  "parent_uuid": "5428a9b1-53be-4a52-b2ac-2fea542f5ae0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bed05144-b9a2-4c28-aa7c-9640d6b80389",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "499fda66-8b9c-4cad-99e8-137c0c88f692",
              "parent_uuid": "bed05144-b9a2-4c28-aa7c-9640d6b80389",
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
              "uuid": "6a530287-afcf-4124-a095-d7c2f1b5e56f",
              "parent_uuid": "bed05144-b9a2-4c28-aa7c-9640d6b80389",
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
              "uuid": "bcd78f1a-6dc7-492a-a64c-74990d2be661",
              "parent_uuid": "bed05144-b9a2-4c28-aa7c-9640d6b80389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b2ce8e6-b65f-4bad-aace-a322a06c811b",
                  "parent_uuid": "bcd78f1a-6dc7-492a-a64c-74990d2be661",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a32636a-97c0-4e27-9222-f1ab479faab7",
              "parent_uuid": "bed05144-b9a2-4c28-aa7c-9640d6b80389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edcbbd63-5f57-4c28-a666-560839509003",
                  "parent_uuid": "3a32636a-97c0-4e27-9222-f1ab479faab7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3dc54d4-989d-4143-8717-89ee8f657dbb",
              "parent_uuid": "bed05144-b9a2-4c28-aa7c-9640d6b80389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bf9d583-f3ff-411d-8875-28ba38e863e1",
                  "parent_uuid": "e3dc54d4-989d-4143-8717-89ee8f657dbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "684929da-a349-407c-a767-b8e4535929b7",
              "parent_uuid": "bed05144-b9a2-4c28-aa7c-9640d6b80389",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "520d0eac-583d-433a-9e83-25fb55787710",
                  "parent_uuid": "684929da-a349-407c-a767-b8e4535929b7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2cef1b96-2ae0-440d-a0f5-0c325a9bd0e2",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b1bbf1a3-a0da-4962-8053-150f08f30efb",
              "parent_uuid": "2cef1b96-2ae0-440d-a0f5-0c325a9bd0e2",
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
              "uuid": "44415761-a1f9-423b-9b9d-f93072f08d22",
              "parent_uuid": "2cef1b96-2ae0-440d-a0f5-0c325a9bd0e2",
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
              "uuid": "e1be9904-4628-4bd9-89e1-ab657ca9f0bd",
              "parent_uuid": "2cef1b96-2ae0-440d-a0f5-0c325a9bd0e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7dad2ce7-00c9-4968-99da-18d717db6ff7",
                  "parent_uuid": "e1be9904-4628-4bd9-89e1-ab657ca9f0bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bcd48696-3e6a-410b-97db-60a93de0ddbc",
              "parent_uuid": "2cef1b96-2ae0-440d-a0f5-0c325a9bd0e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5c79a18-780b-4c2f-b6cf-865151f690ea",
                  "parent_uuid": "bcd48696-3e6a-410b-97db-60a93de0ddbc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbe1373a-25dd-41a0-965e-cf4f4bc4f6c4",
              "parent_uuid": "2cef1b96-2ae0-440d-a0f5-0c325a9bd0e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41dca2be-d95d-4197-9c35-61e187880e89",
                  "parent_uuid": "fbe1373a-25dd-41a0-965e-cf4f4bc4f6c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a6c0d4a-cb68-4c46-98af-333bddd11084",
              "parent_uuid": "2cef1b96-2ae0-440d-a0f5-0c325a9bd0e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62717874-2063-4131-a410-1378c78eca02",
                  "parent_uuid": "1a6c0d4a-cb68-4c46-98af-333bddd11084",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "17d376fc-3c82-43e6-8f39-1f34ad558f7a",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "37f23a18-e1f1-4724-be70-5181de08d2fc",
              "parent_uuid": "17d376fc-3c82-43e6-8f39-1f34ad558f7a",
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
              "uuid": "18adf52f-5d0c-456f-a1f1-103eeb6b08a0",
              "parent_uuid": "17d376fc-3c82-43e6-8f39-1f34ad558f7a",
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
              "uuid": "9e51a532-a114-4b83-a44c-b26cc32f82a1",
              "parent_uuid": "17d376fc-3c82-43e6-8f39-1f34ad558f7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a080c90-b8b1-4bb4-af24-f062b14f6e15",
                  "parent_uuid": "9e51a532-a114-4b83-a44c-b26cc32f82a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "234497ee-0b28-441f-88e4-110692ac9d83",
              "parent_uuid": "17d376fc-3c82-43e6-8f39-1f34ad558f7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20ae40e1-e869-4d01-84f2-98eac0b41e8a",
                  "parent_uuid": "234497ee-0b28-441f-88e4-110692ac9d83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "022d4717-d9ba-4fa6-8b33-2b782d2472e6",
              "parent_uuid": "17d376fc-3c82-43e6-8f39-1f34ad558f7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f9cd5bb-43f4-493a-858e-aaa322647c4c",
                  "parent_uuid": "022d4717-d9ba-4fa6-8b33-2b782d2472e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f01318a9-9bcb-4ff3-9331-c66a728c4fcd",
              "parent_uuid": "17d376fc-3c82-43e6-8f39-1f34ad558f7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8b0a5e4-a3d3-4c92-b6b2-82de041b12c7",
                  "parent_uuid": "f01318a9-9bcb-4ff3-9331-c66a728c4fcd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c161cbbc-d749-4f6d-84a8-ab348b4f3ddc",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63d0c343-d3eb-4322-ba17-66128f2d3fbd",
              "parent_uuid": "c161cbbc-d749-4f6d-84a8-ab348b4f3ddc",
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
              "uuid": "b15ccfb9-4f96-4870-aa72-72e17fee4cb2",
              "parent_uuid": "c161cbbc-d749-4f6d-84a8-ab348b4f3ddc",
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
              "uuid": "b7c596d4-da91-4cb3-9da2-68d5dafd72d1",
              "parent_uuid": "c161cbbc-d749-4f6d-84a8-ab348b4f3ddc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "862ff4e9-9a35-4450-b809-e7f9eb50d877",
                  "parent_uuid": "b7c596d4-da91-4cb3-9da2-68d5dafd72d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c38c74f5-4f42-4c14-a545-c45ad0ea57af",
              "parent_uuid": "c161cbbc-d749-4f6d-84a8-ab348b4f3ddc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60bdefba-7666-478e-9c08-b577b5a416f4",
                  "parent_uuid": "c38c74f5-4f42-4c14-a545-c45ad0ea57af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b5211666-dc1b-4884-88b8-ae09bf7ee08d",
              "parent_uuid": "c161cbbc-d749-4f6d-84a8-ab348b4f3ddc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00779c9c-e8be-4165-9c34-eddd85772bba",
                  "parent_uuid": "b5211666-dc1b-4884-88b8-ae09bf7ee08d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6c2482c-3cd1-4b82-a22d-f6809d42f077",
              "parent_uuid": "c161cbbc-d749-4f6d-84a8-ab348b4f3ddc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd671a42-7a00-4dd5-a24d-644643a760e4",
                  "parent_uuid": "a6c2482c-3cd1-4b82-a22d-f6809d42f077",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b33e1bdd-4e11-4a4d-bbe1-7ee98cdc223a",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52e8dd5c-edcd-4a33-ba92-dbcf829265ee",
              "parent_uuid": "b33e1bdd-4e11-4a4d-bbe1-7ee98cdc223a",
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
              "uuid": "0e857ab6-cb6f-48c9-be7e-fdf340f0bea2",
              "parent_uuid": "b33e1bdd-4e11-4a4d-bbe1-7ee98cdc223a",
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
              "uuid": "61266068-157b-4465-857e-1d50a780c3c9",
              "parent_uuid": "b33e1bdd-4e11-4a4d-bbe1-7ee98cdc223a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1e1df7c-6046-4633-aec4-6834bed6270c",
                  "parent_uuid": "61266068-157b-4465-857e-1d50a780c3c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb7e7973-1dc7-43bd-b889-948e2684e081",
              "parent_uuid": "b33e1bdd-4e11-4a4d-bbe1-7ee98cdc223a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e33f1a6a-c1c4-405b-aae6-4ec2ce82c308",
                  "parent_uuid": "fb7e7973-1dc7-43bd-b889-948e2684e081",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c471489b-8691-42e2-8b8a-7d22ef73e7ba",
              "parent_uuid": "b33e1bdd-4e11-4a4d-bbe1-7ee98cdc223a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2196ed9-ccb5-4faf-8760-a44277094500",
                  "parent_uuid": "c471489b-8691-42e2-8b8a-7d22ef73e7ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54d24192-867f-42b0-9081-c34047c473fd",
              "parent_uuid": "b33e1bdd-4e11-4a4d-bbe1-7ee98cdc223a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5385d707-abea-45d3-b4d0-4598253ada0f",
                  "parent_uuid": "54d24192-867f-42b0-9081-c34047c473fd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1dd7df75-d6a6-4335-8aa8-fb7ce8a5c89a",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4355112-034d-4a09-8c04-df731e9a5b1e",
              "parent_uuid": "1dd7df75-d6a6-4335-8aa8-fb7ce8a5c89a",
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
              "uuid": "c825ba01-9e31-4c99-a804-8bc2f45cefdc",
              "parent_uuid": "1dd7df75-d6a6-4335-8aa8-fb7ce8a5c89a",
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
              "uuid": "3048ec5f-ce29-444f-8609-ff00057c3525",
              "parent_uuid": "1dd7df75-d6a6-4335-8aa8-fb7ce8a5c89a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9f84b3c-afb5-4077-a523-361f71879d50",
                  "parent_uuid": "3048ec5f-ce29-444f-8609-ff00057c3525",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3e00db1-e818-4b32-82ba-9689108a5bfd",
              "parent_uuid": "1dd7df75-d6a6-4335-8aa8-fb7ce8a5c89a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc637dec-a5ba-4cc3-a622-f9b175a538c6",
                  "parent_uuid": "e3e00db1-e818-4b32-82ba-9689108a5bfd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac379558-a11a-4817-90b4-69f89fe528fa",
              "parent_uuid": "1dd7df75-d6a6-4335-8aa8-fb7ce8a5c89a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d88f979-13ea-4bf7-a52b-815a48f76c8d",
                  "parent_uuid": "ac379558-a11a-4817-90b4-69f89fe528fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e73eee2-284c-46ce-ace8-bbab06a10c2a",
              "parent_uuid": "1dd7df75-d6a6-4335-8aa8-fb7ce8a5c89a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b48bc722-4bd9-48e4-a217-5c4f02734a4e",
                  "parent_uuid": "1e73eee2-284c-46ce-ace8-bbab06a10c2a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aa86afde-c641-4cc4-923a-10cadac288a4",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d6633237-c5a3-4bde-8f8b-4d7e13cd2366",
              "parent_uuid": "aa86afde-c641-4cc4-923a-10cadac288a4",
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
              "uuid": "14beaad9-c9dd-4d66-a205-9955d7b4f5ba",
              "parent_uuid": "aa86afde-c641-4cc4-923a-10cadac288a4",
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
              "uuid": "6780e90b-19c4-43d1-bd4f-8c8586bc2d2b",
              "parent_uuid": "aa86afde-c641-4cc4-923a-10cadac288a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0aeaf3b-fb4b-4781-88ba-5b7e48663bef",
                  "parent_uuid": "6780e90b-19c4-43d1-bd4f-8c8586bc2d2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0dbea90-90d7-4928-8f03-3c557ec85171",
              "parent_uuid": "aa86afde-c641-4cc4-923a-10cadac288a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6dc0eafa-2d63-4417-a463-1e9167981764",
                  "parent_uuid": "c0dbea90-90d7-4928-8f03-3c557ec85171",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e99948e-15a5-472a-9986-965b14d3de80",
              "parent_uuid": "aa86afde-c641-4cc4-923a-10cadac288a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b38e9bdc-8738-49bd-843a-d695f6c82e2c",
                  "parent_uuid": "7e99948e-15a5-472a-9986-965b14d3de80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aab18b67-8712-43e3-b424-2840c205289e",
              "parent_uuid": "aa86afde-c641-4cc4-923a-10cadac288a4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33e7c777-d843-4cca-bec0-de7ce86c9faf",
                  "parent_uuid": "aab18b67-8712-43e3-b424-2840c205289e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "657b4371-2722-4cf7-8cbc-367f0a7fb026",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b13e9c6-cff7-43ba-9fe6-40f899cc9705",
              "parent_uuid": "657b4371-2722-4cf7-8cbc-367f0a7fb026",
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
              "uuid": "5db9dfef-ecdd-48d1-ac4e-cdac73049c3c",
              "parent_uuid": "657b4371-2722-4cf7-8cbc-367f0a7fb026",
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
              "uuid": "de0b6854-c741-4caf-9a59-98922d33a434",
              "parent_uuid": "657b4371-2722-4cf7-8cbc-367f0a7fb026",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49defee8-a53d-42bf-9984-e6f7b0356548",
                  "parent_uuid": "de0b6854-c741-4caf-9a59-98922d33a434",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22d9e028-7be2-41e6-be31-d1d1e10c9cab",
              "parent_uuid": "657b4371-2722-4cf7-8cbc-367f0a7fb026",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56b22301-49f0-40de-975f-2cb68542e6b0",
                  "parent_uuid": "22d9e028-7be2-41e6-be31-d1d1e10c9cab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8df63a43-823d-4936-8a1c-91cf775e1ad0",
              "parent_uuid": "657b4371-2722-4cf7-8cbc-367f0a7fb026",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b663ef6-6637-41f3-8397-a5864dde8cce",
                  "parent_uuid": "8df63a43-823d-4936-8a1c-91cf775e1ad0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "887e8587-b202-4dab-b4da-429fdc53a59b",
              "parent_uuid": "657b4371-2722-4cf7-8cbc-367f0a7fb026",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d21b2cf2-e502-4893-9acd-7bfc3c1ea845",
                  "parent_uuid": "887e8587-b202-4dab-b4da-429fdc53a59b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a50d71c3-8770-4163-829c-3e696245576a",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "db55e29e-a36c-475a-a357-59afbc2058f6",
              "parent_uuid": "a50d71c3-8770-4163-829c-3e696245576a",
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
          "uuid": "d2adfad4-b060-495a-acd9-3aa2b1322d1a",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b07d309-7c34-4ff1-89e5-265a434a3c44",
              "parent_uuid": "d2adfad4-b060-495a-acd9-3aa2b1322d1a",
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
          "uuid": "96206136-6b3b-4898-bee9-852ac514a3a2",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b3b3895-a4e5-4fff-9297-48d97c300c1b",
              "parent_uuid": "96206136-6b3b-4898-bee9-852ac514a3a2",
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
                  "uuid": "eee86f6e-a519-4bf8-bf7a-edd2af6859b1",
                  "parent_uuid": "9b3b3895-a4e5-4fff-9297-48d97c300c1b",
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
          "uuid": "22bc8c84-447d-4f27-a323-1ad591778f32",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ee4b1a7-1a7e-4e5c-af3d-7b648293dd58",
              "parent_uuid": "22bc8c84-447d-4f27-a323-1ad591778f32",
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
          "uuid": "a517e699-5513-4f54-851a-c41d00e5bf8b",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4cd62d3c-a491-4925-825e-a299e7979538",
              "parent_uuid": "a517e699-5513-4f54-851a-c41d00e5bf8b",
              "tagName": "td",
              "properties": [
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
          "uuid": "326f57a0-5c78-494d-8737-0e2cf48c7d40",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cf9e28a-9da2-4ba8-80b4-9db22a93b2b8",
              "parent_uuid": "326f57a0-5c78-494d-8737-0e2cf48c7d40",
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
              "uuid": "2e22dabb-94cc-42f4-b36e-74fe1d9f8dbb",
              "parent_uuid": "326f57a0-5c78-494d-8737-0e2cf48c7d40",
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
              "uuid": "ef85e355-a7e8-4b79-88d1-9da9efe681cd",
              "parent_uuid": "326f57a0-5c78-494d-8737-0e2cf48c7d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0aa56c70-84dd-4e6d-bf47-d0d2d52a61f1",
                  "parent_uuid": "ef85e355-a7e8-4b79-88d1-9da9efe681cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e6e4fdc-b1d0-4e47-8156-3893040ed8e7",
              "parent_uuid": "326f57a0-5c78-494d-8737-0e2cf48c7d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9523be56-e00c-49ba-a899-11d48278c216",
                  "parent_uuid": "3e6e4fdc-b1d0-4e47-8156-3893040ed8e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "602c6949-a1c9-4d60-b7d8-6f0170a764b7",
              "parent_uuid": "326f57a0-5c78-494d-8737-0e2cf48c7d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0ba777a-14e1-4435-8db4-652d43efc824",
                  "parent_uuid": "602c6949-a1c9-4d60-b7d8-6f0170a764b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25020dd4-b27d-473d-bd8e-38e8368dfc80",
              "parent_uuid": "326f57a0-5c78-494d-8737-0e2cf48c7d40",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74cf0a01-a051-4108-97b3-1b0b3ca6fdea",
                  "parent_uuid": "25020dd4-b27d-473d-bd8e-38e8368dfc80",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "302c93df-b69c-4cd9-9f67-995a1030c984",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b5b62fb-c2dc-4459-a336-317738bf4a58",
              "parent_uuid": "302c93df-b69c-4cd9-9f67-995a1030c984",
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
              "uuid": "ac178a77-0f97-4c30-83d8-4768e23c6a22",
              "parent_uuid": "302c93df-b69c-4cd9-9f67-995a1030c984",
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
              "uuid": "734d88ac-babf-4d8f-9129-618e9d3d9f46",
              "parent_uuid": "302c93df-b69c-4cd9-9f67-995a1030c984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acb61676-d271-498c-aa48-ec49669273e8",
                  "parent_uuid": "734d88ac-babf-4d8f-9129-618e9d3d9f46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "544439db-b9e1-4e1b-8fd5-bf64b5c55cfa",
              "parent_uuid": "302c93df-b69c-4cd9-9f67-995a1030c984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c79a35b-62e3-4d62-bba7-e5481a490741",
                  "parent_uuid": "544439db-b9e1-4e1b-8fd5-bf64b5c55cfa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e75edf8-bf58-4a08-81a6-42922dd36c87",
              "parent_uuid": "302c93df-b69c-4cd9-9f67-995a1030c984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81b2b481-4ec7-4603-a096-30aa1ffddf4a",
                  "parent_uuid": "3e75edf8-bf58-4a08-81a6-42922dd36c87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "972a5571-83f8-4ff9-8b87-d4702c900ac8",
              "parent_uuid": "302c93df-b69c-4cd9-9f67-995a1030c984",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee168a02-38d5-415f-bc80-6d8331d8990f",
                  "parent_uuid": "972a5571-83f8-4ff9-8b87-d4702c900ac8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "51c5c29c-1e7d-4f96-85c5-80e68166ca6d",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c793fc6-923c-44d0-8ba5-c2c15dc51d43",
              "parent_uuid": "51c5c29c-1e7d-4f96-85c5-80e68166ca6d",
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
              "uuid": "c6709aa6-b85e-40ab-a1c6-396f5acb1e33",
              "parent_uuid": "51c5c29c-1e7d-4f96-85c5-80e68166ca6d",
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
              "uuid": "9cd2e10d-7853-4eca-a0e8-863c4ba1b472",
              "parent_uuid": "51c5c29c-1e7d-4f96-85c5-80e68166ca6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee1b67ca-6d90-452b-b4b0-ef4aedcf625a",
                  "parent_uuid": "9cd2e10d-7853-4eca-a0e8-863c4ba1b472",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91432d49-4e66-4674-8ef8-bfcbff677eb9",
              "parent_uuid": "51c5c29c-1e7d-4f96-85c5-80e68166ca6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac2978bb-41aa-4710-8377-00fc034c29d7",
                  "parent_uuid": "91432d49-4e66-4674-8ef8-bfcbff677eb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d3f6ac6-e6d6-4131-9a2e-e53a726bcef0",
              "parent_uuid": "51c5c29c-1e7d-4f96-85c5-80e68166ca6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ee77344-0f1b-438c-9099-7d48235711be",
                  "parent_uuid": "4d3f6ac6-e6d6-4131-9a2e-e53a726bcef0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da60f958-c4b5-40f8-a261-7e315c1057b5",
              "parent_uuid": "51c5c29c-1e7d-4f96-85c5-80e68166ca6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53968690-c706-4789-b91a-ec33f360661e",
                  "parent_uuid": "da60f958-c4b5-40f8-a261-7e315c1057b5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ad250e18-68bb-4346-8313-3f23908e6770",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cff2c9b1-d8ab-4a95-9bd9-7dfe852204ce",
              "parent_uuid": "ad250e18-68bb-4346-8313-3f23908e6770",
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
              "uuid": "a0ef715a-5060-4857-8771-d95da2a7deba",
              "parent_uuid": "ad250e18-68bb-4346-8313-3f23908e6770",
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
              "uuid": "73d46e4d-d111-4fa2-be81-4e1268ac5149",
              "parent_uuid": "ad250e18-68bb-4346-8313-3f23908e6770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8826feae-ebdb-4866-8c7b-010a7388d285",
                  "parent_uuid": "73d46e4d-d111-4fa2-be81-4e1268ac5149",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71145da4-82a5-47fa-a3b0-4631a8cd96c6",
              "parent_uuid": "ad250e18-68bb-4346-8313-3f23908e6770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c7ce1d6-b08d-4e8c-af1b-564d1b2b6003",
                  "parent_uuid": "71145da4-82a5-47fa-a3b0-4631a8cd96c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbd533f7-3348-47ec-9f1d-bab4b6b05247",
              "parent_uuid": "ad250e18-68bb-4346-8313-3f23908e6770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2a6e50c-34e4-4f51-95ee-917c0b9c8fac",
                  "parent_uuid": "dbd533f7-3348-47ec-9f1d-bab4b6b05247",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac8d65d1-1076-4470-8140-6c77d4e07ad9",
              "parent_uuid": "ad250e18-68bb-4346-8313-3f23908e6770",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "677812e9-8b66-4ada-a5f8-4d7c61cb58b7",
                  "parent_uuid": "ac8d65d1-1076-4470-8140-6c77d4e07ad9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fcd7a8ec-aa5b-495f-a73a-a53770514977",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "11cacd0c-a3c4-4538-aec8-19f7578a27a3",
              "parent_uuid": "fcd7a8ec-aa5b-495f-a73a-a53770514977",
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
          "uuid": "9dec4c2d-6d3e-4802-84b8-4738b93f035f",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c089045b-798b-4ed5-be51-2ce2e383bea7",
              "parent_uuid": "9dec4c2d-6d3e-4802-84b8-4738b93f035f",
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
              "uuid": "1b349699-ea3e-4c6b-acd7-e193018fc4e4",
              "parent_uuid": "9dec4c2d-6d3e-4802-84b8-4738b93f035f",
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
              "uuid": "550b82e3-2e8e-40f7-a84f-4297b7fc4228",
              "parent_uuid": "9dec4c2d-6d3e-4802-84b8-4738b93f035f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "992533ca-6f32-472e-aafd-f47dd6520490",
                  "parent_uuid": "550b82e3-2e8e-40f7-a84f-4297b7fc4228",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82a811a3-ab6a-44ee-9542-43a3d9e10f82",
              "parent_uuid": "9dec4c2d-6d3e-4802-84b8-4738b93f035f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34584ddc-bbd8-44f7-bfdf-363bcc4e0e35",
                  "parent_uuid": "82a811a3-ab6a-44ee-9542-43a3d9e10f82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aaae78b8-a52f-4e97-8887-8c5526812dfb",
              "parent_uuid": "9dec4c2d-6d3e-4802-84b8-4738b93f035f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "109e4ef1-9123-4fa9-82ac-a9b9ace88381",
                  "parent_uuid": "aaae78b8-a52f-4e97-8887-8c5526812dfb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c61117bc-8e6f-42b7-96a2-530f2df93cf7",
              "parent_uuid": "9dec4c2d-6d3e-4802-84b8-4738b93f035f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c98a4538-9c4b-4bf7-9efc-9a0dfeca7e0a",
                  "parent_uuid": "c61117bc-8e6f-42b7-96a2-530f2df93cf7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "90078320-a962-48e2-8411-bf7c5e891d92",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f3d6415-efe5-4cd6-8344-62870ccfbb92",
              "parent_uuid": "90078320-a962-48e2-8411-bf7c5e891d92",
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
              "uuid": "1e0a960c-bd3d-49eb-8c53-0cd4a890301a",
              "parent_uuid": "90078320-a962-48e2-8411-bf7c5e891d92",
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
              "uuid": "2cb62176-f4ed-4ae3-b72f-7844fbfd2984",
              "parent_uuid": "90078320-a962-48e2-8411-bf7c5e891d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "759c0564-ac4c-4ee9-a7c2-7a3d24c4a42a",
                  "parent_uuid": "2cb62176-f4ed-4ae3-b72f-7844fbfd2984",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8092156c-62db-4388-a317-377434b00c42",
              "parent_uuid": "90078320-a962-48e2-8411-bf7c5e891d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "060f6ea6-7520-4c23-a460-4dbe069f9825",
                  "parent_uuid": "8092156c-62db-4388-a317-377434b00c42",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bb7463e-2a9b-4fe4-a4d9-e88ca782b408",
              "parent_uuid": "90078320-a962-48e2-8411-bf7c5e891d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8e69303-77f4-43b8-94df-1f559d89cf09",
                  "parent_uuid": "5bb7463e-2a9b-4fe4-a4d9-e88ca782b408",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "768dbf3c-fdb6-4f73-abd3-f66be5a20d16",
              "parent_uuid": "90078320-a962-48e2-8411-bf7c5e891d92",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4af9e4c9-38ea-47a8-b66f-a256a801c809",
                  "parent_uuid": "768dbf3c-fdb6-4f73-abd3-f66be5a20d16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e3506575-200b-4ee3-9978-f2094c659236",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "253f8ca3-4174-40d6-b8bc-95519e42f1e1",
              "parent_uuid": "e3506575-200b-4ee3-9978-f2094c659236",
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
              "uuid": "6d84b484-5df4-47c6-b932-ea3b7bf70f99",
              "parent_uuid": "e3506575-200b-4ee3-9978-f2094c659236",
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
              "uuid": "84bf1ad8-8877-467b-ad18-57ab12018959",
              "parent_uuid": "e3506575-200b-4ee3-9978-f2094c659236",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97f4989c-44ac-4e73-a64d-08852fa99243",
                  "parent_uuid": "84bf1ad8-8877-467b-ad18-57ab12018959",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07e49081-c64e-40be-94b4-1dcd5de704a4",
              "parent_uuid": "e3506575-200b-4ee3-9978-f2094c659236",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61b83684-23f1-4e91-9549-117ca0eba0e3",
                  "parent_uuid": "07e49081-c64e-40be-94b4-1dcd5de704a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "100070dd-c113-4e65-897b-057488b7e3aa",
              "parent_uuid": "e3506575-200b-4ee3-9978-f2094c659236",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8e9a7b4-cb29-4e2f-bb85-017a6406b10b",
                  "parent_uuid": "100070dd-c113-4e65-897b-057488b7e3aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31ab36fd-f5c9-4030-ab89-ccb580c0c233",
              "parent_uuid": "e3506575-200b-4ee3-9978-f2094c659236",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0305868f-3ac4-4fd5-aab6-a0c4e4f8207a",
                  "parent_uuid": "31ab36fd-f5c9-4030-ab89-ccb580c0c233",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f5f24441-b38e-4dee-a643-002cf52134cc",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "99fd6955-a638-46c4-b342-f994272648b0",
              "parent_uuid": "f5f24441-b38e-4dee-a643-002cf52134cc",
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
              "uuid": "0d2bcee0-86b8-4cba-b888-df6c3b7cf290",
              "parent_uuid": "f5f24441-b38e-4dee-a643-002cf52134cc",
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
              "uuid": "018937fd-b9c4-412f-8459-c035d8032b1a",
              "parent_uuid": "f5f24441-b38e-4dee-a643-002cf52134cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "876dacd9-e5ce-4bcf-83a6-4b2245d81c06",
                  "parent_uuid": "018937fd-b9c4-412f-8459-c035d8032b1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8910d5c-5d0c-4f06-996b-7d4b644a7881",
              "parent_uuid": "f5f24441-b38e-4dee-a643-002cf52134cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2325f6d4-374c-4110-9b81-52f16085b14c",
                  "parent_uuid": "f8910d5c-5d0c-4f06-996b-7d4b644a7881",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9863c25-999c-4dae-b13f-d6122adf63b4",
              "parent_uuid": "f5f24441-b38e-4dee-a643-002cf52134cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20c49951-bc2e-49fc-b514-2351d7223f9c",
                  "parent_uuid": "b9863c25-999c-4dae-b13f-d6122adf63b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67ec6bd3-fec0-4dae-9687-57d78ee565fc",
              "parent_uuid": "f5f24441-b38e-4dee-a643-002cf52134cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72cb91e0-83b7-4eda-b2ec-477a156cc153",
                  "parent_uuid": "67ec6bd3-fec0-4dae-9687-57d78ee565fc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bf8060a9-5481-4589-837d-6ee4a6007e57",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27e57ee3-071b-4d21-a97c-60a7e3ebbfcb",
              "parent_uuid": "bf8060a9-5481-4589-837d-6ee4a6007e57",
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
          "uuid": "e7e46034-74dc-4cd9-9892-780838146981",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4017f2e-42d4-40ee-b636-030dae8352fc",
              "parent_uuid": "e7e46034-74dc-4cd9-9892-780838146981",
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
          "uuid": "5d9570c1-94ea-4c02-ba5c-02d90c2173a4",
          "parent_uuid": "4291c7b0-50cb-442e-845b-d0990770b8de",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38eebbe9-3c72-4b86-b2b5-11bb1b289cdd",
              "parent_uuid": "5d9570c1-94ea-4c02-ba5c-02d90c2173a4",
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
                  "uuid": "f8d90a0a-c3c8-4947-a3f1-c4fc89ea4f29",
                  "parent_uuid": "38eebbe9-3c72-4b86-b2b5-11bb1b289cdd",
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

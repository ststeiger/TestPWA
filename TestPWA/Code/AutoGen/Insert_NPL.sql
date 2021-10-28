
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
  "uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "7a1c80e8-cf9a-4b34-ac7a-36e3275ad6c0",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "4c761f63-d385-4729-b4b2-db5908446d82",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "9f0846e0-425d-4b8b-b362-4d191c5988fd",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "bab0374c-72b4-4e83-b888-50ee726f2b4a",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "dee5b62f-8345-47ae-ab8a-1d57939eb8a2",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "f02f010b-2cbc-4eb6-820a-c37f1228d36a",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "242f89dd-8490-4f44-a7d5-0c6aa17ead0a",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
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
      "uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
      "parent_uuid": "4c1fdeb4-3ad9-41f8-9495-b8b0b4d546d8",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "3247f9b3-107c-478c-831b-fe618f0c7cf8",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "5312b967-bc63-4681-b689-8f4b93dcd9f6",
              "parent_uuid": "3247f9b3-107c-478c-831b-fe618f0c7cf8",
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
              "uuid": "31d6e036-b0bb-4346-ab32-762a9749ebed",
              "parent_uuid": "3247f9b3-107c-478c-831b-fe618f0c7cf8",
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
              "uuid": "675b6bbf-5b17-4c22-9687-a7bcc1d34952",
              "parent_uuid": "3247f9b3-107c-478c-831b-fe618f0c7cf8",
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
              "uuid": "3ab316dc-f5fe-4c5e-a899-9158a0e34268",
              "parent_uuid": "3247f9b3-107c-478c-831b-fe618f0c7cf8",
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
          "uuid": "d507a796-b86e-4277-8034-7fb0a443bec2",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "7543355b-b196-44ab-9c6b-6e2f201452cc",
              "parent_uuid": "d507a796-b86e-4277-8034-7fb0a443bec2",
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
              "uuid": "c3678ebf-b5ed-45c2-b9f6-5ba0e373dc99",
              "parent_uuid": "d507a796-b86e-4277-8034-7fb0a443bec2",
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
              "uuid": "aa217618-771e-4075-9f2a-8c851ed063cf",
              "parent_uuid": "d507a796-b86e-4277-8034-7fb0a443bec2",
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
              "uuid": "8f882c3a-bf60-47ea-bfe4-a4eceb892d7d",
              "parent_uuid": "d507a796-b86e-4277-8034-7fb0a443bec2",
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
          "uuid": "0973fac5-4a26-435a-adf7-68b3acd194ff",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23ddea97-72e6-4786-bd1c-9616cd176b24",
              "parent_uuid": "0973fac5-4a26-435a-adf7-68b3acd194ff",
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
              "uuid": "d0b3cc39-5f30-4972-9b12-2a0b93c1a5a0",
              "parent_uuid": "0973fac5-4a26-435a-adf7-68b3acd194ff",
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
              "uuid": "b84d276e-0fbb-4168-863d-59846d8b4d09",
              "parent_uuid": "0973fac5-4a26-435a-adf7-68b3acd194ff",
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
              "uuid": "e297abbc-6bbd-4713-837c-0fe779eed193",
              "parent_uuid": "0973fac5-4a26-435a-adf7-68b3acd194ff",
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
              "uuid": "fbd7e44c-6a5a-4a12-bf21-e84f32a9f9da",
              "parent_uuid": "0973fac5-4a26-435a-adf7-68b3acd194ff",
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
              "uuid": "6e37404a-3e34-4d2c-a3b5-b11668a11651",
              "parent_uuid": "0973fac5-4a26-435a-adf7-68b3acd194ff",
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
          "uuid": "d9e89daa-fa93-4474-8ef0-fc91faef9701",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "90116bce-3012-420f-ad0e-ba6d46a16804",
              "parent_uuid": "d9e89daa-fa93-4474-8ef0-fc91faef9701",
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
          "uuid": "2cd6b1d6-5a76-4a2e-a135-3803c9866a02",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "da126ebe-9cb9-4bd8-8810-aa60ab041a2b",
              "parent_uuid": "2cd6b1d6-5a76-4a2e-a135-3803c9866a02",
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
              "uuid": "680dd084-b388-4b9e-9fb4-59cbd4e890d7",
              "parent_uuid": "2cd6b1d6-5a76-4a2e-a135-3803c9866a02",
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
              "uuid": "52f42016-1677-449d-b988-24cc609d0edb",
              "parent_uuid": "2cd6b1d6-5a76-4a2e-a135-3803c9866a02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6695961-876c-47fb-9e88-52a6fde91cb3",
                  "parent_uuid": "52f42016-1677-449d-b988-24cc609d0edb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65e16e20-7cdd-49fc-805a-8f8e23bd6f30",
              "parent_uuid": "2cd6b1d6-5a76-4a2e-a135-3803c9866a02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e71823ea-ef09-48c4-9cc6-f69d336d9be8",
                  "parent_uuid": "65e16e20-7cdd-49fc-805a-8f8e23bd6f30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7feff305-2959-4b39-bfc3-a9a083d0498d",
              "parent_uuid": "2cd6b1d6-5a76-4a2e-a135-3803c9866a02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b86a091b-96f5-4e92-b1c9-3ad2fe8aa23a",
                  "parent_uuid": "7feff305-2959-4b39-bfc3-a9a083d0498d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9ca19b9-585f-4c0e-8b8e-a68bc767dbad",
              "parent_uuid": "2cd6b1d6-5a76-4a2e-a135-3803c9866a02",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69763c94-418e-464c-8355-a2e48b8a39c2",
                  "parent_uuid": "c9ca19b9-585f-4c0e-8b8e-a68bc767dbad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "403c1422-0a77-4053-8c6b-c0e23aa9753d",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "73444ab4-1210-4cf9-8d71-8e3cf3c713e6",
              "parent_uuid": "403c1422-0a77-4053-8c6b-c0e23aa9753d",
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
              "uuid": "60360b7a-3aea-4e4f-92a0-4b3616920279",
              "parent_uuid": "403c1422-0a77-4053-8c6b-c0e23aa9753d",
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
              "uuid": "99260ea2-bd43-441e-823d-2e63d2ddbc5c",
              "parent_uuid": "403c1422-0a77-4053-8c6b-c0e23aa9753d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab0f15ae-c987-4a5f-a336-9016b1d6ee4f",
                  "parent_uuid": "99260ea2-bd43-441e-823d-2e63d2ddbc5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ec3b698-c59e-43dd-80d2-325ee7230161",
              "parent_uuid": "403c1422-0a77-4053-8c6b-c0e23aa9753d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22d30a55-53f1-475d-93d0-1b63d06ccd94",
                  "parent_uuid": "4ec3b698-c59e-43dd-80d2-325ee7230161",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04c31347-76f7-43ba-bafd-948bb78fe521",
              "parent_uuid": "403c1422-0a77-4053-8c6b-c0e23aa9753d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17007457-b621-4a1d-9315-a057b808134c",
                  "parent_uuid": "04c31347-76f7-43ba-bafd-948bb78fe521",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8f1d313-1e70-4f54-a489-473dd1e2ed2c",
              "parent_uuid": "403c1422-0a77-4053-8c6b-c0e23aa9753d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19df7a14-6935-40a5-afbe-282d93d33f78",
                  "parent_uuid": "f8f1d313-1e70-4f54-a489-473dd1e2ed2c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "01e44439-c22f-4fb9-aeba-bf49f64d249d",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5932af42-ea71-4a8b-94ca-03184b077b49",
              "parent_uuid": "01e44439-c22f-4fb9-aeba-bf49f64d249d",
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
              "uuid": "7a86729c-004d-4e13-af23-bb7e3bfad3cc",
              "parent_uuid": "01e44439-c22f-4fb9-aeba-bf49f64d249d",
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
              "uuid": "4c9791d8-9e03-410c-adef-20d42681163a",
              "parent_uuid": "01e44439-c22f-4fb9-aeba-bf49f64d249d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6c24bc5-e0f9-421b-9119-40fc317190d0",
                  "parent_uuid": "4c9791d8-9e03-410c-adef-20d42681163a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1fcc5f71-e6ff-48ad-ab84-8da87a58b773",
              "parent_uuid": "01e44439-c22f-4fb9-aeba-bf49f64d249d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b68dd905-4e77-418d-aeac-7e9598bfe715",
                  "parent_uuid": "1fcc5f71-e6ff-48ad-ab84-8da87a58b773",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ade431f1-43ee-40c4-aa50-eaaf9cbbc40e",
              "parent_uuid": "01e44439-c22f-4fb9-aeba-bf49f64d249d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b063cd66-a7ce-4287-b8e3-0f77d6664278",
                  "parent_uuid": "ade431f1-43ee-40c4-aa50-eaaf9cbbc40e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7e5c09a-7d54-4097-a407-b96cd2083cce",
              "parent_uuid": "01e44439-c22f-4fb9-aeba-bf49f64d249d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49251680-5eee-4cfa-88a8-f14f60aa2bf4",
                  "parent_uuid": "a7e5c09a-7d54-4097-a407-b96cd2083cce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fba45495-fd27-4402-86d9-d9b9892c4aa7",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "73653c8c-831a-49a5-8920-2d045cdf504f",
              "parent_uuid": "fba45495-fd27-4402-86d9-d9b9892c4aa7",
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
              "uuid": "b31c21e6-1806-43b3-a5ce-1c3e069d4c04",
              "parent_uuid": "fba45495-fd27-4402-86d9-d9b9892c4aa7",
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
              "uuid": "8099f3d0-140e-4146-90a7-eb2c7aec2136",
              "parent_uuid": "fba45495-fd27-4402-86d9-d9b9892c4aa7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3b0b2ff-3cbd-44b8-b1fe-9cf8e60e5117",
                  "parent_uuid": "8099f3d0-140e-4146-90a7-eb2c7aec2136",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "345c7f4b-5a45-4203-8650-ab544a01ee53",
              "parent_uuid": "fba45495-fd27-4402-86d9-d9b9892c4aa7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd109a4c-80d7-465f-82db-a4e299b6a2b6",
                  "parent_uuid": "345c7f4b-5a45-4203-8650-ab544a01ee53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "feb95cdd-b8da-49b1-89bd-6087877d3d5c",
              "parent_uuid": "fba45495-fd27-4402-86d9-d9b9892c4aa7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34dbb257-a313-43c3-97e2-633d8a88c297",
                  "parent_uuid": "feb95cdd-b8da-49b1-89bd-6087877d3d5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3290bf08-ebcd-46aa-ab60-ede1b6842f04",
              "parent_uuid": "fba45495-fd27-4402-86d9-d9b9892c4aa7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b69cd111-63ed-47f3-a2de-a48f13c208e2",
                  "parent_uuid": "3290bf08-ebcd-46aa-ab60-ede1b6842f04",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "822c08c7-d5ce-4f1b-a72e-579a135d0704",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "730746f4-df84-4651-a248-bf252d497f3d",
              "parent_uuid": "822c08c7-d5ce-4f1b-a72e-579a135d0704",
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
              "uuid": "4d49c251-06dd-4e5d-9ab0-27a3bc1dc26a",
              "parent_uuid": "822c08c7-d5ce-4f1b-a72e-579a135d0704",
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
              "uuid": "01a5fad5-7e03-429d-b9dc-847331e9f7d9",
              "parent_uuid": "822c08c7-d5ce-4f1b-a72e-579a135d0704",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2936103f-cea6-4675-8f85-e46a598f0038",
                  "parent_uuid": "01a5fad5-7e03-429d-b9dc-847331e9f7d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26d2460e-89b3-40e6-a989-3f23831e6067",
              "parent_uuid": "822c08c7-d5ce-4f1b-a72e-579a135d0704",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eece82a1-3c16-4ae6-8798-cf4f958b618a",
                  "parent_uuid": "26d2460e-89b3-40e6-a989-3f23831e6067",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6779ca30-1b42-4182-9d2d-38fdbede571c",
              "parent_uuid": "822c08c7-d5ce-4f1b-a72e-579a135d0704",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f40438c6-74b8-4b23-8d5d-46f7dcbda1f0",
                  "parent_uuid": "6779ca30-1b42-4182-9d2d-38fdbede571c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88490463-b9f9-40e9-8fea-6530efbd1c91",
              "parent_uuid": "822c08c7-d5ce-4f1b-a72e-579a135d0704",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3fa7701b-a020-4015-9d69-ce1d3460c9ea",
                  "parent_uuid": "88490463-b9f9-40e9-8fea-6530efbd1c91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7d39bdf-44c4-4cad-a6a6-e4819cd7acc0",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a7013547-8e52-4717-ab85-f14daccc5d4c",
              "parent_uuid": "a7d39bdf-44c4-4cad-a6a6-e4819cd7acc0",
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
              "uuid": "77d2c36c-c662-43cf-9875-c808cfd6568d",
              "parent_uuid": "a7d39bdf-44c4-4cad-a6a6-e4819cd7acc0",
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
              "uuid": "5af2e30e-b427-4b37-8a6c-3013665e79e0",
              "parent_uuid": "a7d39bdf-44c4-4cad-a6a6-e4819cd7acc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5755f5b4-9f39-47e9-aeeb-8c369039a8fd",
                  "parent_uuid": "5af2e30e-b427-4b37-8a6c-3013665e79e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9864e03-be14-4cca-8196-73dc2e558791",
              "parent_uuid": "a7d39bdf-44c4-4cad-a6a6-e4819cd7acc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb4a3f1c-c072-451d-bb76-b6b787e24dde",
                  "parent_uuid": "f9864e03-be14-4cca-8196-73dc2e558791",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7b4bf96-803b-4ba1-8c9f-dcfc3e0be111",
              "parent_uuid": "a7d39bdf-44c4-4cad-a6a6-e4819cd7acc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9447be44-7d05-4957-a39f-53476a7d5db4",
                  "parent_uuid": "b7b4bf96-803b-4ba1-8c9f-dcfc3e0be111",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf6a5adf-5658-4ee9-a98d-97b8d3945f71",
              "parent_uuid": "a7d39bdf-44c4-4cad-a6a6-e4819cd7acc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fb88b68-56d3-4e2d-88db-35ec191de608",
                  "parent_uuid": "cf6a5adf-5658-4ee9-a98d-97b8d3945f71",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6028b996-093f-4588-ac59-d72c0a016e2f",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "77d5abd8-038e-43db-8c82-0caf45266fac",
              "parent_uuid": "6028b996-093f-4588-ac59-d72c0a016e2f",
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
              "uuid": "6d541e0e-ae3f-4c64-a29f-ec27177509e5",
              "parent_uuid": "6028b996-093f-4588-ac59-d72c0a016e2f",
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
              "uuid": "87a6a65d-ed55-4764-bdcc-3a82c5a22038",
              "parent_uuid": "6028b996-093f-4588-ac59-d72c0a016e2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da169cf7-28cd-414e-9061-ec6377078e59",
                  "parent_uuid": "87a6a65d-ed55-4764-bdcc-3a82c5a22038",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd295825-6e48-479b-aba8-dd33400e404f",
              "parent_uuid": "6028b996-093f-4588-ac59-d72c0a016e2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "764cb824-0ff3-4188-a27b-b1d70af0d837",
                  "parent_uuid": "bd295825-6e48-479b-aba8-dd33400e404f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e602952e-8098-4e3a-9685-25f6eb3a2536",
              "parent_uuid": "6028b996-093f-4588-ac59-d72c0a016e2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "094f864f-8fba-4ef0-8195-a97741c5dfe5",
                  "parent_uuid": "e602952e-8098-4e3a-9685-25f6eb3a2536",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a8468e2-d095-4b53-b1e9-906d05dd9d3b",
              "parent_uuid": "6028b996-093f-4588-ac59-d72c0a016e2f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59c7442f-1fee-4704-beb9-6b285d790955",
                  "parent_uuid": "7a8468e2-d095-4b53-b1e9-906d05dd9d3b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cf26ba22-b7d8-41c8-93cd-e1555a893c13",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0da7a846-faa5-44ca-b35a-a5958245841c",
              "parent_uuid": "cf26ba22-b7d8-41c8-93cd-e1555a893c13",
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
              "uuid": "4e380344-ad41-4ba3-abc0-8ef573e99afa",
              "parent_uuid": "cf26ba22-b7d8-41c8-93cd-e1555a893c13",
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
              "uuid": "b034d99c-3a9a-4a26-a95a-fdb3b9b98ba3",
              "parent_uuid": "cf26ba22-b7d8-41c8-93cd-e1555a893c13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d90e118-41e2-4815-b642-41719b54502c",
                  "parent_uuid": "b034d99c-3a9a-4a26-a95a-fdb3b9b98ba3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b70b52f0-faa2-44ce-9872-45811024692d",
              "parent_uuid": "cf26ba22-b7d8-41c8-93cd-e1555a893c13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28e50d66-3654-460a-afc9-9b9b5cd6fc75",
                  "parent_uuid": "b70b52f0-faa2-44ce-9872-45811024692d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bb386fe-2189-4c07-8792-ba77877acc51",
              "parent_uuid": "cf26ba22-b7d8-41c8-93cd-e1555a893c13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69ee3c95-f46d-42ab-8ed8-866e3f45ad76",
                  "parent_uuid": "2bb386fe-2189-4c07-8792-ba77877acc51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1451d162-e378-4e3c-bd97-6a17fde40673",
              "parent_uuid": "cf26ba22-b7d8-41c8-93cd-e1555a893c13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf7781a5-e67e-42fa-9193-906e1f806eda",
                  "parent_uuid": "1451d162-e378-4e3c-bd97-6a17fde40673",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ee6b7fe3-de49-423a-b223-181f883844bf",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c86d63e-649e-4d16-ba95-158a7ebd0943",
              "parent_uuid": "ee6b7fe3-de49-423a-b223-181f883844bf",
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
              "uuid": "ee5c808f-0477-434c-879c-5e86f144561e",
              "parent_uuid": "ee6b7fe3-de49-423a-b223-181f883844bf",
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
              "uuid": "7cbcb66f-d322-407c-be24-d41706d882e3",
              "parent_uuid": "ee6b7fe3-de49-423a-b223-181f883844bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98976afe-8101-427e-883a-ca892887c67a",
                  "parent_uuid": "7cbcb66f-d322-407c-be24-d41706d882e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2fbd616-757b-49f1-aba2-6a028fb90a41",
              "parent_uuid": "ee6b7fe3-de49-423a-b223-181f883844bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e9a0f26-43d7-49ee-ad4a-c63e6cd5e007",
                  "parent_uuid": "a2fbd616-757b-49f1-aba2-6a028fb90a41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18a5915b-5ef1-413c-b901-f2171d37e3be",
              "parent_uuid": "ee6b7fe3-de49-423a-b223-181f883844bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5af9332b-a2b1-4d43-a913-802c384b7875",
                  "parent_uuid": "18a5915b-5ef1-413c-b901-f2171d37e3be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c6ae7d8-0aa3-4d8b-9f28-8d7c578ab92b",
              "parent_uuid": "ee6b7fe3-de49-423a-b223-181f883844bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0352af6-3347-4237-98d9-e6e71372dd2a",
                  "parent_uuid": "1c6ae7d8-0aa3-4d8b-9f28-8d7c578ab92b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "34619083-831e-4db9-a489-081f69758003",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7475b014-6570-4181-889e-61e8aabb86ed",
              "parent_uuid": "34619083-831e-4db9-a489-081f69758003",
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
              "uuid": "ff1c0d02-b1d3-4b1a-bfd3-95d8b555be16",
              "parent_uuid": "34619083-831e-4db9-a489-081f69758003",
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
              "uuid": "ed18f4cb-8358-4ed0-a647-521e79e87b2a",
              "parent_uuid": "34619083-831e-4db9-a489-081f69758003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "958de10e-a851-48f6-a342-42e7e4a60343",
                  "parent_uuid": "ed18f4cb-8358-4ed0-a647-521e79e87b2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23a8e10a-f6b1-4973-a8fc-321d502c388f",
              "parent_uuid": "34619083-831e-4db9-a489-081f69758003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9986bd01-2463-4c90-9f36-b3dddecefa94",
                  "parent_uuid": "23a8e10a-f6b1-4973-a8fc-321d502c388f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3586c3fa-f28b-4159-b186-da3d77dd0b8d",
              "parent_uuid": "34619083-831e-4db9-a489-081f69758003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32ffcd45-03bd-467c-91e4-83596f8c1175",
                  "parent_uuid": "3586c3fa-f28b-4159-b186-da3d77dd0b8d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa682ab3-a0af-416d-a881-23775b24b78a",
              "parent_uuid": "34619083-831e-4db9-a489-081f69758003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85f9b0b4-1f31-43cb-a460-5fc32de8d352",
                  "parent_uuid": "fa682ab3-a0af-416d-a881-23775b24b78a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84b8c0a2-24fa-4114-9b8b-71d058bad4f5",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9db03080-f7c2-4163-a26f-436ec131cf97",
              "parent_uuid": "84b8c0a2-24fa-4114-9b8b-71d058bad4f5",
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
              "uuid": "28d1dc8a-11b3-46bb-9661-e39540c67c25",
              "parent_uuid": "84b8c0a2-24fa-4114-9b8b-71d058bad4f5",
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
              "uuid": "9fd51ad8-7757-44e6-84fe-07fe772194ee",
              "parent_uuid": "84b8c0a2-24fa-4114-9b8b-71d058bad4f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "718a50ee-8984-4591-ab51-5ebbfcb21c07",
                  "parent_uuid": "9fd51ad8-7757-44e6-84fe-07fe772194ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b010f7d7-293f-4dc3-bae6-a3c054677404",
              "parent_uuid": "84b8c0a2-24fa-4114-9b8b-71d058bad4f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af777b66-5029-41f5-9192-dec0368ad20a",
                  "parent_uuid": "b010f7d7-293f-4dc3-bae6-a3c054677404",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c2b7ee2-aa81-4d60-9ee5-cb1c7ab58f55",
              "parent_uuid": "84b8c0a2-24fa-4114-9b8b-71d058bad4f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfe0b284-fc7a-4a39-ae21-5432f96721fc",
                  "parent_uuid": "8c2b7ee2-aa81-4d60-9ee5-cb1c7ab58f55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11008de6-6be3-4ac4-b62e-377608ed95e5",
              "parent_uuid": "84b8c0a2-24fa-4114-9b8b-71d058bad4f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "700a0d41-c6cd-46b9-9361-547b44a23227",
                  "parent_uuid": "11008de6-6be3-4ac4-b62e-377608ed95e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2b4f536c-2a88-4b89-adcc-3f393fd5b5c2",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88dfa36a-3d38-4a1b-a48c-97c16064f258",
              "parent_uuid": "2b4f536c-2a88-4b89-adcc-3f393fd5b5c2",
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
              "uuid": "101965f3-dbdd-4f5b-8d06-7bc31e0119dd",
              "parent_uuid": "2b4f536c-2a88-4b89-adcc-3f393fd5b5c2",
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
              "uuid": "b2d84146-dd29-4dfc-87d0-92a2d31015c4",
              "parent_uuid": "2b4f536c-2a88-4b89-adcc-3f393fd5b5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "578be4d6-846b-429d-b58c-a6452517eee1",
                  "parent_uuid": "b2d84146-dd29-4dfc-87d0-92a2d31015c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef569b8a-261e-4b42-99d5-61968db11568",
              "parent_uuid": "2b4f536c-2a88-4b89-adcc-3f393fd5b5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6537210a-fe2b-4463-84ec-d27afec1169c",
                  "parent_uuid": "ef569b8a-261e-4b42-99d5-61968db11568",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "68cb2cc8-e0e3-455c-991c-f0368e0c16f9",
              "parent_uuid": "2b4f536c-2a88-4b89-adcc-3f393fd5b5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c5e58c5-2db1-453e-aa97-d79ad170a796",
                  "parent_uuid": "68cb2cc8-e0e3-455c-991c-f0368e0c16f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c36a8da-68bf-45bc-8783-f1a62e48261f",
              "parent_uuid": "2b4f536c-2a88-4b89-adcc-3f393fd5b5c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea9639c7-c175-4219-b792-c6be4739f657",
                  "parent_uuid": "0c36a8da-68bf-45bc-8783-f1a62e48261f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7878d440-8767-42b7-9bd1-09f5e64ed2d1",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e63a6821-2bc5-4cff-9a07-e6dfdac90eef",
              "parent_uuid": "7878d440-8767-42b7-9bd1-09f5e64ed2d1",
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
              "uuid": "78caac76-6131-4379-8aa9-aac1be4df04b",
              "parent_uuid": "7878d440-8767-42b7-9bd1-09f5e64ed2d1",
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
              "uuid": "821dee79-7cd1-43cf-88b5-6b27c15de97f",
              "parent_uuid": "7878d440-8767-42b7-9bd1-09f5e64ed2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4fb5772-48d0-46e2-a5d2-0d9586b8e02f",
                  "parent_uuid": "821dee79-7cd1-43cf-88b5-6b27c15de97f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "280a0daa-5573-42c9-a85b-95a11e40491d",
              "parent_uuid": "7878d440-8767-42b7-9bd1-09f5e64ed2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e66c13dd-8ec9-4466-8163-0218ad51767b",
                  "parent_uuid": "280a0daa-5573-42c9-a85b-95a11e40491d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8be70ca8-257a-4aae-bed0-a549da3eaf54",
              "parent_uuid": "7878d440-8767-42b7-9bd1-09f5e64ed2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb3e8f9f-c974-4bb6-909f-43f6fe633224",
                  "parent_uuid": "8be70ca8-257a-4aae-bed0-a549da3eaf54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7014b7df-78fb-4266-a2c0-afe4bd81f22b",
              "parent_uuid": "7878d440-8767-42b7-9bd1-09f5e64ed2d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e1d2346-4ffe-4e45-9451-1617db9d0a66",
                  "parent_uuid": "7014b7df-78fb-4266-a2c0-afe4bd81f22b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a3e0b3d8-e709-4945-ad43-20b3c9e300a3",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32700ad2-d9fe-44d1-9b3a-50decb3e8dd9",
              "parent_uuid": "a3e0b3d8-e709-4945-ad43-20b3c9e300a3",
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
              "uuid": "ef5eadae-88ec-4d86-b0d1-a54d4e609a45",
              "parent_uuid": "a3e0b3d8-e709-4945-ad43-20b3c9e300a3",
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
              "uuid": "137b430e-306b-4e9f-8efd-aaea54522c85",
              "parent_uuid": "a3e0b3d8-e709-4945-ad43-20b3c9e300a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "307f0249-2379-4682-9542-ae8029cd2f76",
                  "parent_uuid": "137b430e-306b-4e9f-8efd-aaea54522c85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57e3396c-cfb0-4d31-9b52-654d081a9de2",
              "parent_uuid": "a3e0b3d8-e709-4945-ad43-20b3c9e300a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7246cd99-fa7c-411b-af15-08658a339ca7",
                  "parent_uuid": "57e3396c-cfb0-4d31-9b52-654d081a9de2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7922079-bd44-49ae-8d75-a2ccff75ab1e",
              "parent_uuid": "a3e0b3d8-e709-4945-ad43-20b3c9e300a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b713a81-0a2a-4ba2-b765-d469f596d185",
                  "parent_uuid": "d7922079-bd44-49ae-8d75-a2ccff75ab1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef5303fa-2a54-4ca1-9eea-7c372b694bd9",
              "parent_uuid": "a3e0b3d8-e709-4945-ad43-20b3c9e300a3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0e71f61-5ae6-4626-8590-87161468d28a",
                  "parent_uuid": "ef5303fa-2a54-4ca1-9eea-7c372b694bd9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "daacc0cb-be5a-4d05-b51d-5e9f1f0b6d06",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "041bde11-eb9b-4e42-b065-9e71c3aaae03",
              "parent_uuid": "daacc0cb-be5a-4d05-b51d-5e9f1f0b6d06",
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
          "uuid": "b5b70829-1be1-4d8e-9793-b60a0d981c03",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84e02643-34f1-4ec5-a04b-ccc28102dc12",
              "parent_uuid": "b5b70829-1be1-4d8e-9793-b60a0d981c03",
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
          "uuid": "79f3d935-8032-4b4a-bd40-7c6c32284a87",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8894ab1d-c253-4939-adac-ddada4ea756c",
              "parent_uuid": "79f3d935-8032-4b4a-bd40-7c6c32284a87",
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
                  "uuid": "4d4768fa-a430-41f7-a9ba-008805899b84",
                  "parent_uuid": "8894ab1d-c253-4939-adac-ddada4ea756c",
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
          "uuid": "78fb6877-cda5-4e47-abb7-f8ea28a753d4",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "274bc54e-a738-49f4-9835-928332437882",
              "parent_uuid": "78fb6877-cda5-4e47-abb7-f8ea28a753d4",
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
          "uuid": "a291e972-de81-484a-b115-2482b6ea80f3",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "89630960-76b3-4caf-95b6-6f5df94df9f6",
              "parent_uuid": "a291e972-de81-484a-b115-2482b6ea80f3",
              "tagName": "td",
              "properties": [
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
          "uuid": "db0ee354-73ff-4e5c-bd85-d68ec9678ce4",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5bda9766-e7bd-417d-aac9-e8f6d158f5bc",
              "parent_uuid": "db0ee354-73ff-4e5c-bd85-d68ec9678ce4",
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
              "uuid": "58c1b119-5b14-47c4-b1e0-90ead0a0f45d",
              "parent_uuid": "db0ee354-73ff-4e5c-bd85-d68ec9678ce4",
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
              "uuid": "b4c60bc8-041c-4e46-ab53-e678f0c554fd",
              "parent_uuid": "db0ee354-73ff-4e5c-bd85-d68ec9678ce4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7660c0c9-f509-4a1a-ac6b-6d6783ff1a2b",
                  "parent_uuid": "b4c60bc8-041c-4e46-ab53-e678f0c554fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97a64d2e-ee40-4d56-9193-1b350932a180",
              "parent_uuid": "db0ee354-73ff-4e5c-bd85-d68ec9678ce4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61a76a39-93a1-4787-afb1-cbf13e3ef839",
                  "parent_uuid": "97a64d2e-ee40-4d56-9193-1b350932a180",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "668c68ae-5605-4cbe-b2b7-53c71163a481",
              "parent_uuid": "db0ee354-73ff-4e5c-bd85-d68ec9678ce4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "260b5fe8-4ca6-4ceb-a6e8-33b91d73d226",
                  "parent_uuid": "668c68ae-5605-4cbe-b2b7-53c71163a481",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "404de5d1-6669-496d-b68b-05dbaabbc532",
              "parent_uuid": "db0ee354-73ff-4e5c-bd85-d68ec9678ce4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b46b1ffe-3a09-4285-bd2e-11f3c8945c1b",
                  "parent_uuid": "404de5d1-6669-496d-b68b-05dbaabbc532",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c34e1bb2-7874-4436-a365-11d5086805d9",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12603c08-d31f-4701-8b8c-4674456384dc",
              "parent_uuid": "c34e1bb2-7874-4436-a365-11d5086805d9",
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
              "uuid": "862d12c5-e14a-4b20-ad1d-853ae5057c0a",
              "parent_uuid": "c34e1bb2-7874-4436-a365-11d5086805d9",
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
              "uuid": "00eb13f4-5abe-40e8-97ac-1f103210625c",
              "parent_uuid": "c34e1bb2-7874-4436-a365-11d5086805d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d96395d2-7da6-48be-b2d5-bf00fcc4dca4",
                  "parent_uuid": "00eb13f4-5abe-40e8-97ac-1f103210625c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28241495-029e-48bb-a4f8-dc0af0fd0d7f",
              "parent_uuid": "c34e1bb2-7874-4436-a365-11d5086805d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b906b749-1ee7-4b1d-b107-37edde9b82d1",
                  "parent_uuid": "28241495-029e-48bb-a4f8-dc0af0fd0d7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ed2800d-5372-49f4-b644-ac9178e690c1",
              "parent_uuid": "c34e1bb2-7874-4436-a365-11d5086805d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50d873f0-ddb7-470c-95dc-308b503529fe",
                  "parent_uuid": "3ed2800d-5372-49f4-b644-ac9178e690c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d02650c0-bfd9-49af-9cce-ebcfef6f89c5",
              "parent_uuid": "c34e1bb2-7874-4436-a365-11d5086805d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46ef018f-7e39-4790-8079-9b38ae1b521d",
                  "parent_uuid": "d02650c0-bfd9-49af-9cce-ebcfef6f89c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3eb0c5c-bc96-40ec-936e-b4bac3996963",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d40943d-15e3-4e5f-986e-3475bf39d8f5",
              "parent_uuid": "b3eb0c5c-bc96-40ec-936e-b4bac3996963",
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
              "uuid": "5d11a0bf-5ef3-4de4-8df9-bc1be44cd247",
              "parent_uuid": "b3eb0c5c-bc96-40ec-936e-b4bac3996963",
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
              "uuid": "68d7ee87-0b1c-43af-afd0-15d15d1d207f",
              "parent_uuid": "b3eb0c5c-bc96-40ec-936e-b4bac3996963",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b09bbb4-04ad-4c10-a9b0-d439dbf6d14f",
                  "parent_uuid": "68d7ee87-0b1c-43af-afd0-15d15d1d207f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f79e8998-20e1-4138-8e0c-3b71ce482f36",
              "parent_uuid": "b3eb0c5c-bc96-40ec-936e-b4bac3996963",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5416fd2f-bb9c-4692-b6fe-fea5699a9634",
                  "parent_uuid": "f79e8998-20e1-4138-8e0c-3b71ce482f36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f8ad86a-6909-4f13-9ca8-ed866171c49c",
              "parent_uuid": "b3eb0c5c-bc96-40ec-936e-b4bac3996963",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8267aa0e-7498-4fa7-94d1-376db5bce813",
                  "parent_uuid": "5f8ad86a-6909-4f13-9ca8-ed866171c49c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8993ebe1-0ba7-4e7b-adfa-15a8487bc326",
              "parent_uuid": "b3eb0c5c-bc96-40ec-936e-b4bac3996963",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f39a44d8-cff3-4620-a0ce-86a842de5f51",
                  "parent_uuid": "8993ebe1-0ba7-4e7b-adfa-15a8487bc326",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38059a34-2af0-4de8-bd58-980794bde150",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2930a6a4-5085-4ff8-a335-acc7cd05cd16",
              "parent_uuid": "38059a34-2af0-4de8-bd58-980794bde150",
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
              "uuid": "8b6abc39-3aa7-463c-b536-64ddc53b6396",
              "parent_uuid": "38059a34-2af0-4de8-bd58-980794bde150",
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
              "uuid": "17f09338-daad-4fd4-a883-66fc24b6b673",
              "parent_uuid": "38059a34-2af0-4de8-bd58-980794bde150",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d62f2b1a-46eb-4878-8902-32edbad080d7",
                  "parent_uuid": "17f09338-daad-4fd4-a883-66fc24b6b673",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44d33f04-d5d6-49b6-ac2f-8eeb1b55182d",
              "parent_uuid": "38059a34-2af0-4de8-bd58-980794bde150",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bd6e0d8-bf47-4cd4-98e8-23c91d78db18",
                  "parent_uuid": "44d33f04-d5d6-49b6-ac2f-8eeb1b55182d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94bdbe38-547a-4f40-8791-91a8932e9b7a",
              "parent_uuid": "38059a34-2af0-4de8-bd58-980794bde150",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "767b3f8e-407f-4fed-bf29-2f0b79f951df",
                  "parent_uuid": "94bdbe38-547a-4f40-8791-91a8932e9b7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c519d9b9-13eb-45f8-86f8-7f213db3652e",
              "parent_uuid": "38059a34-2af0-4de8-bd58-980794bde150",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "069f0d35-2911-4dad-ae02-d6c56761923a",
                  "parent_uuid": "c519d9b9-13eb-45f8-86f8-7f213db3652e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a5bbf773-5aa6-4bc5-a210-c1d0c8757748",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "654c7da7-d534-4095-8566-1a23a50f1e7c",
              "parent_uuid": "a5bbf773-5aa6-4bc5-a210-c1d0c8757748",
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
          "uuid": "a273cce6-0759-4a3d-aec7-baef0db25085",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d844aea2-0cda-4bd9-96b9-82d3747ed584",
              "parent_uuid": "a273cce6-0759-4a3d-aec7-baef0db25085",
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
              "uuid": "52eb4efb-e70f-40f0-89f5-02cd68eb3f40",
              "parent_uuid": "a273cce6-0759-4a3d-aec7-baef0db25085",
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
              "uuid": "df73cab7-be81-474a-a46a-7ed2b7eba799",
              "parent_uuid": "a273cce6-0759-4a3d-aec7-baef0db25085",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10662baf-ede9-4397-af20-d4fe1ae16bd1",
                  "parent_uuid": "df73cab7-be81-474a-a46a-7ed2b7eba799",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06d4bf52-878f-4530-a648-d035a0436084",
              "parent_uuid": "a273cce6-0759-4a3d-aec7-baef0db25085",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3934b0e6-82fe-4ef0-ab3d-877c62869b6b",
                  "parent_uuid": "06d4bf52-878f-4530-a648-d035a0436084",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34cff3b2-8948-486a-ac8f-51979ad1680d",
              "parent_uuid": "a273cce6-0759-4a3d-aec7-baef0db25085",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f29e324-752c-4aed-a1d0-cf570c5cf5c8",
                  "parent_uuid": "34cff3b2-8948-486a-ac8f-51979ad1680d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "654fbf68-e2a7-45e2-be69-0777876cc134",
              "parent_uuid": "a273cce6-0759-4a3d-aec7-baef0db25085",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e5cc16d-1c0a-496e-b99d-67e6590999bf",
                  "parent_uuid": "654fbf68-e2a7-45e2-be69-0777876cc134",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "132e0508-34e3-4188-b60e-14e3363c4c37",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2276686a-953a-4b6c-b053-9785b8a52a81",
              "parent_uuid": "132e0508-34e3-4188-b60e-14e3363c4c37",
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
              "uuid": "ec92f42d-ca7c-474a-a8dd-300b5afb7e1a",
              "parent_uuid": "132e0508-34e3-4188-b60e-14e3363c4c37",
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
              "uuid": "d84dac97-0284-4ade-96ae-a2925a67cc99",
              "parent_uuid": "132e0508-34e3-4188-b60e-14e3363c4c37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5505c751-370d-4a03-ba4f-bea9278c336f",
                  "parent_uuid": "d84dac97-0284-4ade-96ae-a2925a67cc99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b168d2f-119c-48ef-8634-c06fc751fe27",
              "parent_uuid": "132e0508-34e3-4188-b60e-14e3363c4c37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1289b80a-ab71-45fd-a6f0-dae1224b8f22",
                  "parent_uuid": "6b168d2f-119c-48ef-8634-c06fc751fe27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d2935b7-9bb1-4213-8978-702de28e802d",
              "parent_uuid": "132e0508-34e3-4188-b60e-14e3363c4c37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49db1aaf-c35d-4a4a-967f-9d97e6f97c9a",
                  "parent_uuid": "6d2935b7-9bb1-4213-8978-702de28e802d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b72a1f6-2a95-40db-a1e5-58332f645f07",
              "parent_uuid": "132e0508-34e3-4188-b60e-14e3363c4c37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71b8bd29-67bb-4cf0-b1f3-d655ba34cf7a",
                  "parent_uuid": "9b72a1f6-2a95-40db-a1e5-58332f645f07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a6526a31-8aaa-4721-a1c8-bd6853fb173e",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b9c03b7-a896-4636-bd95-71553b93f99b",
              "parent_uuid": "a6526a31-8aaa-4721-a1c8-bd6853fb173e",
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
              "uuid": "3e31ebe4-1ea0-484f-bbcc-eec77ba03f67",
              "parent_uuid": "a6526a31-8aaa-4721-a1c8-bd6853fb173e",
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
              "uuid": "2056038e-5b21-4dbc-8c48-94aa8395ee8f",
              "parent_uuid": "a6526a31-8aaa-4721-a1c8-bd6853fb173e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec984717-2791-40a6-9562-f125e599d732",
                  "parent_uuid": "2056038e-5b21-4dbc-8c48-94aa8395ee8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e43af16f-d282-4939-8da6-6bd22e0d9dae",
              "parent_uuid": "a6526a31-8aaa-4721-a1c8-bd6853fb173e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3963b94f-26fe-4173-9a8c-5dea9c1a71e0",
                  "parent_uuid": "e43af16f-d282-4939-8da6-6bd22e0d9dae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27d62f5d-ba4b-42ae-9a3d-f91e9e5ab4be",
              "parent_uuid": "a6526a31-8aaa-4721-a1c8-bd6853fb173e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e67078b-09e4-4be7-9fab-54bd96be6366",
                  "parent_uuid": "27d62f5d-ba4b-42ae-9a3d-f91e9e5ab4be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1604e1f-7c28-4ef8-91d9-14de94598dc7",
              "parent_uuid": "a6526a31-8aaa-4721-a1c8-bd6853fb173e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e00b73f1-e182-4354-a71e-fea33118e9dd",
                  "parent_uuid": "d1604e1f-7c28-4ef8-91d9-14de94598dc7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e9b35ba0-d881-4103-8dbf-918ce5d75258",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c499853-42b5-42b7-af04-4f0bb084832d",
              "parent_uuid": "e9b35ba0-d881-4103-8dbf-918ce5d75258",
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
              "uuid": "3a226de6-763e-4357-b590-e20f41651856",
              "parent_uuid": "e9b35ba0-d881-4103-8dbf-918ce5d75258",
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
              "uuid": "93ab0e4e-bec7-43e1-a84a-13db97c199fd",
              "parent_uuid": "e9b35ba0-d881-4103-8dbf-918ce5d75258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb2c90df-a59b-4239-9915-e41cffc716a8",
                  "parent_uuid": "93ab0e4e-bec7-43e1-a84a-13db97c199fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d19117a0-15c3-4e69-80cb-968d3a4d2369",
              "parent_uuid": "e9b35ba0-d881-4103-8dbf-918ce5d75258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "494fd809-2ae1-4f24-8f4b-7729bdfe4db1",
                  "parent_uuid": "d19117a0-15c3-4e69-80cb-968d3a4d2369",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f42ef72b-e217-4a6b-a474-8980b5ad0023",
              "parent_uuid": "e9b35ba0-d881-4103-8dbf-918ce5d75258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b60b1d3b-e2ec-4967-be68-e52b0e088b7e",
                  "parent_uuid": "f42ef72b-e217-4a6b-a474-8980b5ad0023",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5bbedbf-23c0-4085-8817-ad26d02c3136",
              "parent_uuid": "e9b35ba0-d881-4103-8dbf-918ce5d75258",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d1eadba-140e-4ee2-8581-eaacc3173d8c",
                  "parent_uuid": "c5bbedbf-23c0-4085-8817-ad26d02c3136",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "92d2dbce-b38e-4add-9733-977d8e01c4ab",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d80f78b-b52e-417a-9127-94b876e25744",
              "parent_uuid": "92d2dbce-b38e-4add-9733-977d8e01c4ab",
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
          "uuid": "3cd8534f-016f-4a48-a3fb-752a0f2cd00e",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28af8e5d-8dd2-4c3a-8c48-0f94cbc4443c",
              "parent_uuid": "3cd8534f-016f-4a48-a3fb-752a0f2cd00e",
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
          "uuid": "04a783b3-aaa7-4533-850e-a5bdbc1d736f",
          "parent_uuid": "3ad5f039-6674-4dd3-8205-fe275ef216fa",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e03abaa-2575-4f62-84be-7be0029fd182",
              "parent_uuid": "04a783b3-aaa7-4533-850e-a5bdbc1d736f",
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
                  "uuid": "88595622-5165-409e-81ab-b101d15fb230",
                  "parent_uuid": "3e03abaa-2575-4f62-84be-7be0029fd182",
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

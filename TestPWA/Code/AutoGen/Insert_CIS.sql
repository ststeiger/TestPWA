
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
  "uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
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
      "uuid": "7335abde-f76c-4470-aaf3-168e1002ca7d",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
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
      "uuid": "f5278f5b-aab3-4b9b-b459-b5d9d1ddcbb7",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
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
      "uuid": "e0317041-5dec-46fe-b5bf-ca968c6523f5",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
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
      "uuid": "2b829508-f817-4bfb-86ac-6e0a331bb509",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "69"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "46b0a0d0-fdd4-489d-a198-dbcc0d6647e8",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "fa5a7ef3-1377-4670-bc63-4521903780a9",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
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
      "uuid": "44eb586f-222e-4d6e-9555-144c8df71e55",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
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
      "uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
      "parent_uuid": "1482b560-cb62-4027-be5d-43c7e99899cc",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "f91bae6b-7480-4bde-96a8-552bb431f124",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "97e8d176-2481-4c95-9afd-ce5e1a6c3f42",
              "parent_uuid": "f91bae6b-7480-4bde-96a8-552bb431f124",
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "208329a7-8297-4c2e-9b58-a4e0d41757ab",
              "parent_uuid": "f91bae6b-7480-4bde-96a8-552bb431f124",
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
              "uuid": "9382dabf-11cc-4899-b758-9d4a99fe1aa8",
              "parent_uuid": "f91bae6b-7480-4bde-96a8-552bb431f124",
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
              "uuid": "7f0c873f-6986-4c5f-a1e2-56e0dc78f98b",
              "parent_uuid": "f91bae6b-7480-4bde-96a8-552bb431f124",
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
              "innerHtml": "<span>Bargeldgewerk: Münzinspektions- und Sortieranlage</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "ebcedd87-5bc8-4145-a9df-8bd903d9bafb",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "cd20c8a0-bee9-47a6-b13e-86f872595c2d",
              "parent_uuid": "ebcedd87-5bc8-4145-a9df-8bd903d9bafb",
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
              "uuid": "73c4a5d7-ba2b-4e1a-8828-9f83a2956900",
              "parent_uuid": "ebcedd87-5bc8-4145-a9df-8bd903d9bafb",
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
              "uuid": "1525cedb-a5c1-4014-85ed-15b880891a34",
              "parent_uuid": "ebcedd87-5bc8-4145-a9df-8bd903d9bafb",
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
              "uuid": "0972ce40-9286-49a5-8741-192f0f01dbc3",
              "parent_uuid": "ebcedd87-5bc8-4145-a9df-8bd903d9bafb",
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
          "uuid": "bb21038d-20a8-419d-b41e-95c6f13c85b7",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d088f1b4-8dc1-4627-9e69-4f4f2f764d9c",
              "parent_uuid": "bb21038d-20a8-419d-b41e-95c6f13c85b7",
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
                  "left"
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
              "uuid": "c9c28b6c-f697-40da-aa00-01f4463d3b69",
              "parent_uuid": "bb21038d-20a8-419d-b41e-95c6f13c85b7",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9d036285-0cac-41ac-ba48-a9ac2345b8df",
              "parent_uuid": "bb21038d-20a8-419d-b41e-95c6f13c85b7",
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
              "uuid": "dd69697b-8438-4279-bceb-c9b207277a65",
              "parent_uuid": "bb21038d-20a8-419d-b41e-95c6f13c85b7",
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
              "uuid": "fe35a3f1-bebe-4d1e-a01b-2f92100bf44d",
              "parent_uuid": "bb21038d-20a8-419d-b41e-95c6f13c85b7",
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
              "uuid": "332941e6-a66f-42f9-ab50-a0c550e97b8b",
              "parent_uuid": "bb21038d-20a8-419d-b41e-95c6f13c85b7",
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
          "uuid": "cecfc553-0524-404e-a04c-9640b27b1b2f",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3dc254b6-c0d6-4600-a13f-4f73119f794d",
              "parent_uuid": "cecfc553-0524-404e-a04c-9640b27b1b2f",
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
          "uuid": "2cd0011a-e4bf-4255-9cc8-f752c3eb156a",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "838238e4-14ff-4ba4-be7c-346ef96bb61e",
              "parent_uuid": "2cd0011a-e4bf-4255-9cc8-f752c3eb156a",
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
              "uuid": "a50df827-f743-42ac-a7b7-16ae77c9f8ff",
              "parent_uuid": "2cd0011a-e4bf-4255-9cc8-f752c3eb156a",
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
              "uuid": "e4cd254f-0105-410e-ace6-c9c75915601e",
              "parent_uuid": "2cd0011a-e4bf-4255-9cc8-f752c3eb156a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "851c1db9-7d14-42b1-ab27-f8e019ceabd9",
                  "parent_uuid": "e4cd254f-0105-410e-ace6-c9c75915601e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50257794-44c9-4b22-b46a-6245f4ef27cb",
              "parent_uuid": "2cd0011a-e4bf-4255-9cc8-f752c3eb156a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1f176d7-c10a-49b9-8d0c-3ba06026cc99",
                  "parent_uuid": "50257794-44c9-4b22-b46a-6245f4ef27cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bab3345-4a41-4372-942b-61d271bd339f",
              "parent_uuid": "2cd0011a-e4bf-4255-9cc8-f752c3eb156a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "442acdaf-0e6c-4b10-adb8-cd04f91a9721",
                  "parent_uuid": "9bab3345-4a41-4372-942b-61d271bd339f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31156190-050e-47d8-8d1d-8c2d3fc9326d",
              "parent_uuid": "2cd0011a-e4bf-4255-9cc8-f752c3eb156a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0544e02-ac52-4521-a1c8-45772aa6a0ec",
                  "parent_uuid": "31156190-050e-47d8-8d1d-8c2d3fc9326d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c84fddb7-03e1-45b0-a27a-914bc2cddde1",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e01716b9-1482-4073-9aac-eff0636f6eff",
              "parent_uuid": "c84fddb7-03e1-45b0-a27a-914bc2cddde1",
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
                  "34"
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
              "innerHtml": "\r\n                    <span>Alle Transportbänder auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1509dd66-c271-4828-a603-1c6a379b15d6",
              "parent_uuid": "c84fddb7-03e1-45b0-a27a-914bc2cddde1",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "17f13ece-525d-4563-8ce7-c963db834d81",
              "parent_uuid": "c84fddb7-03e1-45b0-a27a-914bc2cddde1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e3e098c-673c-4ba4-a9ce-5cbe26f5ab75",
                  "parent_uuid": "17f13ece-525d-4563-8ce7-c963db834d81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad89e82e-7c63-4514-90a3-1f65ecdf32c3",
              "parent_uuid": "c84fddb7-03e1-45b0-a27a-914bc2cddde1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00942a57-a1e5-4be5-940b-231076cdb343",
                  "parent_uuid": "ad89e82e-7c63-4514-90a3-1f65ecdf32c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ea2c00d-df9f-4d56-b946-792f9aa7d0ce",
              "parent_uuid": "c84fddb7-03e1-45b0-a27a-914bc2cddde1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0bccc58-892d-4122-a184-3cdbf4627acf",
                  "parent_uuid": "8ea2c00d-df9f-4d56-b946-792f9aa7d0ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58f0d158-05b3-4bd8-b9f1-756f6bb4f1ba",
              "parent_uuid": "c84fddb7-03e1-45b0-a27a-914bc2cddde1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e1b13fe-485e-4e9a-83f7-b581a4565148",
                  "parent_uuid": "58f0d158-05b3-4bd8-b9f1-756f6bb4f1ba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7611837c-f172-4f6c-93c0-f738e01ce8d5",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "338c7edc-f261-4a5e-9c2a-e37548e52530",
              "parent_uuid": "7611837c-f172-4f6c-93c0-f738e01ce8d5",
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
                  "35"
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
              "innerHtml": "\r\n                    <span>Prüfen Sie alle bewegliche und schwingende Teile auf lose oder fehlende Schrauben.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a90159c8-483f-4637-aa22-a9acfa3a97d1",
              "parent_uuid": "7611837c-f172-4f6c-93c0-f738e01ce8d5",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "002f6f52-0e1f-42a1-aca1-f1134882e6db",
              "parent_uuid": "7611837c-f172-4f6c-93c0-f738e01ce8d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a19f39d-7d3d-4d8a-94ff-83e2c6110cdf",
                  "parent_uuid": "002f6f52-0e1f-42a1-aca1-f1134882e6db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4017cf6a-0d69-47c1-8279-75c9c827463d",
              "parent_uuid": "7611837c-f172-4f6c-93c0-f738e01ce8d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0845193f-c504-4a66-957b-7c8d591b13b3",
                  "parent_uuid": "4017cf6a-0d69-47c1-8279-75c9c827463d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37e732e6-807f-4b9e-a737-3be8fd166950",
              "parent_uuid": "7611837c-f172-4f6c-93c0-f738e01ce8d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc5c0c96-d2d1-466d-8588-a949547a0b94",
                  "parent_uuid": "37e732e6-807f-4b9e-a737-3be8fd166950",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eccfbea9-e7e0-490f-aad0-9a4b6cc1e611",
              "parent_uuid": "7611837c-f172-4f6c-93c0-f738e01ce8d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dec249cd-000b-47dc-ac3d-24d12301e251",
                  "parent_uuid": "eccfbea9-e7e0-490f-aad0-9a4b6cc1e611",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d7db358-2637-4775-8022-38d0d12556aa",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "869960df-91ff-44b8-9580-123feec8b0ef",
              "parent_uuid": "7d7db358-2637-4775-8022-38d0d12556aa",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "766078b5-c901-4670-9dd8-c9c46b035522",
              "parent_uuid": "7d7db358-2637-4775-8022-38d0d12556aa",
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
              "uuid": "6bdae544-8941-4845-b451-c64f1d27cbc8",
              "parent_uuid": "7d7db358-2637-4775-8022-38d0d12556aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06fc44f6-b241-478d-9a75-98cdb154b7aa",
                  "parent_uuid": "6bdae544-8941-4845-b451-c64f1d27cbc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea326076-4dae-4739-9385-f6ca29e7d7e1",
              "parent_uuid": "7d7db358-2637-4775-8022-38d0d12556aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af6517ed-2308-4f8d-9e3d-f2c90036a805",
                  "parent_uuid": "ea326076-4dae-4739-9385-f6ca29e7d7e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3a30bcf-4c56-498a-91c1-b3629acab6c1",
              "parent_uuid": "7d7db358-2637-4775-8022-38d0d12556aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ade5376d-d5ee-4538-aee9-785f5060a06a",
                  "parent_uuid": "e3a30bcf-4c56-498a-91c1-b3629acab6c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6743f54f-4389-4d3f-91e8-943a9497c278",
              "parent_uuid": "7d7db358-2637-4775-8022-38d0d12556aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6a5beeb-d448-4358-9eb4-3b695077c2af",
                  "parent_uuid": "6743f54f-4389-4d3f-91e8-943a9497c278",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b08c6ed4-a99c-453c-9dc3-c4d070a38417",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3d1dbe5d-a12c-4f19-9ce0-90b685178207",
              "parent_uuid": "b08c6ed4-a99c-453c-9dc3-c4d070a38417",
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "73ad07b4-6cfd-4e96-b43d-787fddd24f8c",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c56738d-4e17-4c42-a56c-bff153b5477a",
              "parent_uuid": "73ad07b4-6cfd-4e96-b43d-787fddd24f8c",
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
              "innerHtml": "\r\n                    <span>Gesamte Anlage reinigen:<br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b097d894-fac9-49b3-bb04-35423c71a12b",
              "parent_uuid": "73ad07b4-6cfd-4e96-b43d-787fddd24f8c",
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
              "innerHtml": "\r\n                    <span>W</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "af562fe6-83f8-4962-8a4d-45531c685839",
              "parent_uuid": "73ad07b4-6cfd-4e96-b43d-787fddd24f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d1b8f3a-7bc0-4de5-9944-1a65677f943c",
                  "parent_uuid": "af562fe6-83f8-4962-8a4d-45531c685839",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6d1b426-470c-4236-bda3-7e386a24179d",
              "parent_uuid": "73ad07b4-6cfd-4e96-b43d-787fddd24f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c2c335c-53d9-4052-a0f5-8f0b56906117",
                  "parent_uuid": "d6d1b426-470c-4236-bda3-7e386a24179d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dae85eb8-c141-4040-a629-723da3eee688",
              "parent_uuid": "73ad07b4-6cfd-4e96-b43d-787fddd24f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa2d7688-b197-4087-ac8f-9a94ebd7a98e",
                  "parent_uuid": "dae85eb8-c141-4040-a629-723da3eee688",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5679ce43-e33b-4135-af4a-0cac53df8fa7",
              "parent_uuid": "73ad07b4-6cfd-4e96-b43d-787fddd24f8c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67711e58-f1b4-40be-922a-3056f1ba239d",
                  "parent_uuid": "5679ce43-e33b-4135-af4a-0cac53df8fa7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1497e0d6-ce29-468a-952f-7e939a39f358",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d1e2061-8fc4-4260-9a8c-cf86767afb11",
              "parent_uuid": "1497e0d6-ce29-468a-952f-7e939a39f358",
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
              "innerHtml": "\r\n                    <span>Festsitzende Münzen in der Maschine überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "80a6fe3b-32e5-4555-bf26-7bc808ce3642",
              "parent_uuid": "1497e0d6-ce29-468a-952f-7e939a39f358",
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
              "uuid": "60fc756f-eabc-485a-83db-5ad3bb040ce6",
              "parent_uuid": "1497e0d6-ce29-468a-952f-7e939a39f358",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "719833dd-c073-4d4b-848f-05a48b2b1a02",
                  "parent_uuid": "60fc756f-eabc-485a-83db-5ad3bb040ce6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2cdb7fe-b4cf-4289-afbc-920900ac61b5",
              "parent_uuid": "1497e0d6-ce29-468a-952f-7e939a39f358",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d8ab016-d120-43c2-8a94-0d25e379cc96",
                  "parent_uuid": "f2cdb7fe-b4cf-4289-afbc-920900ac61b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3a29381-2273-4f9b-a188-d0934d83d6c5",
              "parent_uuid": "1497e0d6-ce29-468a-952f-7e939a39f358",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f64ff23f-f331-4e04-a660-a1d4f6085675",
                  "parent_uuid": "a3a29381-2273-4f9b-a188-d0934d83d6c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9778fd23-7510-4ad4-9370-d0bdd7547c8e",
              "parent_uuid": "1497e0d6-ce29-468a-952f-7e939a39f358",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "964266ac-9df1-41f6-94ec-58c1efc7e313",
                  "parent_uuid": "9778fd23-7510-4ad4-9370-d0bdd7547c8e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d683a17-8e17-47a7-a051-f214034f397e",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "138e2bb8-6363-44bd-aa83-c75a79190ee1",
              "parent_uuid": "7d683a17-8e17-47a7-a051-f214034f397e",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Sichtfenster reinigen mit lauwarmes Wasser sowie ein wenig Spülmittel aus. <br>Verwenden dabei ein Mikrofasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5f5655ec-ba24-41d6-8835-6db14201af04",
              "parent_uuid": "7d683a17-8e17-47a7-a051-f214034f397e",
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
              "uuid": "9a6ffb23-ab41-47d2-aa56-ee2972d41627",
              "parent_uuid": "7d683a17-8e17-47a7-a051-f214034f397e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "212aebb7-71ee-4e34-b54a-06d8c945b0d8",
                  "parent_uuid": "9a6ffb23-ab41-47d2-aa56-ee2972d41627",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "827ef648-6736-432d-9bd3-9f8136dd522d",
              "parent_uuid": "7d683a17-8e17-47a7-a051-f214034f397e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "397bd729-8e83-4ea4-b41d-eae9bcd4ed5c",
                  "parent_uuid": "827ef648-6736-432d-9bd3-9f8136dd522d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee0f8fb0-524c-4d97-b752-ec0e2e78eae9",
              "parent_uuid": "7d683a17-8e17-47a7-a051-f214034f397e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3255652a-eaa6-428b-b12e-f38f8251c7c8",
                  "parent_uuid": "ee0f8fb0-524c-4d97-b752-ec0e2e78eae9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c11771b1-8453-4445-a909-44c220a126ef",
              "parent_uuid": "7d683a17-8e17-47a7-a051-f214034f397e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1872bf6f-ee5e-4cd7-81cb-62a8615ae951",
                  "parent_uuid": "c11771b1-8453-4445-a909-44c220a126ef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31a7b677-a246-4c96-ab86-639e8ad6ce7f",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a7a8d553-13a9-456a-bb47-d17e76191744",
              "parent_uuid": "31a7b677-a246-4c96-ab86-639e8ad6ce7f",
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
              "innerHtml": "\r\n                    <span>Not-Aus-Taster, Kontrolllampen und Anzeigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "119e2ca7-814a-4b03-93d1-b1be7691fb31",
              "parent_uuid": "31a7b677-a246-4c96-ab86-639e8ad6ce7f",
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
              "uuid": "09043b4d-2c5e-4eed-942a-6dc6affa1603",
              "parent_uuid": "31a7b677-a246-4c96-ab86-639e8ad6ce7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b3c82ff-00ad-4c19-bb6b-4ca5c971740f",
                  "parent_uuid": "09043b4d-2c5e-4eed-942a-6dc6affa1603",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2294cbfb-b28e-4b20-abac-4f49d0c52889",
              "parent_uuid": "31a7b677-a246-4c96-ab86-639e8ad6ce7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d285da11-5fbb-4247-b9be-c7d4dca63428",
                  "parent_uuid": "2294cbfb-b28e-4b20-abac-4f49d0c52889",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e62d168e-9391-4c60-a07f-cd64f6b0de31",
              "parent_uuid": "31a7b677-a246-4c96-ab86-639e8ad6ce7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "785e04f6-3f85-459d-8a0f-3da9f1503915",
                  "parent_uuid": "e62d168e-9391-4c60-a07f-cd64f6b0de31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d8f05414-c46a-4b86-ba66-e31b06370145",
              "parent_uuid": "31a7b677-a246-4c96-ab86-639e8ad6ce7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e9352d6-876b-4ea4-b1f2-0275d74a64d3",
                  "parent_uuid": "d8f05414-c46a-4b86-ba66-e31b06370145",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bebf9955-7bf0-49c2-9b4f-85348ddfdbed",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "790635ce-543f-449a-8e44-9d640ae0a0ec",
              "parent_uuid": "bebf9955-7bf0-49c2-9b4f-85348ddfdbed",
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
                  "105"
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
              "innerHtml": "\r\n                    <span>Transportriemen gross reinigen:<br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "dccb9ec3-bf99-4265-b125-6a54e37d18d3",
              "parent_uuid": "bebf9955-7bf0-49c2-9b4f-85348ddfdbed",
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
              "uuid": "d54bd5cb-87b8-4a27-9580-9ba0136cb8d4",
              "parent_uuid": "bebf9955-7bf0-49c2-9b4f-85348ddfdbed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96833554-0d00-44cb-a02f-9786cd483682",
                  "parent_uuid": "d54bd5cb-87b8-4a27-9580-9ba0136cb8d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "586b2e2b-1723-466f-b294-ddc231345e79",
              "parent_uuid": "bebf9955-7bf0-49c2-9b4f-85348ddfdbed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0993a50-9504-4839-99eb-e36eb6ba9d94",
                  "parent_uuid": "586b2e2b-1723-466f-b294-ddc231345e79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "564dbac0-6150-4526-99f5-b9dafbefcd2c",
              "parent_uuid": "bebf9955-7bf0-49c2-9b4f-85348ddfdbed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f02ba332-9dac-4635-b660-269ae5abc362",
                  "parent_uuid": "564dbac0-6150-4526-99f5-b9dafbefcd2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a47a671-7dbc-46b3-b27a-f093f1350a0f",
              "parent_uuid": "bebf9955-7bf0-49c2-9b4f-85348ddfdbed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f20292d2-34d4-45fc-9142-b93d9d81f4c0",
                  "parent_uuid": "0a47a671-7dbc-46b3-b27a-f093f1350a0f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fa95bb73-efce-4b5e-a674-96ed54bad596",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa60b39c-a3e1-476d-8749-a8bed340471c",
              "parent_uuid": "fa95bb73-efce-4b5e-a674-96ed54bad596",
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
                  "121"
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
              "innerHtml": "\r\n                    <span>Transportriemen klein reinigen:<br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ddcc7370-2132-4daf-b814-625bbd5e9e95",
              "parent_uuid": "fa95bb73-efce-4b5e-a674-96ed54bad596",
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
              "uuid": "3cb3fc3a-25da-4966-ae5f-e53ed85445d4",
              "parent_uuid": "fa95bb73-efce-4b5e-a674-96ed54bad596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7503d04-7ae5-4867-8620-ca7b4d392baf",
                  "parent_uuid": "3cb3fc3a-25da-4966-ae5f-e53ed85445d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6af48ec2-d79d-40f7-857c-ccde7ce4bc86",
              "parent_uuid": "fa95bb73-efce-4b5e-a674-96ed54bad596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e21dee8-05d1-477d-ad07-5fcfbd49cd68",
                  "parent_uuid": "6af48ec2-d79d-40f7-857c-ccde7ce4bc86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13a6c6a8-1e71-46d6-a771-7f8b9743308d",
              "parent_uuid": "fa95bb73-efce-4b5e-a674-96ed54bad596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33041a98-bf75-43d7-97c9-159ad348e51b",
                  "parent_uuid": "13a6c6a8-1e71-46d6-a771-7f8b9743308d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89f711e6-b6ec-46e1-a7e9-8ba8bdd0b4e4",
              "parent_uuid": "fa95bb73-efce-4b5e-a674-96ed54bad596",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4294caf9-ec7c-474a-ac23-41720222f65c",
                  "parent_uuid": "89f711e6-b6ec-46e1-a7e9-8ba8bdd0b4e4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9fd79773-fe7d-41c3-a3e6-c22c95b8b1d3",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f5bc7aa-463b-412d-8723-3c74c805c01e",
              "parent_uuid": "9fd79773-fe7d-41c3-a3e6-c22c95b8b1d3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
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
              "innerHtml": "\r\n                    <span>Spannung Transporriemen gross überprüfen:<br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "340fa7e2-1a43-4303-bcac-6c6bee0f906a",
              "parent_uuid": "9fd79773-fe7d-41c3-a3e6-c22c95b8b1d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "rowspan",
                  "3"
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
              "uuid": "95522815-58e0-41fa-9503-b04bc6e7faf0",
              "parent_uuid": "9fd79773-fe7d-41c3-a3e6-c22c95b8b1d3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "086d24b8-9a9c-4ad4-93d4-617712a97c34",
                  "parent_uuid": "95522815-58e0-41fa-9503-b04bc6e7faf0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb7e89af-7b8c-42ba-bfe7-1f66ccec3abc",
              "parent_uuid": "9fd79773-fe7d-41c3-a3e6-c22c95b8b1d3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21f5e70e-f794-4dfb-97a9-6ddffa3871ce",
                  "parent_uuid": "fb7e89af-7b8c-42ba-bfe7-1f66ccec3abc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cbd2cea-1908-4c78-9352-b408600c41c9",
              "parent_uuid": "9fd79773-fe7d-41c3-a3e6-c22c95b8b1d3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2f8105c-4dc9-45db-bc17-eecb4b1f86a4",
                  "parent_uuid": "1cbd2cea-1908-4c78-9352-b408600c41c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3aabd7f0-a7fa-4deb-84cc-ebd93d6887f1",
              "parent_uuid": "9fd79773-fe7d-41c3-a3e6-c22c95b8b1d3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee1d486e-7536-4a01-969b-b170b57dca71",
                  "parent_uuid": "3aabd7f0-a7fa-4deb-84cc-ebd93d6887f1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9e8e9b6-c8ac-4923-ac17-477fe586372a",
              "parent_uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "18"
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ea27bacf-6c7f-4ea1-93e2-a1042e7a3d16",
              "parent_uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "06db1556-cc97-4a06-8f86-581fd91e7365",
              "parent_uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a9cf7763-28ff-451e-87ac-207de9077c31",
              "parent_uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7d45d68-64e3-4ccd-9d87-06fb938baaf8",
                  "parent_uuid": "a9cf7763-28ff-451e-87ac-207de9077c31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "890034d9-6dc9-4547-9164-604678bdc0e2",
              "parent_uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfaa73c3-f654-4d9b-a19f-8d9e791c39a4",
                  "parent_uuid": "890034d9-6dc9-4547-9164-604678bdc0e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1dddb38-d6b7-4350-867c-2f034b385bad",
              "parent_uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "005910de-86fd-454e-95fd-44891eb5655b",
                  "parent_uuid": "d1dddb38-d6b7-4350-867c-2f034b385bad",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "a5f007fc-670d-49ea-a54b-81b70bef3919",
              "parent_uuid": "d9ca2909-fe7a-4b8d-998a-8061856531c6",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab2c7586-db6d-4785-ad83-ded1762ea873",
                  "parent_uuid": "a5f007fc-670d-49ea-a54b-81b70bef3919",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc452c04-6e2b-4d70-9a26-07c051aac4ab",
              "parent_uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "21"
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
              "innerHtml": "\r\n                    <span>-Die Distanz von Punkt zu Punkt sollte 102cm betragen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ada8d578-1496-4c1a-9dff-6d462579a18c",
              "parent_uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "innerHtml": "\r\n                    <span>&lt;102cm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7421eb31-9543-42eb-b13b-abb6dbda6a55",
              "parent_uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce5f34b3-340d-42af-9d4e-19f8c9a395b2",
                  "parent_uuid": "7421eb31-9543-42eb-b13b-abb6dbda6a55",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "text"
                    ],
                    [
                      "style",
                      "width: 100%; display: block; box-sizing: border-box;"
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
              "uuid": "7544c574-c230-4a29-a350-d2949eaf6a12",
              "parent_uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b462c794-7f60-4438-97a5-dc748cd23c5f",
                  "parent_uuid": "7544c574-c230-4a29-a350-d2949eaf6a12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "003c96ca-4701-435f-9464-6a28f666a452",
              "parent_uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4cb00032-d2f3-4fc6-a049-f55c20a3c975",
                  "parent_uuid": "003c96ca-4701-435f-9464-6a28f666a452",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cebc151b-d20b-4ef2-9f27-9ed4930fdf53",
              "parent_uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0501294-7790-42a7-8f62-a4b8c94bf1de",
                  "parent_uuid": "cebc151b-d20b-4ef2-9f27-9ed4930fdf53",
                  "tagName": "input",
                  "properties": [
                    [
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
            },
            {
              "uuid": "76da670c-aa0f-4cc8-8c04-3ff991467bd4",
              "parent_uuid": "7b7c013a-6adf-4304-82b4-8f4bac2167f3",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "545e3970-de43-436e-90fd-d63c0afd2907",
                  "parent_uuid": "76da670c-aa0f-4cc8-8c04-3ff991467bd4",
                  "tagName": "input",
                  "properties": [
                    [
                      "type",
                      "checkbox"
                    ]
                  ],
                  "children": [],
                  "sort": 0,
                  "lvl": 0
                }
              ],
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "7b619c94-16de-4144-a5e3-66e1d7fccd6f",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e7ad0a5-cb67-4ea8-a147-cce2550721a4",
              "parent_uuid": "7b619c94-16de-4144-a5e3-66e1d7fccd6f",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b0979051-631e-4609-812c-7d6000515afc",
              "parent_uuid": "7b619c94-16de-4144-a5e3-66e1d7fccd6f",
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
              "uuid": "4b361312-079f-4acb-a9c2-7d4424dd1bb2",
              "parent_uuid": "7b619c94-16de-4144-a5e3-66e1d7fccd6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d01fa11-3c01-4dd3-ba1f-f16967d37be1",
                  "parent_uuid": "4b361312-079f-4acb-a9c2-7d4424dd1bb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18095b2e-8d6c-4f84-a87d-f8759fa6d307",
              "parent_uuid": "7b619c94-16de-4144-a5e3-66e1d7fccd6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98bc0d61-38cf-40bb-8a3d-130f0e6dce4b",
                  "parent_uuid": "18095b2e-8d6c-4f84-a87d-f8759fa6d307",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d31a43bb-8dec-489a-9787-28d5d7725038",
              "parent_uuid": "7b619c94-16de-4144-a5e3-66e1d7fccd6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5efc128a-ff4b-4e80-81f3-6b703d663ae7",
                  "parent_uuid": "d31a43bb-8dec-489a-9787-28d5d7725038",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a5be2c1-3a18-4481-9e43-0c3b6daf88ad",
              "parent_uuid": "7b619c94-16de-4144-a5e3-66e1d7fccd6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96327291-fd90-41ff-a828-d3fa50414212",
                  "parent_uuid": "5a5be2c1-3a18-4481-9e43-0c3b6daf88ad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "a036bd8d-7b29-4e19-b08c-ffaeb85ad088",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cdfd186d-fa5e-43a9-90bf-5fb427eb5ff7",
              "parent_uuid": "a036bd8d-7b29-4e19-b08c-ffaeb85ad088",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Lichtschranken und Sensoren mit einem weichen Reinigungstuch.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "38041cc9-68c2-4dd9-b987-fe5bec38882e",
              "parent_uuid": "a036bd8d-7b29-4e19-b08c-ffaeb85ad088",
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
              "uuid": "8a1b662d-00e4-43db-b6e8-ffd51415050b",
              "parent_uuid": "a036bd8d-7b29-4e19-b08c-ffaeb85ad088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b3f31cc-1de8-40f5-a3d5-975e845fdb86",
                  "parent_uuid": "8a1b662d-00e4-43db-b6e8-ffd51415050b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "798d4f0c-29f3-436b-a48a-b9af9da5ad2d",
              "parent_uuid": "a036bd8d-7b29-4e19-b08c-ffaeb85ad088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b12d44b2-47cd-4ba5-ae62-5d849cc2973b",
                  "parent_uuid": "798d4f0c-29f3-436b-a48a-b9af9da5ad2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44a1ea14-4c60-4ca0-9356-ed3a195d7e2b",
              "parent_uuid": "a036bd8d-7b29-4e19-b08c-ffaeb85ad088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9fe2c89a-c5bc-4aa6-976c-8163cc908d2a",
                  "parent_uuid": "44a1ea14-4c60-4ca0-9356-ed3a195d7e2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6148f8ae-de1f-487e-a95b-2d29839be4af",
              "parent_uuid": "a036bd8d-7b29-4e19-b08c-ffaeb85ad088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "677a71d2-37d5-451b-aa5c-1fc0a65d9f10",
                  "parent_uuid": "6148f8ae-de1f-487e-a95b-2d29839be4af",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "d28a6823-25e7-4877-8a4d-0b5a26598348",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "012801ae-7f47-4c9d-bbba-6eb458c6d107",
              "parent_uuid": "d28a6823-25e7-4877-8a4d-0b5a26598348",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Beide Server PC-Filter überprüfen und reinigen oder austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "129246cd-cfed-42f9-b9d8-91e0e49ffaf2",
              "parent_uuid": "d28a6823-25e7-4877-8a4d-0b5a26598348",
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
              "uuid": "22fa3baa-4cfb-448f-8565-183e8ad5b2df",
              "parent_uuid": "d28a6823-25e7-4877-8a4d-0b5a26598348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a938c031-9d52-4a80-99f2-e2554bd6f794",
                  "parent_uuid": "22fa3baa-4cfb-448f-8565-183e8ad5b2df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7fadb34a-b939-4001-86cf-5d0a8c3afa35",
              "parent_uuid": "d28a6823-25e7-4877-8a4d-0b5a26598348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8697a3b0-f2ea-4c36-9f15-410cfb527245",
                  "parent_uuid": "7fadb34a-b939-4001-86cf-5d0a8c3afa35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c45620b-55d2-4348-857e-92f1ee7b62be",
              "parent_uuid": "d28a6823-25e7-4877-8a4d-0b5a26598348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "488a5722-d8ee-4125-826d-5052c40f05b0",
                  "parent_uuid": "2c45620b-55d2-4348-857e-92f1ee7b62be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38016b4c-eea6-475b-86b1-f26d34e9f7c0",
              "parent_uuid": "d28a6823-25e7-4877-8a4d-0b5a26598348",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ae8a9eb-426e-45f8-9ae8-223caad9d737",
                  "parent_uuid": "38016b4c-eea6-475b-86b1-f26d34e9f7c0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "827ae168-a835-44e4-89da-032e5712dfcf",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "121beffd-4158-4c35-89ff-90d07a855be2",
              "parent_uuid": "827ae168-a835-44e4-89da-032e5712dfcf",
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
                  "52"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kühlaggregat reinigen<br>  -Nehmen Sie vorsichtig die Abdeckung des Kühlaggregats ab.<br>  -Reinigen Sie die Lamellen vorsichtig mit einem Staubsauger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "90ffef69-145c-42d2-8c54-80033fad79ac",
              "parent_uuid": "827ae168-a835-44e4-89da-032e5712dfcf",
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
              "uuid": "8a9a1c6c-a57a-4cca-a5cc-64c8997c038e",
              "parent_uuid": "827ae168-a835-44e4-89da-032e5712dfcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b5b1903-bb50-4f96-9103-5966db1662ef",
                  "parent_uuid": "8a9a1c6c-a57a-4cca-a5cc-64c8997c038e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64f0a50b-cba2-47fb-9c37-a75d0ef23bbc",
              "parent_uuid": "827ae168-a835-44e4-89da-032e5712dfcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d58478d-9d74-4c79-9a69-bafdca82ea54",
                  "parent_uuid": "64f0a50b-cba2-47fb-9c37-a75d0ef23bbc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11d43719-45b4-42fb-835f-050bcd06a908",
              "parent_uuid": "827ae168-a835-44e4-89da-032e5712dfcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0196edc0-4f2a-4392-99fc-36d91b0bec87",
                  "parent_uuid": "11d43719-45b4-42fb-835f-050bcd06a908",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76e6a9eb-1d8f-43c0-9c0b-ce6b4527eb79",
              "parent_uuid": "827ae168-a835-44e4-89da-032e5712dfcf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0ce2830-616b-4e3f-9e6d-900ea10a3488",
                  "parent_uuid": "76e6a9eb-1d8f-43c0-9c0b-ce6b4527eb79",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d562be6a-91d6-4331-a70c-7bb6f2e8f982",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "805671dc-231b-43f4-bbf4-48a00bf93505",
              "parent_uuid": "d562be6a-91d6-4331-a70c-7bb6f2e8f982",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "399e47eb-6353-4241-8743-e381b5e000bc",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09d839dc-4b5f-4b52-97cf-e4999d7bf858",
              "parent_uuid": "399e47eb-6353-4241-8743-e381b5e000bc",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Schwingplatte<br>  -Der Talkbelag der Schwingplatte wird mit einem Spachtel gelöst.<br>  -Anschliessend kann mit einem Reinigungstuch und Bremsreiniger der übrige Schmutz entfernt werden</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ac3c3395-f670-4c04-bb32-ddc0902f47a2",
              "parent_uuid": "399e47eb-6353-4241-8743-e381b5e000bc",
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
              "uuid": "e2184aad-d7a6-4247-9f87-a2e57d71312b",
              "parent_uuid": "399e47eb-6353-4241-8743-e381b5e000bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35d80b4c-b785-4df4-bfc1-d92d30e57e5f",
                  "parent_uuid": "e2184aad-d7a6-4247-9f87-a2e57d71312b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79842eaf-f5f0-4d07-b7ca-6644a8a8cf7c",
              "parent_uuid": "399e47eb-6353-4241-8743-e381b5e000bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45f3e443-abef-4b85-bf86-7832d081a426",
                  "parent_uuid": "79842eaf-f5f0-4d07-b7ca-6644a8a8cf7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5394a28b-ff1a-4de6-a136-939f5e3dbffd",
              "parent_uuid": "399e47eb-6353-4241-8743-e381b5e000bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a20623b-8178-4012-9669-851c662f0628",
                  "parent_uuid": "5394a28b-ff1a-4de6-a136-939f5e3dbffd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a196f4a-a359-4d2b-b185-79fa65ba36ab",
              "parent_uuid": "399e47eb-6353-4241-8743-e381b5e000bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb0cff6c-2a89-4fad-a24b-19eddc654652",
                  "parent_uuid": "5a196f4a-a359-4d2b-b185-79fa65ba36ab",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "663559bb-b456-484a-8e0c-9bbcd43661bf",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "29a58de0-ecca-41a3-bc30-4a658c4bb98a",
              "parent_uuid": "663559bb-b456-484a-8e0c-9bbcd43661bf",
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
                  "21"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Prüfen Sie die Abscheider und Bürsten auf Verschleiß.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "eea1302d-f6a0-4fb0-9916-6419af2cd8ba",
              "parent_uuid": "663559bb-b456-484a-8e0c-9bbcd43661bf",
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
              "uuid": "7ef7deb8-c126-4115-946f-c43af57de698",
              "parent_uuid": "663559bb-b456-484a-8e0c-9bbcd43661bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8e0fd73-0bcb-4d85-8232-6f0328a753b4",
                  "parent_uuid": "7ef7deb8-c126-4115-946f-c43af57de698",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86664300-8c08-4562-8f74-c4fd8659ffae",
              "parent_uuid": "663559bb-b456-484a-8e0c-9bbcd43661bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab360922-d59d-4942-b2a7-ceaee647200c",
                  "parent_uuid": "86664300-8c08-4562-8f74-c4fd8659ffae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82515b6f-f771-49d7-be84-f45023df6bad",
              "parent_uuid": "663559bb-b456-484a-8e0c-9bbcd43661bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "431e94f6-e8e6-457f-86fb-3833fc711b28",
                  "parent_uuid": "82515b6f-f771-49d7-be84-f45023df6bad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c292070c-0f8d-4252-abd9-40fd182ed6c0",
              "parent_uuid": "663559bb-b456-484a-8e0c-9bbcd43661bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91252d17-a027-4eab-a10d-8b284cd118dd",
                  "parent_uuid": "c292070c-0f8d-4252-abd9-40fd182ed6c0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fbcc0951-980d-4102-a6fc-a8e42f831778",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07e64f15-f018-4924-8155-70bdb2f7f06c",
              "parent_uuid": "fbcc0951-980d-4102-a6fc-a8e42f831778",
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
                  "51"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Vision-Einheiten<br>  -Reinigen Sie die Oberfläche der Abdeckung vorsichtig mit dem Staubsauger und  mit einem Microphasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c5df1422-7465-46c8-9070-e65b989df08a",
              "parent_uuid": "fbcc0951-980d-4102-a6fc-a8e42f831778",
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
              "uuid": "ddb79951-0298-4e4f-a656-7042ab80b61f",
              "parent_uuid": "fbcc0951-980d-4102-a6fc-a8e42f831778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0eba3734-3cf0-453c-a784-61b2a803534d",
                  "parent_uuid": "ddb79951-0298-4e4f-a656-7042ab80b61f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "729bac74-4196-46ed-8021-e50631577358",
              "parent_uuid": "fbcc0951-980d-4102-a6fc-a8e42f831778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a48e3ba-adf8-47b7-9985-02b7921fa7bb",
                  "parent_uuid": "729bac74-4196-46ed-8021-e50631577358",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d738fe0-aff9-44c3-a0b9-d660ce8110ee",
              "parent_uuid": "fbcc0951-980d-4102-a6fc-a8e42f831778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc172cd1-ee1b-4670-92c5-9c4bc0822399",
                  "parent_uuid": "1d738fe0-aff9-44c3-a0b9-d660ce8110ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bab5f6a-7e65-4533-9d73-cd6adad4aba3",
              "parent_uuid": "fbcc0951-980d-4102-a6fc-a8e42f831778",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81594c18-ca5f-4c2f-8ab7-fcc01499881c",
                  "parent_uuid": "2bab5f6a-7e65-4533-9d73-cd6adad4aba3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e2fbbf5-5704-4859-baa0-4f51894799e4",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e258fce6-88db-4267-a4ed-d4b691dcabe3",
              "parent_uuid": "2e2fbbf5-5704-4859-baa0-4f51894799e4",
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
                  "86"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Vision-Linsen<br>  -Reinige die Oberfläche der Linse vorsichtig mit dem Staubsauger/Druckluftpistole und mit einem Microphasertuch.<br>  -Bei Flecken auf der Linse, muss ein Microphasertuch mit wenig Senorreiniger angewendet werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b1ac83fb-4563-4702-9671-16c0a2998883",
              "parent_uuid": "2e2fbbf5-5704-4859-baa0-4f51894799e4",
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
              "uuid": "df2c8b53-58b0-4b3a-8399-ddafe92d8234",
              "parent_uuid": "2e2fbbf5-5704-4859-baa0-4f51894799e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f18d9761-3f65-4475-95a5-648461be2159",
                  "parent_uuid": "df2c8b53-58b0-4b3a-8399-ddafe92d8234",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2755883d-c6a7-43c4-bd69-50edc56e0d59",
              "parent_uuid": "2e2fbbf5-5704-4859-baa0-4f51894799e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0a09b04-db08-4e16-b537-06a42bbd3aa3",
                  "parent_uuid": "2755883d-c6a7-43c4-bd69-50edc56e0d59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4802ea9d-3009-417d-9926-ba27ea0567d4",
              "parent_uuid": "2e2fbbf5-5704-4859-baa0-4f51894799e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39b8987e-2d9a-458e-9f61-2c74b5826d17",
                  "parent_uuid": "4802ea9d-3009-417d-9926-ba27ea0567d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0b73ebd-0fa4-4801-997b-c5abea28d510",
              "parent_uuid": "2e2fbbf5-5704-4859-baa0-4f51894799e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "acf9b3da-f185-46b3-9c50-9e07c30a6dc3",
                  "parent_uuid": "c0b73ebd-0fa4-4801-997b-c5abea28d510",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3276efea-e9d7-4885-82dc-4a7f8699d3f3",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b64792b7-8c1b-4c0a-914b-39deebdca12f",
              "parent_uuid": "3276efea-e9d7-4885-82dc-4a7f8699d3f3",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Speicherplatz<br>  -Überprüfe den Speicherplatz auf dem NAS, falls dieser überläuft können alte Daten gelöscht werden.<br>  -Überprüfen den Speicherplatz auf dem Lokalen Laufwerken, falls der überläuft können Logdateien gelöscht werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "efdf1380-6679-497a-bd52-cb4dfb515eaa",
              "parent_uuid": "3276efea-e9d7-4885-82dc-4a7f8699d3f3",
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
              "uuid": "59637003-2cee-41b6-b727-3fa791fb3654",
              "parent_uuid": "3276efea-e9d7-4885-82dc-4a7f8699d3f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed2cfb41-a04e-4e9c-a46e-78f5980b0f47",
                  "parent_uuid": "59637003-2cee-41b6-b727-3fa791fb3654",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d6f2536-fcc2-45ec-820e-dc71841378eb",
              "parent_uuid": "3276efea-e9d7-4885-82dc-4a7f8699d3f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c38c6c50-fbb3-4804-9e45-2441f8a69150",
                  "parent_uuid": "7d6f2536-fcc2-45ec-820e-dc71841378eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83762c68-eac7-4748-b454-2581f2a1aa8b",
              "parent_uuid": "3276efea-e9d7-4885-82dc-4a7f8699d3f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e1ccdf0-31a1-4364-a979-b9c68969a33b",
                  "parent_uuid": "83762c68-eac7-4748-b454-2581f2a1aa8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "166297ae-f71c-460f-9e1d-9cb218e9c66c",
              "parent_uuid": "3276efea-e9d7-4885-82dc-4a7f8699d3f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1c0f46a-8384-456e-93bf-bee5db7d5548",
                  "parent_uuid": "166297ae-f71c-460f-9e1d-9cb218e9c66c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "da5bd892-24e9-45ad-9cf6-9833859c8970",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4c677bc-22db-4980-88d5-a6e28bb4dca9",
              "parent_uuid": "da5bd892-24e9-45ad-9cf6-9833859c8970",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "f88149c5-8faf-46d1-ab3d-f6644bf1c430",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d1ed0a8-1620-4467-a1b1-1157e2db2e5d",
              "parent_uuid": "f88149c5-8faf-46d1-ab3d-f6644bf1c430",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "fcc33849-e365-47c8-acf9-a9983e23e7e2",
          "parent_uuid": "9b96f66a-410e-4493-8386-59be1767fd0d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22740a94-9ba2-401a-ab29-19f2b8950394",
              "parent_uuid": "fcc33849-e365-47c8-acf9-a9983e23e7e2",
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
                  "uuid": "291f263d-ae82-4626-a5b1-4b080ee21cbb",
                  "parent_uuid": "22740a94-9ba2-401a-ab29-19f2b8950394",
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
          "sort": 30,
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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
		,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '58A6D34C-2D4B-4F8A-B831-60488591AEDC'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

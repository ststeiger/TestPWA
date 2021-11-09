
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
  "uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "ebad7206-2c69-48d8-8524-18358491cae0",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "1ccb932b-df64-4e06-863a-e9c128b3f2db",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "6b09a261-2d83-471d-b827-7029208c7c17",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "ab4fe1fb-214f-4a20-aca4-038ec552b84d",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "19505fe9-6e8a-4534-9b3b-0487cf4fae37",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "87ba6169-c9f5-42fb-b53b-08f92f5f16e3",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "1795f558-2eb1-40be-81a7-a9761c7ff704",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
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
      "uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
      "parent_uuid": "39dd87f7-d0db-4392-aa04-71767aeff1c7",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7c0a575f-ab3c-470f-abb1-2f64e9d350f5",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "53926eac-f773-41f6-891a-9f5784da8554",
              "parent_uuid": "7c0a575f-ab3c-470f-abb1-2f64e9d350f5",
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
              "uuid": "e914fd30-52fb-4d1a-8dda-84f08762487e",
              "parent_uuid": "7c0a575f-ab3c-470f-abb1-2f64e9d350f5",
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
              "uuid": "9423715a-49ab-4c1a-a86a-fb8d87212e4a",
              "parent_uuid": "7c0a575f-ab3c-470f-abb1-2f64e9d350f5",
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
              "uuid": "5bcf4523-68da-4db6-9cfe-3e37fcdd2d72",
              "parent_uuid": "7c0a575f-ab3c-470f-abb1-2f64e9d350f5",
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
          "uuid": "4f90d59c-91df-4e04-b421-30903e9345cf",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "171ad1ff-b9a4-4e9f-8557-de0d42eaa746",
              "parent_uuid": "4f90d59c-91df-4e04-b421-30903e9345cf",
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
              "uuid": "90f22b1d-9dcc-4fc2-a19b-c3e987782278",
              "parent_uuid": "4f90d59c-91df-4e04-b421-30903e9345cf",
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
              "uuid": "9e63f458-88f5-4856-ac4b-7417aec6a178",
              "parent_uuid": "4f90d59c-91df-4e04-b421-30903e9345cf",
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
              "uuid": "43cd30b3-988b-4a2d-b67b-f99a7e59778d",
              "parent_uuid": "4f90d59c-91df-4e04-b421-30903e9345cf",
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
          "uuid": "77a75f8b-7bae-45d5-9fee-f531e597e3e0",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb4f1499-e537-499b-acbe-35e69541bbf5",
              "parent_uuid": "77a75f8b-7bae-45d5-9fee-f531e597e3e0",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1b80f17b-8a82-40e3-910a-b2acb98ce70d",
              "parent_uuid": "77a75f8b-7bae-45d5-9fee-f531e597e3e0",
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
              "uuid": "8aa23f09-9f49-4e16-ab95-e722096011c1",
              "parent_uuid": "77a75f8b-7bae-45d5-9fee-f531e597e3e0",
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
              "uuid": "41bb5cb5-91da-4094-98bb-43de6f74fbe3",
              "parent_uuid": "77a75f8b-7bae-45d5-9fee-f531e597e3e0",
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
              "uuid": "cceab6a4-1612-45c7-81e4-ec77179270d6",
              "parent_uuid": "77a75f8b-7bae-45d5-9fee-f531e597e3e0",
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
              "uuid": "351050d8-9731-4c6c-81fb-b3ce91aeaeef",
              "parent_uuid": "77a75f8b-7bae-45d5-9fee-f531e597e3e0",
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
          "uuid": "3c260b1e-fdf0-47a6-81cc-88553a92e1c0",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3e6e51e8-3e28-4c30-931c-f3fb813a389e",
              "parent_uuid": "3c260b1e-fdf0-47a6-81cc-88553a92e1c0",
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
          "uuid": "da130000-2d98-4609-b82c-cffd4046a72b",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb2a54e7-0a62-40ff-973a-ee2eb45345ae",
              "parent_uuid": "da130000-2d98-4609-b82c-cffd4046a72b",
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
              "uuid": "78482118-e701-4014-b3e0-7fa2e3dd57bb",
              "parent_uuid": "da130000-2d98-4609-b82c-cffd4046a72b",
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
              "uuid": "7e037982-e071-4421-8947-be1a9eea0956",
              "parent_uuid": "da130000-2d98-4609-b82c-cffd4046a72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbe4ce84-e7c6-4574-8b19-62ed0caf87f2",
                  "parent_uuid": "7e037982-e071-4421-8947-be1a9eea0956",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b38e025-6980-4fe4-8805-c03594b73d95",
              "parent_uuid": "da130000-2d98-4609-b82c-cffd4046a72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d79fbe2-450c-485a-b22d-c96f4e518856",
                  "parent_uuid": "3b38e025-6980-4fe4-8805-c03594b73d95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9ad1628-e9fa-4af4-b0e5-59f1cf39a70c",
              "parent_uuid": "da130000-2d98-4609-b82c-cffd4046a72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c983420-4754-43d0-95cd-c2fc569eda3c",
                  "parent_uuid": "a9ad1628-e9fa-4af4-b0e5-59f1cf39a70c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0f7dbd9-f987-4fee-869a-105b9a87c4f1",
              "parent_uuid": "da130000-2d98-4609-b82c-cffd4046a72b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a52a64f-dbdd-42f3-bde5-f151acdfccc9",
                  "parent_uuid": "f0f7dbd9-f987-4fee-869a-105b9a87c4f1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "845d22d5-faa1-47f4-be31-f8424fc00fd4",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c88349bc-6956-4bac-85f0-3c7d7f5a6cd0",
              "parent_uuid": "845d22d5-faa1-47f4-be31-f8424fc00fd4",
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
              "uuid": "c6c19ea2-2bde-40e4-8947-71f1d4c236cb",
              "parent_uuid": "845d22d5-faa1-47f4-be31-f8424fc00fd4",
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
              "uuid": "8750ca9e-c20b-433b-85da-633e3d877822",
              "parent_uuid": "845d22d5-faa1-47f4-be31-f8424fc00fd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ff8b54e-a964-4594-aac7-8832e7c882b8",
                  "parent_uuid": "8750ca9e-c20b-433b-85da-633e3d877822",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1434924-2b7b-4337-9e4b-832361b63fe7",
              "parent_uuid": "845d22d5-faa1-47f4-be31-f8424fc00fd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d51c8a46-ab0f-4069-bbd1-8b3198a657fa",
                  "parent_uuid": "f1434924-2b7b-4337-9e4b-832361b63fe7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "421fe8d6-daae-49b3-a74c-6ed09c93f081",
              "parent_uuid": "845d22d5-faa1-47f4-be31-f8424fc00fd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "109ad4ba-d3de-4025-a8ac-3c52f9b86ea3",
                  "parent_uuid": "421fe8d6-daae-49b3-a74c-6ed09c93f081",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d85493e-2b78-46bd-a8e3-801f70eacdbe",
              "parent_uuid": "845d22d5-faa1-47f4-be31-f8424fc00fd4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffda700c-fa6b-4fcb-8755-b9212a549d08",
                  "parent_uuid": "2d85493e-2b78-46bd-a8e3-801f70eacdbe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3d73dd9b-3171-4320-93ca-6326f4f3d35b",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d032811c-fbf0-43ba-9f64-3fb0d8a55181",
              "parent_uuid": "3d73dd9b-3171-4320-93ca-6326f4f3d35b",
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
              "uuid": "e89e45b4-24d4-41a0-b3ee-2c2e29936900",
              "parent_uuid": "3d73dd9b-3171-4320-93ca-6326f4f3d35b",
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
              "uuid": "ba22adba-f076-442c-bc9f-184f06327577",
              "parent_uuid": "3d73dd9b-3171-4320-93ca-6326f4f3d35b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3461eafe-c1c2-46d2-809f-ac24df66edb2",
                  "parent_uuid": "ba22adba-f076-442c-bc9f-184f06327577",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3605c33e-a5cc-4cb5-8c62-33cbd339e62e",
              "parent_uuid": "3d73dd9b-3171-4320-93ca-6326f4f3d35b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4fba872-d714-492e-a2fd-6c64e8f7ccd1",
                  "parent_uuid": "3605c33e-a5cc-4cb5-8c62-33cbd339e62e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ffec6f1-94c5-4b46-b9e3-cd28f9db48bc",
              "parent_uuid": "3d73dd9b-3171-4320-93ca-6326f4f3d35b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ffa69f3-1944-4fd9-9a41-110bf6df9014",
                  "parent_uuid": "5ffec6f1-94c5-4b46-b9e3-cd28f9db48bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d66b6293-18d7-4b97-8a84-699b18ac92ae",
              "parent_uuid": "3d73dd9b-3171-4320-93ca-6326f4f3d35b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "feeb0117-822c-4868-91c1-dcb73fce6464",
                  "parent_uuid": "d66b6293-18d7-4b97-8a84-699b18ac92ae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "88479989-c709-481c-9178-ceb130c81db8",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c24aa227-f5d5-4381-beb9-c1dd63a1f5df",
              "parent_uuid": "88479989-c709-481c-9178-ceb130c81db8",
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
              "uuid": "3bc08256-06d2-4c8e-807f-9a00cda096d2",
              "parent_uuid": "88479989-c709-481c-9178-ceb130c81db8",
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
              "uuid": "c133fb39-2dd9-49dd-a7d1-8b4af1a6982f",
              "parent_uuid": "88479989-c709-481c-9178-ceb130c81db8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a60ded71-2857-4d0b-b5d3-15d0ee9e6945",
                  "parent_uuid": "c133fb39-2dd9-49dd-a7d1-8b4af1a6982f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "929dda50-f8ec-45e9-933a-7e7e4e92c23b",
              "parent_uuid": "88479989-c709-481c-9178-ceb130c81db8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d67d319a-701f-4bae-bfbf-4e9649bbf184",
                  "parent_uuid": "929dda50-f8ec-45e9-933a-7e7e4e92c23b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a432eed2-dd77-4965-915f-d70f45db0e45",
              "parent_uuid": "88479989-c709-481c-9178-ceb130c81db8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc6f5151-e5c6-4b45-94fa-4a79f47306a7",
                  "parent_uuid": "a432eed2-dd77-4965-915f-d70f45db0e45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99461185-9e8f-44bd-a66d-b90cd6759bb5",
              "parent_uuid": "88479989-c709-481c-9178-ceb130c81db8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a70f05e-9e70-4009-b995-f5ee79465658",
                  "parent_uuid": "99461185-9e8f-44bd-a66d-b90cd6759bb5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "67fcc23b-14bb-4c9b-9a0c-320efdfbf00b",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eff63eee-eb8d-49b5-98d1-1955164579a5",
              "parent_uuid": "67fcc23b-14bb-4c9b-9a0c-320efdfbf00b",
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
              "uuid": "19117dc6-205f-4eda-8032-8e203aa02bfd",
              "parent_uuid": "67fcc23b-14bb-4c9b-9a0c-320efdfbf00b",
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
              "uuid": "2667d7ac-af83-426b-9921-27566b7b79fa",
              "parent_uuid": "67fcc23b-14bb-4c9b-9a0c-320efdfbf00b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff8fefa9-e180-4a24-b40b-3c9188af83b3",
                  "parent_uuid": "2667d7ac-af83-426b-9921-27566b7b79fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86ce78f5-624a-4295-a825-3454e5afe4aa",
              "parent_uuid": "67fcc23b-14bb-4c9b-9a0c-320efdfbf00b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc093c09-ede1-4ec8-ac39-9589b8e505f1",
                  "parent_uuid": "86ce78f5-624a-4295-a825-3454e5afe4aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e83ce630-de78-44ee-8a93-df9b5870f730",
              "parent_uuid": "67fcc23b-14bb-4c9b-9a0c-320efdfbf00b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0830c6fc-f00b-4403-b74f-08b3e5c2c2b6",
                  "parent_uuid": "e83ce630-de78-44ee-8a93-df9b5870f730",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acc13f5d-30df-483e-920d-76d4664f414f",
              "parent_uuid": "67fcc23b-14bb-4c9b-9a0c-320efdfbf00b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43a3f002-b4b5-4af8-aeef-a39529a56d40",
                  "parent_uuid": "acc13f5d-30df-483e-920d-76d4664f414f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b81f6a04-5cbd-40c5-ac92-0cc39565c0e4",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "103768be-1dce-4caf-af68-4b1874cd0da6",
              "parent_uuid": "b81f6a04-5cbd-40c5-ac92-0cc39565c0e4",
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
              "uuid": "cb0e2b43-9b57-46dc-9393-689cffb384a8",
              "parent_uuid": "b81f6a04-5cbd-40c5-ac92-0cc39565c0e4",
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
              "uuid": "922b1a5d-f3e0-4aa2-bda6-54bb4c607c1d",
              "parent_uuid": "b81f6a04-5cbd-40c5-ac92-0cc39565c0e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e031294-9d82-4693-8405-426de8848ace",
                  "parent_uuid": "922b1a5d-f3e0-4aa2-bda6-54bb4c607c1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13f6e465-789b-4522-867d-9caafc4f31b2",
              "parent_uuid": "b81f6a04-5cbd-40c5-ac92-0cc39565c0e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b593d64e-0e05-494f-8f25-13ada13bd229",
                  "parent_uuid": "13f6e465-789b-4522-867d-9caafc4f31b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6fcdeeaa-b9dd-4e02-96ed-c6e46a6f4386",
              "parent_uuid": "b81f6a04-5cbd-40c5-ac92-0cc39565c0e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8aa8792-a595-46d8-8e99-6f60d10bded4",
                  "parent_uuid": "6fcdeeaa-b9dd-4e02-96ed-c6e46a6f4386",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2bcaf0e-d604-4442-99ab-399dbefd8975",
              "parent_uuid": "b81f6a04-5cbd-40c5-ac92-0cc39565c0e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f5c962a-a7dc-48c7-8830-11d1013e1088",
                  "parent_uuid": "c2bcaf0e-d604-4442-99ab-399dbefd8975",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "209962a4-b4a1-44c8-8fea-8b0c0736c882",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95ed0389-c5f9-4255-8cc6-f27013d21908",
              "parent_uuid": "209962a4-b4a1-44c8-8fea-8b0c0736c882",
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
              "uuid": "c681a7a1-9f25-4886-9c6f-82db9c3c97a1",
              "parent_uuid": "209962a4-b4a1-44c8-8fea-8b0c0736c882",
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
              "uuid": "2e36411b-add8-44f8-82fd-2c820e6b1dd0",
              "parent_uuid": "209962a4-b4a1-44c8-8fea-8b0c0736c882",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1edb3968-7b0c-4e7b-9794-fee8baba294d",
                  "parent_uuid": "2e36411b-add8-44f8-82fd-2c820e6b1dd0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8c3f219-c9d1-49d4-bfec-1686600c72d3",
              "parent_uuid": "209962a4-b4a1-44c8-8fea-8b0c0736c882",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5218c235-bcad-41fa-ab7f-7fb1a6808113",
                  "parent_uuid": "f8c3f219-c9d1-49d4-bfec-1686600c72d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9eb8c89-261d-4a3e-9ced-e3de49fd4677",
              "parent_uuid": "209962a4-b4a1-44c8-8fea-8b0c0736c882",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5028106-16ae-4ae7-ac15-61be349d4a8f",
                  "parent_uuid": "f9eb8c89-261d-4a3e-9ced-e3de49fd4677",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "596ab677-d3fb-4ba5-a8be-e2228d30da60",
              "parent_uuid": "209962a4-b4a1-44c8-8fea-8b0c0736c882",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3115bab1-c011-4308-bd94-89566c0594eb",
                  "parent_uuid": "596ab677-d3fb-4ba5-a8be-e2228d30da60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7009e998-4337-4b67-b18c-3d066df6fac6",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8382c100-7275-47f3-a40e-9092b848a210",
              "parent_uuid": "7009e998-4337-4b67-b18c-3d066df6fac6",
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
              "uuid": "e161837c-9b32-4830-8043-d64238b0fa1d",
              "parent_uuid": "7009e998-4337-4b67-b18c-3d066df6fac6",
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
              "uuid": "317a5910-e948-489c-8923-95b7f8c1b4f8",
              "parent_uuid": "7009e998-4337-4b67-b18c-3d066df6fac6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14ee576d-0d82-4bc5-82f6-8338b42c611f",
                  "parent_uuid": "317a5910-e948-489c-8923-95b7f8c1b4f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6db8d6bc-65f0-408b-8515-4a7ce5cceb6d",
              "parent_uuid": "7009e998-4337-4b67-b18c-3d066df6fac6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af848b85-9d3d-405a-bf34-8a8434c3a75a",
                  "parent_uuid": "6db8d6bc-65f0-408b-8515-4a7ce5cceb6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "793aa09c-777d-47dc-8e2a-7e7846dc7062",
              "parent_uuid": "7009e998-4337-4b67-b18c-3d066df6fac6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a6c82c0-12cf-47b4-be91-0e802ac7eb5b",
                  "parent_uuid": "793aa09c-777d-47dc-8e2a-7e7846dc7062",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "762e1066-eb89-47c4-b4f3-f81a7f9e0d2a",
              "parent_uuid": "7009e998-4337-4b67-b18c-3d066df6fac6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e31c06d1-ac53-4bd4-bce1-b0a59f62a42e",
                  "parent_uuid": "762e1066-eb89-47c4-b4f3-f81a7f9e0d2a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eff563c7-668b-4a14-acf8-ff4fa6a20382",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6dfdc41b-2c37-40e8-9013-490a0af0b32a",
              "parent_uuid": "eff563c7-668b-4a14-acf8-ff4fa6a20382",
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
              "uuid": "bc2a2895-7e0e-4a41-883f-b2d14756df08",
              "parent_uuid": "eff563c7-668b-4a14-acf8-ff4fa6a20382",
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
              "uuid": "2fc8997c-265c-45d0-b429-35cfc423ab41",
              "parent_uuid": "eff563c7-668b-4a14-acf8-ff4fa6a20382",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d668b6d-cd36-417c-8f8d-9e4e81aba6a9",
                  "parent_uuid": "2fc8997c-265c-45d0-b429-35cfc423ab41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60e7dc6e-db41-4adf-9162-b9e1009b0b3c",
              "parent_uuid": "eff563c7-668b-4a14-acf8-ff4fa6a20382",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "722fb80f-7ba5-4c76-bafb-66ff6088d99e",
                  "parent_uuid": "60e7dc6e-db41-4adf-9162-b9e1009b0b3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce4eaf06-b5fc-41bf-a154-e8eaa26fce88",
              "parent_uuid": "eff563c7-668b-4a14-acf8-ff4fa6a20382",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d90bd5f-b06d-447b-8f09-d4f38fa7c759",
                  "parent_uuid": "ce4eaf06-b5fc-41bf-a154-e8eaa26fce88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06763ad7-acb4-4ed2-8a6c-3a0c504a26d1",
              "parent_uuid": "eff563c7-668b-4a14-acf8-ff4fa6a20382",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c083dfa-f17d-4d6d-b7cf-df3fd5104054",
                  "parent_uuid": "06763ad7-acb4-4ed2-8a6c-3a0c504a26d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3677916f-d6df-4f18-be84-22f2025e4e43",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05317b4b-97d0-47fe-bda5-7b3bcdc876f4",
              "parent_uuid": "3677916f-d6df-4f18-be84-22f2025e4e43",
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
              "uuid": "e0c6d837-875f-4abd-aad4-06b48453dc2d",
              "parent_uuid": "3677916f-d6df-4f18-be84-22f2025e4e43",
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
              "uuid": "3b42f721-94db-44d3-b5d9-3e2e0cd6bda1",
              "parent_uuid": "3677916f-d6df-4f18-be84-22f2025e4e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c33e7fc5-f1cd-4c94-b6a5-c3aa783191d5",
                  "parent_uuid": "3b42f721-94db-44d3-b5d9-3e2e0cd6bda1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39118e4c-b971-4857-bca1-73574d506ff1",
              "parent_uuid": "3677916f-d6df-4f18-be84-22f2025e4e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17866051-988c-4bbe-bfdb-b27ce7a84cb7",
                  "parent_uuid": "39118e4c-b971-4857-bca1-73574d506ff1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f48af2c-0c46-4692-9e09-441ef71be728",
              "parent_uuid": "3677916f-d6df-4f18-be84-22f2025e4e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51f49f5e-b990-47bd-82d7-0abdfca16fa7",
                  "parent_uuid": "6f48af2c-0c46-4692-9e09-441ef71be728",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f8d2817-c379-424e-bd7c-4841fc8fe0dd",
              "parent_uuid": "3677916f-d6df-4f18-be84-22f2025e4e43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "857f3afd-73ad-4378-b823-03a11a8074e5",
                  "parent_uuid": "0f8d2817-c379-424e-bd7c-4841fc8fe0dd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "815a6d5c-0da5-4add-af40-0a1a64b64e9e",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3881d9e7-3b82-4ecb-aeeb-e42cee376cbf",
              "parent_uuid": "815a6d5c-0da5-4add-af40-0a1a64b64e9e",
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
              "uuid": "3b0ebc56-3d5e-4748-8fd0-28cd32424b55",
              "parent_uuid": "815a6d5c-0da5-4add-af40-0a1a64b64e9e",
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
              "uuid": "9bae2ae2-a476-484c-bea6-820feec02fd5",
              "parent_uuid": "815a6d5c-0da5-4add-af40-0a1a64b64e9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5109703d-8afb-41ff-9a72-9ceb7718f6f1",
                  "parent_uuid": "9bae2ae2-a476-484c-bea6-820feec02fd5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a927207-93a3-4a5b-8952-5df615c07ff9",
              "parent_uuid": "815a6d5c-0da5-4add-af40-0a1a64b64e9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b358247-6894-4c2d-9c93-a2ed67e066e8",
                  "parent_uuid": "3a927207-93a3-4a5b-8952-5df615c07ff9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be24d332-075f-46ee-8004-902e98a4883f",
              "parent_uuid": "815a6d5c-0da5-4add-af40-0a1a64b64e9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71f034cc-ecb0-4291-8722-afdbc54c7fcb",
                  "parent_uuid": "be24d332-075f-46ee-8004-902e98a4883f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fbb60ce-59d3-4704-8002-19a05055aca7",
              "parent_uuid": "815a6d5c-0da5-4add-af40-0a1a64b64e9e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b3b3869-b358-42e9-a28e-4fab3196f203",
                  "parent_uuid": "0fbb60ce-59d3-4704-8002-19a05055aca7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "46d50eda-8ba6-4c1d-bfe7-fa6236b83327",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cefb427-b59c-48d9-b3b7-c7dc61661dfc",
              "parent_uuid": "46d50eda-8ba6-4c1d-bfe7-fa6236b83327",
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
              "uuid": "108ff30f-f961-4ef3-9e24-b519c518b4c1",
              "parent_uuid": "46d50eda-8ba6-4c1d-bfe7-fa6236b83327",
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
              "uuid": "54dcaab3-f624-4ef9-abc9-0f33fe5baad0",
              "parent_uuid": "46d50eda-8ba6-4c1d-bfe7-fa6236b83327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b1f4c03-d2f3-4d7f-b525-ed4ef4cec8f6",
                  "parent_uuid": "54dcaab3-f624-4ef9-abc9-0f33fe5baad0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e3ae3af-f528-42af-96f3-114cba916a84",
              "parent_uuid": "46d50eda-8ba6-4c1d-bfe7-fa6236b83327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f36d4da4-8cd7-4309-affe-82261a7cfe9c",
                  "parent_uuid": "5e3ae3af-f528-42af-96f3-114cba916a84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "696f9552-3581-498e-a9be-8f3f6df3f12f",
              "parent_uuid": "46d50eda-8ba6-4c1d-bfe7-fa6236b83327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d284cb7-514b-4144-a6d8-44f06da97a6c",
                  "parent_uuid": "696f9552-3581-498e-a9be-8f3f6df3f12f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9ea8747-add2-46b6-ab31-da26ba863f71",
              "parent_uuid": "46d50eda-8ba6-4c1d-bfe7-fa6236b83327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "184c44f3-b292-4684-a3e9-32076e41b4a1",
                  "parent_uuid": "f9ea8747-add2-46b6-ab31-da26ba863f71",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "92b47835-2458-4f17-b98a-e8023c0bbeab",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74d0d17e-c528-42a0-9b5f-9cd5d251cc9f",
              "parent_uuid": "92b47835-2458-4f17-b98a-e8023c0bbeab",
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
              "uuid": "e10e1a9c-b609-4f33-a44a-4b94b8268583",
              "parent_uuid": "92b47835-2458-4f17-b98a-e8023c0bbeab",
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
              "uuid": "08520ac3-e2be-40f4-8e1c-53ceeedfe205",
              "parent_uuid": "92b47835-2458-4f17-b98a-e8023c0bbeab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "171841d4-aa1b-4319-9261-2f7d57289c46",
                  "parent_uuid": "08520ac3-e2be-40f4-8e1c-53ceeedfe205",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae6f56d3-2751-45c2-846e-b22be4de1035",
              "parent_uuid": "92b47835-2458-4f17-b98a-e8023c0bbeab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f5e1537-f016-4e6c-8687-91409b2ffc0b",
                  "parent_uuid": "ae6f56d3-2751-45c2-846e-b22be4de1035",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b1fed89-1b6d-446d-8f12-1d3f1189f8d7",
              "parent_uuid": "92b47835-2458-4f17-b98a-e8023c0bbeab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c57ad6ae-0d2e-4ff5-b4ee-318fb96598e5",
                  "parent_uuid": "1b1fed89-1b6d-446d-8f12-1d3f1189f8d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1329ef9e-158b-4277-8e0e-53c8f441ac8d",
              "parent_uuid": "92b47835-2458-4f17-b98a-e8023c0bbeab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d79b600e-1282-4706-a86c-52c294dd48dd",
                  "parent_uuid": "1329ef9e-158b-4277-8e0e-53c8f441ac8d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dee448e4-2cba-47fb-b3d8-0ab4616a6733",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ecd84c2-9bd8-4edf-a349-9f0130289be5",
              "parent_uuid": "dee448e4-2cba-47fb-b3d8-0ab4616a6733",
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
              "uuid": "8bfe6e20-c3e4-4a12-b0c6-8326bbb68e72",
              "parent_uuid": "dee448e4-2cba-47fb-b3d8-0ab4616a6733",
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
              "uuid": "7b91d77e-f237-414f-9d7f-34a2006c0094",
              "parent_uuid": "dee448e4-2cba-47fb-b3d8-0ab4616a6733",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98c404a2-694e-4a11-8faf-ebdfefa42290",
                  "parent_uuid": "7b91d77e-f237-414f-9d7f-34a2006c0094",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16f06cfb-faf8-443f-a3b1-409c4eb14172",
              "parent_uuid": "dee448e4-2cba-47fb-b3d8-0ab4616a6733",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8aaf18d9-98de-4972-b083-d957d78c8654",
                  "parent_uuid": "16f06cfb-faf8-443f-a3b1-409c4eb14172",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3a9578a-d154-428d-9fbf-5d9d4b274e39",
              "parent_uuid": "dee448e4-2cba-47fb-b3d8-0ab4616a6733",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f36002c-b515-4abc-a8a8-7b4ca5523613",
                  "parent_uuid": "d3a9578a-d154-428d-9fbf-5d9d4b274e39",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e09f2be0-1a8a-4e09-b127-d611e6396121",
              "parent_uuid": "dee448e4-2cba-47fb-b3d8-0ab4616a6733",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a7f7429-c4d8-45e9-87be-c7caf6ecee44",
                  "parent_uuid": "e09f2be0-1a8a-4e09-b127-d611e6396121",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4859887f-364f-4619-9a40-f486c2bf78db",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71ad8af4-898a-4cb8-9c0a-9b173ed8da58",
              "parent_uuid": "4859887f-364f-4619-9a40-f486c2bf78db",
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
          "uuid": "f818905b-124e-440b-967a-7c83142a7a97",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "91c07d62-b2ba-41ac-899f-83b4bd56b75b",
              "parent_uuid": "f818905b-124e-440b-967a-7c83142a7a97",
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
          "uuid": "dbed087c-c75f-4c5e-aeba-8c5e500822b9",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ae963cf-c381-4fb4-a599-b2ec7b589d49",
              "parent_uuid": "dbed087c-c75f-4c5e-aeba-8c5e500822b9",
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
              "uuid": "94f39fe4-85bf-482e-8e1c-f94241076225",
              "parent_uuid": "dbed087c-c75f-4c5e-aeba-8c5e500822b9",
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
              "uuid": "e1d0f247-b7ae-453e-be7f-7862b64d1195",
              "parent_uuid": "dbed087c-c75f-4c5e-aeba-8c5e500822b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32a01a79-474a-44ff-ac6d-801a85037232",
                  "parent_uuid": "e1d0f247-b7ae-453e-be7f-7862b64d1195",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27596849-c8f3-4f5e-9ce3-3c6481cdc715",
              "parent_uuid": "dbed087c-c75f-4c5e-aeba-8c5e500822b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "924a81ab-e9b7-4b14-aca1-650c9331f230",
                  "parent_uuid": "27596849-c8f3-4f5e-9ce3-3c6481cdc715",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5eb0f7ee-8afb-48af-9556-cd5d842aadcb",
              "parent_uuid": "dbed087c-c75f-4c5e-aeba-8c5e500822b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86a09f69-ef0b-47d8-9167-3ce7ddfb6097",
                  "parent_uuid": "5eb0f7ee-8afb-48af-9556-cd5d842aadcb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73e80a32-72d6-4fa0-a789-806a7bf00bc3",
              "parent_uuid": "dbed087c-c75f-4c5e-aeba-8c5e500822b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00ee72a8-e4d0-4f33-8aba-6292216ac124",
                  "parent_uuid": "73e80a32-72d6-4fa0-a789-806a7bf00bc3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ef2db797-63c2-426f-af61-26bbabb3dedc",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "17d20a96-3b0d-4c9a-9af4-24cbe6f42e5f",
              "parent_uuid": "ef2db797-63c2-426f-af61-26bbabb3dedc",
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
              "uuid": "162fecf5-cbe3-4443-8406-cd6c49efe784",
              "parent_uuid": "ef2db797-63c2-426f-af61-26bbabb3dedc",
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
              "uuid": "efb0ead3-ee82-41c2-a190-9614c5ed5b34",
              "parent_uuid": "ef2db797-63c2-426f-af61-26bbabb3dedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "488b8e94-697a-4bf7-bc74-0f6027b7b3b5",
                  "parent_uuid": "efb0ead3-ee82-41c2-a190-9614c5ed5b34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50fbf866-7a4c-4061-9ccc-39ad7e0f93dc",
              "parent_uuid": "ef2db797-63c2-426f-af61-26bbabb3dedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a488de61-d2f1-474e-8dcd-48ba8545358d",
                  "parent_uuid": "50fbf866-7a4c-4061-9ccc-39ad7e0f93dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a005f359-4f3e-4dff-9461-7fce901afa0b",
              "parent_uuid": "ef2db797-63c2-426f-af61-26bbabb3dedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8249e57e-1af7-4973-b8cb-075598f8ec65",
                  "parent_uuid": "a005f359-4f3e-4dff-9461-7fce901afa0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af0199e8-a589-4e8e-8863-433f0b88a3b7",
              "parent_uuid": "ef2db797-63c2-426f-af61-26bbabb3dedc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1dd05cbd-1715-41ce-8362-2e98b6c46e22",
                  "parent_uuid": "af0199e8-a589-4e8e-8863-433f0b88a3b7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "12b9fd70-2786-4954-9be0-abc55679c17b",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a11b0c10-f923-418d-ab19-f2363c42b4a7",
              "parent_uuid": "12b9fd70-2786-4954-9be0-abc55679c17b",
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
              "uuid": "7c63bebb-f0c3-48b8-b6be-2d04dbc6f02c",
              "parent_uuid": "12b9fd70-2786-4954-9be0-abc55679c17b",
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
              "uuid": "456f4cd6-a71b-4f33-b44e-22d590830df4",
              "parent_uuid": "12b9fd70-2786-4954-9be0-abc55679c17b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b18d739a-28ec-4b34-9d2b-30cd72bad602",
                  "parent_uuid": "456f4cd6-a71b-4f33-b44e-22d590830df4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00998261-0d5f-451a-9f67-b24bbd2dbbf8",
              "parent_uuid": "12b9fd70-2786-4954-9be0-abc55679c17b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f3c4700-a406-4de3-b6b8-851047241461",
                  "parent_uuid": "00998261-0d5f-451a-9f67-b24bbd2dbbf8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a10b8c2-3fc1-4099-952f-0570ea9f532c",
              "parent_uuid": "12b9fd70-2786-4954-9be0-abc55679c17b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da746457-ed32-4f31-a666-018bd1763361",
                  "parent_uuid": "7a10b8c2-3fc1-4099-952f-0570ea9f532c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec53c7e8-b3c9-47d3-a778-28ab1552d33c",
              "parent_uuid": "12b9fd70-2786-4954-9be0-abc55679c17b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f05135a-97d5-45da-a597-84bf4eaf961f",
                  "parent_uuid": "ec53c7e8-b3c9-47d3-a778-28ab1552d33c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "11066cf9-cdbd-4156-977c-145a6de44793",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fb78fb9-f55c-42fe-9368-b12e8071083e",
              "parent_uuid": "11066cf9-cdbd-4156-977c-145a6de44793",
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
              "uuid": "458db622-eab0-4d51-9966-2dc434cc62f6",
              "parent_uuid": "11066cf9-cdbd-4156-977c-145a6de44793",
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
              "uuid": "bc08d031-202b-40bb-b84a-173c10718a00",
              "parent_uuid": "11066cf9-cdbd-4156-977c-145a6de44793",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e624fab-9567-4ec8-9106-ab660e48c8c1",
                  "parent_uuid": "bc08d031-202b-40bb-b84a-173c10718a00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed0c1d18-323c-4627-8508-013c95163283",
              "parent_uuid": "11066cf9-cdbd-4156-977c-145a6de44793",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "355ff533-9432-465d-9057-bf84ab124379",
                  "parent_uuid": "ed0c1d18-323c-4627-8508-013c95163283",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d63d6566-dc17-4a89-8fd7-6296e18f8997",
              "parent_uuid": "11066cf9-cdbd-4156-977c-145a6de44793",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06792bd2-5a00-4a78-b31a-213470a8014e",
                  "parent_uuid": "d63d6566-dc17-4a89-8fd7-6296e18f8997",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5b6f64b-9a27-4b1b-94d4-80842fcb06c1",
              "parent_uuid": "11066cf9-cdbd-4156-977c-145a6de44793",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85ae9961-52fe-411c-9097-7c1f0b1c49f7",
                  "parent_uuid": "c5b6f64b-9a27-4b1b-94d4-80842fcb06c1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "104eb2ce-0d74-4502-b3c4-2bd42d9ca242",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1a4c28b2-3b01-4902-8c05-8382d73aefbc",
              "parent_uuid": "104eb2ce-0d74-4502-b3c4-2bd42d9ca242",
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
              "uuid": "94d7a754-4ae1-4dcc-99f0-533d482a6ded",
              "parent_uuid": "104eb2ce-0d74-4502-b3c4-2bd42d9ca242",
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
              "uuid": "44237908-7c7f-4594-8112-b90ee9515335",
              "parent_uuid": "104eb2ce-0d74-4502-b3c4-2bd42d9ca242",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d0f9d04-2267-4f80-9471-f38658155b6a",
                  "parent_uuid": "44237908-7c7f-4594-8112-b90ee9515335",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7f09970-634b-4990-b82e-3b09a7636b01",
              "parent_uuid": "104eb2ce-0d74-4502-b3c4-2bd42d9ca242",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4fd9db5-19fc-4c19-8a85-f43ea2027bab",
                  "parent_uuid": "d7f09970-634b-4990-b82e-3b09a7636b01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe607e1e-d1a3-40e9-a146-87e94a6a42be",
              "parent_uuid": "104eb2ce-0d74-4502-b3c4-2bd42d9ca242",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe08bf53-09e1-4038-a80d-c200dc04f9a5",
                  "parent_uuid": "fe607e1e-d1a3-40e9-a146-87e94a6a42be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65cfaa4a-688a-457f-86ed-37ca5281a17f",
              "parent_uuid": "104eb2ce-0d74-4502-b3c4-2bd42d9ca242",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e288a9aa-819e-4a14-ab5c-b3496fa1be88",
                  "parent_uuid": "65cfaa4a-688a-457f-86ed-37ca5281a17f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "668e2d80-14c7-4b20-bdb4-a6373bc93383",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf86ea85-edf8-4847-8f22-4e7e46beb5a0",
              "parent_uuid": "668e2d80-14c7-4b20-bdb4-a6373bc93383",
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
              "uuid": "de54ead1-54e6-489b-922d-4174bec4b84f",
              "parent_uuid": "668e2d80-14c7-4b20-bdb4-a6373bc93383",
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
              "uuid": "e19520a0-7caa-4950-a3ae-a5d93992104b",
              "parent_uuid": "668e2d80-14c7-4b20-bdb4-a6373bc93383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04645f87-e0a0-464a-bbe4-738610ae1629",
                  "parent_uuid": "e19520a0-7caa-4950-a3ae-a5d93992104b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6dd7f28-2f1c-404c-989a-812009413c88",
              "parent_uuid": "668e2d80-14c7-4b20-bdb4-a6373bc93383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c610204-3eb3-4e3e-8ff7-10a5c598091b",
                  "parent_uuid": "f6dd7f28-2f1c-404c-989a-812009413c88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "957358a4-15ec-48f6-a00e-b33cafaa5a99",
              "parent_uuid": "668e2d80-14c7-4b20-bdb4-a6373bc93383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b07970ab-3ce8-4147-a385-ed4f8e4de076",
                  "parent_uuid": "957358a4-15ec-48f6-a00e-b33cafaa5a99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7da1e901-e000-48cc-a138-f090a2d6c84b",
              "parent_uuid": "668e2d80-14c7-4b20-bdb4-a6373bc93383",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24f83729-c5c4-4dbe-8b64-ea54aee038a0",
                  "parent_uuid": "7da1e901-e000-48cc-a138-f090a2d6c84b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a58ae403-ae24-4541-82fd-99f4f2d807fa",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aaf52cc7-12c3-4b11-8a0b-ef3a5fce1db9",
              "parent_uuid": "a58ae403-ae24-4541-82fd-99f4f2d807fa",
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
              "uuid": "9289b171-af27-451a-ba4f-13ffe4a43f24",
              "parent_uuid": "a58ae403-ae24-4541-82fd-99f4f2d807fa",
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
              "uuid": "86463a7f-fbaf-4106-8511-ac602689240d",
              "parent_uuid": "a58ae403-ae24-4541-82fd-99f4f2d807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44a22e7b-5dc3-4f42-a6c2-334eea84272d",
                  "parent_uuid": "86463a7f-fbaf-4106-8511-ac602689240d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8c79b2c-7b70-4f11-857d-99a7fa4f7c8b",
              "parent_uuid": "a58ae403-ae24-4541-82fd-99f4f2d807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1234b8c-59a6-4ce4-bba1-a9ebf77b744c",
                  "parent_uuid": "b8c79b2c-7b70-4f11-857d-99a7fa4f7c8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "299460c6-2e67-462a-a52e-99721f8f06be",
              "parent_uuid": "a58ae403-ae24-4541-82fd-99f4f2d807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8df2c3a3-62fa-4e01-bf6e-eb704bcb8c10",
                  "parent_uuid": "299460c6-2e67-462a-a52e-99721f8f06be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "615e9d5f-9b92-4e12-bf35-e8ac83efe601",
              "parent_uuid": "a58ae403-ae24-4541-82fd-99f4f2d807fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3841f810-2fdd-4b40-905c-339434772d8b",
                  "parent_uuid": "615e9d5f-9b92-4e12-bf35-e8ac83efe601",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ec3923d7-56a2-4ea8-a227-a7225c2d0fbc",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd9f48e3-215f-4205-b6c3-4e3718615c25",
              "parent_uuid": "ec3923d7-56a2-4ea8-a227-a7225c2d0fbc",
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
              "uuid": "22395feb-15c0-4bee-aee9-2b42ba42de8e",
              "parent_uuid": "ec3923d7-56a2-4ea8-a227-a7225c2d0fbc",
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
              "uuid": "4e6f814f-a44a-4a59-adcf-e0d2075c6618",
              "parent_uuid": "ec3923d7-56a2-4ea8-a227-a7225c2d0fbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb01b15c-1d42-4420-98c0-1fe6654a32b6",
                  "parent_uuid": "4e6f814f-a44a-4a59-adcf-e0d2075c6618",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7183bd3c-0f16-4760-b6aa-ede93d9630da",
              "parent_uuid": "ec3923d7-56a2-4ea8-a227-a7225c2d0fbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce7914c3-323b-49c0-9136-483fca98d11c",
                  "parent_uuid": "7183bd3c-0f16-4760-b6aa-ede93d9630da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52a8e309-9c83-43c3-afaa-cfd6152aca8f",
              "parent_uuid": "ec3923d7-56a2-4ea8-a227-a7225c2d0fbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ce6e415-73cc-40ab-b138-8694f070fad5",
                  "parent_uuid": "52a8e309-9c83-43c3-afaa-cfd6152aca8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b9cbb71-b20a-4c91-9a25-2da7ba25c83c",
              "parent_uuid": "ec3923d7-56a2-4ea8-a227-a7225c2d0fbc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3a8e5d9-9abb-4b00-a3f5-0bb739500c6d",
                  "parent_uuid": "3b9cbb71-b20a-4c91-9a25-2da7ba25c83c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fba856ec-4edd-4895-aff2-17aa465da011",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a2574ace-854c-4f1f-960f-899f5c512761",
              "parent_uuid": "fba856ec-4edd-4895-aff2-17aa465da011",
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
          "uuid": "923af703-d74a-427d-a9c7-7d98d4522bd1",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d4b813a9-8c59-4be5-aaf2-c99e159c34c0",
              "parent_uuid": "923af703-d74a-427d-a9c7-7d98d4522bd1",
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
              "uuid": "14c15e0c-9e27-45c3-b5ba-5ffcbeb0b3ab",
              "parent_uuid": "923af703-d74a-427d-a9c7-7d98d4522bd1",
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
              "uuid": "f5667d72-7c00-41b1-a10a-661620c2585c",
              "parent_uuid": "923af703-d74a-427d-a9c7-7d98d4522bd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "795af8da-6cd6-492e-b946-6b546935ae11",
                  "parent_uuid": "f5667d72-7c00-41b1-a10a-661620c2585c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ee126da-efe3-416f-87d8-0c7c2cbe7444",
              "parent_uuid": "923af703-d74a-427d-a9c7-7d98d4522bd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8844fb6d-864c-4992-a467-423407044742",
                  "parent_uuid": "2ee126da-efe3-416f-87d8-0c7c2cbe7444",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebd95950-f1bd-4a33-8f4c-7bb6cd27da00",
              "parent_uuid": "923af703-d74a-427d-a9c7-7d98d4522bd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46b9aa1c-8611-4d21-a4f0-2e74e554ebd6",
                  "parent_uuid": "ebd95950-f1bd-4a33-8f4c-7bb6cd27da00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13fe747e-75ef-4a89-b322-57a253e33b1c",
              "parent_uuid": "923af703-d74a-427d-a9c7-7d98d4522bd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "978f6e30-98c7-4730-8c73-c5d98ec2c15e",
                  "parent_uuid": "13fe747e-75ef-4a89-b322-57a253e33b1c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "89a05bc5-7ffc-44cb-b1a5-e7ed057204cf",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "877839d8-6113-4093-84d2-46c0524f1773",
              "parent_uuid": "89a05bc5-7ffc-44cb-b1a5-e7ed057204cf",
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
              "uuid": "d18577fb-bbc0-4bef-a167-459d8593d966",
              "parent_uuid": "89a05bc5-7ffc-44cb-b1a5-e7ed057204cf",
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
              "uuid": "bdb865a8-cd83-4f2b-987e-3eb124493468",
              "parent_uuid": "89a05bc5-7ffc-44cb-b1a5-e7ed057204cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e29fb53b-892b-4b49-90b7-69ec82086299",
                  "parent_uuid": "bdb865a8-cd83-4f2b-987e-3eb124493468",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8df5fc94-1c7e-48aa-a960-dd59bd6007dd",
              "parent_uuid": "89a05bc5-7ffc-44cb-b1a5-e7ed057204cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38b77596-8311-4fa1-af6b-ccc492895657",
                  "parent_uuid": "8df5fc94-1c7e-48aa-a960-dd59bd6007dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48274963-211f-4c41-bd3a-94d5043355cb",
              "parent_uuid": "89a05bc5-7ffc-44cb-b1a5-e7ed057204cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d04ba24-db38-4af7-bdb7-79c29f9d7a88",
                  "parent_uuid": "48274963-211f-4c41-bd3a-94d5043355cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "289a746d-c38f-494e-9046-b63ab2d03b72",
              "parent_uuid": "89a05bc5-7ffc-44cb-b1a5-e7ed057204cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76eda081-4e27-4cf2-aa03-299f1e129029",
                  "parent_uuid": "289a746d-c38f-494e-9046-b63ab2d03b72",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3a608270-55fe-4929-b505-0a8d39d62727",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bef66b61-b698-41c9-9945-6bd3cd1b10dc",
              "parent_uuid": "3a608270-55fe-4929-b505-0a8d39d62727",
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
          "uuid": "68f79156-7531-45fa-bb9b-11517d334021",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "610c8f2a-c0de-40e1-8e00-4ac8f1f13335",
              "parent_uuid": "68f79156-7531-45fa-bb9b-11517d334021",
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
          "uuid": "b7aff23b-92e7-4134-bbbb-a3b0af57a021",
          "parent_uuid": "938b3d11-6f9b-4162-84fb-570dc4d83ace",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f70fbbe7-2893-4177-b89c-e129cb5a3148",
              "parent_uuid": "b7aff23b-92e7-4134-bbbb-a3b0af57a021",
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
                  "uuid": "de9276c2-cf27-47ba-bb32-fe815c432e71",
                  "parent_uuid": "f70fbbe7-2893-4177-b89c-e129cb5a3148",
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

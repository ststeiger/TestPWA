
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
  "uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "4ca4cde4-9258-4f09-9ab4-8b3e867a754c",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "8ab97d5c-0c5c-4e83-80d8-aeb5c12645a6",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "402a5ea4-ba44-4aaf-9d13-0a3257c31b78",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "3d1ac650-1488-46dd-a898-a06a60d1e46e",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "ab7279ff-c6b8-4690-ab93-b54069647d01",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "ba955d79-0aeb-4314-bc27-5075f4f2051a",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "7eef8781-dd42-4605-b8de-94dd0833f9ee",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
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
      "uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
      "parent_uuid": "13fe7385-fc7c-4cc4-b143-984518758563",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "e356841e-0b69-4941-8100-ecb2d5147ec1",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "67c97226-951c-4b6d-a392-946d662838de",
              "parent_uuid": "e356841e-0b69-4941-8100-ecb2d5147ec1",
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
              "uuid": "04a8c3e1-25aa-49ab-b4cb-812ceb403418",
              "parent_uuid": "e356841e-0b69-4941-8100-ecb2d5147ec1",
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
              "uuid": "90fba51b-d73e-4cf9-b4db-0a456e52b997",
              "parent_uuid": "e356841e-0b69-4941-8100-ecb2d5147ec1",
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
              "uuid": "6321141b-787e-40a7-b795-e5f476b9b6ce",
              "parent_uuid": "e356841e-0b69-4941-8100-ecb2d5147ec1",
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
          "uuid": "a9cd82f4-f00d-49ab-abc5-c5d377bd1f7a",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "b6c09209-c45f-4572-928f-9043e2a2fa60",
              "parent_uuid": "a9cd82f4-f00d-49ab-abc5-c5d377bd1f7a",
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
              "uuid": "343e4ef4-dff5-4dbc-a677-e76c8ee9d8f6",
              "parent_uuid": "a9cd82f4-f00d-49ab-abc5-c5d377bd1f7a",
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
              "uuid": "519912b4-facd-4300-aa0f-a5787646cbf1",
              "parent_uuid": "a9cd82f4-f00d-49ab-abc5-c5d377bd1f7a",
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
              "uuid": "514bec81-13fe-40a6-8864-d8d86995508e",
              "parent_uuid": "a9cd82f4-f00d-49ab-abc5-c5d377bd1f7a",
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
          "uuid": "7f0034bb-ca2e-4683-a812-23858bde8a6c",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a14f5a8b-8704-4397-ba2d-ef5a9c3052ee",
              "parent_uuid": "7f0034bb-ca2e-4683-a812-23858bde8a6c",
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
              "uuid": "857c20c9-17ce-46dc-94cd-e1c5f611d6a4",
              "parent_uuid": "7f0034bb-ca2e-4683-a812-23858bde8a6c",
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
              "uuid": "0782f4ad-ab92-41d1-92fe-e7d195f8e35d",
              "parent_uuid": "7f0034bb-ca2e-4683-a812-23858bde8a6c",
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
              "uuid": "f22cc76a-9588-4b73-ab1a-c50f50cd57f9",
              "parent_uuid": "7f0034bb-ca2e-4683-a812-23858bde8a6c",
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
              "uuid": "9965e5c2-484b-4584-92af-ab2b308d00d0",
              "parent_uuid": "7f0034bb-ca2e-4683-a812-23858bde8a6c",
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
              "uuid": "c3af2367-5337-4e1e-aa3f-4a0c13af319a",
              "parent_uuid": "7f0034bb-ca2e-4683-a812-23858bde8a6c",
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
          "uuid": "b6cebdd8-249d-45a8-acfb-1af5f92eb534",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3244e49f-b0ac-41c1-94d3-46a4f98cbe77",
              "parent_uuid": "b6cebdd8-249d-45a8-acfb-1af5f92eb534",
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
          "uuid": "cf52e3cb-c48e-41f1-af1a-a7833ba0616b",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e721efa-3966-4080-868d-c6da3eadf27c",
              "parent_uuid": "cf52e3cb-c48e-41f1-af1a-a7833ba0616b",
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
              "uuid": "1959bcff-163e-4d6b-9854-1abeb66b9689",
              "parent_uuid": "cf52e3cb-c48e-41f1-af1a-a7833ba0616b",
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
              "uuid": "b217e62e-ca6a-4932-951f-f03b36e1bad3",
              "parent_uuid": "cf52e3cb-c48e-41f1-af1a-a7833ba0616b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cccdb6f-d558-4806-bed2-08f519cd92d9",
                  "parent_uuid": "b217e62e-ca6a-4932-951f-f03b36e1bad3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5533ce7-842e-4aa9-b71b-c6236e07e5ae",
              "parent_uuid": "cf52e3cb-c48e-41f1-af1a-a7833ba0616b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae7530af-d1a2-4125-ad41-a994896d1d90",
                  "parent_uuid": "d5533ce7-842e-4aa9-b71b-c6236e07e5ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d244a0ec-8e12-4c44-80fe-960f558d6032",
              "parent_uuid": "cf52e3cb-c48e-41f1-af1a-a7833ba0616b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3731ae7a-1a7c-4bc7-87d2-e44650bfdcb6",
                  "parent_uuid": "d244a0ec-8e12-4c44-80fe-960f558d6032",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6934353-e117-4db3-a09f-4cdc57896edd",
              "parent_uuid": "cf52e3cb-c48e-41f1-af1a-a7833ba0616b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e2bf161-9d95-4cdb-9f59-eb03f98a3cfc",
                  "parent_uuid": "f6934353-e117-4db3-a09f-4cdc57896edd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "945fde77-bb48-4fec-ba91-9376efabfb3d",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0dde6b66-5e3d-4203-8c39-74ba193f4f9f",
              "parent_uuid": "945fde77-bb48-4fec-ba91-9376efabfb3d",
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
              "uuid": "c215626f-a0c4-4fdc-b323-0ba4a8422dfc",
              "parent_uuid": "945fde77-bb48-4fec-ba91-9376efabfb3d",
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
              "uuid": "7fa6618f-2897-46b6-9d02-d13919e8cc2b",
              "parent_uuid": "945fde77-bb48-4fec-ba91-9376efabfb3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1f972ed-73af-432a-b48b-29eda84d4886",
                  "parent_uuid": "7fa6618f-2897-46b6-9d02-d13919e8cc2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "656256d2-3992-4f2d-8325-697f47ed58b7",
              "parent_uuid": "945fde77-bb48-4fec-ba91-9376efabfb3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb8df608-4a04-4af9-a906-af3897e4f028",
                  "parent_uuid": "656256d2-3992-4f2d-8325-697f47ed58b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff9091e0-c26b-43e7-9448-670574bff2a0",
              "parent_uuid": "945fde77-bb48-4fec-ba91-9376efabfb3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e5a471d-e088-4ea2-bfea-93f763543644",
                  "parent_uuid": "ff9091e0-c26b-43e7-9448-670574bff2a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19e4f5d8-4cc4-4766-a21c-6e53cc786d88",
              "parent_uuid": "945fde77-bb48-4fec-ba91-9376efabfb3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82dfd7aa-4adc-4eeb-80df-7fa881e8ef17",
                  "parent_uuid": "19e4f5d8-4cc4-4766-a21c-6e53cc786d88",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "79c1daa3-49a0-4df2-82e7-c2a7483007ad",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1351de86-7259-4e0f-8013-3d0e82669ae6",
              "parent_uuid": "79c1daa3-49a0-4df2-82e7-c2a7483007ad",
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
              "uuid": "dad882cb-ffc2-473a-99bf-2033861bbb40",
              "parent_uuid": "79c1daa3-49a0-4df2-82e7-c2a7483007ad",
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
              "uuid": "04546bf8-24fd-401d-aab7-2d84127a2eee",
              "parent_uuid": "79c1daa3-49a0-4df2-82e7-c2a7483007ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fe9f867-e660-4ec2-a49e-8014a00bfdec",
                  "parent_uuid": "04546bf8-24fd-401d-aab7-2d84127a2eee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a3b37cf-a7ce-4cf8-b317-9463e0d24a62",
              "parent_uuid": "79c1daa3-49a0-4df2-82e7-c2a7483007ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df2f2a88-5a12-46d2-a3b8-016ca178f1c9",
                  "parent_uuid": "4a3b37cf-a7ce-4cf8-b317-9463e0d24a62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1375a61c-b41c-4cbb-9bf6-98abc2994316",
              "parent_uuid": "79c1daa3-49a0-4df2-82e7-c2a7483007ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe34e0fa-a9e3-4506-a7d3-27d4c4797b9a",
                  "parent_uuid": "1375a61c-b41c-4cbb-9bf6-98abc2994316",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "490c0305-db80-4f82-b81a-b0057df4e705",
              "parent_uuid": "79c1daa3-49a0-4df2-82e7-c2a7483007ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "408399bd-34bf-4cf0-8e4a-8b44a2c2deed",
                  "parent_uuid": "490c0305-db80-4f82-b81a-b0057df4e705",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "602ba56a-d2f4-4914-928b-c523f7c8b186",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e737ef40-3e2f-49d0-abfd-6c3a9776d3bb",
              "parent_uuid": "602ba56a-d2f4-4914-928b-c523f7c8b186",
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
              "uuid": "15bb94ce-7be5-49ba-9db8-f22f273ed05c",
              "parent_uuid": "602ba56a-d2f4-4914-928b-c523f7c8b186",
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
              "uuid": "cf3f2333-fd45-4959-93ff-a20de2d7fd47",
              "parent_uuid": "602ba56a-d2f4-4914-928b-c523f7c8b186",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd88e3f3-7fa4-4603-92ed-040e1dea4980",
                  "parent_uuid": "cf3f2333-fd45-4959-93ff-a20de2d7fd47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93d81be7-2689-4dd5-80e8-51010969e536",
              "parent_uuid": "602ba56a-d2f4-4914-928b-c523f7c8b186",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74ada149-d3ee-456c-a26d-b611897ac3da",
                  "parent_uuid": "93d81be7-2689-4dd5-80e8-51010969e536",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a741a6d4-e542-4959-a5e9-41a03606a28e",
              "parent_uuid": "602ba56a-d2f4-4914-928b-c523f7c8b186",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d66d7e69-2c90-4f48-ab1f-314e03c52ff2",
                  "parent_uuid": "a741a6d4-e542-4959-a5e9-41a03606a28e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bca2edbc-27f6-4840-bb60-49323146377e",
              "parent_uuid": "602ba56a-d2f4-4914-928b-c523f7c8b186",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f659fb35-719c-4396-8d47-a2c9d4f9fa6f",
                  "parent_uuid": "bca2edbc-27f6-4840-bb60-49323146377e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f770f3e9-2ace-432c-9c8b-ae13457f14c7",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4110d6b-ad96-4a7f-a275-d1a97515465b",
              "parent_uuid": "f770f3e9-2ace-432c-9c8b-ae13457f14c7",
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
              "uuid": "e3551a05-3b5d-4b5c-801e-ee9bc73dce9f",
              "parent_uuid": "f770f3e9-2ace-432c-9c8b-ae13457f14c7",
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
              "uuid": "7df1a690-70d0-420b-b2c6-be80d8dee568",
              "parent_uuid": "f770f3e9-2ace-432c-9c8b-ae13457f14c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "680f4eb7-c81e-40a3-b38a-5f91749cf223",
                  "parent_uuid": "7df1a690-70d0-420b-b2c6-be80d8dee568",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60c7ed8c-b097-4395-9b70-47d62272cdd1",
              "parent_uuid": "f770f3e9-2ace-432c-9c8b-ae13457f14c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0ecd1dc0-c526-4701-a298-46793446c6d1",
                  "parent_uuid": "60c7ed8c-b097-4395-9b70-47d62272cdd1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25db095d-6db6-4093-b5eb-f3bdba936ef1",
              "parent_uuid": "f770f3e9-2ace-432c-9c8b-ae13457f14c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9e4b292b-1b99-41e3-9043-c1b6f0798435",
                  "parent_uuid": "25db095d-6db6-4093-b5eb-f3bdba936ef1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3385b32a-54fe-47b8-ba53-aa61fa60f60d",
              "parent_uuid": "f770f3e9-2ace-432c-9c8b-ae13457f14c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f65ce7ae-18d3-4970-95f6-f87cd31e5f43",
                  "parent_uuid": "3385b32a-54fe-47b8-ba53-aa61fa60f60d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "85913a92-ed97-4682-87e9-103904f28f0a",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1feabe4-81b7-4e6e-8b1f-bd2648e62aaa",
              "parent_uuid": "85913a92-ed97-4682-87e9-103904f28f0a",
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
              "uuid": "e4687532-1680-4f0b-9057-1a0f924bce50",
              "parent_uuid": "85913a92-ed97-4682-87e9-103904f28f0a",
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
              "uuid": "1d9871cb-8620-4e78-9e8e-c364e06b4105",
              "parent_uuid": "85913a92-ed97-4682-87e9-103904f28f0a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ee8b860-3ec1-42ae-9e7b-d592e2717717",
                  "parent_uuid": "1d9871cb-8620-4e78-9e8e-c364e06b4105",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85b9f824-cdc4-4b28-bfa9-6dd76eb51265",
              "parent_uuid": "85913a92-ed97-4682-87e9-103904f28f0a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a049eaa9-3925-4f98-aa5b-4cb3fa158089",
                  "parent_uuid": "85b9f824-cdc4-4b28-bfa9-6dd76eb51265",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d38b13bd-f24a-4502-a75d-cafd7c90d494",
              "parent_uuid": "85913a92-ed97-4682-87e9-103904f28f0a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae75604d-033e-4c58-bc5f-13476a5151e9",
                  "parent_uuid": "d38b13bd-f24a-4502-a75d-cafd7c90d494",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce42d440-3687-45a2-857f-23c28662db40",
              "parent_uuid": "85913a92-ed97-4682-87e9-103904f28f0a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ec5fd2c-646c-415d-ab5d-570c13715d97",
                  "parent_uuid": "ce42d440-3687-45a2-857f-23c28662db40",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "25cfb040-5cc6-4c3e-b6eb-1186f81551e5",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1a8fc6b-2029-4a80-8b1f-5022b8654b90",
              "parent_uuid": "25cfb040-5cc6-4c3e-b6eb-1186f81551e5",
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
              "uuid": "dd597508-9c91-4426-8473-712ab9ad5c05",
              "parent_uuid": "25cfb040-5cc6-4c3e-b6eb-1186f81551e5",
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
              "uuid": "a9a850aa-cc5e-4638-8771-8a49aceb602a",
              "parent_uuid": "25cfb040-5cc6-4c3e-b6eb-1186f81551e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8904b0f-bd92-4294-bd73-cdae4dd26674",
                  "parent_uuid": "a9a850aa-cc5e-4638-8771-8a49aceb602a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66e050b8-faca-4ca5-8973-25860dc76462",
              "parent_uuid": "25cfb040-5cc6-4c3e-b6eb-1186f81551e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f64dddb-4c35-43a5-b003-eb51a89ca917",
                  "parent_uuid": "66e050b8-faca-4ca5-8973-25860dc76462",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cd467d6-7746-48bd-88bc-dfd009a8d96b",
              "parent_uuid": "25cfb040-5cc6-4c3e-b6eb-1186f81551e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebfdf896-5759-47ad-8137-2b2a1e6911a9",
                  "parent_uuid": "1cd467d6-7746-48bd-88bc-dfd009a8d96b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dccb8179-8438-41ed-aad3-052ce29720c4",
              "parent_uuid": "25cfb040-5cc6-4c3e-b6eb-1186f81551e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4a61161-0d29-496f-a9c6-289993b4a2f9",
                  "parent_uuid": "dccb8179-8438-41ed-aad3-052ce29720c4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2f39fb29-9d24-4045-ad81-228defae845d",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5536766-962b-44c3-9dd6-3b41a969fd48",
              "parent_uuid": "2f39fb29-9d24-4045-ad81-228defae845d",
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
              "uuid": "4112c6e7-c9fd-40c4-9dba-26d02f64e01e",
              "parent_uuid": "2f39fb29-9d24-4045-ad81-228defae845d",
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
              "uuid": "f3897fca-1943-46ec-9d6f-293dd5a6574c",
              "parent_uuid": "2f39fb29-9d24-4045-ad81-228defae845d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "053fcdd6-580a-498a-b145-c5d7b6788a4e",
                  "parent_uuid": "f3897fca-1943-46ec-9d6f-293dd5a6574c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cb5706d-e4fc-4fc4-b292-7a38a042a467",
              "parent_uuid": "2f39fb29-9d24-4045-ad81-228defae845d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3dca31f2-e35d-453f-bf7f-538757a28f84",
                  "parent_uuid": "7cb5706d-e4fc-4fc4-b292-7a38a042a467",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfa00e69-57b1-49b5-a419-e0ccb806a7e1",
              "parent_uuid": "2f39fb29-9d24-4045-ad81-228defae845d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f83e9172-8355-4331-994a-c0e35905fcc9",
                  "parent_uuid": "cfa00e69-57b1-49b5-a419-e0ccb806a7e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33637e39-fe4b-4638-aded-479781bd305c",
              "parent_uuid": "2f39fb29-9d24-4045-ad81-228defae845d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b44f7d7-6634-4959-9bcd-b4167ab1d665",
                  "parent_uuid": "33637e39-fe4b-4638-aded-479781bd305c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f62378ee-7247-4c7a-87f3-b5a1f8f92405",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c9d8612-b64d-40e5-9444-51078f566faa",
              "parent_uuid": "f62378ee-7247-4c7a-87f3-b5a1f8f92405",
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
              "uuid": "f670f8c0-97d5-40a3-964a-0f22fea8e430",
              "parent_uuid": "f62378ee-7247-4c7a-87f3-b5a1f8f92405",
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
              "uuid": "14611ed3-5dd5-4fcd-b347-b51a9b9be37a",
              "parent_uuid": "f62378ee-7247-4c7a-87f3-b5a1f8f92405",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e285607-f7f3-490d-894f-b624266d02d7",
                  "parent_uuid": "14611ed3-5dd5-4fcd-b347-b51a9b9be37a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bfb75738-ddfe-4177-bb40-660e68ca197a",
              "parent_uuid": "f62378ee-7247-4c7a-87f3-b5a1f8f92405",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e86a08e4-10f0-459d-81d5-12ec53c5c045",
                  "parent_uuid": "bfb75738-ddfe-4177-bb40-660e68ca197a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13b5bcce-4be1-4d91-b224-29211b766683",
              "parent_uuid": "f62378ee-7247-4c7a-87f3-b5a1f8f92405",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc00dd7d-daaf-46eb-99db-b4baccdedeb0",
                  "parent_uuid": "13b5bcce-4be1-4d91-b224-29211b766683",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da2c7918-fc83-462b-b22a-9e28fe92f15b",
              "parent_uuid": "f62378ee-7247-4c7a-87f3-b5a1f8f92405",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "837fc63e-6c75-4c93-adc5-8d5ce2470eb4",
                  "parent_uuid": "da2c7918-fc83-462b-b22a-9e28fe92f15b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cecbf444-81bb-4dba-8a7c-32b486c9f612",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24912c4b-1fd0-4a27-8947-ae3635282131",
              "parent_uuid": "cecbf444-81bb-4dba-8a7c-32b486c9f612",
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
              "uuid": "c35683f2-eca2-48d3-8895-545246dc6834",
              "parent_uuid": "cecbf444-81bb-4dba-8a7c-32b486c9f612",
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
              "uuid": "577cbdc4-60c1-42b6-8c63-1aee4d229467",
              "parent_uuid": "cecbf444-81bb-4dba-8a7c-32b486c9f612",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1763fd1-175d-4824-9aa2-7f2d07ee62f2",
                  "parent_uuid": "577cbdc4-60c1-42b6-8c63-1aee4d229467",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a22aa693-f773-4641-b22d-f2cdc7191128",
              "parent_uuid": "cecbf444-81bb-4dba-8a7c-32b486c9f612",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c543db9b-e09c-44b2-b0e3-cf0569017c9b",
                  "parent_uuid": "a22aa693-f773-4641-b22d-f2cdc7191128",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "515cf524-f7d7-461b-a238-871293c8b440",
              "parent_uuid": "cecbf444-81bb-4dba-8a7c-32b486c9f612",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "facee725-a5dd-487e-bc25-ba575845e2b3",
                  "parent_uuid": "515cf524-f7d7-461b-a238-871293c8b440",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "98792a85-36de-4a58-8b5c-f14a5d18981e",
              "parent_uuid": "cecbf444-81bb-4dba-8a7c-32b486c9f612",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4e79b21-ce11-472b-a2bb-23d468e3e96f",
                  "parent_uuid": "98792a85-36de-4a58-8b5c-f14a5d18981e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9518e28d-76c7-431a-9436-318b90e151a6",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7276c2b4-a316-423a-99df-894daf52b530",
              "parent_uuid": "9518e28d-76c7-431a-9436-318b90e151a6",
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
              "uuid": "29219a60-ce9b-476f-859c-80a403a5843d",
              "parent_uuid": "9518e28d-76c7-431a-9436-318b90e151a6",
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
              "uuid": "72daed1e-ec40-4eda-895e-d91059d0ea90",
              "parent_uuid": "9518e28d-76c7-431a-9436-318b90e151a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42fb4d8f-58d4-455f-91df-0336663a5b73",
                  "parent_uuid": "72daed1e-ec40-4eda-895e-d91059d0ea90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "777e8baf-7e1b-4ccc-b76e-dcbeaeb22995",
              "parent_uuid": "9518e28d-76c7-431a-9436-318b90e151a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5f4d47e-ab0a-431f-92cf-45d2363dd5f7",
                  "parent_uuid": "777e8baf-7e1b-4ccc-b76e-dcbeaeb22995",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9a7a82c-8a12-4aad-85a6-486d8203bf2a",
              "parent_uuid": "9518e28d-76c7-431a-9436-318b90e151a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63d3b0d7-8e70-43e4-b0b8-533cbe7c5732",
                  "parent_uuid": "f9a7a82c-8a12-4aad-85a6-486d8203bf2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e5670f7-4407-4dc8-a5ed-da5b07fabd93",
              "parent_uuid": "9518e28d-76c7-431a-9436-318b90e151a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53747498-6294-4c5b-83d3-18a7418f99e7",
                  "parent_uuid": "6e5670f7-4407-4dc8-a5ed-da5b07fabd93",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "61ec7bd1-e14f-446b-b377-d8c4f1200b2c",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d2f6120-bb94-4a47-858e-13b6defdde10",
              "parent_uuid": "61ec7bd1-e14f-446b-b377-d8c4f1200b2c",
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
              "uuid": "98d656a2-fea1-4ce8-bdcc-a961d753f030",
              "parent_uuid": "61ec7bd1-e14f-446b-b377-d8c4f1200b2c",
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
              "uuid": "26112654-8df2-4042-a0bc-e4c02eabf62b",
              "parent_uuid": "61ec7bd1-e14f-446b-b377-d8c4f1200b2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8813d4a6-0e8b-446f-bcbf-df9546b7307a",
                  "parent_uuid": "26112654-8df2-4042-a0bc-e4c02eabf62b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35ba4453-e77d-4cdf-8992-dc3102605bca",
              "parent_uuid": "61ec7bd1-e14f-446b-b377-d8c4f1200b2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d2e70d2-d462-4410-8da9-16946fcea40d",
                  "parent_uuid": "35ba4453-e77d-4cdf-8992-dc3102605bca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6966433c-6aed-4b70-a2ac-2fd8c65031ce",
              "parent_uuid": "61ec7bd1-e14f-446b-b377-d8c4f1200b2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d20e6b32-4ac0-4297-9ef7-58e70daf49a3",
                  "parent_uuid": "6966433c-6aed-4b70-a2ac-2fd8c65031ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5c97c64-a092-4422-b3a0-3f123c47b4b1",
              "parent_uuid": "61ec7bd1-e14f-446b-b377-d8c4f1200b2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e5820be-26f1-46a0-abdf-6b722e689d61",
                  "parent_uuid": "e5c97c64-a092-4422-b3a0-3f123c47b4b1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7c584f8b-6732-4dda-8354-4affc82005ce",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "775f9a99-fdce-4906-9a8f-1da44111d85a",
              "parent_uuid": "7c584f8b-6732-4dda-8354-4affc82005ce",
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
              "uuid": "7d42ca34-41e3-4651-b8d8-003e47bec6e5",
              "parent_uuid": "7c584f8b-6732-4dda-8354-4affc82005ce",
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
              "uuid": "86942ede-5eb2-4ec5-8fd1-4696dc44a14d",
              "parent_uuid": "7c584f8b-6732-4dda-8354-4affc82005ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0eaf038b-eed8-47dd-8b3e-cecfa8c9386c",
                  "parent_uuid": "86942ede-5eb2-4ec5-8fd1-4696dc44a14d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d11c7cbb-7c1b-4372-a66f-01c89123cbca",
              "parent_uuid": "7c584f8b-6732-4dda-8354-4affc82005ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c33547d2-b703-4c58-8f85-dd701dacb214",
                  "parent_uuid": "d11c7cbb-7c1b-4372-a66f-01c89123cbca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e541ba44-f611-46d4-abf9-8179f9d49b0d",
              "parent_uuid": "7c584f8b-6732-4dda-8354-4affc82005ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90dc85e8-650e-4fe3-bfd6-9e53c8b8c281",
                  "parent_uuid": "e541ba44-f611-46d4-abf9-8179f9d49b0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ae9abae-3973-4551-90e9-e8bc146c185b",
              "parent_uuid": "7c584f8b-6732-4dda-8354-4affc82005ce",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4293d606-e9c2-4778-8354-86b6b5fb3ba2",
                  "parent_uuid": "2ae9abae-3973-4551-90e9-e8bc146c185b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a101c7d8-babd-4da2-97c4-0b632973013d",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce9829fe-a300-4db1-a566-27da99b5379b",
              "parent_uuid": "a101c7d8-babd-4da2-97c4-0b632973013d",
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
              "uuid": "e0991107-d753-4e76-b9c7-c44d49249488",
              "parent_uuid": "a101c7d8-babd-4da2-97c4-0b632973013d",
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
              "uuid": "23a934c9-fcd4-4f05-b508-aa94c8172149",
              "parent_uuid": "a101c7d8-babd-4da2-97c4-0b632973013d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a64a2ca-b8e8-461b-9386-54241c403cae",
                  "parent_uuid": "23a934c9-fcd4-4f05-b508-aa94c8172149",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6adbd71c-6cf7-4cde-9883-29856a4844f3",
              "parent_uuid": "a101c7d8-babd-4da2-97c4-0b632973013d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1fa3965d-367e-46f8-8081-23011adf22d0",
                  "parent_uuid": "6adbd71c-6cf7-4cde-9883-29856a4844f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b08a85bf-5f13-4159-bc7f-659b5bc3e52e",
              "parent_uuid": "a101c7d8-babd-4da2-97c4-0b632973013d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05b5d14e-0d91-46f9-8c29-fb8db2bdfdcc",
                  "parent_uuid": "b08a85bf-5f13-4159-bc7f-659b5bc3e52e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62d2ce44-28eb-42a0-8184-3267d99b56e5",
              "parent_uuid": "a101c7d8-babd-4da2-97c4-0b632973013d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "763e9b34-b94c-40fa-b2e4-76dfababde13",
                  "parent_uuid": "62d2ce44-28eb-42a0-8184-3267d99b56e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9029ece9-9d72-4156-9327-b73bf9b3b97d",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "a962b30b-ecb0-4428-bb2e-b8d4175b044d",
              "parent_uuid": "9029ece9-9d72-4156-9327-b73bf9b3b97d",
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
          "uuid": "acd0fd95-d4c2-4b6d-81da-5ac3f4a5cfc2",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e27584a0-7b77-4d35-88d4-49a439f36863",
              "parent_uuid": "acd0fd95-d4c2-4b6d-81da-5ac3f4a5cfc2",
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
          "uuid": "2eae7dc7-67bc-4fa8-81ac-bc5dbaaba8e0",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d613cd5-58c9-42c3-9bd6-6f25cd3a95fc",
              "parent_uuid": "2eae7dc7-67bc-4fa8-81ac-bc5dbaaba8e0",
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
                  "uuid": "6538dd5c-2d90-4404-a950-090310cee65a",
                  "parent_uuid": "6d613cd5-58c9-42c3-9bd6-6f25cd3a95fc",
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
          "uuid": "01f4d7d0-1d82-4d61-a2f5-565b616635c5",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df85d165-4ff5-4ce7-91bc-1b463a21da3f",
              "parent_uuid": "01f4d7d0-1d82-4d61-a2f5-565b616635c5",
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
          "uuid": "c0ef87af-0d97-4991-9a6a-0e9ac3234d1b",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "699511fb-6ad5-4a9a-85a8-89abb77d09c0",
              "parent_uuid": "c0ef87af-0d97-4991-9a6a-0e9ac3234d1b",
              "tagName": "td",
              "properties": [
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
          "uuid": "a548e3ae-c4c6-4870-9df4-36039eddc2b0",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f62b63c3-9be8-4f57-80ae-feb0531744e4",
              "parent_uuid": "a548e3ae-c4c6-4870-9df4-36039eddc2b0",
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
              "uuid": "60e5b841-d376-4e87-86db-276bfd87da44",
              "parent_uuid": "a548e3ae-c4c6-4870-9df4-36039eddc2b0",
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
              "uuid": "6c8f4d95-08d2-4a13-9465-5648ce6e529f",
              "parent_uuid": "a548e3ae-c4c6-4870-9df4-36039eddc2b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bc1a889-2fe0-42f1-8426-c790b62be4d1",
                  "parent_uuid": "6c8f4d95-08d2-4a13-9465-5648ce6e529f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "188ab5bb-f79d-4785-b61b-ec6b3ca4ec87",
              "parent_uuid": "a548e3ae-c4c6-4870-9df4-36039eddc2b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef00f470-fb0f-4f64-86fc-05c708cfb6d6",
                  "parent_uuid": "188ab5bb-f79d-4785-b61b-ec6b3ca4ec87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b16b96e9-becc-4577-9b2b-8f5266d77541",
              "parent_uuid": "a548e3ae-c4c6-4870-9df4-36039eddc2b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "487bdd74-606b-4afa-a4d5-26ba3331fda0",
                  "parent_uuid": "b16b96e9-becc-4577-9b2b-8f5266d77541",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc178be3-8e6e-4798-9224-78fe6016514f",
              "parent_uuid": "a548e3ae-c4c6-4870-9df4-36039eddc2b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10ce2c71-9924-4ca3-b825-34af99bc472f",
                  "parent_uuid": "cc178be3-8e6e-4798-9224-78fe6016514f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b2c3855-e8e3-4b3d-a2e5-f2b2e85bef74",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "356f4682-ca8d-4f21-b13b-9151a78f8e58",
              "parent_uuid": "0b2c3855-e8e3-4b3d-a2e5-f2b2e85bef74",
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
              "uuid": "73cb4458-3101-452e-af55-0e1cb5179f42",
              "parent_uuid": "0b2c3855-e8e3-4b3d-a2e5-f2b2e85bef74",
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
              "uuid": "44e786c1-d319-4651-be74-4bd9e8c24caa",
              "parent_uuid": "0b2c3855-e8e3-4b3d-a2e5-f2b2e85bef74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a37805a1-e98a-4fcd-beb0-18284045fb76",
                  "parent_uuid": "44e786c1-d319-4651-be74-4bd9e8c24caa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec2f4361-dc89-4f84-b812-2309b2966be6",
              "parent_uuid": "0b2c3855-e8e3-4b3d-a2e5-f2b2e85bef74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3ddd6a0-5348-4249-9cd1-f2a3a3cd6651",
                  "parent_uuid": "ec2f4361-dc89-4f84-b812-2309b2966be6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d306c840-950a-4365-8505-477240b40619",
              "parent_uuid": "0b2c3855-e8e3-4b3d-a2e5-f2b2e85bef74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07a1255a-bd41-4581-9755-2fb9bd3aff58",
                  "parent_uuid": "d306c840-950a-4365-8505-477240b40619",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "465aa942-9199-4a65-9a42-65ab5ac5080f",
              "parent_uuid": "0b2c3855-e8e3-4b3d-a2e5-f2b2e85bef74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "936b80dc-70a7-4fad-8d42-6c83adb4acb3",
                  "parent_uuid": "465aa942-9199-4a65-9a42-65ab5ac5080f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e17fd4d1-26ef-4814-b5b0-2f206065c1e0",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1c4ef37-1a22-4ced-95c5-7cf6fe64d63c",
              "parent_uuid": "e17fd4d1-26ef-4814-b5b0-2f206065c1e0",
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
              "uuid": "b2564cd8-e63a-419b-9dfb-7e05633e34f3",
              "parent_uuid": "e17fd4d1-26ef-4814-b5b0-2f206065c1e0",
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
              "uuid": "4179aa3a-ab6f-4620-878d-e0beb8cdc794",
              "parent_uuid": "e17fd4d1-26ef-4814-b5b0-2f206065c1e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "909172ce-99bc-4008-8f0b-61681420af30",
                  "parent_uuid": "4179aa3a-ab6f-4620-878d-e0beb8cdc794",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "010596b2-12e2-4229-bd6d-caf6fdf731d1",
              "parent_uuid": "e17fd4d1-26ef-4814-b5b0-2f206065c1e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6071debb-6872-4fa8-b7a6-28aa910ac05e",
                  "parent_uuid": "010596b2-12e2-4229-bd6d-caf6fdf731d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f45c3cc5-0ca9-4698-a3c7-cc0091580659",
              "parent_uuid": "e17fd4d1-26ef-4814-b5b0-2f206065c1e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b40f6f8c-ca86-47da-b882-d11add086026",
                  "parent_uuid": "f45c3cc5-0ca9-4698-a3c7-cc0091580659",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bae008b6-e5b2-4e02-9aed-801682b4148c",
              "parent_uuid": "e17fd4d1-26ef-4814-b5b0-2f206065c1e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c315e87-1b20-409f-9b4e-573329f725fa",
                  "parent_uuid": "bae008b6-e5b2-4e02-9aed-801682b4148c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09603eb3-5cd7-410e-8cc5-e1b663e7f1a7",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa22f982-3829-4e50-b77d-4ed1e2f07c5f",
              "parent_uuid": "09603eb3-5cd7-410e-8cc5-e1b663e7f1a7",
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
              "uuid": "a4e520d3-9c03-4e99-9ec4-33417582bc2f",
              "parent_uuid": "09603eb3-5cd7-410e-8cc5-e1b663e7f1a7",
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
              "uuid": "19643477-7579-4e92-8916-a35a267acdbb",
              "parent_uuid": "09603eb3-5cd7-410e-8cc5-e1b663e7f1a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb60d8f6-a9c0-4a17-a213-ac40b73461b9",
                  "parent_uuid": "19643477-7579-4e92-8916-a35a267acdbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5cc9167-2725-4a3b-9e41-614d8b176f4a",
              "parent_uuid": "09603eb3-5cd7-410e-8cc5-e1b663e7f1a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c70af24a-a89f-4e67-99a7-735f50c6bc98",
                  "parent_uuid": "e5cc9167-2725-4a3b-9e41-614d8b176f4a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e375efc-1f45-4c74-b986-4772e2fdcecd",
              "parent_uuid": "09603eb3-5cd7-410e-8cc5-e1b663e7f1a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c98aae28-e998-4d6b-9268-fd8b9db477c2",
                  "parent_uuid": "3e375efc-1f45-4c74-b986-4772e2fdcecd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3092503-ca22-4981-908e-fc34200d87f4",
              "parent_uuid": "09603eb3-5cd7-410e-8cc5-e1b663e7f1a7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ace7359-6758-47d1-888a-c48ec2b292d0",
                  "parent_uuid": "c3092503-ca22-4981-908e-fc34200d87f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "69eea340-0301-4b87-843f-eeb6d9dae507",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "abaeaf04-d24c-4977-a3b5-8e02e70a68f9",
              "parent_uuid": "69eea340-0301-4b87-843f-eeb6d9dae507",
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
          "uuid": "3dd098e1-e367-4f5d-89da-a6cbd0c48b6c",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4415cdd7-c017-477a-ba48-7a32dc6bcdf5",
              "parent_uuid": "3dd098e1-e367-4f5d-89da-a6cbd0c48b6c",
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
              "uuid": "8bfa3b1c-ed62-4da3-afc3-439bd7144f4b",
              "parent_uuid": "3dd098e1-e367-4f5d-89da-a6cbd0c48b6c",
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
              "uuid": "f78695a2-bf2f-471e-a568-31c6e03133a7",
              "parent_uuid": "3dd098e1-e367-4f5d-89da-a6cbd0c48b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88b498e3-a91d-4b2a-8ed4-209de46524ac",
                  "parent_uuid": "f78695a2-bf2f-471e-a568-31c6e03133a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9df42b25-7db4-4b24-b781-9ad6f5471205",
              "parent_uuid": "3dd098e1-e367-4f5d-89da-a6cbd0c48b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec4174f9-546c-409d-a7f6-990f2eb3bd59",
                  "parent_uuid": "9df42b25-7db4-4b24-b781-9ad6f5471205",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7663450-7296-450e-8046-e6a2f5b38122",
              "parent_uuid": "3dd098e1-e367-4f5d-89da-a6cbd0c48b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "630960cb-7a96-4338-a3fd-3c158746f7ea",
                  "parent_uuid": "d7663450-7296-450e-8046-e6a2f5b38122",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9a0ea05-276e-430c-b9ae-a5ed62d6cf20",
              "parent_uuid": "3dd098e1-e367-4f5d-89da-a6cbd0c48b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7875761-c018-4ca6-9e09-4e0ecacc4dde",
                  "parent_uuid": "a9a0ea05-276e-430c-b9ae-a5ed62d6cf20",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7e90ca4-c867-46b7-8b29-69803339cabf",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7f93d5c-6c1e-462f-ae1a-295718073287",
              "parent_uuid": "a7e90ca4-c867-46b7-8b29-69803339cabf",
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
              "uuid": "03bae09d-ad35-4870-961e-724c18f0436b",
              "parent_uuid": "a7e90ca4-c867-46b7-8b29-69803339cabf",
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
              "uuid": "c54b0cf7-894e-43bc-8095-f2cd25714a91",
              "parent_uuid": "a7e90ca4-c867-46b7-8b29-69803339cabf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "46a8ba64-9f97-46cb-9432-ea547a8239b7",
                  "parent_uuid": "c54b0cf7-894e-43bc-8095-f2cd25714a91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0cfe0ad6-0339-4108-b6a9-86dd2e11a9c7",
              "parent_uuid": "a7e90ca4-c867-46b7-8b29-69803339cabf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2837b785-d834-45da-a5e9-922f34325b18",
                  "parent_uuid": "0cfe0ad6-0339-4108-b6a9-86dd2e11a9c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9c0422c-ba58-48a1-a885-2b330f8a5073",
              "parent_uuid": "a7e90ca4-c867-46b7-8b29-69803339cabf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f299c14e-aa8f-41e3-9c7a-a4248ca001c5",
                  "parent_uuid": "a9c0422c-ba58-48a1-a885-2b330f8a5073",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c630a000-1c51-4e89-8724-9cdaa1f66a42",
              "parent_uuid": "a7e90ca4-c867-46b7-8b29-69803339cabf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cc2e1a6-7c45-4d9d-badc-bfdbf2c150ba",
                  "parent_uuid": "c630a000-1c51-4e89-8724-9cdaa1f66a42",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ba5513c4-9a52-4fd5-add8-507c7c7514a0",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ecf588a8-6adf-44db-b24d-b6b73acb1f49",
              "parent_uuid": "ba5513c4-9a52-4fd5-add8-507c7c7514a0",
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
              "uuid": "47151181-6a2e-4fdb-9330-aa774e657b39",
              "parent_uuid": "ba5513c4-9a52-4fd5-add8-507c7c7514a0",
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
              "uuid": "8cebdaf7-00b8-457c-a27e-cf3f04a9cdbc",
              "parent_uuid": "ba5513c4-9a52-4fd5-add8-507c7c7514a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea1a72ee-c3a6-47aa-8c15-5f54a63e0da4",
                  "parent_uuid": "8cebdaf7-00b8-457c-a27e-cf3f04a9cdbc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5374227b-3791-43c7-b235-9116857defd2",
              "parent_uuid": "ba5513c4-9a52-4fd5-add8-507c7c7514a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c408de3-1245-4491-ac32-c84c125ffa75",
                  "parent_uuid": "5374227b-3791-43c7-b235-9116857defd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "590339da-ba8a-449b-8281-0b2241670c0a",
              "parent_uuid": "ba5513c4-9a52-4fd5-add8-507c7c7514a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "778c0dc8-20e5-4b67-a7f2-e946095bbd51",
                  "parent_uuid": "590339da-ba8a-449b-8281-0b2241670c0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5c3dae7-80c6-4584-8832-855baf3cfdef",
              "parent_uuid": "ba5513c4-9a52-4fd5-add8-507c7c7514a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c33d835a-03cd-4e9a-b8be-e530291e21d3",
                  "parent_uuid": "c5c3dae7-80c6-4584-8832-855baf3cfdef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f5f69c5e-73d8-41e1-ac74-de59c4784aba",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7643a81a-5b58-4d19-b099-23bcff585f33",
              "parent_uuid": "f5f69c5e-73d8-41e1-ac74-de59c4784aba",
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
              "uuid": "eed03095-1867-483b-b99c-fdc9dc23056c",
              "parent_uuid": "f5f69c5e-73d8-41e1-ac74-de59c4784aba",
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
              "uuid": "7730c8fd-9a22-4297-aad8-9b3047459fb4",
              "parent_uuid": "f5f69c5e-73d8-41e1-ac74-de59c4784aba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc351a86-5842-4502-9a78-b193de14f2b8",
                  "parent_uuid": "7730c8fd-9a22-4297-aad8-9b3047459fb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31490838-a82f-4eb6-95d1-182115821544",
              "parent_uuid": "f5f69c5e-73d8-41e1-ac74-de59c4784aba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c03048f-c9a2-429e-bb3e-7d32207cdfb3",
                  "parent_uuid": "31490838-a82f-4eb6-95d1-182115821544",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cce51512-2323-492f-921b-58eb5fbdf506",
              "parent_uuid": "f5f69c5e-73d8-41e1-ac74-de59c4784aba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "820072b0-3500-4a91-99af-1947f312a4ab",
                  "parent_uuid": "cce51512-2323-492f-921b-58eb5fbdf506",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54f6319a-5469-4c2a-a0c4-56f586959681",
              "parent_uuid": "f5f69c5e-73d8-41e1-ac74-de59c4784aba",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8798826-ea98-4391-beb5-921f2a222ce4",
                  "parent_uuid": "54f6319a-5469-4c2a-a0c4-56f586959681",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09fef993-615a-45dd-9fe5-4becf2cb9f97",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6307cda2-6cd3-4226-9b6a-18dd5d5dfd2a",
              "parent_uuid": "09fef993-615a-45dd-9fe5-4becf2cb9f97",
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
          "uuid": "ed9ca3b3-e984-4693-90dd-1d647c880cd6",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a1d62cd6-7d8a-489b-8eff-4b23975789c4",
              "parent_uuid": "ed9ca3b3-e984-4693-90dd-1d647c880cd6",
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
          "uuid": "a4134427-1256-422b-85ea-fd9f2668ace4",
          "parent_uuid": "419952e4-70ac-4d79-a0a4-5bf6d007539b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "381f6469-d7b7-49b1-bbbd-c92759b2e57f",
              "parent_uuid": "a4134427-1256-422b-85ea-fd9f2668ace4",
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
                  "uuid": "e8f59a81-129a-47ee-a4cb-70b6baae6f05",
                  "parent_uuid": "381f6469-d7b7-49b1-bbbd-c92759b2e57f",
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


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
  "uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "a6299cef-f3a0-421e-ac58-8e4777eed0bc",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "b399150d-66dc-4adb-9a85-ebca1961efed",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "3085476e-1e99-4dac-b835-a58ee72bc28f",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "87deea16-fbc2-4658-97d6-47c2817cd1ad",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "ecfad72c-00f8-41f3-9c4c-620273bc5b0b",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "9e851810-3493-4f20-b212-e79d114d10bd",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "d0a644c3-b356-4565-8a3f-e747591f6d7f",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
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
      "uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
      "parent_uuid": "2f38c46e-c8f0-4631-af71-af5777b6a32a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "6b2650cd-a01c-4b82-8dec-f83de2cd0a15",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "a0854d64-1469-49a5-a669-308afdd5f188",
              "parent_uuid": "6b2650cd-a01c-4b82-8dec-f83de2cd0a15",
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
              "uuid": "5aa92449-eb84-4a1a-821f-316755be963d",
              "parent_uuid": "6b2650cd-a01c-4b82-8dec-f83de2cd0a15",
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
              "uuid": "4aefe0d0-1c28-486a-8db1-a7dd61d07a2d",
              "parent_uuid": "6b2650cd-a01c-4b82-8dec-f83de2cd0a15",
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
              "uuid": "50644bf0-4445-4ac2-9982-0426eaef0c28",
              "parent_uuid": "6b2650cd-a01c-4b82-8dec-f83de2cd0a15",
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
          "uuid": "088f4718-ec1c-45aa-a277-2dec39e7b4d0",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "83b9f81e-2eee-4fc1-b5a0-fb5ee7b3211c",
              "parent_uuid": "088f4718-ec1c-45aa-a277-2dec39e7b4d0",
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
              "uuid": "0a3f23e0-9842-4edb-940d-267a8ce4459f",
              "parent_uuid": "088f4718-ec1c-45aa-a277-2dec39e7b4d0",
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
              "uuid": "f53934c4-ab0e-4158-a706-17ba40be82d4",
              "parent_uuid": "088f4718-ec1c-45aa-a277-2dec39e7b4d0",
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
              "uuid": "6c142a3b-4434-4837-99ff-5fe8448d4e81",
              "parent_uuid": "088f4718-ec1c-45aa-a277-2dec39e7b4d0",
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
          "uuid": "4b8f03ae-16ba-4873-a5f5-ac86e0cbeaa7",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6329899f-6005-4c9e-b257-e0035727f14b",
              "parent_uuid": "4b8f03ae-16ba-4873-a5f5-ac86e0cbeaa7",
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
              "uuid": "c8484b1f-0a44-4c1f-9f45-554fb6d7ee1c",
              "parent_uuid": "4b8f03ae-16ba-4873-a5f5-ac86e0cbeaa7",
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
              "uuid": "4b305905-f973-49ec-a968-a6fdb1fc03fc",
              "parent_uuid": "4b8f03ae-16ba-4873-a5f5-ac86e0cbeaa7",
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
              "uuid": "944f6c5e-f845-45ef-9391-f291f51fb0ea",
              "parent_uuid": "4b8f03ae-16ba-4873-a5f5-ac86e0cbeaa7",
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
              "uuid": "15ba5af7-3478-4af7-a4e5-8ef4fe455b33",
              "parent_uuid": "4b8f03ae-16ba-4873-a5f5-ac86e0cbeaa7",
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
              "uuid": "ab580df0-e646-4f15-a2a0-a884954a7394",
              "parent_uuid": "4b8f03ae-16ba-4873-a5f5-ac86e0cbeaa7",
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
          "uuid": "de6ff61b-870b-4f9e-af20-969bd75036aa",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "369b2253-9afc-41f7-aac5-ea1c744cd0c0",
              "parent_uuid": "de6ff61b-870b-4f9e-af20-969bd75036aa",
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
          "uuid": "fddf942a-9921-4e2d-8b34-94b1d4d92199",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ab0c03c-1227-4e0a-81a9-2bd21a7c39ac",
              "parent_uuid": "fddf942a-9921-4e2d-8b34-94b1d4d92199",
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
              "uuid": "b88bac82-cb51-43c3-9730-7703cfc586f2",
              "parent_uuid": "fddf942a-9921-4e2d-8b34-94b1d4d92199",
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
              "uuid": "300a179f-843b-4dbd-9946-cccbe7b6f522",
              "parent_uuid": "fddf942a-9921-4e2d-8b34-94b1d4d92199",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e1af372-65ad-49dd-bf65-9c58b8bce214",
                  "parent_uuid": "300a179f-843b-4dbd-9946-cccbe7b6f522",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efe26bf0-99f3-4b86-8c53-f29257dac748",
              "parent_uuid": "fddf942a-9921-4e2d-8b34-94b1d4d92199",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fe6e2b0-9276-4a74-8b8d-cc0809de6714",
                  "parent_uuid": "efe26bf0-99f3-4b86-8c53-f29257dac748",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f63f3cbd-2608-4b4f-8748-602ae7540cf6",
              "parent_uuid": "fddf942a-9921-4e2d-8b34-94b1d4d92199",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ce5b7a6-c00c-4c46-be15-22dbb04c05d3",
                  "parent_uuid": "f63f3cbd-2608-4b4f-8748-602ae7540cf6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8af33298-fd5b-4b14-b53d-2a2988e89260",
              "parent_uuid": "fddf942a-9921-4e2d-8b34-94b1d4d92199",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be0e2197-6b99-4704-89e6-3227e2dad32e",
                  "parent_uuid": "8af33298-fd5b-4b14-b53d-2a2988e89260",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "706dd0ec-3d4f-4bd5-a76e-f30664f1420c",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "520cb3af-7c62-459b-821d-25791bb5b286",
              "parent_uuid": "706dd0ec-3d4f-4bd5-a76e-f30664f1420c",
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
              "uuid": "6affe1ae-fd45-4196-b1d0-1c7e9cbd8415",
              "parent_uuid": "706dd0ec-3d4f-4bd5-a76e-f30664f1420c",
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
              "uuid": "23a6fe91-abc5-40f4-98b4-992cc32c6eaf",
              "parent_uuid": "706dd0ec-3d4f-4bd5-a76e-f30664f1420c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a97b438-45cf-49fb-a75e-9fdd13b82974",
                  "parent_uuid": "23a6fe91-abc5-40f4-98b4-992cc32c6eaf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea80cd1c-8b98-4011-ae36-175de2fb4d83",
              "parent_uuid": "706dd0ec-3d4f-4bd5-a76e-f30664f1420c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8982bd16-f2d3-407d-a40f-5e2283c5ef00",
                  "parent_uuid": "ea80cd1c-8b98-4011-ae36-175de2fb4d83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f70c4856-2ade-4ade-962f-9157cde25f0b",
              "parent_uuid": "706dd0ec-3d4f-4bd5-a76e-f30664f1420c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51efbf7b-8d5a-483b-9989-2b889c4ed7c1",
                  "parent_uuid": "f70c4856-2ade-4ade-962f-9157cde25f0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6bd8f0c-f1d0-49de-9c1b-40325b0eb82c",
              "parent_uuid": "706dd0ec-3d4f-4bd5-a76e-f30664f1420c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb24641e-b4c5-40e0-b6e0-4e8250d65cb9",
                  "parent_uuid": "a6bd8f0c-f1d0-49de-9c1b-40325b0eb82c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0fef25de-ac7b-4e57-ae38-ca96803829c4",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fafe917b-15f8-440b-97c3-1b10566cbed9",
              "parent_uuid": "0fef25de-ac7b-4e57-ae38-ca96803829c4",
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
              "uuid": "935eb3d8-1ac5-44ad-9179-1e1c7f920ce1",
              "parent_uuid": "0fef25de-ac7b-4e57-ae38-ca96803829c4",
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
              "uuid": "08ad38b1-50a1-4077-91a7-be1dedc6906c",
              "parent_uuid": "0fef25de-ac7b-4e57-ae38-ca96803829c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3786e2a7-5564-447e-b481-2c718f07e871",
                  "parent_uuid": "08ad38b1-50a1-4077-91a7-be1dedc6906c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4255629-89e1-48f3-a301-3d6823b841e0",
              "parent_uuid": "0fef25de-ac7b-4e57-ae38-ca96803829c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8eb58b5c-0727-499c-8b16-9942209ac467",
                  "parent_uuid": "a4255629-89e1-48f3-a301-3d6823b841e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fec527ff-584f-45d6-92e2-40902e3ca50a",
              "parent_uuid": "0fef25de-ac7b-4e57-ae38-ca96803829c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80eda739-0bae-4e2f-bc48-196b1b995ccd",
                  "parent_uuid": "fec527ff-584f-45d6-92e2-40902e3ca50a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad833483-2351-447a-8dd8-6a74e2e1849a",
              "parent_uuid": "0fef25de-ac7b-4e57-ae38-ca96803829c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "029080fe-eacd-428f-aeca-19552ef309c0",
                  "parent_uuid": "ad833483-2351-447a-8dd8-6a74e2e1849a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6b9f839-6bba-43f6-9e18-c4eb142d439d",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21598840-adfb-4c84-9dfa-0895ac8283c7",
              "parent_uuid": "d6b9f839-6bba-43f6-9e18-c4eb142d439d",
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
              "uuid": "6008a2b1-1203-4935-bf0f-5d1bdd417a02",
              "parent_uuid": "d6b9f839-6bba-43f6-9e18-c4eb142d439d",
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
              "uuid": "a2f90c79-1dc7-49c6-89c5-c849608b72a1",
              "parent_uuid": "d6b9f839-6bba-43f6-9e18-c4eb142d439d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c87c4201-69ba-42e6-b771-702439194193",
                  "parent_uuid": "a2f90c79-1dc7-49c6-89c5-c849608b72a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3abaad4-36f2-4efd-a088-e81040ac1d1f",
              "parent_uuid": "d6b9f839-6bba-43f6-9e18-c4eb142d439d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64c399fb-85a4-4c3c-a740-1d570620556a",
                  "parent_uuid": "c3abaad4-36f2-4efd-a088-e81040ac1d1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5becf5d8-0de8-4f90-a585-6d3c1f12fd3c",
              "parent_uuid": "d6b9f839-6bba-43f6-9e18-c4eb142d439d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0c799a8-c970-4370-9cb7-9fad3b12c02f",
                  "parent_uuid": "5becf5d8-0de8-4f90-a585-6d3c1f12fd3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f28c2afb-0aee-413f-ae15-04c655385b87",
              "parent_uuid": "d6b9f839-6bba-43f6-9e18-c4eb142d439d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8287817d-8b94-435b-862b-4579eee31f5e",
                  "parent_uuid": "f28c2afb-0aee-413f-ae15-04c655385b87",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6b615fe0-0081-41b3-9532-97eae5262875",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5910751d-38a2-4569-9b1c-e68dd81ac401",
              "parent_uuid": "6b615fe0-0081-41b3-9532-97eae5262875",
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
              "uuid": "9ca93d1c-cd64-4825-a23c-4be15b1cd565",
              "parent_uuid": "6b615fe0-0081-41b3-9532-97eae5262875",
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
              "uuid": "637f2cc5-bc4f-4f97-892c-645a7aa84d87",
              "parent_uuid": "6b615fe0-0081-41b3-9532-97eae5262875",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c4c707d0-0878-4cd2-9fc1-9f96a75cf443",
                  "parent_uuid": "637f2cc5-bc4f-4f97-892c-645a7aa84d87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b340f0f-0e4d-47f4-a174-34bd4d800716",
              "parent_uuid": "6b615fe0-0081-41b3-9532-97eae5262875",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ad47927d-484a-49e2-8607-e575747bbad9",
                  "parent_uuid": "6b340f0f-0e4d-47f4-a174-34bd4d800716",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2f8888d-0a46-4b43-8624-a1ac35688fb3",
              "parent_uuid": "6b615fe0-0081-41b3-9532-97eae5262875",
              "tagName": "td",
              "properties": [
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
                  "uuid": "02c8bee6-91d6-408f-a55d-9e6abd5aa811",
                  "parent_uuid": "f2f8888d-0a46-4b43-8624-a1ac35688fb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9419bdfe-6cf8-421a-a092-188f1218f54c",
              "parent_uuid": "6b615fe0-0081-41b3-9532-97eae5262875",
              "tagName": "td",
              "properties": [
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
                  "uuid": "43649b70-90b7-4868-9f20-04f9060b2389",
                  "parent_uuid": "9419bdfe-6cf8-421a-a092-188f1218f54c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a4e2e66-51be-4159-92bc-5a1ad0a9936f",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fdf7f6ae-29a3-48dc-8bcf-4c03216afebc",
              "parent_uuid": "9a4e2e66-51be-4159-92bc-5a1ad0a9936f",
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
              "uuid": "f8566260-269a-42ab-be4b-a682386cb810",
              "parent_uuid": "9a4e2e66-51be-4159-92bc-5a1ad0a9936f",
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
              "uuid": "4275eea5-c4a0-4b5f-bf8c-8fc3419e122e",
              "parent_uuid": "9a4e2e66-51be-4159-92bc-5a1ad0a9936f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9b4b09c-905b-4bcc-bb25-a02894d4c175",
                  "parent_uuid": "4275eea5-c4a0-4b5f-bf8c-8fc3419e122e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d312f52d-e25a-4bdf-a44f-b04eaa8acaf4",
              "parent_uuid": "9a4e2e66-51be-4159-92bc-5a1ad0a9936f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91272541-2bca-4db3-b57d-a26aa91e5129",
                  "parent_uuid": "d312f52d-e25a-4bdf-a44f-b04eaa8acaf4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c83775ea-88e2-4988-bfb5-9651979e7eb1",
              "parent_uuid": "9a4e2e66-51be-4159-92bc-5a1ad0a9936f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f351de66-bfe8-4947-8c1c-81325dba97c8",
                  "parent_uuid": "c83775ea-88e2-4988-bfb5-9651979e7eb1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ece3be2-52e1-4415-9f92-947438574778",
              "parent_uuid": "9a4e2e66-51be-4159-92bc-5a1ad0a9936f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6eb5dd46-183e-45f8-b892-4b851bf964dd",
                  "parent_uuid": "4ece3be2-52e1-4415-9f92-947438574778",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7725845d-abf0-490b-9e52-55eecd445ebe",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "784b6bc5-911a-4ae7-91be-c8ce2e66ac0b",
              "parent_uuid": "7725845d-abf0-490b-9e52-55eecd445ebe",
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
              "uuid": "86dea13d-c4d2-4ce0-bbf9-f82d7b06971e",
              "parent_uuid": "7725845d-abf0-490b-9e52-55eecd445ebe",
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
              "uuid": "04db2c28-63c2-42ef-bec3-1c56292fb2f9",
              "parent_uuid": "7725845d-abf0-490b-9e52-55eecd445ebe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6051c14c-362d-4d44-a770-942bdd414d86",
                  "parent_uuid": "04db2c28-63c2-42ef-bec3-1c56292fb2f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6313bb5-5178-4e72-944f-585a375af7a0",
              "parent_uuid": "7725845d-abf0-490b-9e52-55eecd445ebe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "653ef76e-ed22-4570-bdfb-868285fbe0a8",
                  "parent_uuid": "e6313bb5-5178-4e72-944f-585a375af7a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e6a74e9-4f84-46e6-8bab-ec01417ca492",
              "parent_uuid": "7725845d-abf0-490b-9e52-55eecd445ebe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0838652-12db-4103-86b9-6724d8a9455a",
                  "parent_uuid": "0e6a74e9-4f84-46e6-8bab-ec01417ca492",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08919d89-07d2-4531-999b-4a4b0d06c10c",
              "parent_uuid": "7725845d-abf0-490b-9e52-55eecd445ebe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3c22712-8a4d-4119-931d-0297387b357a",
                  "parent_uuid": "08919d89-07d2-4531-999b-4a4b0d06c10c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2618217d-1a89-49c6-aaaa-f9419121f66e",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33e784b7-7f97-40ee-9fe1-fa3dcac65bcc",
              "parent_uuid": "2618217d-1a89-49c6-aaaa-f9419121f66e",
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
              "uuid": "12e1a4a7-19b1-4ddf-abd3-106694ec0b90",
              "parent_uuid": "2618217d-1a89-49c6-aaaa-f9419121f66e",
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
              "uuid": "b58b4b05-b664-4ab6-a6b4-c4c4aa51c110",
              "parent_uuid": "2618217d-1a89-49c6-aaaa-f9419121f66e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86bf1274-8652-44bc-99d6-74a4fc9205aa",
                  "parent_uuid": "b58b4b05-b664-4ab6-a6b4-c4c4aa51c110",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10464614-fc13-4d4f-bd4f-7e0aafc24e26",
              "parent_uuid": "2618217d-1a89-49c6-aaaa-f9419121f66e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51aa5629-b8ac-459d-a271-fb9426ce51fa",
                  "parent_uuid": "10464614-fc13-4d4f-bd4f-7e0aafc24e26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a83a615f-b439-4d1e-8a0b-0dedcfcfe1fa",
              "parent_uuid": "2618217d-1a89-49c6-aaaa-f9419121f66e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea85b4d3-23fb-4cc2-bf93-a2b1f22b4841",
                  "parent_uuid": "a83a615f-b439-4d1e-8a0b-0dedcfcfe1fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a27bc1ac-d921-4d12-b2ae-75c66845ad0e",
              "parent_uuid": "2618217d-1a89-49c6-aaaa-f9419121f66e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7c5533d-48c5-407c-9cc7-2195a4be0bd7",
                  "parent_uuid": "a27bc1ac-d921-4d12-b2ae-75c66845ad0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "44cfce2b-658b-42e8-b402-8f3850490fac",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22444bd8-60f1-444f-8687-1a0069878a88",
              "parent_uuid": "44cfce2b-658b-42e8-b402-8f3850490fac",
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
              "uuid": "48a747d6-55ca-43fd-a97a-c56208e92e28",
              "parent_uuid": "44cfce2b-658b-42e8-b402-8f3850490fac",
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
              "uuid": "287bc421-a4a8-46fc-9eeb-e23144f1f588",
              "parent_uuid": "44cfce2b-658b-42e8-b402-8f3850490fac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7df99bfe-c7a7-480e-ab50-f3cbc8f84c93",
                  "parent_uuid": "287bc421-a4a8-46fc-9eeb-e23144f1f588",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65f514f7-33d1-44ca-8ade-bbd40268e130",
              "parent_uuid": "44cfce2b-658b-42e8-b402-8f3850490fac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37c1df1b-41bf-4e4e-b256-51a96353efe0",
                  "parent_uuid": "65f514f7-33d1-44ca-8ade-bbd40268e130",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9f93ff9-d5c7-4dab-87ff-1833d8463255",
              "parent_uuid": "44cfce2b-658b-42e8-b402-8f3850490fac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "403ace1c-5d25-4adb-a5c3-eb4e69fb6450",
                  "parent_uuid": "c9f93ff9-d5c7-4dab-87ff-1833d8463255",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3fcbd99-337e-479d-899c-fca5b2b8c374",
              "parent_uuid": "44cfce2b-658b-42e8-b402-8f3850490fac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26534094-ed1b-43a2-b8a2-2e07571bf83a",
                  "parent_uuid": "f3fcbd99-337e-479d-899c-fca5b2b8c374",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "486368fd-0804-4d8d-9870-38d2e8afdb9f",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "351f66e3-934d-45b6-85b9-f4c2d0847a49",
              "parent_uuid": "486368fd-0804-4d8d-9870-38d2e8afdb9f",
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
              "uuid": "e1c9e28e-7fc7-4bf7-af34-43b05ccc9b2c",
              "parent_uuid": "486368fd-0804-4d8d-9870-38d2e8afdb9f",
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
              "uuid": "d3f69002-752a-4634-9253-3e6b55246ac2",
              "parent_uuid": "486368fd-0804-4d8d-9870-38d2e8afdb9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7c62818-b4aa-4d71-a366-7e0ec6769b87",
                  "parent_uuid": "d3f69002-752a-4634-9253-3e6b55246ac2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6def230-fa4b-4b59-a87a-fa5f7a8f48b5",
              "parent_uuid": "486368fd-0804-4d8d-9870-38d2e8afdb9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be68d20e-5025-4124-b1ce-c9ac55416664",
                  "parent_uuid": "d6def230-fa4b-4b59-a87a-fa5f7a8f48b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9254022-218c-4e82-be9e-6d61b3d86934",
              "parent_uuid": "486368fd-0804-4d8d-9870-38d2e8afdb9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1de21941-ae44-49ee-9e66-a001b1e4a8d9",
                  "parent_uuid": "f9254022-218c-4e82-be9e-6d61b3d86934",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6c91c95-f376-4a69-b080-0c0c927e59e0",
              "parent_uuid": "486368fd-0804-4d8d-9870-38d2e8afdb9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abfe54e7-bfc9-4f62-ad4a-13a85ff30a3a",
                  "parent_uuid": "a6c91c95-f376-4a69-b080-0c0c927e59e0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de9d95ec-d1a1-4289-9897-a6fe8889f152",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72b0ce1a-c924-4e0a-af45-f03647e8df5d",
              "parent_uuid": "de9d95ec-d1a1-4289-9897-a6fe8889f152",
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
              "uuid": "ff46f50a-950a-4f1a-91e3-12cc5f67b452",
              "parent_uuid": "de9d95ec-d1a1-4289-9897-a6fe8889f152",
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
              "uuid": "3eb23cb0-7cf5-4b57-b901-eabb752c673b",
              "parent_uuid": "de9d95ec-d1a1-4289-9897-a6fe8889f152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4562954-92ae-4129-9af8-c8d0733a8010",
                  "parent_uuid": "3eb23cb0-7cf5-4b57-b901-eabb752c673b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "639fc7a1-5017-408d-a572-5ea5ae562e91",
              "parent_uuid": "de9d95ec-d1a1-4289-9897-a6fe8889f152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2f4e0c8-7969-4948-8060-4c7e4640cf97",
                  "parent_uuid": "639fc7a1-5017-408d-a572-5ea5ae562e91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64293796-2314-4cd5-9f20-a4f9b1acbef6",
              "parent_uuid": "de9d95ec-d1a1-4289-9897-a6fe8889f152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02c8f8fb-1d54-4e4e-93b8-ffdbfdc8bcf6",
                  "parent_uuid": "64293796-2314-4cd5-9f20-a4f9b1acbef6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dc6afc0-0fc4-4fa1-9819-9e1aba060066",
              "parent_uuid": "de9d95ec-d1a1-4289-9897-a6fe8889f152",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b932c62-608a-4698-8eae-c99d6a1bfe37",
                  "parent_uuid": "0dc6afc0-0fc4-4fa1-9819-9e1aba060066",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f76f2eb4-926d-4d68-8912-f11454c7ae04",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49900e9b-7940-4d08-872c-042c9a78b0f5",
              "parent_uuid": "f76f2eb4-926d-4d68-8912-f11454c7ae04",
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
              "uuid": "4039f690-8dcf-4d68-a0f8-adc33a707d7f",
              "parent_uuid": "f76f2eb4-926d-4d68-8912-f11454c7ae04",
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
              "uuid": "96d786f9-f753-4fc0-a082-d380780027b0",
              "parent_uuid": "f76f2eb4-926d-4d68-8912-f11454c7ae04",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "327a7e1e-bce3-4a5f-a7af-02050d6e23ae",
                  "parent_uuid": "96d786f9-f753-4fc0-a082-d380780027b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "196a07b0-1d92-458b-8952-a39f695dad9f",
              "parent_uuid": "f76f2eb4-926d-4d68-8912-f11454c7ae04",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae31d645-a8cd-41be-ad2d-6c24e89ea12c",
                  "parent_uuid": "196a07b0-1d92-458b-8952-a39f695dad9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "040ee678-3b9b-4498-96df-f14b3940cdd6",
              "parent_uuid": "f76f2eb4-926d-4d68-8912-f11454c7ae04",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57a3cb01-be6d-46a1-83e1-7d0334625601",
                  "parent_uuid": "040ee678-3b9b-4498-96df-f14b3940cdd6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "caad664f-562c-4b73-b295-5c6d55b722ff",
              "parent_uuid": "f76f2eb4-926d-4d68-8912-f11454c7ae04",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cd3fd69-1d1b-4023-ae83-097830275514",
                  "parent_uuid": "caad664f-562c-4b73-b295-5c6d55b722ff",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "227c857c-daaf-4793-b4b6-a7bbf29146cc",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "280539d9-e2ba-49de-9573-69a0e26c6777",
              "parent_uuid": "227c857c-daaf-4793-b4b6-a7bbf29146cc",
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
              "uuid": "c3216244-d85d-4987-b7f5-4d95648ff425",
              "parent_uuid": "227c857c-daaf-4793-b4b6-a7bbf29146cc",
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
              "uuid": "a2006962-b569-45ff-8eed-a6a960263d4f",
              "parent_uuid": "227c857c-daaf-4793-b4b6-a7bbf29146cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d8d71d3-2848-415e-a59c-5b31d56fd396",
                  "parent_uuid": "a2006962-b569-45ff-8eed-a6a960263d4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f06c577-c218-4154-8e15-d8ca206548fe",
              "parent_uuid": "227c857c-daaf-4793-b4b6-a7bbf29146cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2211d4eb-a0db-4178-8308-a9c5cd6f0d37",
                  "parent_uuid": "0f06c577-c218-4154-8e15-d8ca206548fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00896d98-d6ba-46ac-aa9a-c85281d933dc",
              "parent_uuid": "227c857c-daaf-4793-b4b6-a7bbf29146cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bad86d2-bac3-48f1-af14-e1569da234a0",
                  "parent_uuid": "00896d98-d6ba-46ac-aa9a-c85281d933dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cece42dc-18b2-49b5-923e-217304c474da",
              "parent_uuid": "227c857c-daaf-4793-b4b6-a7bbf29146cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0952ad5c-e4cf-4ee2-8d9c-ad472617e2d6",
                  "parent_uuid": "cece42dc-18b2-49b5-923e-217304c474da",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "155c5b1f-d7cd-4839-8b83-ee6488bc7dd7",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0f39cd8-3887-44d7-8f84-997bcf05f61c",
              "parent_uuid": "155c5b1f-d7cd-4839-8b83-ee6488bc7dd7",
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
              "uuid": "0433c120-9ba3-4bec-99ed-bf332ec8d3ae",
              "parent_uuid": "155c5b1f-d7cd-4839-8b83-ee6488bc7dd7",
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
              "uuid": "de801126-19a0-4200-b33a-b2a77ec21727",
              "parent_uuid": "155c5b1f-d7cd-4839-8b83-ee6488bc7dd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cab8a9bd-14eb-4b9f-b527-34b9c87a8a5b",
                  "parent_uuid": "de801126-19a0-4200-b33a-b2a77ec21727",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0630d351-420a-4f4f-84a1-32b14f0db70d",
              "parent_uuid": "155c5b1f-d7cd-4839-8b83-ee6488bc7dd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2237e19e-4038-4d34-9a91-ab4e140b4a63",
                  "parent_uuid": "0630d351-420a-4f4f-84a1-32b14f0db70d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b5bc221-20c4-494a-ab33-3f7648ebeebd",
              "parent_uuid": "155c5b1f-d7cd-4839-8b83-ee6488bc7dd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "975aba2f-c0e9-44c0-b319-8f47aef21a26",
                  "parent_uuid": "2b5bc221-20c4-494a-ab33-3f7648ebeebd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd142bb1-fe2f-486a-a64d-c9cc0c7f9526",
              "parent_uuid": "155c5b1f-d7cd-4839-8b83-ee6488bc7dd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e67f9c1-bad6-40a0-ae3d-a40c9ba551c6",
                  "parent_uuid": "cd142bb1-fe2f-486a-a64d-c9cc0c7f9526",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "121ce3d5-3ce9-4fc3-85f7-1308d3512e62",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "97addeb0-ea1d-4c0e-aefb-04bdde059e0c",
              "parent_uuid": "121ce3d5-3ce9-4fc3-85f7-1308d3512e62",
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
          "uuid": "6bdf5729-2900-42c9-84ca-efa79f327e01",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bb07030-fc7f-4555-88f6-378f45a0deb0",
              "parent_uuid": "6bdf5729-2900-42c9-84ca-efa79f327e01",
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
          "uuid": "02614519-3d43-432a-a5a3-d86e7b13b416",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a7bf0fe-251f-4a12-bf66-ef4872f03592",
              "parent_uuid": "02614519-3d43-432a-a5a3-d86e7b13b416",
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
                  "uuid": "ebc915b5-26a2-4290-ad64-a08fc4ca6b8a",
                  "parent_uuid": "9a7bf0fe-251f-4a12-bf66-ef4872f03592",
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
          "uuid": "611ed423-299e-497a-8ec9-db057442384b",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c97c9e1-91e5-4039-aaf5-ab12bf09ac0e",
              "parent_uuid": "611ed423-299e-497a-8ec9-db057442384b",
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
          "uuid": "bd6159dd-0b9a-4a84-bc72-d93a04f7f5ab",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "bd269d92-3a9e-449b-b391-5cd9e34ebef3",
              "parent_uuid": "bd6159dd-0b9a-4a84-bc72-d93a04f7f5ab",
              "tagName": "td",
              "properties": [
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
          "uuid": "812a24e7-19da-4e41-b0f0-444b0bb1fa57",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b38068ea-5456-46a1-aa25-c023e0e368da",
              "parent_uuid": "812a24e7-19da-4e41-b0f0-444b0bb1fa57",
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
              "uuid": "70cb9803-69bf-4dca-8dec-e85a53d14955",
              "parent_uuid": "812a24e7-19da-4e41-b0f0-444b0bb1fa57",
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
              "uuid": "ff3b2a4d-d221-4064-9fa0-47dd8a2ff60a",
              "parent_uuid": "812a24e7-19da-4e41-b0f0-444b0bb1fa57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e69c0c94-a0a8-43d9-bbfa-025dc9284e68",
                  "parent_uuid": "ff3b2a4d-d221-4064-9fa0-47dd8a2ff60a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c15b5fc-2502-4781-9cce-2f7684025ef1",
              "parent_uuid": "812a24e7-19da-4e41-b0f0-444b0bb1fa57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b10185f-ac99-4e08-80fa-bb01d01d42aa",
                  "parent_uuid": "9c15b5fc-2502-4781-9cce-2f7684025ef1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a2bfc66-d296-4655-9063-d3dd1286cdef",
              "parent_uuid": "812a24e7-19da-4e41-b0f0-444b0bb1fa57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fde8d7c-e276-4b03-a0ea-bd5bb2755131",
                  "parent_uuid": "5a2bfc66-d296-4655-9063-d3dd1286cdef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb02d5cb-ab8e-4ed4-87a5-22234a79b07c",
              "parent_uuid": "812a24e7-19da-4e41-b0f0-444b0bb1fa57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4658ca8d-173f-4292-96c1-82a51c75f03d",
                  "parent_uuid": "eb02d5cb-ab8e-4ed4-87a5-22234a79b07c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b50b417f-fcd8-482c-99c1-e55f9c878871",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb9ed6aa-a746-4230-888d-e54f111b98d2",
              "parent_uuid": "b50b417f-fcd8-482c-99c1-e55f9c878871",
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
              "uuid": "c038eed8-a8d1-4e6d-90e6-a22ad094cbb1",
              "parent_uuid": "b50b417f-fcd8-482c-99c1-e55f9c878871",
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
              "uuid": "a94a9ab7-53d9-4a46-a90b-51a6f8ec9503",
              "parent_uuid": "b50b417f-fcd8-482c-99c1-e55f9c878871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a758ff79-e33f-44c5-80f3-da3632f51c2e",
                  "parent_uuid": "a94a9ab7-53d9-4a46-a90b-51a6f8ec9503",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "67a02814-6dab-4481-b79d-3658458cbef9",
              "parent_uuid": "b50b417f-fcd8-482c-99c1-e55f9c878871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91515e43-efe9-4857-90f2-ec710521aa48",
                  "parent_uuid": "67a02814-6dab-4481-b79d-3658458cbef9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89e95ca1-0713-4b82-bff8-64ecc701f513",
              "parent_uuid": "b50b417f-fcd8-482c-99c1-e55f9c878871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "633c52cf-d4d4-44a0-9b10-d9e5ddbce049",
                  "parent_uuid": "89e95ca1-0713-4b82-bff8-64ecc701f513",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d99826b-7db1-407e-b486-af1b7e771e86",
              "parent_uuid": "b50b417f-fcd8-482c-99c1-e55f9c878871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e249999-0bd5-43df-a521-232aa45872cd",
                  "parent_uuid": "2d99826b-7db1-407e-b486-af1b7e771e86",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7301ed04-b9e4-4870-b9c9-6a486b538a59",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ee6255d-8740-48df-82f6-b3d198b1bb0e",
              "parent_uuid": "7301ed04-b9e4-4870-b9c9-6a486b538a59",
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
              "uuid": "eca09889-dd93-4170-82e0-49b42e8b8689",
              "parent_uuid": "7301ed04-b9e4-4870-b9c9-6a486b538a59",
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
              "uuid": "30d87122-7df5-45b7-bae0-7c1d3b536531",
              "parent_uuid": "7301ed04-b9e4-4870-b9c9-6a486b538a59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef05b6ac-4a19-4440-a644-623030129f76",
                  "parent_uuid": "30d87122-7df5-45b7-bae0-7c1d3b536531",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdc24d0a-cfcf-4159-9ddb-64a587314aa4",
              "parent_uuid": "7301ed04-b9e4-4870-b9c9-6a486b538a59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1d7e522-1f17-4f98-b8f3-d0f3a72f6aea",
                  "parent_uuid": "fdc24d0a-cfcf-4159-9ddb-64a587314aa4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ed159d6-44a9-4bf3-919b-076f345610ad",
              "parent_uuid": "7301ed04-b9e4-4870-b9c9-6a486b538a59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b81ba5bb-a5ae-448a-af48-af9b6407fe8f",
                  "parent_uuid": "6ed159d6-44a9-4bf3-919b-076f345610ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f58fc08-b72e-4baf-a3fb-133afd36110d",
              "parent_uuid": "7301ed04-b9e4-4870-b9c9-6a486b538a59",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd59008d-3f69-4c68-91d4-12bdfac050bf",
                  "parent_uuid": "4f58fc08-b72e-4baf-a3fb-133afd36110d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d39283f-89db-4de3-96ad-fbf16ac36e62",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51de52fa-9bc8-44c9-bb73-6507b1af96d6",
              "parent_uuid": "2d39283f-89db-4de3-96ad-fbf16ac36e62",
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
              "uuid": "a3437b67-30e5-40b4-976e-5b551ada9b3d",
              "parent_uuid": "2d39283f-89db-4de3-96ad-fbf16ac36e62",
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
              "uuid": "d3b910bd-1054-48c7-8207-89bd82c94715",
              "parent_uuid": "2d39283f-89db-4de3-96ad-fbf16ac36e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30fec294-a5a6-4d19-8dc1-80679e2a8907",
                  "parent_uuid": "d3b910bd-1054-48c7-8207-89bd82c94715",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ddb3f45-fc52-4898-8245-8733b571df88",
              "parent_uuid": "2d39283f-89db-4de3-96ad-fbf16ac36e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5a32b2b-ba2a-46b1-89c5-22c3d6df4ace",
                  "parent_uuid": "2ddb3f45-fc52-4898-8245-8733b571df88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f548938-9cb7-4a83-9a57-9055b13964bc",
              "parent_uuid": "2d39283f-89db-4de3-96ad-fbf16ac36e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbe6b859-c889-4229-bf19-86f0e82c832e",
                  "parent_uuid": "1f548938-9cb7-4a83-9a57-9055b13964bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "011fa25e-8b2f-4e13-ab1f-56d0a06b8dfd",
              "parent_uuid": "2d39283f-89db-4de3-96ad-fbf16ac36e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "212e61ac-77ba-49d6-8c86-f3d6eee3a843",
                  "parent_uuid": "011fa25e-8b2f-4e13-ab1f-56d0a06b8dfd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2de69a25-a8af-4933-9b56-9e1892a1663a",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9522afe7-94bb-4aec-b3f1-325a56ff6c1c",
              "parent_uuid": "2de69a25-a8af-4933-9b56-9e1892a1663a",
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
          "uuid": "30644704-eab6-49bf-8ca6-02279e630a1d",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ea87b0d-1c80-40bc-8afa-f13cff0d7d26",
              "parent_uuid": "30644704-eab6-49bf-8ca6-02279e630a1d",
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
              "uuid": "31dd3dd2-5e31-4769-8283-3502ab0653c2",
              "parent_uuid": "30644704-eab6-49bf-8ca6-02279e630a1d",
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
              "uuid": "7819e860-c90f-400e-873d-605f02de33db",
              "parent_uuid": "30644704-eab6-49bf-8ca6-02279e630a1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5853f20d-01f0-4344-83da-deaa9aecd086",
                  "parent_uuid": "7819e860-c90f-400e-873d-605f02de33db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24e11da5-6c32-4e3a-a073-33416c0dd406",
              "parent_uuid": "30644704-eab6-49bf-8ca6-02279e630a1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f695d420-fd40-4205-9e1d-1f236f6fe021",
                  "parent_uuid": "24e11da5-6c32-4e3a-a073-33416c0dd406",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f55285dc-e54b-4d0a-8d20-84079ccec0d6",
              "parent_uuid": "30644704-eab6-49bf-8ca6-02279e630a1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00f19f08-00cb-4fe6-ad5c-75ab001cced2",
                  "parent_uuid": "f55285dc-e54b-4d0a-8d20-84079ccec0d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c863fc8-1c6f-49e2-a89d-f2904be608de",
              "parent_uuid": "30644704-eab6-49bf-8ca6-02279e630a1d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bce03b6-4438-49d0-a1ea-f2dd59c9cfbe",
                  "parent_uuid": "4c863fc8-1c6f-49e2-a89d-f2904be608de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2fe71e59-74c3-447f-a962-f65ec79f578c",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2a7ba32-968a-4702-be89-58c9c3aa5767",
              "parent_uuid": "2fe71e59-74c3-447f-a962-f65ec79f578c",
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
              "uuid": "e6985a7b-0178-4337-958c-15f219a60d71",
              "parent_uuid": "2fe71e59-74c3-447f-a962-f65ec79f578c",
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
              "uuid": "5e16a774-3f4e-4204-99f6-e6ec3d56d5b4",
              "parent_uuid": "2fe71e59-74c3-447f-a962-f65ec79f578c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1050f630-42cb-4888-b639-b53f5688fc58",
                  "parent_uuid": "5e16a774-3f4e-4204-99f6-e6ec3d56d5b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c42cee48-d481-40c3-a767-e02057584d81",
              "parent_uuid": "2fe71e59-74c3-447f-a962-f65ec79f578c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6acbbc63-ab40-4e26-802b-06e59abf35cd",
                  "parent_uuid": "c42cee48-d481-40c3-a767-e02057584d81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a94759f9-a281-4c2a-b53c-d737ddd43a5a",
              "parent_uuid": "2fe71e59-74c3-447f-a962-f65ec79f578c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0ed0736-6db1-4e56-b074-6d4976e5fc63",
                  "parent_uuid": "a94759f9-a281-4c2a-b53c-d737ddd43a5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56fe2a61-0016-4bf5-b801-39ffbcda2b9c",
              "parent_uuid": "2fe71e59-74c3-447f-a962-f65ec79f578c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbc65ceb-282a-4c4f-a1dc-3bed1e8b53cf",
                  "parent_uuid": "56fe2a61-0016-4bf5-b801-39ffbcda2b9c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "62c2b7d5-2e6e-4929-aa6d-c6dee60f3379",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1528667a-53c7-443a-aaba-b6c6de75c5f0",
              "parent_uuid": "62c2b7d5-2e6e-4929-aa6d-c6dee60f3379",
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
              "uuid": "2bf48ea0-3dae-49c8-a3d7-e53b8d7e1509",
              "parent_uuid": "62c2b7d5-2e6e-4929-aa6d-c6dee60f3379",
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
              "uuid": "54921515-eee2-4836-8a19-504f4aa970fe",
              "parent_uuid": "62c2b7d5-2e6e-4929-aa6d-c6dee60f3379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fde98b1-79b4-4cc7-9885-e233fec3fce3",
                  "parent_uuid": "54921515-eee2-4836-8a19-504f4aa970fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18a3174f-84c8-439c-b926-3e379185a3da",
              "parent_uuid": "62c2b7d5-2e6e-4929-aa6d-c6dee60f3379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7210bfbb-293d-4a18-a15d-194f77bdc197",
                  "parent_uuid": "18a3174f-84c8-439c-b926-3e379185a3da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00f68a12-6dcb-48a1-be2e-905ef2d7b190",
              "parent_uuid": "62c2b7d5-2e6e-4929-aa6d-c6dee60f3379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01a652b0-e9fa-4363-803f-067c99ff44a1",
                  "parent_uuid": "00f68a12-6dcb-48a1-be2e-905ef2d7b190",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd67a5d0-be12-4a9c-a762-a2cc21b0fe76",
              "parent_uuid": "62c2b7d5-2e6e-4929-aa6d-c6dee60f3379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29252f12-f85f-4819-b285-3c6249c9b286",
                  "parent_uuid": "bd67a5d0-be12-4a9c-a762-a2cc21b0fe76",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1eeecefc-bf2e-47f7-9a5a-8ccc2f694989",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a3977f18-855c-4f49-9b0d-5f5128291b71",
              "parent_uuid": "1eeecefc-bf2e-47f7-9a5a-8ccc2f694989",
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
              "uuid": "1730d1e1-5dbf-4ea6-9528-4c0877f5130a",
              "parent_uuid": "1eeecefc-bf2e-47f7-9a5a-8ccc2f694989",
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
              "uuid": "cdad6819-709d-469a-97d5-6e567a31ac21",
              "parent_uuid": "1eeecefc-bf2e-47f7-9a5a-8ccc2f694989",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "985d43f5-9c00-4685-be1f-af07e902529b",
                  "parent_uuid": "cdad6819-709d-469a-97d5-6e567a31ac21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "169df226-519d-4c29-81d0-52e2b92ebf8a",
              "parent_uuid": "1eeecefc-bf2e-47f7-9a5a-8ccc2f694989",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "166c5374-229c-4c88-ae61-3e5f5f2c2062",
                  "parent_uuid": "169df226-519d-4c29-81d0-52e2b92ebf8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8994bc3b-878e-46cc-ba19-732d2167cb94",
              "parent_uuid": "1eeecefc-bf2e-47f7-9a5a-8ccc2f694989",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c5dbdea-665f-46ff-bc23-fc00e2c93274",
                  "parent_uuid": "8994bc3b-878e-46cc-ba19-732d2167cb94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "316e2f29-6869-40d9-ba05-0c34bf078909",
              "parent_uuid": "1eeecefc-bf2e-47f7-9a5a-8ccc2f694989",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0c21864-cc61-45b2-a69d-b5b845f3507a",
                  "parent_uuid": "316e2f29-6869-40d9-ba05-0c34bf078909",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f1ed7933-5a72-4d73-8975-4c418aace479",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1783642-879b-4885-abe3-0e3a562d6648",
              "parent_uuid": "f1ed7933-5a72-4d73-8975-4c418aace479",
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
          "uuid": "e65ae950-ec1e-4025-95ab-68a2463e74d2",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2bb33e9-b02d-4562-901d-ad1dd4aeaa55",
              "parent_uuid": "e65ae950-ec1e-4025-95ab-68a2463e74d2",
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
          "uuid": "7e540c34-ea49-4549-a72b-ab8cd94090aa",
          "parent_uuid": "b234fbd9-0f4b-4f5c-a604-fd93b6e20a13",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e570204e-2672-4a0f-aa33-b63bc347c3fc",
              "parent_uuid": "7e540c34-ea49-4549-a72b-ab8cd94090aa",
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
                  "uuid": "9d8509f4-c406-48d3-9d40-38d6db90c6e5",
                  "parent_uuid": "e570204e-2672-4a0f-aa33-b63bc347c3fc",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
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

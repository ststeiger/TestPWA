
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
  "uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "4b786dab-611e-4793-b7bd-ef507d08bf77",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "d2f9f259-84d8-4f68-b2df-c3e5484f8c93",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "68e39169-535b-4a14-a98c-436b4c53594a",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "f8731da2-6337-47b9-bfac-81a3a0dfe4b0",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "eb54f2f3-1455-4813-9cf7-b5c055e50557",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "4793de85-752d-4cfa-a0fc-f269c2907c86",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "f5b453b7-50f0-4c7e-ba8a-cdde9c4a49d8",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
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
      "uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
      "parent_uuid": "b3bb0a76-3837-41e1-9dbd-722f72cd8b9a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1e4f65af-5e0c-4f22-b8d5-b963ff9f143c",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e0e2337c-790f-4ece-b6a3-4b02e3182b8c",
              "parent_uuid": "1e4f65af-5e0c-4f22-b8d5-b963ff9f143c",
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
              "uuid": "9ee57247-cff2-4f7d-8902-9b2823627b60",
              "parent_uuid": "1e4f65af-5e0c-4f22-b8d5-b963ff9f143c",
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
              "uuid": "3ac0de48-0653-4532-a429-bc41bb4896ee",
              "parent_uuid": "1e4f65af-5e0c-4f22-b8d5-b963ff9f143c",
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
              "uuid": "62edb6b2-e23d-4750-9b04-693cbe664861",
              "parent_uuid": "1e4f65af-5e0c-4f22-b8d5-b963ff9f143c",
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
          "uuid": "24e217fd-0f13-4843-a3ce-a37501d070a2",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d4944d6b-94e1-4165-a9ae-fca6c07fb733",
              "parent_uuid": "24e217fd-0f13-4843-a3ce-a37501d070a2",
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
              "uuid": "60a409fd-0b6a-4a93-972e-70f3b182ff05",
              "parent_uuid": "24e217fd-0f13-4843-a3ce-a37501d070a2",
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
              "uuid": "aeb0a28c-51c6-4db1-80c9-2039994b1143",
              "parent_uuid": "24e217fd-0f13-4843-a3ce-a37501d070a2",
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
              "uuid": "3b139e59-4e84-4fd0-aa44-5f2176d2e528",
              "parent_uuid": "24e217fd-0f13-4843-a3ce-a37501d070a2",
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
          "uuid": "11d0a83e-b7e6-47c3-808f-02262bec6fe9",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b599b454-5d04-4167-960e-4bc8b063bb19",
              "parent_uuid": "11d0a83e-b7e6-47c3-808f-02262bec6fe9",
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
              "uuid": "3d06e325-4c21-429a-af08-f712ffaee0b0",
              "parent_uuid": "11d0a83e-b7e6-47c3-808f-02262bec6fe9",
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
              "uuid": "b9de49f0-6010-4ebf-a72e-1e13a28312db",
              "parent_uuid": "11d0a83e-b7e6-47c3-808f-02262bec6fe9",
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
              "uuid": "2acee486-9f8e-472a-93cc-60bbe50320ca",
              "parent_uuid": "11d0a83e-b7e6-47c3-808f-02262bec6fe9",
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
              "uuid": "a434341d-4cb2-4d97-9d41-0a8b15c66740",
              "parent_uuid": "11d0a83e-b7e6-47c3-808f-02262bec6fe9",
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
              "uuid": "e0c3af64-28b4-4a71-81d5-f7510ab6b195",
              "parent_uuid": "11d0a83e-b7e6-47c3-808f-02262bec6fe9",
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
          "uuid": "ef57ff5d-a9d0-4b2b-b220-3246aaa79b73",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fa249c61-54d5-44b3-b0f5-ee60a079f36b",
              "parent_uuid": "ef57ff5d-a9d0-4b2b-b220-3246aaa79b73",
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
          "uuid": "dc01c05a-d942-4c3e-819a-906563b69a3a",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0734c764-f6cc-40cc-8ff8-d1221bbfa80e",
              "parent_uuid": "dc01c05a-d942-4c3e-819a-906563b69a3a",
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
              "uuid": "23f043a8-6f98-4491-885c-e919d34458b6",
              "parent_uuid": "dc01c05a-d942-4c3e-819a-906563b69a3a",
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
              "uuid": "97b3acf8-fb75-497e-88de-aadb4d2c25a1",
              "parent_uuid": "dc01c05a-d942-4c3e-819a-906563b69a3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f12b4a74-9082-445a-801f-3517b27c0549",
                  "parent_uuid": "97b3acf8-fb75-497e-88de-aadb4d2c25a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85f96fff-466b-48be-a9ea-c046adb6cb07",
              "parent_uuid": "dc01c05a-d942-4c3e-819a-906563b69a3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78a5c1a8-2793-4dac-a3c0-7ddf1e5eeab3",
                  "parent_uuid": "85f96fff-466b-48be-a9ea-c046adb6cb07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6614e19-b19e-4c1b-a771-3adad54030e4",
              "parent_uuid": "dc01c05a-d942-4c3e-819a-906563b69a3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82278d02-8906-4123-a441-31578e5d228b",
                  "parent_uuid": "b6614e19-b19e-4c1b-a771-3adad54030e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a7c6734-a445-4de8-9cc9-878db582dbbf",
              "parent_uuid": "dc01c05a-d942-4c3e-819a-906563b69a3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08ab9f8d-8468-475a-bf94-cced7e60ca29",
                  "parent_uuid": "0a7c6734-a445-4de8-9cc9-878db582dbbf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "adf54b45-2cb4-4df9-9e94-667be24dad64",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce0baad1-7c1d-40f6-95a3-75bfd31c958d",
              "parent_uuid": "adf54b45-2cb4-4df9-9e94-667be24dad64",
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
              "uuid": "c416fe0e-f930-4757-b053-16a513ea908e",
              "parent_uuid": "adf54b45-2cb4-4df9-9e94-667be24dad64",
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
              "uuid": "9ac96f8c-819b-4211-8d45-5c7c28c360c8",
              "parent_uuid": "adf54b45-2cb4-4df9-9e94-667be24dad64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "220143f2-63ff-4c36-9f56-a660e23648a0",
                  "parent_uuid": "9ac96f8c-819b-4211-8d45-5c7c28c360c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "884f3bb4-0874-436f-a9e9-018470d02f75",
              "parent_uuid": "adf54b45-2cb4-4df9-9e94-667be24dad64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94511ea3-de6e-4959-bf63-1ea985c477ab",
                  "parent_uuid": "884f3bb4-0874-436f-a9e9-018470d02f75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5341a61d-dbf0-4ef5-9ea6-fa4b9661309e",
              "parent_uuid": "adf54b45-2cb4-4df9-9e94-667be24dad64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c789233-a11b-4f1c-b75d-d94da237afc0",
                  "parent_uuid": "5341a61d-dbf0-4ef5-9ea6-fa4b9661309e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6c94dfd-1ea7-4dee-816e-1ca55bf53dd6",
              "parent_uuid": "adf54b45-2cb4-4df9-9e94-667be24dad64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d298038-f215-48c4-9482-c42fea0fd5ba",
                  "parent_uuid": "d6c94dfd-1ea7-4dee-816e-1ca55bf53dd6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ddb599d-2ef7-4038-a3db-01218ebe3aad",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51a4feee-b74f-4472-b146-3e8c6a042b1a",
              "parent_uuid": "4ddb599d-2ef7-4038-a3db-01218ebe3aad",
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
              "uuid": "9e43cd9c-3a53-4a1e-b29d-e58dd3cc7873",
              "parent_uuid": "4ddb599d-2ef7-4038-a3db-01218ebe3aad",
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
              "uuid": "c7a3a891-e99f-4e98-a047-c80f148ab459",
              "parent_uuid": "4ddb599d-2ef7-4038-a3db-01218ebe3aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "320f8bcb-c2b6-457c-83f9-b2e1eed70882",
                  "parent_uuid": "c7a3a891-e99f-4e98-a047-c80f148ab459",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d62507a7-5d54-4198-a5d6-2f6b38f6980b",
              "parent_uuid": "4ddb599d-2ef7-4038-a3db-01218ebe3aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3cf06b30-1329-4b15-a9d8-9399217eeb9c",
                  "parent_uuid": "d62507a7-5d54-4198-a5d6-2f6b38f6980b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51306e5a-8420-493f-bc8c-0485f4d7793d",
              "parent_uuid": "4ddb599d-2ef7-4038-a3db-01218ebe3aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb9cace4-bfd2-4be7-baf6-74065f54cdb1",
                  "parent_uuid": "51306e5a-8420-493f-bc8c-0485f4d7793d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec92262a-08b3-4c7c-b947-e0274c36e160",
              "parent_uuid": "4ddb599d-2ef7-4038-a3db-01218ebe3aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d00addc4-e45e-4d03-987b-e21ee245f1ba",
                  "parent_uuid": "ec92262a-08b3-4c7c-b947-e0274c36e160",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35c83c7c-afa0-46aa-8c41-83cd1686129d",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bd018a03-fec2-4d8a-8f55-510ddb53f6fd",
              "parent_uuid": "35c83c7c-afa0-46aa-8c41-83cd1686129d",
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
              "uuid": "2c5f472d-fa2f-4570-8682-cf0f64a43897",
              "parent_uuid": "35c83c7c-afa0-46aa-8c41-83cd1686129d",
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
              "uuid": "a2cf1767-6f4f-4b87-bebd-e61554057984",
              "parent_uuid": "35c83c7c-afa0-46aa-8c41-83cd1686129d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73d5057a-1310-4a98-8e87-55afe1b0cd5b",
                  "parent_uuid": "a2cf1767-6f4f-4b87-bebd-e61554057984",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edc5057d-2ce2-4308-9ee5-cc8530e8033c",
              "parent_uuid": "35c83c7c-afa0-46aa-8c41-83cd1686129d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e3323e2-792a-41f1-b339-02e9d0fed92d",
                  "parent_uuid": "edc5057d-2ce2-4308-9ee5-cc8530e8033c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46cc3e10-56dc-4fd4-b9a3-1d31ab6f8b6e",
              "parent_uuid": "35c83c7c-afa0-46aa-8c41-83cd1686129d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43a4b7df-098d-44ec-950c-b6b80f36c13d",
                  "parent_uuid": "46cc3e10-56dc-4fd4-b9a3-1d31ab6f8b6e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b12b37f6-0d4d-4640-bf85-ce1aa72d7a16",
              "parent_uuid": "35c83c7c-afa0-46aa-8c41-83cd1686129d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35443f89-6d84-4207-8ac4-7926f2bda468",
                  "parent_uuid": "b12b37f6-0d4d-4640-bf85-ce1aa72d7a16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e0ca8d32-a6b8-40e4-bf20-ca438e412aab",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "53db3c26-6f65-40f8-b994-938ef865ae69",
              "parent_uuid": "e0ca8d32-a6b8-40e4-bf20-ca438e412aab",
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
          "uuid": "8ebfd8cb-86a5-4906-a297-914159c6d5d6",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f07cc6f6-2fbc-4978-a499-7ad93e72ad2e",
              "parent_uuid": "8ebfd8cb-86a5-4906-a297-914159c6d5d6",
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
              "innerHtml": "\r\n                    <span><b>Gesamte Anlage reinigen:</b><br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "611f6189-78c3-4636-b51a-5b89bfa49889",
              "parent_uuid": "8ebfd8cb-86a5-4906-a297-914159c6d5d6",
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
              "uuid": "2a10aaeb-9efd-4762-8cfa-c5ed0e11f596",
              "parent_uuid": "8ebfd8cb-86a5-4906-a297-914159c6d5d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3187ef34-52aa-428d-a313-413138e8673b",
                  "parent_uuid": "2a10aaeb-9efd-4762-8cfa-c5ed0e11f596",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eeab5803-cc0e-4d59-b632-57c26d5990f5",
              "parent_uuid": "8ebfd8cb-86a5-4906-a297-914159c6d5d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d49bbf6f-f187-4285-a187-c5067b9f2e0a",
                  "parent_uuid": "eeab5803-cc0e-4d59-b632-57c26d5990f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c678c5c8-3e46-4d76-861f-2de7f226d6ee",
              "parent_uuid": "8ebfd8cb-86a5-4906-a297-914159c6d5d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f5e4af8-e9d7-4fb6-bea1-f1ebff058abf",
                  "parent_uuid": "c678c5c8-3e46-4d76-861f-2de7f226d6ee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40461860-0708-42cd-9332-822a24e7e91f",
              "parent_uuid": "8ebfd8cb-86a5-4906-a297-914159c6d5d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30f78edd-7a49-4695-9012-d9acd7151996",
                  "parent_uuid": "40461860-0708-42cd-9332-822a24e7e91f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b6a3d8b6-e411-41e3-bb17-e48bf15aaf8a",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab5a84d8-fd2e-4ec7-9349-e54a80e155df",
              "parent_uuid": "b6a3d8b6-e411-41e3-bb17-e48bf15aaf8a",
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
              "uuid": "e80efb85-c4ca-4b4d-b10d-e99ceced5549",
              "parent_uuid": "b6a3d8b6-e411-41e3-bb17-e48bf15aaf8a",
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
              "uuid": "fcadfa26-495b-42bc-974b-ce79abf7573f",
              "parent_uuid": "b6a3d8b6-e411-41e3-bb17-e48bf15aaf8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac8b6ca1-b821-4f4f-b52c-b61320b2ce33",
                  "parent_uuid": "fcadfa26-495b-42bc-974b-ce79abf7573f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65cbd7fb-e090-4356-a7f0-aa64bdaac007",
              "parent_uuid": "b6a3d8b6-e411-41e3-bb17-e48bf15aaf8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f5921ba-0a14-48b9-b767-e30d38e1b6c8",
                  "parent_uuid": "65cbd7fb-e090-4356-a7f0-aa64bdaac007",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ba5cb4f-90a3-4332-8920-972b2ed732a2",
              "parent_uuid": "b6a3d8b6-e411-41e3-bb17-e48bf15aaf8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1166789-2139-44b1-88c2-7121f0d913fc",
                  "parent_uuid": "5ba5cb4f-90a3-4332-8920-972b2ed732a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abbf0738-adfa-4777-841c-8b77ff1f115e",
              "parent_uuid": "b6a3d8b6-e411-41e3-bb17-e48bf15aaf8a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72b16824-9783-499d-99d7-d8bc4aa779d3",
                  "parent_uuid": "abbf0738-adfa-4777-841c-8b77ff1f115e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8f0cf5d2-44e0-4dd1-86bc-9e4448b5bfaf",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5aa42339-a048-44b1-b2b9-3750fe9befab",
              "parent_uuid": "8f0cf5d2-44e0-4dd1-86bc-9e4448b5bfaf",
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
              "uuid": "2b9d1745-3fe5-4e28-a600-258ef204fc93",
              "parent_uuid": "8f0cf5d2-44e0-4dd1-86bc-9e4448b5bfaf",
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
              "uuid": "baff7a4f-fe27-4109-aaec-7eb578f8a2e9",
              "parent_uuid": "8f0cf5d2-44e0-4dd1-86bc-9e4448b5bfaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5ee0c33-bbda-4a0b-a553-3e5cca7fa8d5",
                  "parent_uuid": "baff7a4f-fe27-4109-aaec-7eb578f8a2e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5057efbc-0795-40fc-98d6-4ca331407c13",
              "parent_uuid": "8f0cf5d2-44e0-4dd1-86bc-9e4448b5bfaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3322eb3e-7b5b-4b07-9315-250dcb7d6efc",
                  "parent_uuid": "5057efbc-0795-40fc-98d6-4ca331407c13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3b1bb13-850d-443e-8c78-e2d7ea39d2c1",
              "parent_uuid": "8f0cf5d2-44e0-4dd1-86bc-9e4448b5bfaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a3709d8-15f0-4fdb-9d3a-8a47cfed769f",
                  "parent_uuid": "e3b1bb13-850d-443e-8c78-e2d7ea39d2c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3280def2-04cf-4a51-b3f8-aa8a8c5fc775",
              "parent_uuid": "8f0cf5d2-44e0-4dd1-86bc-9e4448b5bfaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5954d085-cf02-443f-803d-6165d14c68ec",
                  "parent_uuid": "3280def2-04cf-4a51-b3f8-aa8a8c5fc775",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e7a4fabb-1d5a-4abb-9207-ce07c9bd25d0",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2910f3ab-03f8-42b8-842a-90de835388c1",
              "parent_uuid": "e7a4fabb-1d5a-4abb-9207-ce07c9bd25d0",
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
              "uuid": "784c96f9-7d12-4f38-a8ad-762bf769ed06",
              "parent_uuid": "e7a4fabb-1d5a-4abb-9207-ce07c9bd25d0",
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
              "uuid": "a890c306-74a1-4b62-8940-f26dd08fe346",
              "parent_uuid": "e7a4fabb-1d5a-4abb-9207-ce07c9bd25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95edff49-5a9e-411d-9c6c-abe52a40f8b0",
                  "parent_uuid": "a890c306-74a1-4b62-8940-f26dd08fe346",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1dd22a1b-8e51-49ea-8049-74d3064e57d2",
              "parent_uuid": "e7a4fabb-1d5a-4abb-9207-ce07c9bd25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7c900af-bac4-48ae-ada7-787ba7ac8565",
                  "parent_uuid": "1dd22a1b-8e51-49ea-8049-74d3064e57d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bdb03cb-0eb9-44a3-b1f3-e4583df0f408",
              "parent_uuid": "e7a4fabb-1d5a-4abb-9207-ce07c9bd25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b109456-9812-47a4-a674-cf4384643073",
                  "parent_uuid": "6bdb03cb-0eb9-44a3-b1f3-e4583df0f408",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e806b380-ae13-4359-befa-2c486f389e28",
              "parent_uuid": "e7a4fabb-1d5a-4abb-9207-ce07c9bd25d0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "524cd9cb-a95e-457f-ac96-22a6f3c503a8",
                  "parent_uuid": "e806b380-ae13-4359-befa-2c486f389e28",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "746e5b69-4bcb-43b8-bcb2-3d72ed2002d4",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0a9d57aa-bfbd-46bf-a007-fdf866c2a02a",
              "parent_uuid": "746e5b69-4bcb-43b8-bcb2-3d72ed2002d4",
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
              "innerHtml": "\r\n                    <span><b>Transportriemen gross reinigen:</b><br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "64ccb68a-c2ce-48f8-a5b7-8b3c0bfcc8bf",
              "parent_uuid": "746e5b69-4bcb-43b8-bcb2-3d72ed2002d4",
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
              "uuid": "d23d85ce-1a91-4614-aaea-2cd05eaae769",
              "parent_uuid": "746e5b69-4bcb-43b8-bcb2-3d72ed2002d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b301d16-95e8-4188-80b2-f58dccff5f0e",
                  "parent_uuid": "d23d85ce-1a91-4614-aaea-2cd05eaae769",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5796bab2-b857-4d0b-b558-aa0ec30122b6",
              "parent_uuid": "746e5b69-4bcb-43b8-bcb2-3d72ed2002d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0102e60e-4731-4abe-ade3-258cbcd125f0",
                  "parent_uuid": "5796bab2-b857-4d0b-b558-aa0ec30122b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0346e9d8-9789-447b-91c3-cf7beb56248f",
              "parent_uuid": "746e5b69-4bcb-43b8-bcb2-3d72ed2002d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f3ecb2f-0f7a-45d0-9ce2-3b3b7560e9cf",
                  "parent_uuid": "0346e9d8-9789-447b-91c3-cf7beb56248f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73334138-3b2f-452a-b045-2fb0986492a5",
              "parent_uuid": "746e5b69-4bcb-43b8-bcb2-3d72ed2002d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7b0c1a8-fdd7-4068-a5f0-f47de7309f42",
                  "parent_uuid": "73334138-3b2f-452a-b045-2fb0986492a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b8e5dea8-e4f1-43bd-a68c-9be125874638",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c4910127-ef78-4bab-a11e-75192eac70c8",
              "parent_uuid": "b8e5dea8-e4f1-43bd-a68c-9be125874638",
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
              "innerHtml": "\r\n                    <span><b>Transportriemen klein reinigen:</b><br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2dbaaf06-fb2d-42ec-80a7-20ebe020e420",
              "parent_uuid": "b8e5dea8-e4f1-43bd-a68c-9be125874638",
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
              "uuid": "f6ed47d4-437e-4a48-a48d-53db5ac1f7e8",
              "parent_uuid": "b8e5dea8-e4f1-43bd-a68c-9be125874638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "920b5e53-e7a1-4743-87a5-472f608725e5",
                  "parent_uuid": "f6ed47d4-437e-4a48-a48d-53db5ac1f7e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "616b1d2f-7e99-4bee-9242-73fbe5502dd4",
              "parent_uuid": "b8e5dea8-e4f1-43bd-a68c-9be125874638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1ea39ba-03de-412f-a560-1292cc7e7ac8",
                  "parent_uuid": "616b1d2f-7e99-4bee-9242-73fbe5502dd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f16cbdc1-dcf5-453d-882f-b3ec5f9c450c",
              "parent_uuid": "b8e5dea8-e4f1-43bd-a68c-9be125874638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09507a24-f701-4675-92de-c95e7d597ce0",
                  "parent_uuid": "f16cbdc1-dcf5-453d-882f-b3ec5f9c450c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96219106-3b33-40ad-8f33-026ccc1ceab5",
              "parent_uuid": "b8e5dea8-e4f1-43bd-a68c-9be125874638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98a935aa-63af-4a20-a91b-e9c80a226d65",
                  "parent_uuid": "96219106-3b33-40ad-8f33-026ccc1ceab5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd2a6988-8222-475a-89b2-b011c055fb95",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab780b9e-9b6a-4015-91ef-3578022d505b",
              "parent_uuid": "fd2a6988-8222-475a-89b2-b011c055fb95",
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
              "innerHtml": "\r\n                    <span><b>Spannung Transporriemen gross überprüfen:</b><br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "79de16a1-aba0-4411-825c-0ab9bd788762",
              "parent_uuid": "fd2a6988-8222-475a-89b2-b011c055fb95",
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
              "uuid": "309123d2-ac16-4783-8130-ecfe7dec29ae",
              "parent_uuid": "fd2a6988-8222-475a-89b2-b011c055fb95",
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
                  "uuid": "14ad78c1-ba2b-453e-b6a0-19daae6f9db5",
                  "parent_uuid": "309123d2-ac16-4783-8130-ecfe7dec29ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a9d8db0-8ef8-40d0-a456-0bfac3b71c24",
              "parent_uuid": "fd2a6988-8222-475a-89b2-b011c055fb95",
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
                  "uuid": "2e60a962-b3ae-435b-af2c-118250acf195",
                  "parent_uuid": "7a9d8db0-8ef8-40d0-a456-0bfac3b71c24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32da1fb1-2e1f-47a0-9e31-b9e22a980b64",
              "parent_uuid": "fd2a6988-8222-475a-89b2-b011c055fb95",
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
                  "uuid": "d13d15a8-67b4-4526-9903-09f41da51e3e",
                  "parent_uuid": "32da1fb1-2e1f-47a0-9e31-b9e22a980b64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7e648f3-262c-4561-959a-e706c9aadddb",
              "parent_uuid": "fd2a6988-8222-475a-89b2-b011c055fb95",
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
                  "uuid": "e69b1779-6e96-41a6-bf8a-bf7a1f50cad8",
                  "parent_uuid": "c7e648f3-262c-4561-959a-e706c9aadddb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb17a65f-7638-48b2-b181-69baf802a903",
              "parent_uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
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
              "uuid": "5ba93ccd-345c-4ce0-b148-a98e1ccbcc95",
              "parent_uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
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
              "uuid": "57e6d505-d335-4cb7-9184-c7fbc2c61b81",
              "parent_uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
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
              "uuid": "0c383e05-b828-4365-b805-82614ed25ad8",
              "parent_uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
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
                  "uuid": "c3138b8a-4fdc-497b-a0db-61c5137a2313",
                  "parent_uuid": "0c383e05-b828-4365-b805-82614ed25ad8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6c7bf7f-32bd-4691-ba19-daab219fd674",
              "parent_uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
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
                  "uuid": "61758310-6685-4b2e-ab2d-6338042a1888",
                  "parent_uuid": "b6c7bf7f-32bd-4691-ba19-daab219fd674",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a6c67be-869f-442e-b40f-8eb0fe5250de",
              "parent_uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
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
                  "uuid": "b818f99e-2620-42f1-8721-af47d37e58a1",
                  "parent_uuid": "1a6c67be-869f-442e-b40f-8eb0fe5250de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1dfe888c-aed4-4d69-9e10-b7e9ca433e7a",
              "parent_uuid": "8b7c9c59-ae7e-4dde-b1d2-9425a3cc1e42",
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
                  "uuid": "f25be50e-9075-4acb-bc8a-3fa03ae97071",
                  "parent_uuid": "1dfe888c-aed4-4d69-9e10-b7e9ca433e7a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f81f8bd1-3f98-427b-99df-9f1f940bdba7",
              "parent_uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
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
              "uuid": "7813246e-f2ac-488f-bc2b-6cb456df29fe",
              "parent_uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
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
              "uuid": "0db52c04-457e-4c55-82b5-6c1403b131fc",
              "parent_uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
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
                  "uuid": "8a5f5808-a65d-4854-b090-393075eed1fe",
                  "parent_uuid": "0db52c04-457e-4c55-82b5-6c1403b131fc",
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
              "uuid": "ff7b21eb-aeb9-4a86-a0fb-8171a10e13f2",
              "parent_uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
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
                  "uuid": "b412004d-13e0-40db-820d-001e6cac57d3",
                  "parent_uuid": "ff7b21eb-aeb9-4a86-a0fb-8171a10e13f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "414ac145-e638-444e-a95b-3309c0ea0e52",
              "parent_uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
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
                  "uuid": "da7808d1-9fdd-4b0c-b91b-350b8028ac79",
                  "parent_uuid": "414ac145-e638-444e-a95b-3309c0ea0e52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49be69b9-a898-4ce2-aa39-af6247adebda",
              "parent_uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
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
                  "uuid": "48abd152-fe3c-44f8-93b0-312b2c6a6a11",
                  "parent_uuid": "49be69b9-a898-4ce2-aa39-af6247adebda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "048b2ce3-5948-4588-94c7-7842ecb826eb",
              "parent_uuid": "b11409ea-4dcc-4a85-b7fa-2799461e5396",
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
                  "uuid": "3a549038-ec70-4a80-b00c-0a5650adb2f3",
                  "parent_uuid": "048b2ce3-5948-4588-94c7-7842ecb826eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b334fa71-ce4d-4bb9-90e1-b350d4d004eb",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "025bb3de-0e63-4fd7-83fd-c21ba261bacf",
              "parent_uuid": "b334fa71-ce4d-4bb9-90e1-b350d4d004eb",
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
              "uuid": "2037c6e6-f829-468c-a3b0-a9dedee096b6",
              "parent_uuid": "b334fa71-ce4d-4bb9-90e1-b350d4d004eb",
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
              "uuid": "2888be1a-c511-4b67-bbc0-e89b8e96617d",
              "parent_uuid": "b334fa71-ce4d-4bb9-90e1-b350d4d004eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db186046-7f00-460d-9db8-dfb5ee726496",
                  "parent_uuid": "2888be1a-c511-4b67-bbc0-e89b8e96617d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0df39de7-ecb9-4728-82e0-4ba1500eabc7",
              "parent_uuid": "b334fa71-ce4d-4bb9-90e1-b350d4d004eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff0e03e4-5991-4c9c-b0ab-e99af24e4436",
                  "parent_uuid": "0df39de7-ecb9-4728-82e0-4ba1500eabc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5bd0ea2-c2ae-49ab-b99e-0ea733c2adcd",
              "parent_uuid": "b334fa71-ce4d-4bb9-90e1-b350d4d004eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91b6e178-9ab4-4dde-8955-a47cb41505aa",
                  "parent_uuid": "c5bd0ea2-c2ae-49ab-b99e-0ea733c2adcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28f96466-9914-4bb3-b82f-ffe94f9fbc1e",
              "parent_uuid": "b334fa71-ce4d-4bb9-90e1-b350d4d004eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0819852a-a831-49b1-9097-c1b3264905c8",
                  "parent_uuid": "28f96466-9914-4bb3-b82f-ffe94f9fbc1e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e243e709-73a0-480a-9312-c66358ba7f2c",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e467a41f-3012-427c-b473-962839e9b6f6",
              "parent_uuid": "e243e709-73a0-480a-9312-c66358ba7f2c",
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
              "uuid": "2c719d9a-4e8b-4440-9808-2c7420fac748",
              "parent_uuid": "e243e709-73a0-480a-9312-c66358ba7f2c",
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
              "uuid": "df3dc7c4-2a2b-4b40-9d4e-aa67abf401bb",
              "parent_uuid": "e243e709-73a0-480a-9312-c66358ba7f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1da79b9-1063-4d6a-bfb9-10697baa21f6",
                  "parent_uuid": "df3dc7c4-2a2b-4b40-9d4e-aa67abf401bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42db4367-3457-4c11-b02f-414d76c15912",
              "parent_uuid": "e243e709-73a0-480a-9312-c66358ba7f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8053850d-0420-4960-9a03-db6ab24d64e2",
                  "parent_uuid": "42db4367-3457-4c11-b02f-414d76c15912",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cb2f023-30a0-4613-8054-8723664a5d4c",
              "parent_uuid": "e243e709-73a0-480a-9312-c66358ba7f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aea451b9-6f88-45a0-8742-5e6f36a9ce79",
                  "parent_uuid": "6cb2f023-30a0-4613-8054-8723664a5d4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8f2edd1-12f0-46f5-a41c-42af153f1a9e",
              "parent_uuid": "e243e709-73a0-480a-9312-c66358ba7f2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f506ebe-948b-4e47-87de-230fd56a4841",
                  "parent_uuid": "e8f2edd1-12f0-46f5-a41c-42af153f1a9e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6c3dd7a0-2689-45c0-ab44-f481cc4b5339",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8577709-5c0a-41f4-a675-89d6f9cd1c2c",
              "parent_uuid": "6c3dd7a0-2689-45c0-ab44-f481cc4b5339",
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
              "uuid": "42a29170-84c4-4243-b124-51462e4fa1a5",
              "parent_uuid": "6c3dd7a0-2689-45c0-ab44-f481cc4b5339",
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
              "uuid": "6de77afc-4d71-4b01-bf76-bcbfa61ce89c",
              "parent_uuid": "6c3dd7a0-2689-45c0-ab44-f481cc4b5339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04df67d5-9ff4-4f87-be5d-ba30bbf54b37",
                  "parent_uuid": "6de77afc-4d71-4b01-bf76-bcbfa61ce89c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20ea8cef-bea1-4e61-a9e1-31d1e0c89c5d",
              "parent_uuid": "6c3dd7a0-2689-45c0-ab44-f481cc4b5339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b088dba2-3377-4c46-99b9-33f58e7e2df1",
                  "parent_uuid": "20ea8cef-bea1-4e61-a9e1-31d1e0c89c5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58bbb118-fa7d-471e-9e20-672a287d1077",
              "parent_uuid": "6c3dd7a0-2689-45c0-ab44-f481cc4b5339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3278abc-9586-40e8-8931-4bed78b91888",
                  "parent_uuid": "58bbb118-fa7d-471e-9e20-672a287d1077",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3fb59708-1f3f-433c-90b8-eddb7b379077",
              "parent_uuid": "6c3dd7a0-2689-45c0-ab44-f481cc4b5339",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73efd963-e614-48ab-b69a-24bc680e2a26",
                  "parent_uuid": "3fb59708-1f3f-433c-90b8-eddb7b379077",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ea751ec8-6f48-489d-a2a2-eb92aeb67e62",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b429612c-0dff-4107-ac77-9160feb62808",
              "parent_uuid": "ea751ec8-6f48-489d-a2a2-eb92aeb67e62",
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
              "uuid": "a3c4b210-96c1-400c-9084-b8a09069d3f4",
              "parent_uuid": "ea751ec8-6f48-489d-a2a2-eb92aeb67e62",
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
              "uuid": "9d43b7e2-c813-4975-8415-3f38eaa59bdb",
              "parent_uuid": "ea751ec8-6f48-489d-a2a2-eb92aeb67e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25570f45-2272-4e91-a055-4c82ee54d41f",
                  "parent_uuid": "9d43b7e2-c813-4975-8415-3f38eaa59bdb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "587514bb-09bc-49b3-9de4-eac0107f6caf",
              "parent_uuid": "ea751ec8-6f48-489d-a2a2-eb92aeb67e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d603a786-1053-4371-b30e-1e801a3e5d64",
                  "parent_uuid": "587514bb-09bc-49b3-9de4-eac0107f6caf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "296e2d66-7bed-4eca-892a-a408a365539c",
              "parent_uuid": "ea751ec8-6f48-489d-a2a2-eb92aeb67e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1679bda5-7f81-46c1-b3c5-a8338e044fc7",
                  "parent_uuid": "296e2d66-7bed-4eca-892a-a408a365539c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0a2c490-b2f5-43f5-b67a-9a6975169ff9",
              "parent_uuid": "ea751ec8-6f48-489d-a2a2-eb92aeb67e62",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6a4a575-8b46-4f83-b1cc-3a9c2994c930",
                  "parent_uuid": "b0a2c490-b2f5-43f5-b67a-9a6975169ff9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6a544fc-da16-4455-86a4-f252caa04082",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ac18310c-26ec-46e8-84e9-fb319fd0b11b",
              "parent_uuid": "d6a544fc-da16-4455-86a4-f252caa04082",
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
          "uuid": "d3d3b8a5-725d-4c12-86b8-86b0737139eb",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dfd413df-1c81-4aea-bda4-3fa6d57957a2",
              "parent_uuid": "d3d3b8a5-725d-4c12-86b8-86b0737139eb",
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
              "uuid": "52b67ebd-869a-47d4-85e1-4383c362cd3d",
              "parent_uuid": "d3d3b8a5-725d-4c12-86b8-86b0737139eb",
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
              "uuid": "c3316ce5-1bb3-4c49-97b3-d7ffa3a73f8b",
              "parent_uuid": "d3d3b8a5-725d-4c12-86b8-86b0737139eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24f42619-7a5c-4942-b33d-3dd70c5069f8",
                  "parent_uuid": "c3316ce5-1bb3-4c49-97b3-d7ffa3a73f8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdde9e37-8b5a-4ad7-b735-7bdda7f827de",
              "parent_uuid": "d3d3b8a5-725d-4c12-86b8-86b0737139eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca0589ac-90ed-41ab-9813-6bcace08901e",
                  "parent_uuid": "fdde9e37-8b5a-4ad7-b735-7bdda7f827de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c06add8-7967-4eec-8d74-9b8c4f8a7252",
              "parent_uuid": "d3d3b8a5-725d-4c12-86b8-86b0737139eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc43db65-0067-44ba-ad66-c23d9652e258",
                  "parent_uuid": "8c06add8-7967-4eec-8d74-9b8c4f8a7252",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "647dc871-d6e6-489e-9cb6-4bbb283d59d3",
              "parent_uuid": "d3d3b8a5-725d-4c12-86b8-86b0737139eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9eb40b77-aade-4773-bfb8-b61af3f12ade",
                  "parent_uuid": "647dc871-d6e6-489e-9cb6-4bbb283d59d3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "540f2bd7-d92d-4585-9c1c-6e6961f281d9",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d27dad67-ffb1-4e76-98de-7d13e8a9099d",
              "parent_uuid": "540f2bd7-d92d-4585-9c1c-6e6961f281d9",
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
              "uuid": "b55d8991-a4bf-450c-9be6-18ae7b4a12ba",
              "parent_uuid": "540f2bd7-d92d-4585-9c1c-6e6961f281d9",
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
              "uuid": "3a305305-7d6f-49cb-a329-be63c5354880",
              "parent_uuid": "540f2bd7-d92d-4585-9c1c-6e6961f281d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e93bf632-04c9-48d5-ae0e-539c499c6d69",
                  "parent_uuid": "3a305305-7d6f-49cb-a329-be63c5354880",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46f99290-093a-490e-8628-3a66c136f257",
              "parent_uuid": "540f2bd7-d92d-4585-9c1c-6e6961f281d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e40c5890-7c81-4c8f-91d4-a251f2d04c8a",
                  "parent_uuid": "46f99290-093a-490e-8628-3a66c136f257",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe18dc27-5b27-4bb3-8c30-edaa9a668355",
              "parent_uuid": "540f2bd7-d92d-4585-9c1c-6e6961f281d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ef0b9f9-1bf2-4b69-bb53-4d8dc65d0f99",
                  "parent_uuid": "fe18dc27-5b27-4bb3-8c30-edaa9a668355",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4366cf63-14ae-42fa-9cec-12a691ebb238",
              "parent_uuid": "540f2bd7-d92d-4585-9c1c-6e6961f281d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58431b76-ee89-4f2f-a939-f5f75592fa46",
                  "parent_uuid": "4366cf63-14ae-42fa-9cec-12a691ebb238",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2be0051f-5ee0-4cd0-8fcc-22b47f3eb24d",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66a0449f-a13e-4f62-8434-ce0fe0484cf6",
              "parent_uuid": "2be0051f-5ee0-4cd0-8fcc-22b47f3eb24d",
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
              "uuid": "077531a0-6fbd-4119-b45e-ff627600ed98",
              "parent_uuid": "2be0051f-5ee0-4cd0-8fcc-22b47f3eb24d",
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
              "uuid": "619294a1-9a69-4a96-a3ad-18801da9774c",
              "parent_uuid": "2be0051f-5ee0-4cd0-8fcc-22b47f3eb24d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd38c9b6-a07a-4742-bcf0-490c91ad6046",
                  "parent_uuid": "619294a1-9a69-4a96-a3ad-18801da9774c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "746aef51-b4a0-4b58-90d8-6dc2f07bb026",
              "parent_uuid": "2be0051f-5ee0-4cd0-8fcc-22b47f3eb24d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22e92b8f-5cc3-4ce6-a823-26e57a870f6a",
                  "parent_uuid": "746aef51-b4a0-4b58-90d8-6dc2f07bb026",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6215169-cf67-4651-931c-4669943ce1eb",
              "parent_uuid": "2be0051f-5ee0-4cd0-8fcc-22b47f3eb24d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2f5217e-62e5-4a54-8f04-642278262397",
                  "parent_uuid": "c6215169-cf67-4651-931c-4669943ce1eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7d7ff66-4c95-461a-bd57-8c66380ff2fb",
              "parent_uuid": "2be0051f-5ee0-4cd0-8fcc-22b47f3eb24d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30092b96-2dd9-45a5-9e39-5e547b99880b",
                  "parent_uuid": "b7d7ff66-4c95-461a-bd57-8c66380ff2fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "71c5e1b3-323c-4789-9e01-259c1d90b6f5",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4acedf4-caec-46ef-9cdb-086664668c1d",
              "parent_uuid": "71c5e1b3-323c-4789-9e01-259c1d90b6f5",
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
              "uuid": "caeafc92-62d4-451f-94f9-50566504f6df",
              "parent_uuid": "71c5e1b3-323c-4789-9e01-259c1d90b6f5",
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
              "uuid": "a5b410aa-72c7-4c5a-a618-b18b6905d396",
              "parent_uuid": "71c5e1b3-323c-4789-9e01-259c1d90b6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47212ecb-2e65-4acb-b402-60585f5c867a",
                  "parent_uuid": "a5b410aa-72c7-4c5a-a618-b18b6905d396",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b8a2fcc-65eb-4332-9e10-748b32f48628",
              "parent_uuid": "71c5e1b3-323c-4789-9e01-259c1d90b6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ba4eb6c-5e52-4759-9516-31d9b41b0b1a",
                  "parent_uuid": "6b8a2fcc-65eb-4332-9e10-748b32f48628",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3a46ca6-276e-4b25-95da-908c325a30a2",
              "parent_uuid": "71c5e1b3-323c-4789-9e01-259c1d90b6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5c6b9ec-d30f-4de5-8b9f-1e8b4180c2a8",
                  "parent_uuid": "b3a46ca6-276e-4b25-95da-908c325a30a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d26af3c-68f6-4320-b0ba-c8530ed66dea",
              "parent_uuid": "71c5e1b3-323c-4789-9e01-259c1d90b6f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8b821cb-4083-43f3-a4b6-71b31c84f345",
                  "parent_uuid": "8d26af3c-68f6-4320-b0ba-c8530ed66dea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "43a31094-8d87-4417-804b-6c87aceb3d17",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ca6c8d3-64c2-4ad3-a832-147340f43e97",
              "parent_uuid": "43a31094-8d87-4417-804b-6c87aceb3d17",
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
              "uuid": "b095092c-a576-46b4-af4a-0689912c893a",
              "parent_uuid": "43a31094-8d87-4417-804b-6c87aceb3d17",
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
              "uuid": "ed284917-a768-4265-8372-331e32d06daf",
              "parent_uuid": "43a31094-8d87-4417-804b-6c87aceb3d17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a281ac5-8b66-4055-92a0-84010eea4bfc",
                  "parent_uuid": "ed284917-a768-4265-8372-331e32d06daf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f12e8628-a819-4ee5-a7d9-3ede4192d37c",
              "parent_uuid": "43a31094-8d87-4417-804b-6c87aceb3d17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0163b0d-3a5b-48ce-9a49-568f7b891511",
                  "parent_uuid": "f12e8628-a819-4ee5-a7d9-3ede4192d37c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3bbd8948-0111-4e6d-b7a6-e18c7a2b068f",
              "parent_uuid": "43a31094-8d87-4417-804b-6c87aceb3d17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13809ef5-2720-4c8e-8bad-10b06aab5951",
                  "parent_uuid": "3bbd8948-0111-4e6d-b7a6-e18c7a2b068f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bf6a7c1-5b2e-4fbb-893e-5b53d5247dae",
              "parent_uuid": "43a31094-8d87-4417-804b-6c87aceb3d17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b165e9af-f700-4ae5-9131-7b551af79708",
                  "parent_uuid": "9bf6a7c1-5b2e-4fbb-893e-5b53d5247dae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4d9bbb26-7987-4fa2-bab0-e0bc5d05b8f4",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9fe5a3e-5239-49b9-9045-7d9dde363fc8",
              "parent_uuid": "4d9bbb26-7987-4fa2-bab0-e0bc5d05b8f4",
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
          "uuid": "57901312-2dce-46dc-8d1d-7079a8c3992e",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "125327f2-3cac-48ae-86b6-dae8a4ca3f7a",
              "parent_uuid": "57901312-2dce-46dc-8d1d-7079a8c3992e",
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
          "uuid": "fc620a97-8946-42bc-9cde-9daf3881d131",
          "parent_uuid": "693267e0-a2c6-4423-8bd4-8e5dd51d9ea3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb1c78e8-8ee7-4130-aa32-5a44cadd5972",
              "parent_uuid": "fc620a97-8946-42bc-9cde-9daf3881d131",
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
                  "uuid": "9244f714-31c2-45ef-9913-4f4da431681e",
                  "parent_uuid": "eb1c78e8-8ee7-4130-aa32-5a44cadd5972",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

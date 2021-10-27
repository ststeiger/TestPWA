
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
  "uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "03eed942-9b65-4814-8e3b-567266c1e48d",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "f8c6bae0-cd91-4028-aa80-bc6049229d14",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "f4334cac-0212-43f5-b97f-b3dd4542bd3b",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "1f943c48-4833-4c6e-83a8-d145769e8301",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "9f8c4d06-9646-41bc-b625-0516a400278a",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "c31f0da4-5717-4f12-8c47-e27f0ae38623",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "210dfea7-e065-4582-af64-5b9b493537b7",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
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
      "uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
      "parent_uuid": "35b2f761-928e-43d0-9eff-f336fee770e4",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "052b44ab-0ff2-454a-b620-7fa456685e25",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "c7dd44f3-dbd4-455f-9e97-372946cb2fed",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "14475f30-eae4-4d7f-b5d6-57c6da59c004",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "42fa70ca-9f02-433d-b84d-222a1816c206",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "1342ab4c-af93-4836-8ced-a17e29a21952",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "199823e3-caa4-44e5-8d40-d59464e7d4d7",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "d5506251-2885-4727-ba22-98e11ca319ea",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "72679a9f-628d-4acf-8af8-a0596b67b059",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "7faac7e9-4897-4d2a-85cc-3498a1a091db",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "dd82a93e-3f03-4c9b-bed5-46c3fa661c3d",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
              "uuid": "5e37eb57-db07-41a6-b595-90ee3e1d1744",
              "parent_uuid": "efcf9c56-e7ac-42ab-8c3e-c107400dfa94",
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
          "uuid": "b2e46410-080f-4d9b-bd61-255fc447dc9e",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "2ef92aaa-b7e9-45fb-8858-9dca6fd9a971",
              "parent_uuid": "b2e46410-080f-4d9b-bd61-255fc447dc9e",
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
              "uuid": "bf995d6b-53dd-4caf-8f29-ab685221bf42",
              "parent_uuid": "b2e46410-080f-4d9b-bd61-255fc447dc9e",
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
              "uuid": "1e67e60f-557a-4b9f-932a-8bf680b3b90f",
              "parent_uuid": "b2e46410-080f-4d9b-bd61-255fc447dc9e",
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
              "uuid": "d6b5fb03-7664-4dca-9646-2ec29d2c9fda",
              "parent_uuid": "b2e46410-080f-4d9b-bd61-255fc447dc9e",
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
          "uuid": "31af55e5-aa6e-484f-a863-a64979ace574",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12476ee5-7dc8-439a-a871-e16bb91a5468",
              "parent_uuid": "31af55e5-aa6e-484f-a863-a64979ace574",
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
              "uuid": "33562f6d-0d37-449f-9eda-1368829a7ac9",
              "parent_uuid": "31af55e5-aa6e-484f-a863-a64979ace574",
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
              "uuid": "322ef842-8b4a-4436-a14c-57e30ad6f3ba",
              "parent_uuid": "31af55e5-aa6e-484f-a863-a64979ace574",
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
              "uuid": "c147b22a-f5ec-433a-ac6b-9745b63b0ffc",
              "parent_uuid": "31af55e5-aa6e-484f-a863-a64979ace574",
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
              "uuid": "c8676fd2-96f3-44e3-8cb1-a9c02a06a7a3",
              "parent_uuid": "31af55e5-aa6e-484f-a863-a64979ace574",
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
              "uuid": "37b0b3cd-6b27-401c-bfcf-7ca6794fa017",
              "parent_uuid": "31af55e5-aa6e-484f-a863-a64979ace574",
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
          "uuid": "29b430f8-fdb5-44e7-a648-07f763607ee8",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b71afcc9-0952-4f03-a318-e63e7da070cd",
              "parent_uuid": "29b430f8-fdb5-44e7-a648-07f763607ee8",
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
          "uuid": "3525be59-d5bb-4206-bb59-02fca2a9648d",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d93ab3e-8214-44a2-bd17-05b2ef3dc9b1",
              "parent_uuid": "3525be59-d5bb-4206-bb59-02fca2a9648d",
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
              "uuid": "eacb52d6-d59e-4308-a02b-33eddffe3cd9",
              "parent_uuid": "3525be59-d5bb-4206-bb59-02fca2a9648d",
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
              "uuid": "9ece8dc2-05bb-4f26-b45e-26b8d68d30a1",
              "parent_uuid": "3525be59-d5bb-4206-bb59-02fca2a9648d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f0d209e-2d89-4ace-a40e-16e614a89b33",
                  "parent_uuid": "9ece8dc2-05bb-4f26-b45e-26b8d68d30a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d39b8b3-7b75-4cc7-90b5-b35cebb4e624",
              "parent_uuid": "3525be59-d5bb-4206-bb59-02fca2a9648d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e280279a-91f1-4534-866e-8c789dd59a75",
                  "parent_uuid": "7d39b8b3-7b75-4cc7-90b5-b35cebb4e624",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba47d6ed-b4ed-4f56-a0e9-212cb1d898e4",
              "parent_uuid": "3525be59-d5bb-4206-bb59-02fca2a9648d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d150315-85e4-4278-9ff1-7f36ffe2059b",
                  "parent_uuid": "ba47d6ed-b4ed-4f56-a0e9-212cb1d898e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d4ca750-17fe-4f82-89eb-04d068a23add",
              "parent_uuid": "3525be59-d5bb-4206-bb59-02fca2a9648d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5e3b4fd-0171-45ab-a141-fd72bc8e9b5e",
                  "parent_uuid": "8d4ca750-17fe-4f82-89eb-04d068a23add",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b329026-93d8-472b-a39e-213653a6c4bf",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fafdb20c-83c6-4180-92da-6deb4bae6739",
              "parent_uuid": "7b329026-93d8-472b-a39e-213653a6c4bf",
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
              "uuid": "f0032f7f-00ea-4b76-b7b3-2adc92b0d766",
              "parent_uuid": "7b329026-93d8-472b-a39e-213653a6c4bf",
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
              "uuid": "a541034d-60eb-4dc9-96d1-ac0e67c837ff",
              "parent_uuid": "7b329026-93d8-472b-a39e-213653a6c4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61a04759-0e53-4e53-9095-e924cdd08aad",
                  "parent_uuid": "a541034d-60eb-4dc9-96d1-ac0e67c837ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5b92db8-0be7-4952-8913-3d9b02103cd8",
              "parent_uuid": "7b329026-93d8-472b-a39e-213653a6c4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef1d643c-dd47-4e87-a63c-cfdf2787e7e7",
                  "parent_uuid": "d5b92db8-0be7-4952-8913-3d9b02103cd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f7ee7cb-36d2-4779-9d30-190fc25df748",
              "parent_uuid": "7b329026-93d8-472b-a39e-213653a6c4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29030698-9fd1-4f15-97cb-2bd2fbb88aa2",
                  "parent_uuid": "9f7ee7cb-36d2-4779-9d30-190fc25df748",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89eaad1c-30d1-4a1e-b3c9-7bf5681d7675",
              "parent_uuid": "7b329026-93d8-472b-a39e-213653a6c4bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55400309-5eaa-4ccb-8db9-30111398bfe4",
                  "parent_uuid": "89eaad1c-30d1-4a1e-b3c9-7bf5681d7675",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "234e9863-01a4-4506-bd0f-0aecfd02f99f",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b299689-7354-4c7c-9c72-128d5c023021",
              "parent_uuid": "234e9863-01a4-4506-bd0f-0aecfd02f99f",
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
              "uuid": "63e7972e-e601-4dc2-843f-33f4fd43505f",
              "parent_uuid": "234e9863-01a4-4506-bd0f-0aecfd02f99f",
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
              "uuid": "0a37531f-936e-43cc-80b5-74987a841382",
              "parent_uuid": "234e9863-01a4-4506-bd0f-0aecfd02f99f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34448681-4146-405e-ba8a-54e128d9ddce",
                  "parent_uuid": "0a37531f-936e-43cc-80b5-74987a841382",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a97191c-a0f4-4fdd-8721-0b44f8ab689e",
              "parent_uuid": "234e9863-01a4-4506-bd0f-0aecfd02f99f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f64dcb3-b83f-45eb-bafd-bcbdf5602b32",
                  "parent_uuid": "0a97191c-a0f4-4fdd-8721-0b44f8ab689e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a9774bd-3ec9-4248-94b2-c2e7dfb5fc13",
              "parent_uuid": "234e9863-01a4-4506-bd0f-0aecfd02f99f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cec2db44-2ffe-4093-8e03-6afd8e9ada97",
                  "parent_uuid": "7a9774bd-3ec9-4248-94b2-c2e7dfb5fc13",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4570e87-ea1e-4b00-b101-59c7ba94b8c8",
              "parent_uuid": "234e9863-01a4-4506-bd0f-0aecfd02f99f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c98be58-9a96-4b6a-9b1e-72012af3d967",
                  "parent_uuid": "e4570e87-ea1e-4b00-b101-59c7ba94b8c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3c665064-ca04-48d4-8ba0-7e8305d6dbc8",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ceb3a27-11a4-4aad-b5d4-6f345edba813",
              "parent_uuid": "3c665064-ca04-48d4-8ba0-7e8305d6dbc8",
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
              "uuid": "e8aab100-e747-41ae-84af-3bce9b9424cf",
              "parent_uuid": "3c665064-ca04-48d4-8ba0-7e8305d6dbc8",
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
              "uuid": "cb120ffc-cc5a-40b2-bdfe-987ab5576871",
              "parent_uuid": "3c665064-ca04-48d4-8ba0-7e8305d6dbc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3e63a85-8959-443d-af5d-d09b0a12c595",
                  "parent_uuid": "cb120ffc-cc5a-40b2-bdfe-987ab5576871",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2fb8946-7070-4e83-82ed-278338ed274d",
              "parent_uuid": "3c665064-ca04-48d4-8ba0-7e8305d6dbc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e6f4c97-9d95-42fa-8b0d-282e65d4d1af",
                  "parent_uuid": "d2fb8946-7070-4e83-82ed-278338ed274d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8eb67761-2c34-4dda-8bf9-7fe998508199",
              "parent_uuid": "3c665064-ca04-48d4-8ba0-7e8305d6dbc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74df8b72-e415-4b59-87d0-c5231970f1f2",
                  "parent_uuid": "8eb67761-2c34-4dda-8bf9-7fe998508199",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3b034ea-6d79-475e-ba8f-8a9a9615df51",
              "parent_uuid": "3c665064-ca04-48d4-8ba0-7e8305d6dbc8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "032c2a0c-6c88-4969-a167-8ad94c3d8a07",
                  "parent_uuid": "e3b034ea-6d79-475e-ba8f-8a9a9615df51",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "72086781-5600-4dbf-a063-830873120364",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc8949f8-69df-4894-8eb8-c66bf5542f21",
              "parent_uuid": "72086781-5600-4dbf-a063-830873120364",
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
              "uuid": "98a441da-d141-47ad-b4fc-00775458ed13",
              "parent_uuid": "72086781-5600-4dbf-a063-830873120364",
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
              "uuid": "4f3457fe-40ce-451b-81df-be8015eab613",
              "parent_uuid": "72086781-5600-4dbf-a063-830873120364",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db9a7ee9-92b7-42a5-98d7-725946e4860f",
                  "parent_uuid": "4f3457fe-40ce-451b-81df-be8015eab613",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bf79817-30d3-4180-86dc-406709d22d70",
              "parent_uuid": "72086781-5600-4dbf-a063-830873120364",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f72f373-6afd-445f-ab48-e11196719eb0",
                  "parent_uuid": "9bf79817-30d3-4180-86dc-406709d22d70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44317251-c815-4d48-adc4-4c826fced1c0",
              "parent_uuid": "72086781-5600-4dbf-a063-830873120364",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f971f0c4-5019-41a1-8338-db8f70cb2484",
                  "parent_uuid": "44317251-c815-4d48-adc4-4c826fced1c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43de0ec0-748f-4a80-8de9-a757b8c4dd00",
              "parent_uuid": "72086781-5600-4dbf-a063-830873120364",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1774f2a7-7cc7-44c9-bc6e-f33201b1521c",
                  "parent_uuid": "43de0ec0-748f-4a80-8de9-a757b8c4dd00",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1b9c5edd-8279-4ba6-8123-693fd85ae697",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30720dd4-f1d9-43cd-90f0-fc40a50aaede",
              "parent_uuid": "1b9c5edd-8279-4ba6-8123-693fd85ae697",
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
              "uuid": "6e2ccc91-8c49-4e26-aaf5-ddcec693abee",
              "parent_uuid": "1b9c5edd-8279-4ba6-8123-693fd85ae697",
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
              "uuid": "59c3053f-9837-4a82-9c48-3952ce0274c0",
              "parent_uuid": "1b9c5edd-8279-4ba6-8123-693fd85ae697",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd4fa600-d14c-4773-8eaf-3ddb353919bf",
                  "parent_uuid": "59c3053f-9837-4a82-9c48-3952ce0274c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc4f2f37-2e45-4f88-b25b-c22ea878d658",
              "parent_uuid": "1b9c5edd-8279-4ba6-8123-693fd85ae697",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d986887f-8aaf-400b-8384-18cbbd8d00b3",
                  "parent_uuid": "fc4f2f37-2e45-4f88-b25b-c22ea878d658",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e505dfb-5a3d-4f81-b9c5-dcd4830d284d",
              "parent_uuid": "1b9c5edd-8279-4ba6-8123-693fd85ae697",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f21319c2-9d69-4065-9208-e8a6fe7f0b75",
                  "parent_uuid": "2e505dfb-5a3d-4f81-b9c5-dcd4830d284d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d9cc6a2-8c74-4c2a-925d-d9f76a450ebd",
              "parent_uuid": "1b9c5edd-8279-4ba6-8123-693fd85ae697",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7db1cd2-58ef-4138-bc72-16cfab766e4c",
                  "parent_uuid": "4d9cc6a2-8c74-4c2a-925d-d9f76a450ebd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c1c0569-affa-4233-8936-df67bd14c638",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c440f73f-a3b0-48a3-ad68-53bba7877211",
              "parent_uuid": "4c1c0569-affa-4233-8936-df67bd14c638",
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
              "uuid": "c52938d5-dd38-4867-8475-02a1dc8faee9",
              "parent_uuid": "4c1c0569-affa-4233-8936-df67bd14c638",
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
              "uuid": "9c3a5b9e-e06f-497d-b88e-07ef9b476b03",
              "parent_uuid": "4c1c0569-affa-4233-8936-df67bd14c638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74a669f0-4a66-40bf-b6b4-188e5c52323f",
                  "parent_uuid": "9c3a5b9e-e06f-497d-b88e-07ef9b476b03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "887ac850-5f4b-40aa-8098-a84da71944a6",
              "parent_uuid": "4c1c0569-affa-4233-8936-df67bd14c638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f62684a-47ed-4297-8a98-3c0cbca569f7",
                  "parent_uuid": "887ac850-5f4b-40aa-8098-a84da71944a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94125b7b-eb90-42ad-adc6-ffc53f349d0e",
              "parent_uuid": "4c1c0569-affa-4233-8936-df67bd14c638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2c4f21b-21a4-4fff-b1a0-f385b83a52d4",
                  "parent_uuid": "94125b7b-eb90-42ad-adc6-ffc53f349d0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ce52f80-f7ab-4c06-81b7-4e4023cbc8f3",
              "parent_uuid": "4c1c0569-affa-4233-8936-df67bd14c638",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "450dc175-7509-481e-9310-ea7dc5a42198",
                  "parent_uuid": "7ce52f80-f7ab-4c06-81b7-4e4023cbc8f3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6cf3a858-5bc7-40d5-99a2-3bc67e259b10",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a188e3a4-8d54-4538-9f4a-192092dc1ecc",
              "parent_uuid": "6cf3a858-5bc7-40d5-99a2-3bc67e259b10",
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
              "uuid": "c891bd13-671e-4555-a155-7bd5d2216724",
              "parent_uuid": "6cf3a858-5bc7-40d5-99a2-3bc67e259b10",
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
              "uuid": "975c1c56-22c9-4565-9db7-4bcdf74cbe1a",
              "parent_uuid": "6cf3a858-5bc7-40d5-99a2-3bc67e259b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef9552b4-0eb2-4f8a-b180-82894823d369",
                  "parent_uuid": "975c1c56-22c9-4565-9db7-4bcdf74cbe1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f9fcbd0-f4f1-4395-8ad7-24a8af3af2c2",
              "parent_uuid": "6cf3a858-5bc7-40d5-99a2-3bc67e259b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df157e55-436f-48cb-9090-5a96d74b8ae6",
                  "parent_uuid": "1f9fcbd0-f4f1-4395-8ad7-24a8af3af2c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0b7d921-794f-41f4-a0ca-bdbf2c010b87",
              "parent_uuid": "6cf3a858-5bc7-40d5-99a2-3bc67e259b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70ce336d-71b9-4b6c-9af4-4c91073996b5",
                  "parent_uuid": "f0b7d921-794f-41f4-a0ca-bdbf2c010b87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6cdc2d1-82b6-4692-967b-c9bf95d5e51e",
              "parent_uuid": "6cf3a858-5bc7-40d5-99a2-3bc67e259b10",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a898159-3d80-44d5-808b-b506dc18c3be",
                  "parent_uuid": "a6cdc2d1-82b6-4692-967b-c9bf95d5e51e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cff95f98-ed8d-45c3-899f-dc1684c996f5",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "51483069-5f15-4f07-a7d0-57b8ec34e478",
              "parent_uuid": "cff95f98-ed8d-45c3-899f-dc1684c996f5",
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
          "uuid": "0dd1282d-4be1-41d2-b09a-6d7adec8da0b",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5008d6e0-5462-4807-9266-83e3d6d6f981",
              "parent_uuid": "0dd1282d-4be1-41d2-b09a-6d7adec8da0b",
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
              "uuid": "3da717bc-7f0d-42f3-94d1-1de7295f0018",
              "parent_uuid": "0dd1282d-4be1-41d2-b09a-6d7adec8da0b",
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
              "uuid": "95c9eefa-2d0d-4891-a201-4c6ed6d8f361",
              "parent_uuid": "0dd1282d-4be1-41d2-b09a-6d7adec8da0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f72a9beb-6288-4aca-86a5-c49713b73570",
                  "parent_uuid": "95c9eefa-2d0d-4891-a201-4c6ed6d8f361",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7873774f-2b00-41c2-bae8-c7a360f2e36a",
              "parent_uuid": "0dd1282d-4be1-41d2-b09a-6d7adec8da0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fff36b3-6f44-4dc2-868f-8a416e956121",
                  "parent_uuid": "7873774f-2b00-41c2-bae8-c7a360f2e36a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2e889b5-11aa-4e80-b957-da4ffba7d607",
              "parent_uuid": "0dd1282d-4be1-41d2-b09a-6d7adec8da0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f71d91e0-b7a1-41b9-a5c0-2faa08810a33",
                  "parent_uuid": "a2e889b5-11aa-4e80-b957-da4ffba7d607",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af0a930a-466e-4cd0-9a98-04cd3650e3ca",
              "parent_uuid": "0dd1282d-4be1-41d2-b09a-6d7adec8da0b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "516f420e-3f2b-4132-9c7c-103b5f1a6cac",
                  "parent_uuid": "af0a930a-466e-4cd0-9a98-04cd3650e3ca",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1c7abc16-6d14-4765-9e50-708a617c6e74",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57aed4eb-4d71-497a-b8cf-e0e59af22b3f",
              "parent_uuid": "1c7abc16-6d14-4765-9e50-708a617c6e74",
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
          "uuid": "3dbfb06e-eaa5-4330-8e5f-5e26dc105b6c",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88ee4d57-88ce-4620-ac8b-316d52bd793d",
              "parent_uuid": "3dbfb06e-eaa5-4330-8e5f-5e26dc105b6c",
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
          "uuid": "7c07cd7e-9cb5-44a0-9773-1c5c3d4c15e7",
          "parent_uuid": "5b42c21c-e1ed-4fc2-8b67-dfa63b1bffb9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ba2d462-aa54-4d83-a0bb-330f27b38c45",
              "parent_uuid": "7c07cd7e-9cb5-44a0-9773-1c5c3d4c15e7",
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
                  "uuid": "04bb4521-1b81-4600-9bd1-afdcd87173f1",
                  "parent_uuid": "0ba2d462-aa54-4d83-a0bb-330f27b38c45",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

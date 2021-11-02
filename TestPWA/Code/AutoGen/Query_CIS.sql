
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
  "uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "6a4b83e1-3ef3-499c-84e4-83e549c0a684",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "021f6d0b-cd3b-4ff8-8170-b9c4bddb9221",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "308f2bfe-34b2-425d-95db-dcb04a803b2a",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "777c86c2-7fd3-4f00-b09f-60a39bcdee4c",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "ac9cc1c8-51a7-4c39-926e-9bbca0d0e8f4",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "84c392e9-9c3c-4d36-9675-bca7c4e32b8b",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "7a73e08e-fdc4-4ea2-b094-3ef5a07f1f60",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
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
      "uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
      "parent_uuid": "82b74bcf-028d-4c91-b715-2809bc081531",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "99288c6e-84a1-42b8-aa17-c90942f63267",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a52c14e6-c079-4a1e-861b-5e246e7854f1",
              "parent_uuid": "99288c6e-84a1-42b8-aa17-c90942f63267",
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
              "uuid": "e1828476-9db6-4ac5-9b80-6cbbb50a9c79",
              "parent_uuid": "99288c6e-84a1-42b8-aa17-c90942f63267",
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
              "uuid": "4e72a94d-74d5-4835-a3c4-941e5c680066",
              "parent_uuid": "99288c6e-84a1-42b8-aa17-c90942f63267",
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
              "uuid": "ce3d81d0-4d99-4a10-917d-d0403224b831",
              "parent_uuid": "99288c6e-84a1-42b8-aa17-c90942f63267",
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
          "uuid": "d3026534-9ed1-4ee1-b369-924f00a43816",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a5a2f19f-9216-4fbd-a41c-635d6b5023a9",
              "parent_uuid": "d3026534-9ed1-4ee1-b369-924f00a43816",
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
              "uuid": "de30bc09-1f82-4deb-8a99-61db5f247e67",
              "parent_uuid": "d3026534-9ed1-4ee1-b369-924f00a43816",
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
              "uuid": "842b4a2b-579d-47bc-9497-204706b34bc1",
              "parent_uuid": "d3026534-9ed1-4ee1-b369-924f00a43816",
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
              "uuid": "ef6603b6-b403-4ff5-a044-4ddbd5ddbe88",
              "parent_uuid": "d3026534-9ed1-4ee1-b369-924f00a43816",
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
          "uuid": "76f01666-c957-48db-a5ee-dd23d3c597a5",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad25c8b8-66b9-489f-89fb-42ddc8791ed0",
              "parent_uuid": "76f01666-c957-48db-a5ee-dd23d3c597a5",
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
              "uuid": "b13084bb-79b1-4b72-a3e7-a8abefec12e9",
              "parent_uuid": "76f01666-c957-48db-a5ee-dd23d3c597a5",
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
              "uuid": "9e4cd792-d764-48f9-baa9-8419ed93ea95",
              "parent_uuid": "76f01666-c957-48db-a5ee-dd23d3c597a5",
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
              "uuid": "9c9ff95f-11ef-405d-97b0-6c59358d01bc",
              "parent_uuid": "76f01666-c957-48db-a5ee-dd23d3c597a5",
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
              "uuid": "408926e4-cb61-4637-a24d-0c80fa7b5a04",
              "parent_uuid": "76f01666-c957-48db-a5ee-dd23d3c597a5",
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
              "uuid": "7de66e5f-09bf-4bee-a388-402be4cf6025",
              "parent_uuid": "76f01666-c957-48db-a5ee-dd23d3c597a5",
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
          "uuid": "1419b72f-6762-4979-8989-5fcb7dc12575",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9af21328-8dae-4cd1-8f6c-0bccee0e7d92",
              "parent_uuid": "1419b72f-6762-4979-8989-5fcb7dc12575",
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
          "uuid": "843b982c-19ca-4d46-9e0e-073159668b8e",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c213590e-7139-46eb-a9ef-8533489156e4",
              "parent_uuid": "843b982c-19ca-4d46-9e0e-073159668b8e",
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
              "uuid": "c6009d22-2527-401a-8914-d1af4f26611f",
              "parent_uuid": "843b982c-19ca-4d46-9e0e-073159668b8e",
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
              "uuid": "b6ae781b-b616-4ad4-8917-3631bef1425c",
              "parent_uuid": "843b982c-19ca-4d46-9e0e-073159668b8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9b443dd-7772-4044-91d0-f9288920c44f",
                  "parent_uuid": "b6ae781b-b616-4ad4-8917-3631bef1425c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06289a0e-11d9-44ed-a1a4-00e7330004aa",
              "parent_uuid": "843b982c-19ca-4d46-9e0e-073159668b8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04884c8b-d321-4971-844c-436e54ed6fd2",
                  "parent_uuid": "06289a0e-11d9-44ed-a1a4-00e7330004aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cf85b57-b343-436c-acae-e9fb43e37d29",
              "parent_uuid": "843b982c-19ca-4d46-9e0e-073159668b8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6f40d3e-61e3-4a4e-8e0d-f60234fa4859",
                  "parent_uuid": "3cf85b57-b343-436c-acae-e9fb43e37d29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acacdbeb-cb55-4082-b4d4-46f605216391",
              "parent_uuid": "843b982c-19ca-4d46-9e0e-073159668b8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5de739cf-07d6-40e0-88ba-21966d78d6c6",
                  "parent_uuid": "acacdbeb-cb55-4082-b4d4-46f605216391",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f1bbc44b-288b-417c-a263-81bccab3709e",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b0a7b8f-7a3e-42b3-bcd3-b05fab0b84a3",
              "parent_uuid": "f1bbc44b-288b-417c-a263-81bccab3709e",
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
              "uuid": "9ac4558b-9084-47cc-be09-ecbae2a51a10",
              "parent_uuid": "f1bbc44b-288b-417c-a263-81bccab3709e",
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
              "uuid": "8b83cd54-9899-43f5-b3b4-646fb6d1d226",
              "parent_uuid": "f1bbc44b-288b-417c-a263-81bccab3709e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "366781b2-917c-4633-91aa-4776fed14ef0",
                  "parent_uuid": "8b83cd54-9899-43f5-b3b4-646fb6d1d226",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3325b2a-bdd3-4d08-b3d6-5b42ea6e633d",
              "parent_uuid": "f1bbc44b-288b-417c-a263-81bccab3709e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "049a3d24-edc1-4b95-937c-a6ab19419ed3",
                  "parent_uuid": "d3325b2a-bdd3-4d08-b3d6-5b42ea6e633d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8be486bf-7f5c-4f46-a3f9-3d87bc9202ed",
              "parent_uuid": "f1bbc44b-288b-417c-a263-81bccab3709e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dcae882-bf67-418d-9bed-bedc664c8c44",
                  "parent_uuid": "8be486bf-7f5c-4f46-a3f9-3d87bc9202ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6a544cf-34ba-40b9-a7b6-2ed12ef74638",
              "parent_uuid": "f1bbc44b-288b-417c-a263-81bccab3709e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "386c6cd8-5030-4b9a-8a6e-dc7b374dd4f4",
                  "parent_uuid": "a6a544cf-34ba-40b9-a7b6-2ed12ef74638",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7ba645b9-74b0-445b-a919-9c84d6d583ca",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5c5de15-7a1e-424b-97a3-62f4279c419b",
              "parent_uuid": "7ba645b9-74b0-445b-a919-9c84d6d583ca",
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
              "uuid": "730f22e6-813e-4290-9221-15e920899abe",
              "parent_uuid": "7ba645b9-74b0-445b-a919-9c84d6d583ca",
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
              "uuid": "eef384c5-ffcb-4184-9511-8c69a9705994",
              "parent_uuid": "7ba645b9-74b0-445b-a919-9c84d6d583ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17e8e54c-00b6-489e-9fd8-345f6206c09b",
                  "parent_uuid": "eef384c5-ffcb-4184-9511-8c69a9705994",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ac72b1b-f2c9-4a8c-b769-e03428a6fb7f",
              "parent_uuid": "7ba645b9-74b0-445b-a919-9c84d6d583ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cd90b10-eca9-4bf5-a942-8bbc25fda2a2",
                  "parent_uuid": "2ac72b1b-f2c9-4a8c-b769-e03428a6fb7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf0afce1-b852-4827-aa44-e316bc8cea7f",
              "parent_uuid": "7ba645b9-74b0-445b-a919-9c84d6d583ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "001646c8-579c-4c06-a9bb-40c508a1a960",
                  "parent_uuid": "bf0afce1-b852-4827-aa44-e316bc8cea7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6e080f1-caba-4567-96b3-45fa88704911",
              "parent_uuid": "7ba645b9-74b0-445b-a919-9c84d6d583ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a55c497-7af9-4fda-a0f5-8ed82e4b1ebd",
                  "parent_uuid": "f6e080f1-caba-4567-96b3-45fa88704911",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "66f8316a-0542-4981-9167-5a625aa38e13",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d234a1f9-1360-4bbb-9f4b-82a19dbc04ac",
              "parent_uuid": "66f8316a-0542-4981-9167-5a625aa38e13",
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
              "uuid": "da75af8d-7c22-4b1b-9c65-6acd1bfb440e",
              "parent_uuid": "66f8316a-0542-4981-9167-5a625aa38e13",
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
              "uuid": "26250d3d-b8fb-4c2d-8f13-8bb18c28f3b2",
              "parent_uuid": "66f8316a-0542-4981-9167-5a625aa38e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5059abd4-8a7b-45ce-b3fb-7afc230b5769",
                  "parent_uuid": "26250d3d-b8fb-4c2d-8f13-8bb18c28f3b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc5c247a-700e-477b-99a4-a0edf6b8cd71",
              "parent_uuid": "66f8316a-0542-4981-9167-5a625aa38e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e72accf8-d306-4840-b242-f8a02ceb2394",
                  "parent_uuid": "fc5c247a-700e-477b-99a4-a0edf6b8cd71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2de4ce3d-0907-43e6-bb26-8ad927ddb632",
              "parent_uuid": "66f8316a-0542-4981-9167-5a625aa38e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2782f4f-3476-4ff3-8061-f1139db3a747",
                  "parent_uuid": "2de4ce3d-0907-43e6-bb26-8ad927ddb632",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f51d7661-a3f9-479b-88f9-d04412eb32fa",
              "parent_uuid": "66f8316a-0542-4981-9167-5a625aa38e13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d72da0e-921d-4903-9dc5-97cf34b58dc7",
                  "parent_uuid": "f51d7661-a3f9-479b-88f9-d04412eb32fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4d73de0b-f0c9-4057-964a-53bb24778181",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e0a41533-4f0b-4428-9197-4a1b044f3d86",
              "parent_uuid": "4d73de0b-f0c9-4057-964a-53bb24778181",
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
          "uuid": "8c238872-8384-4236-b443-29ce05c719c2",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a1324b60-72e1-4d5d-b335-feb7a80e2d96",
              "parent_uuid": "8c238872-8384-4236-b443-29ce05c719c2",
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
              "uuid": "b1117b16-468c-4872-9ec5-ba0097e1590d",
              "parent_uuid": "8c238872-8384-4236-b443-29ce05c719c2",
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
              "uuid": "594f1320-dd95-438d-9994-580969619877",
              "parent_uuid": "8c238872-8384-4236-b443-29ce05c719c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70f1c8c6-51ca-4b7d-a1b4-17dfab4ac1a5",
                  "parent_uuid": "594f1320-dd95-438d-9994-580969619877",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1b4f23b-1158-4088-8ff7-a50c7a8cfb85",
              "parent_uuid": "8c238872-8384-4236-b443-29ce05c719c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e01bf2e1-3ffe-4fcd-89c7-db4e2c3916b0",
                  "parent_uuid": "b1b4f23b-1158-4088-8ff7-a50c7a8cfb85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96e10b34-ec67-4742-b54d-29934d17e92e",
              "parent_uuid": "8c238872-8384-4236-b443-29ce05c719c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28b69a75-3545-4c0e-b5af-c149403607e5",
                  "parent_uuid": "96e10b34-ec67-4742-b54d-29934d17e92e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cfcf3fb7-a682-4c6a-b4c3-f17288b4698d",
              "parent_uuid": "8c238872-8384-4236-b443-29ce05c719c2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4fd6279-8c83-4967-a3fc-e67816da7e2c",
                  "parent_uuid": "cfcf3fb7-a682-4c6a-b4c3-f17288b4698d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bde36324-5378-446a-9634-46c4bb6d1716",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "459d4530-cfee-4b65-84c4-7c02dd9e7f00",
              "parent_uuid": "bde36324-5378-446a-9634-46c4bb6d1716",
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
              "uuid": "179b21ce-116d-44b8-8f00-0e9e5cbdd2bb",
              "parent_uuid": "bde36324-5378-446a-9634-46c4bb6d1716",
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
              "uuid": "bd0d0e0f-3df7-4e7e-89ab-c6d4329152c0",
              "parent_uuid": "bde36324-5378-446a-9634-46c4bb6d1716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "94c102d8-fc36-41d9-bd0d-86734ee5858d",
                  "parent_uuid": "bd0d0e0f-3df7-4e7e-89ab-c6d4329152c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42679a94-1e63-4034-9c93-8710a160318b",
              "parent_uuid": "bde36324-5378-446a-9634-46c4bb6d1716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f818aa0-9c41-4f8f-ae89-ba2f1593485c",
                  "parent_uuid": "42679a94-1e63-4034-9c93-8710a160318b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b35095f-c3bd-4e39-bd84-a69023e5025f",
              "parent_uuid": "bde36324-5378-446a-9634-46c4bb6d1716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86be273d-fd56-41ec-83a9-b8d363980e3a",
                  "parent_uuid": "4b35095f-c3bd-4e39-bd84-a69023e5025f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "581c71fd-e38f-46a4-b5ac-082dad17ede4",
              "parent_uuid": "bde36324-5378-446a-9634-46c4bb6d1716",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55c8db25-d659-42c5-823d-8664b959dd5b",
                  "parent_uuid": "581c71fd-e38f-46a4-b5ac-082dad17ede4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f4b31092-04f9-4646-a011-c00b2e7bc6b7",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5b34e0b-e8ca-44ec-9ba6-1b121beb4486",
              "parent_uuid": "f4b31092-04f9-4646-a011-c00b2e7bc6b7",
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
              "uuid": "0a6e3137-0469-4f83-823f-5b45ac7a1a50",
              "parent_uuid": "f4b31092-04f9-4646-a011-c00b2e7bc6b7",
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
              "uuid": "9993c693-9c73-4c91-8b36-0470a6744997",
              "parent_uuid": "f4b31092-04f9-4646-a011-c00b2e7bc6b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "754ad0f8-da67-44ed-9ae4-59e61285842d",
                  "parent_uuid": "9993c693-9c73-4c91-8b36-0470a6744997",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d02d6c4-829a-4b32-83a9-14a71d4204ad",
              "parent_uuid": "f4b31092-04f9-4646-a011-c00b2e7bc6b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8dea4cd-1477-42e8-bf9e-d3d305f9a188",
                  "parent_uuid": "7d02d6c4-829a-4b32-83a9-14a71d4204ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce81d8a3-04fd-44a7-b29a-12cfa49e4ccd",
              "parent_uuid": "f4b31092-04f9-4646-a011-c00b2e7bc6b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a75b62b-e59c-40b3-a21f-98e82e2f2dd6",
                  "parent_uuid": "ce81d8a3-04fd-44a7-b29a-12cfa49e4ccd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d3a0063-d88e-4202-94f2-c7fb0ac8f370",
              "parent_uuid": "f4b31092-04f9-4646-a011-c00b2e7bc6b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ec9c0b6-b778-46c3-8f68-d6cd25e30a26",
                  "parent_uuid": "8d3a0063-d88e-4202-94f2-c7fb0ac8f370",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "12628096-b5c3-428b-9166-f674dcbdd752",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e11d6e8b-e0d5-4363-9e82-bbc7610caf90",
              "parent_uuid": "12628096-b5c3-428b-9166-f674dcbdd752",
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
              "uuid": "94a78f11-86a4-4692-af03-6c587adab231",
              "parent_uuid": "12628096-b5c3-428b-9166-f674dcbdd752",
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
              "uuid": "99987cc0-9634-4200-96bb-93eb9fd1b025",
              "parent_uuid": "12628096-b5c3-428b-9166-f674dcbdd752",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e10f7f08-44d3-4d73-9d1b-628f114a0f77",
                  "parent_uuid": "99987cc0-9634-4200-96bb-93eb9fd1b025",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cb17a54-9e7a-4111-b8f0-768b649f7bab",
              "parent_uuid": "12628096-b5c3-428b-9166-f674dcbdd752",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29672c2a-5239-464f-b24e-1cb024345ba5",
                  "parent_uuid": "2cb17a54-9e7a-4111-b8f0-768b649f7bab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f06bc83-f71f-4e3c-bdee-cbf79c6faabf",
              "parent_uuid": "12628096-b5c3-428b-9166-f674dcbdd752",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d992d25d-7f95-4381-9d8b-3c9c9a6dd177",
                  "parent_uuid": "3f06bc83-f71f-4e3c-bdee-cbf79c6faabf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5c24adf-f1f2-4565-a731-0a45f5b1d39c",
              "parent_uuid": "12628096-b5c3-428b-9166-f674dcbdd752",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20085453-3438-45bd-8403-2f3d1d211a22",
                  "parent_uuid": "e5c24adf-f1f2-4565-a731-0a45f5b1d39c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "db7b7977-7ee1-4dae-b7c5-65f584f88731",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bdc849a9-a6e9-4b61-b060-fbbc52436e55",
              "parent_uuid": "db7b7977-7ee1-4dae-b7c5-65f584f88731",
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
              "uuid": "b9406804-57da-44c4-82a4-52ebc72423f0",
              "parent_uuid": "db7b7977-7ee1-4dae-b7c5-65f584f88731",
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
              "uuid": "f9b80234-f582-4c11-8d7a-29434f0edf5f",
              "parent_uuid": "db7b7977-7ee1-4dae-b7c5-65f584f88731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13bbbfa4-0f17-446b-9d55-eb80b05708ad",
                  "parent_uuid": "f9b80234-f582-4c11-8d7a-29434f0edf5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d20b9daf-2994-47d6-9be3-fd7d67a5d9b3",
              "parent_uuid": "db7b7977-7ee1-4dae-b7c5-65f584f88731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4ec577e-8eec-413b-a70f-1b5374149938",
                  "parent_uuid": "d20b9daf-2994-47d6-9be3-fd7d67a5d9b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95427a90-c406-45fe-9c11-b480ab81f9e6",
              "parent_uuid": "db7b7977-7ee1-4dae-b7c5-65f584f88731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "593ac035-df7a-467f-a43a-e68de0b6870e",
                  "parent_uuid": "95427a90-c406-45fe-9c11-b480ab81f9e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "863028ca-cb94-414d-9cc1-fe2f8917c86e",
              "parent_uuid": "db7b7977-7ee1-4dae-b7c5-65f584f88731",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8642e9e-f7e7-4d54-bd74-fa6fe92e28ce",
                  "parent_uuid": "863028ca-cb94-414d-9cc1-fe2f8917c86e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dd92a0c2-4bc0-4818-a48f-e1d5f6c86a28",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1520b7ef-197d-4197-8c5e-df1b645eb61f",
              "parent_uuid": "dd92a0c2-4bc0-4818-a48f-e1d5f6c86a28",
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
              "uuid": "514b64e3-b289-461c-9410-a66b5b640233",
              "parent_uuid": "dd92a0c2-4bc0-4818-a48f-e1d5f6c86a28",
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
              "uuid": "0776974c-b07f-41e5-a4a5-c335877b056a",
              "parent_uuid": "dd92a0c2-4bc0-4818-a48f-e1d5f6c86a28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1bebaa2-186f-4522-8e8e-e07eb852a92f",
                  "parent_uuid": "0776974c-b07f-41e5-a4a5-c335877b056a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11de8a30-d45e-4d49-a739-38679bb17e31",
              "parent_uuid": "dd92a0c2-4bc0-4818-a48f-e1d5f6c86a28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfed62e4-8217-46af-8535-02b668570186",
                  "parent_uuid": "11de8a30-d45e-4d49-a739-38679bb17e31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a6f10f7-c4a0-4796-a0fa-983dd29dfc5a",
              "parent_uuid": "dd92a0c2-4bc0-4818-a48f-e1d5f6c86a28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be105ef4-377a-4bfb-b9eb-5087a25c8afc",
                  "parent_uuid": "4a6f10f7-c4a0-4796-a0fa-983dd29dfc5a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc108d46-a13e-493b-8739-dcc1feb1a7db",
              "parent_uuid": "dd92a0c2-4bc0-4818-a48f-e1d5f6c86a28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16fd70e7-ec3e-45e6-9fbf-a8e1e9bdfd09",
                  "parent_uuid": "bc108d46-a13e-493b-8739-dcc1feb1a7db",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bd9acd97-1c35-4d1e-a5ad-9869fc2daf1d",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c03bb83-6617-4eb5-a556-323fd072df53",
              "parent_uuid": "bd9acd97-1c35-4d1e-a5ad-9869fc2daf1d",
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
              "uuid": "6caf4295-6dae-45a1-990d-12c7bb2fddff",
              "parent_uuid": "bd9acd97-1c35-4d1e-a5ad-9869fc2daf1d",
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
              "uuid": "8e9d2672-0e2d-47f7-b257-a760c8ca49c4",
              "parent_uuid": "bd9acd97-1c35-4d1e-a5ad-9869fc2daf1d",
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
                  "uuid": "8a091675-cedc-4e17-85ee-ebb37fa4b0e1",
                  "parent_uuid": "8e9d2672-0e2d-47f7-b257-a760c8ca49c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36b8ebd3-5cff-456d-a008-c864a5ebda9d",
              "parent_uuid": "bd9acd97-1c35-4d1e-a5ad-9869fc2daf1d",
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
                  "uuid": "6043aa33-5137-4d8f-8f56-8c9a01ffd2f7",
                  "parent_uuid": "36b8ebd3-5cff-456d-a008-c864a5ebda9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64232e0c-4103-4a8b-b213-4510ec84952a",
              "parent_uuid": "bd9acd97-1c35-4d1e-a5ad-9869fc2daf1d",
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
                  "uuid": "15138a0f-1c8f-49e1-ad13-578056fbce8f",
                  "parent_uuid": "64232e0c-4103-4a8b-b213-4510ec84952a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d837ba20-6061-4cd6-9bbe-438c49335e41",
              "parent_uuid": "bd9acd97-1c35-4d1e-a5ad-9869fc2daf1d",
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
                  "uuid": "21f25173-3acd-450f-be3e-165d07adf2c6",
                  "parent_uuid": "d837ba20-6061-4cd6-9bbe-438c49335e41",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b11beff-932d-4f95-969c-0d90eeeedf51",
              "parent_uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
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
              "uuid": "ddc1a4e6-08ca-4a70-afe4-3c888fc1c254",
              "parent_uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
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
              "uuid": "1fbd1b63-27d2-41eb-87a0-7f95a96a173d",
              "parent_uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
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
              "uuid": "1907d2e4-967e-43fa-9969-22dc6d4bbb6c",
              "parent_uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
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
                  "uuid": "280a476a-a41c-4688-9d55-5075a4f1b684",
                  "parent_uuid": "1907d2e4-967e-43fa-9969-22dc6d4bbb6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17a8519c-6e20-4de4-af7f-6d910240f863",
              "parent_uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
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
                  "uuid": "ec799734-d9ae-4743-bff0-fbdec39a4b2d",
                  "parent_uuid": "17a8519c-6e20-4de4-af7f-6d910240f863",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bd754c6-64af-450e-9d54-f0b20139178d",
              "parent_uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
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
                  "uuid": "3aed88c2-96a7-408b-be1d-6bc8a994d550",
                  "parent_uuid": "6bd754c6-64af-450e-9d54-f0b20139178d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "353f26ee-4aed-4a9a-9e0c-4f7f2a2e2adc",
              "parent_uuid": "9ca67081-f133-4cba-bf6d-785b01952ac5",
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
                  "uuid": "51449573-0477-4644-8d52-2ec689995471",
                  "parent_uuid": "353f26ee-4aed-4a9a-9e0c-4f7f2a2e2adc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91572ec0-af87-4c66-a237-d739f447aa44",
              "parent_uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
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
              "uuid": "2a3b90d7-c233-4ac8-87f7-1074197b80e3",
              "parent_uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
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
              "uuid": "9b3605c1-b80c-4309-9e04-ee3b03052a24",
              "parent_uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
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
                  "uuid": "2cb2e32e-f342-4254-b2fc-8c35b7945901",
                  "parent_uuid": "9b3605c1-b80c-4309-9e04-ee3b03052a24",
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
              "uuid": "0fc163d4-9b2e-4bf9-89de-11187b1bb17d",
              "parent_uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
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
                  "uuid": "b0c274cb-ff07-4ab5-ab71-ae7090fc6d7f",
                  "parent_uuid": "0fc163d4-9b2e-4bf9-89de-11187b1bb17d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca56aed7-8917-42b6-9db1-d3e9d68f4305",
              "parent_uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
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
                  "uuid": "1f2db153-af6e-4a3e-bf81-d9daf2745f90",
                  "parent_uuid": "ca56aed7-8917-42b6-9db1-d3e9d68f4305",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a48a753-350b-4e7b-a028-b0c9c311e067",
              "parent_uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
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
                  "uuid": "e80a6838-b802-4ead-8f3a-c8c97fb90a71",
                  "parent_uuid": "5a48a753-350b-4e7b-a028-b0c9c311e067",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3132906a-98c5-4f86-be3d-262c326dc12c",
              "parent_uuid": "27a56291-b297-4d77-a7e7-bab1bc4deae9",
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
                  "uuid": "82f3ad1a-46cb-4e6b-aaa7-def19cec7b2d",
                  "parent_uuid": "3132906a-98c5-4f86-be3d-262c326dc12c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "66624c36-968b-4852-be60-79091bef9ebf",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "111ccfb3-aaab-454e-b9ef-e126a8b9b6d7",
              "parent_uuid": "66624c36-968b-4852-be60-79091bef9ebf",
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
              "uuid": "268de772-2820-43c0-aa41-be727d121bc7",
              "parent_uuid": "66624c36-968b-4852-be60-79091bef9ebf",
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
              "uuid": "0a60ea4c-d073-4972-a781-d412e7a790f3",
              "parent_uuid": "66624c36-968b-4852-be60-79091bef9ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "482ec41b-818b-4397-9804-11c8c9cb3917",
                  "parent_uuid": "0a60ea4c-d073-4972-a781-d412e7a790f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c4fb8e9-9976-4a82-b57f-85bd68dc6fe9",
              "parent_uuid": "66624c36-968b-4852-be60-79091bef9ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07421fd2-c629-425a-9195-bc474fec9bc7",
                  "parent_uuid": "0c4fb8e9-9976-4a82-b57f-85bd68dc6fe9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85709dcf-5233-4fca-9ed9-6c70d3f3d555",
              "parent_uuid": "66624c36-968b-4852-be60-79091bef9ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0f7ba7a-b571-4fb2-bed8-6be5837325ab",
                  "parent_uuid": "85709dcf-5233-4fca-9ed9-6c70d3f3d555",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c7a7c19-582d-40a6-bfc5-5b9ef70b2052",
              "parent_uuid": "66624c36-968b-4852-be60-79091bef9ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47fcee98-bc2a-44e1-9f20-9190220e0c2d",
                  "parent_uuid": "6c7a7c19-582d-40a6-bfc5-5b9ef70b2052",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "04186fb4-6c23-48ff-9c77-b4ff1bd3f72d",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8823e7c3-df41-4fd9-94f8-a9d615a1a152",
              "parent_uuid": "04186fb4-6c23-48ff-9c77-b4ff1bd3f72d",
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
              "uuid": "8d9cc3c6-cf49-49c0-87fb-0659df1bbf86",
              "parent_uuid": "04186fb4-6c23-48ff-9c77-b4ff1bd3f72d",
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
              "uuid": "a8ed8267-4a2b-438d-9661-aa7c720bdcbd",
              "parent_uuid": "04186fb4-6c23-48ff-9c77-b4ff1bd3f72d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccb721d6-6100-470e-945f-6c668a68426b",
                  "parent_uuid": "a8ed8267-4a2b-438d-9661-aa7c720bdcbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5db29729-7d0e-436e-94fc-b8077a760ac3",
              "parent_uuid": "04186fb4-6c23-48ff-9c77-b4ff1bd3f72d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e964ee8-aa5c-4545-a48d-5137bedcd572",
                  "parent_uuid": "5db29729-7d0e-436e-94fc-b8077a760ac3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c13e7d0-813f-4bc3-8da5-510b3f63128d",
              "parent_uuid": "04186fb4-6c23-48ff-9c77-b4ff1bd3f72d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cfa1093-6f28-40b6-af2e-c5d1a9cfcb99",
                  "parent_uuid": "5c13e7d0-813f-4bc3-8da5-510b3f63128d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d2951e2-011f-41b3-aa8f-94fbb6bfc5c8",
              "parent_uuid": "04186fb4-6c23-48ff-9c77-b4ff1bd3f72d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6047ebc-2d5c-4407-826f-9b5d3d76c8f1",
                  "parent_uuid": "8d2951e2-011f-41b3-aa8f-94fbb6bfc5c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5445cb7b-8f71-422e-8f56-c83a4c658257",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "613b2468-6e7d-4b9e-8e8f-6e0c43bc780b",
              "parent_uuid": "5445cb7b-8f71-422e-8f56-c83a4c658257",
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
              "uuid": "fd5cea6c-f6f0-4131-bc8a-ce36defa4bb0",
              "parent_uuid": "5445cb7b-8f71-422e-8f56-c83a4c658257",
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
              "uuid": "132fc23e-10ec-4654-8a10-aae06f598d5d",
              "parent_uuid": "5445cb7b-8f71-422e-8f56-c83a4c658257",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f893449a-9b83-4bd1-8c9a-209b7cb63ecd",
                  "parent_uuid": "132fc23e-10ec-4654-8a10-aae06f598d5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cb96979-4644-4095-8404-9bad292aeb62",
              "parent_uuid": "5445cb7b-8f71-422e-8f56-c83a4c658257",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5756f537-4ea2-4cdc-b36c-2a7657c43926",
                  "parent_uuid": "6cb96979-4644-4095-8404-9bad292aeb62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "779d40b5-433b-45cd-bf67-f51ec502054a",
              "parent_uuid": "5445cb7b-8f71-422e-8f56-c83a4c658257",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f31c627-d422-4e1d-8a56-7d34424afc11",
                  "parent_uuid": "779d40b5-433b-45cd-bf67-f51ec502054a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ed57359-9ef5-4db4-8972-f7bef7c1c8c3",
              "parent_uuid": "5445cb7b-8f71-422e-8f56-c83a4c658257",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd15f414-30ba-4b9a-9f5d-486ff1331c5b",
                  "parent_uuid": "5ed57359-9ef5-4db4-8972-f7bef7c1c8c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7eb461a8-4655-49ba-bcfc-2d069b4bb77c",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c0aa842-e1bd-470c-b3a1-413aab0c8116",
              "parent_uuid": "7eb461a8-4655-49ba-bcfc-2d069b4bb77c",
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
              "uuid": "5cbb4271-56ff-41ff-a5b7-f777d998474a",
              "parent_uuid": "7eb461a8-4655-49ba-bcfc-2d069b4bb77c",
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
              "uuid": "d835ea1e-b587-40ea-af1b-79b41aca16ef",
              "parent_uuid": "7eb461a8-4655-49ba-bcfc-2d069b4bb77c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a00ef63-35e8-4da3-8785-b2f87cd5a476",
                  "parent_uuid": "d835ea1e-b587-40ea-af1b-79b41aca16ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee10c6ee-c922-498f-b746-455b10c86932",
              "parent_uuid": "7eb461a8-4655-49ba-bcfc-2d069b4bb77c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04854988-bc8f-4518-94fd-041538ba6c69",
                  "parent_uuid": "ee10c6ee-c922-498f-b746-455b10c86932",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce9c819d-1e3d-4faf-ba5e-c63c4d1fa0e8",
              "parent_uuid": "7eb461a8-4655-49ba-bcfc-2d069b4bb77c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15fac5cc-ad14-4052-bb75-e207dfb2e0a5",
                  "parent_uuid": "ce9c819d-1e3d-4faf-ba5e-c63c4d1fa0e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0be4fae8-0712-4614-971e-4aa0545f06ef",
              "parent_uuid": "7eb461a8-4655-49ba-bcfc-2d069b4bb77c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a06f64a-022e-4380-89c7-841fb7ca5270",
                  "parent_uuid": "0be4fae8-0712-4614-971e-4aa0545f06ef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ce299bed-ff44-453c-bc97-d93a0785b052",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f99d3051-f499-4b05-8655-319179cfdc83",
              "parent_uuid": "ce299bed-ff44-453c-bc97-d93a0785b052",
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
          "uuid": "d25c2323-3852-4d21-9041-c2364d7328d1",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "743ddaaa-1537-4de3-80f5-89fcd91901aa",
              "parent_uuid": "d25c2323-3852-4d21-9041-c2364d7328d1",
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
              "uuid": "210a41b9-c37d-4046-a4ec-1b61f844489c",
              "parent_uuid": "d25c2323-3852-4d21-9041-c2364d7328d1",
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
              "uuid": "c6fab8cb-7942-4f0d-96e2-6d457ff2815f",
              "parent_uuid": "d25c2323-3852-4d21-9041-c2364d7328d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f52b86c0-3462-419d-885f-c9a7f832992d",
                  "parent_uuid": "c6fab8cb-7942-4f0d-96e2-6d457ff2815f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82918e0a-dcae-464e-8244-14d696474e35",
              "parent_uuid": "d25c2323-3852-4d21-9041-c2364d7328d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca11b7cc-6c94-424e-bfdd-2b2b0c844989",
                  "parent_uuid": "82918e0a-dcae-464e-8244-14d696474e35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c287614f-16d1-4658-a8b3-28218d4790d7",
              "parent_uuid": "d25c2323-3852-4d21-9041-c2364d7328d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "805b9945-deed-4b33-a59b-321f8a117777",
                  "parent_uuid": "c287614f-16d1-4658-a8b3-28218d4790d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c42eadac-8d7e-496e-b691-e1904a15a934",
              "parent_uuid": "d25c2323-3852-4d21-9041-c2364d7328d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90839afc-d360-42bf-af67-38607de0d85a",
                  "parent_uuid": "c42eadac-8d7e-496e-b691-e1904a15a934",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b87b56e-4d20-493d-a972-1b96b8cda62e",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6575cb88-ad01-4930-b1d2-bf1b65434cf0",
              "parent_uuid": "7b87b56e-4d20-493d-a972-1b96b8cda62e",
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
              "uuid": "cc032a76-db94-4ded-ada1-ad7979125a70",
              "parent_uuid": "7b87b56e-4d20-493d-a972-1b96b8cda62e",
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
              "uuid": "3b707c6c-b609-4ce8-8295-32729b6725a1",
              "parent_uuid": "7b87b56e-4d20-493d-a972-1b96b8cda62e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b0b31b0-cc03-4c7a-8d7f-0dcfa2010779",
                  "parent_uuid": "3b707c6c-b609-4ce8-8295-32729b6725a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "413b3283-bd51-438b-837c-4c2e8635a212",
              "parent_uuid": "7b87b56e-4d20-493d-a972-1b96b8cda62e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9e1acde-c625-4349-864a-913ff8707c82",
                  "parent_uuid": "413b3283-bd51-438b-837c-4c2e8635a212",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26015664-a793-4d4d-ba18-224a0e92c53a",
              "parent_uuid": "7b87b56e-4d20-493d-a972-1b96b8cda62e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac66b86a-6717-4bf3-b9be-1752f7132c9b",
                  "parent_uuid": "26015664-a793-4d4d-ba18-224a0e92c53a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd1b86a3-eba7-415a-9a90-085cfeb87c57",
              "parent_uuid": "7b87b56e-4d20-493d-a972-1b96b8cda62e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "faa963a6-a957-4126-bdae-5088f4ac8338",
                  "parent_uuid": "dd1b86a3-eba7-415a-9a90-085cfeb87c57",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e072e0f-dd8a-4a9a-bcd6-0b8082480690",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "844226a1-4784-4d00-b82b-b5a9cd4a0a98",
              "parent_uuid": "2e072e0f-dd8a-4a9a-bcd6-0b8082480690",
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
              "uuid": "6888538b-7884-455f-a9ad-6234a46d1cfa",
              "parent_uuid": "2e072e0f-dd8a-4a9a-bcd6-0b8082480690",
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
              "uuid": "0e570066-9f45-473a-af25-ea0543720065",
              "parent_uuid": "2e072e0f-dd8a-4a9a-bcd6-0b8082480690",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a44ab89b-af33-4266-b39b-e6de9f6f6b94",
                  "parent_uuid": "0e570066-9f45-473a-af25-ea0543720065",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c34ac3c0-d030-49f4-a18f-bbf4842d7d0b",
              "parent_uuid": "2e072e0f-dd8a-4a9a-bcd6-0b8082480690",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "677cbd39-0886-42cc-8c5f-6f28c75a324b",
                  "parent_uuid": "c34ac3c0-d030-49f4-a18f-bbf4842d7d0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36342a7b-411d-4c79-b369-eec8dd1282c6",
              "parent_uuid": "2e072e0f-dd8a-4a9a-bcd6-0b8082480690",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a520d3c-8a0d-4694-a085-5d7954ea4402",
                  "parent_uuid": "36342a7b-411d-4c79-b369-eec8dd1282c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61446f0d-2311-46d7-a680-d06ca943bae8",
              "parent_uuid": "2e072e0f-dd8a-4a9a-bcd6-0b8082480690",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "547522c3-ecf3-4c41-a3a3-dc1f2fbf5fdf",
                  "parent_uuid": "61446f0d-2311-46d7-a680-d06ca943bae8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "98dd8cf9-7407-47de-ba46-37108522c715",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3052c2cb-c895-42c5-b48c-0edbbf35998d",
              "parent_uuid": "98dd8cf9-7407-47de-ba46-37108522c715",
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
              "uuid": "ca74425d-816b-46df-b2c3-d0e4398c3773",
              "parent_uuid": "98dd8cf9-7407-47de-ba46-37108522c715",
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
              "uuid": "3fb3cb32-6e35-487f-a38a-c1ea9b1fd555",
              "parent_uuid": "98dd8cf9-7407-47de-ba46-37108522c715",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21def556-dba5-45f3-b756-e2cd9aa0d13a",
                  "parent_uuid": "3fb3cb32-6e35-487f-a38a-c1ea9b1fd555",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "398addfc-e731-4830-abde-68ce1384351e",
              "parent_uuid": "98dd8cf9-7407-47de-ba46-37108522c715",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15abea11-1d32-4d44-bc57-7246987397b0",
                  "parent_uuid": "398addfc-e731-4830-abde-68ce1384351e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15ddeb58-db33-4c44-bbb9-a0b13da05f38",
              "parent_uuid": "98dd8cf9-7407-47de-ba46-37108522c715",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d45754ca-1a49-4ea5-8304-d2bfe8972490",
                  "parent_uuid": "15ddeb58-db33-4c44-bbb9-a0b13da05f38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0d2b7ca-17ff-4ace-9a68-4becc7fa5692",
              "parent_uuid": "98dd8cf9-7407-47de-ba46-37108522c715",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "119ba20d-70a9-455d-9979-e530b5d7c916",
                  "parent_uuid": "d0d2b7ca-17ff-4ace-9a68-4becc7fa5692",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "24e65fc6-6f2d-4f6d-a74b-ca45dc20d39a",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1351d348-5184-4a0d-8e35-beefb92ad440",
              "parent_uuid": "24e65fc6-6f2d-4f6d-a74b-ca45dc20d39a",
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
              "uuid": "8c80707a-8d93-47b0-a07f-275a313a7e1d",
              "parent_uuid": "24e65fc6-6f2d-4f6d-a74b-ca45dc20d39a",
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
              "uuid": "bd82e0ec-d92f-4a0c-bc31-571952fa67d1",
              "parent_uuid": "24e65fc6-6f2d-4f6d-a74b-ca45dc20d39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0a88f93-c1a7-4515-904c-bb8dd00476c0",
                  "parent_uuid": "bd82e0ec-d92f-4a0c-bc31-571952fa67d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c717ac8d-716c-4190-bd97-a28d62f2ab31",
              "parent_uuid": "24e65fc6-6f2d-4f6d-a74b-ca45dc20d39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0dcac78-280e-45ef-9fe4-f6bb1a11c915",
                  "parent_uuid": "c717ac8d-716c-4190-bd97-a28d62f2ab31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b13eddf4-7b40-4125-8c75-d5c6a3f5966d",
              "parent_uuid": "24e65fc6-6f2d-4f6d-a74b-ca45dc20d39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "308a28f4-3055-49c7-afb2-c843f261f373",
                  "parent_uuid": "b13eddf4-7b40-4125-8c75-d5c6a3f5966d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad23c40b-4c6f-4cd0-8698-2216b7760f35",
              "parent_uuid": "24e65fc6-6f2d-4f6d-a74b-ca45dc20d39a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fdc9c79-685d-44fa-aead-ab497a4f3972",
                  "parent_uuid": "ad23c40b-4c6f-4cd0-8698-2216b7760f35",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8ba9f4a4-f5fe-4bf7-b95d-554a0d18c6f2",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e084f03-3474-44bc-8d3d-ad6d361117d7",
              "parent_uuid": "8ba9f4a4-f5fe-4bf7-b95d-554a0d18c6f2",
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
          "uuid": "c43d06d2-1056-4657-a34e-6f78a4b380ab",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3258a0a-ba78-456a-86ed-d917a2f3084f",
              "parent_uuid": "c43d06d2-1056-4657-a34e-6f78a4b380ab",
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
          "uuid": "c142dd70-2417-4c30-a8bd-07e043295ead",
          "parent_uuid": "6d44f65e-fd3b-448a-9b56-6b1eb51826f5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60c4d905-8a0a-4c54-8a98-5fda23f6843a",
              "parent_uuid": "c142dd70-2417-4c30-a8bd-07e043295ead",
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
                  "uuid": "3c8058bd-c8bb-4913-ad3e-75cac7e6b9bf",
                  "parent_uuid": "60c4d905-8a0a-4c54-8a98-5fda23f6843a",
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


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
  "uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "71f9576b-ff3b-47b1-bd97-20a65f95871f",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "a296640f-753f-4fbc-a3bf-a56d04b3dfab",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "64c27d23-df64-44cf-9cd3-733588bb668b",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "0777e8f0-d436-4477-9aed-c0231f438b5b",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "9655f948-a6f7-485f-9e09-44d756515901",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "d0f9038d-f321-46e4-9765-2002b263cd1b",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "aa976bdd-978d-417e-a37c-a5e291ca06ae",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
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
      "uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
      "parent_uuid": "45b7356e-c18b-4e8f-a7f2-90fb8bf2ee5d",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "4dc49bbe-8d78-48dc-a2d8-d787235a9324",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "c6d6adef-1651-4dc2-b0c9-1cebe1204ce7",
              "parent_uuid": "4dc49bbe-8d78-48dc-a2d8-d787235a9324",
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
              "uuid": "96d3ff56-cf77-4f3e-9046-7ea222acf00a",
              "parent_uuid": "4dc49bbe-8d78-48dc-a2d8-d787235a9324",
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
              "uuid": "9fbd5dbd-2ff3-4236-a0dc-b1299a57ef29",
              "parent_uuid": "4dc49bbe-8d78-48dc-a2d8-d787235a9324",
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
              "uuid": "b4d6bacc-edd3-48f3-88ce-e4eadeb9d18f",
              "parent_uuid": "4dc49bbe-8d78-48dc-a2d8-d787235a9324",
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
          "uuid": "15011ded-2a43-4c8e-aead-5d3eb3270d65",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "d35671e8-84da-4e89-b935-83d3519cb025",
              "parent_uuid": "15011ded-2a43-4c8e-aead-5d3eb3270d65",
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
              "uuid": "8e1321ab-e078-4011-a8ff-12dc4a97177a",
              "parent_uuid": "15011ded-2a43-4c8e-aead-5d3eb3270d65",
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
              "uuid": "21f17e72-de50-4d65-9ceb-74754e15e796",
              "parent_uuid": "15011ded-2a43-4c8e-aead-5d3eb3270d65",
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
              "uuid": "fd673378-2b82-46bd-bcee-7b657f0ee7e9",
              "parent_uuid": "15011ded-2a43-4c8e-aead-5d3eb3270d65",
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
          "uuid": "6f7cb653-8ad4-4567-a3ea-0deb29f05c98",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9efe94c-5e7e-41c4-9d4c-c8e1057aa522",
              "parent_uuid": "6f7cb653-8ad4-4567-a3ea-0deb29f05c98",
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
              "uuid": "bdf52b93-dbec-4bb2-937f-abc69edfea55",
              "parent_uuid": "6f7cb653-8ad4-4567-a3ea-0deb29f05c98",
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
              "uuid": "c64367c9-7c15-4fe7-8830-b9036060d281",
              "parent_uuid": "6f7cb653-8ad4-4567-a3ea-0deb29f05c98",
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
              "uuid": "dd228c3c-3807-4e5d-a16a-78755f4a3d79",
              "parent_uuid": "6f7cb653-8ad4-4567-a3ea-0deb29f05c98",
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
              "uuid": "ad62a0b4-ac69-4231-8b90-43f0c6b9f10f",
              "parent_uuid": "6f7cb653-8ad4-4567-a3ea-0deb29f05c98",
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
              "uuid": "6a10bd40-7668-4e2a-8ced-e1e2e60ff430",
              "parent_uuid": "6f7cb653-8ad4-4567-a3ea-0deb29f05c98",
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
          "uuid": "17bd9d58-abf2-4db9-8597-dcb504edfb3e",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "31fbe90a-8587-4b09-ac55-7f9562216d8a",
              "parent_uuid": "17bd9d58-abf2-4db9-8597-dcb504edfb3e",
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
          "uuid": "89fb3849-9540-4e39-b77a-f8952a9a8b91",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0ba9e9f-1c8a-4b59-b34f-eda167d5c4e3",
              "parent_uuid": "89fb3849-9540-4e39-b77a-f8952a9a8b91",
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
              "uuid": "f736c7f8-29c2-44e0-b8b0-56a47c35fcac",
              "parent_uuid": "89fb3849-9540-4e39-b77a-f8952a9a8b91",
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
              "uuid": "37368472-cd01-4dab-9892-632394923a90",
              "parent_uuid": "89fb3849-9540-4e39-b77a-f8952a9a8b91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6aec3c01-4189-4b11-9600-776a02a198ce",
                  "parent_uuid": "37368472-cd01-4dab-9892-632394923a90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33a10cd2-e4bf-45aa-87da-25b79280c073",
              "parent_uuid": "89fb3849-9540-4e39-b77a-f8952a9a8b91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c5ceaf5-e4aa-445b-979a-e02d87b83d63",
                  "parent_uuid": "33a10cd2-e4bf-45aa-87da-25b79280c073",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6fe2b85-3aff-4254-997d-8eaa315d0660",
              "parent_uuid": "89fb3849-9540-4e39-b77a-f8952a9a8b91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "540d74f2-dd44-43ec-a38d-611399080573",
                  "parent_uuid": "d6fe2b85-3aff-4254-997d-8eaa315d0660",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c9d61c1-47bc-4bf7-9ce1-30873d4b01f5",
              "parent_uuid": "89fb3849-9540-4e39-b77a-f8952a9a8b91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2755fc73-2523-444b-8d97-a37031aa82de",
                  "parent_uuid": "5c9d61c1-47bc-4bf7-9ce1-30873d4b01f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b99f262-6654-49d2-aee3-c89f1059863a",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8fa81cf5-8c30-4427-be87-3481772531c6",
              "parent_uuid": "0b99f262-6654-49d2-aee3-c89f1059863a",
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
              "uuid": "9743b64a-5a15-4938-ac9b-f4232acf5b32",
              "parent_uuid": "0b99f262-6654-49d2-aee3-c89f1059863a",
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
              "uuid": "f6166f28-08f5-44cd-8aad-2244ff34351f",
              "parent_uuid": "0b99f262-6654-49d2-aee3-c89f1059863a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68340945-87f8-4771-b312-4d9adc4aad8d",
                  "parent_uuid": "f6166f28-08f5-44cd-8aad-2244ff34351f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d2e0a96-8b8d-4980-97c4-250b8677cf51",
              "parent_uuid": "0b99f262-6654-49d2-aee3-c89f1059863a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11cf5665-dd8c-4e1c-8e5f-417f3408efcb",
                  "parent_uuid": "3d2e0a96-8b8d-4980-97c4-250b8677cf51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7c02d0d-283a-4073-9ea7-d995dd60d66f",
              "parent_uuid": "0b99f262-6654-49d2-aee3-c89f1059863a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3d20fe6-cc81-40e5-910e-6fba97c91166",
                  "parent_uuid": "b7c02d0d-283a-4073-9ea7-d995dd60d66f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "975e1a9f-4106-4d86-ad20-5b49e757ec01",
              "parent_uuid": "0b99f262-6654-49d2-aee3-c89f1059863a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b68693c-c8ed-4cd5-a5f5-8d6255df632c",
                  "parent_uuid": "975e1a9f-4106-4d86-ad20-5b49e757ec01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3e258207-e3a1-4439-ac76-1ad788d9b057",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "829ea5a9-c897-4f9a-b988-9dfe43e41a02",
              "parent_uuid": "3e258207-e3a1-4439-ac76-1ad788d9b057",
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
              "uuid": "ca6f8905-891e-4f05-a907-c9a817596f79",
              "parent_uuid": "3e258207-e3a1-4439-ac76-1ad788d9b057",
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
              "uuid": "099c3a71-dea1-4621-a9be-0d13d3fae009",
              "parent_uuid": "3e258207-e3a1-4439-ac76-1ad788d9b057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11ed405f-eaff-43f9-9fea-b9a4de0e6002",
                  "parent_uuid": "099c3a71-dea1-4621-a9be-0d13d3fae009",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c547800e-7a0c-4db0-b5fa-c32464ccf7b1",
              "parent_uuid": "3e258207-e3a1-4439-ac76-1ad788d9b057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2373a89b-64c6-42a6-8f10-058bf2af6443",
                  "parent_uuid": "c547800e-7a0c-4db0-b5fa-c32464ccf7b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "963d8559-da4c-42dc-8f95-e70cc1aaaa92",
              "parent_uuid": "3e258207-e3a1-4439-ac76-1ad788d9b057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "555e1ded-e499-4864-9a4d-ec913bad70ed",
                  "parent_uuid": "963d8559-da4c-42dc-8f95-e70cc1aaaa92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7caf17ca-3611-449c-a359-f0b69228966a",
              "parent_uuid": "3e258207-e3a1-4439-ac76-1ad788d9b057",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d3be65d-1ddd-46c6-ba0b-d2e00b7ffd20",
                  "parent_uuid": "7caf17ca-3611-449c-a359-f0b69228966a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8d371881-baa3-4b22-a00f-d3437c920eb1",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c29a71e-5558-4a2e-b325-ded61804c842",
              "parent_uuid": "8d371881-baa3-4b22-a00f-d3437c920eb1",
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
              "uuid": "dc53a378-6f76-4e58-9664-b9b899d92381",
              "parent_uuid": "8d371881-baa3-4b22-a00f-d3437c920eb1",
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
              "uuid": "36820526-9ee9-4545-95e4-fa63ad20e64d",
              "parent_uuid": "8d371881-baa3-4b22-a00f-d3437c920eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "387cc428-9c54-474c-9b1e-e90577a09f3c",
                  "parent_uuid": "36820526-9ee9-4545-95e4-fa63ad20e64d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c1907ea-61f3-4cf1-993d-94ac661ff460",
              "parent_uuid": "8d371881-baa3-4b22-a00f-d3437c920eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32001b7a-0e21-4ecf-ad08-b311071d1928",
                  "parent_uuid": "5c1907ea-61f3-4cf1-993d-94ac661ff460",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09048f14-b61b-4650-ad65-35f7448302ca",
              "parent_uuid": "8d371881-baa3-4b22-a00f-d3437c920eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7858e61a-7f3d-4b21-80c8-35859135301b",
                  "parent_uuid": "09048f14-b61b-4650-ad65-35f7448302ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42203904-84d5-43e5-af60-9c8a15101a0f",
              "parent_uuid": "8d371881-baa3-4b22-a00f-d3437c920eb1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efd82c24-ebc5-4c50-8901-0c08193eaaa3",
                  "parent_uuid": "42203904-84d5-43e5-af60-9c8a15101a0f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "019e7a50-d53a-48cf-82b0-4dac0ae54fda",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28099756-b30b-4c48-ad7d-31a215d78fd6",
              "parent_uuid": "019e7a50-d53a-48cf-82b0-4dac0ae54fda",
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
              "uuid": "f6dbb63a-2330-4a62-b7fd-a0f7851ca067",
              "parent_uuid": "019e7a50-d53a-48cf-82b0-4dac0ae54fda",
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
              "uuid": "921ce521-84d2-4a99-ba0d-a72cffb0f93c",
              "parent_uuid": "019e7a50-d53a-48cf-82b0-4dac0ae54fda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41b7c269-6c47-4029-af4e-f042289ab2a4",
                  "parent_uuid": "921ce521-84d2-4a99-ba0d-a72cffb0f93c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "072e0fa8-caf1-435a-ba18-b7ec20efbea6",
              "parent_uuid": "019e7a50-d53a-48cf-82b0-4dac0ae54fda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b769da1-4fb0-49ac-b878-db674bc1822d",
                  "parent_uuid": "072e0fa8-caf1-435a-ba18-b7ec20efbea6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d421515-908a-46fb-a488-ebcbb035b6c0",
              "parent_uuid": "019e7a50-d53a-48cf-82b0-4dac0ae54fda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d72ffd56-69c4-41e0-8a08-adce1d8f187b",
                  "parent_uuid": "7d421515-908a-46fb-a488-ebcbb035b6c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1523501f-048d-43de-ba85-339e4dc746f0",
              "parent_uuid": "019e7a50-d53a-48cf-82b0-4dac0ae54fda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78ff999d-9287-4d8b-bfe0-e355e69e972a",
                  "parent_uuid": "1523501f-048d-43de-ba85-339e4dc746f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "99f83e05-96f9-4d17-b19e-f9ab3707ee75",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05ef24dc-fa32-4fa1-8f99-424eb30730e1",
              "parent_uuid": "99f83e05-96f9-4d17-b19e-f9ab3707ee75",
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
              "uuid": "34edbc1e-e28f-44c8-97f9-49f100908599",
              "parent_uuid": "99f83e05-96f9-4d17-b19e-f9ab3707ee75",
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
              "uuid": "c4642663-0c73-4f99-b94f-ee1b19e86322",
              "parent_uuid": "99f83e05-96f9-4d17-b19e-f9ab3707ee75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91f5fcf6-288d-4870-8c55-f53153780ed7",
                  "parent_uuid": "c4642663-0c73-4f99-b94f-ee1b19e86322",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b72a8261-1d53-4566-84f0-29949edc87dd",
              "parent_uuid": "99f83e05-96f9-4d17-b19e-f9ab3707ee75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d877982-6b5d-4792-b0a0-b788fa75862b",
                  "parent_uuid": "b72a8261-1d53-4566-84f0-29949edc87dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df518115-ab3e-4abf-aedc-c85dd2b0f520",
              "parent_uuid": "99f83e05-96f9-4d17-b19e-f9ab3707ee75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99347807-b032-40a9-bf3a-a45205798566",
                  "parent_uuid": "df518115-ab3e-4abf-aedc-c85dd2b0f520",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6c5e65c8-25ea-4d33-a29d-5873b17af106",
              "parent_uuid": "99f83e05-96f9-4d17-b19e-f9ab3707ee75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20d08e61-4cff-4490-ae27-a81a12b4d5b6",
                  "parent_uuid": "6c5e65c8-25ea-4d33-a29d-5873b17af106",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f23ce2b-f32f-499a-965e-e14f7bf473fe",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f29055b6-c91a-48c7-978d-449d02e6e716",
              "parent_uuid": "0f23ce2b-f32f-499a-965e-e14f7bf473fe",
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
              "uuid": "e2fea5dc-2256-48da-b5c2-b353adb7121e",
              "parent_uuid": "0f23ce2b-f32f-499a-965e-e14f7bf473fe",
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
              "uuid": "3f9597ab-78a5-4913-b4ab-048baaa864ea",
              "parent_uuid": "0f23ce2b-f32f-499a-965e-e14f7bf473fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5a188f3-0f02-4d99-972e-9844e4677f7d",
                  "parent_uuid": "3f9597ab-78a5-4913-b4ab-048baaa864ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2dcafb7-d726-404f-aebc-75d2c17e88b5",
              "parent_uuid": "0f23ce2b-f32f-499a-965e-e14f7bf473fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d50d4fa3-b9c4-45f7-8e11-5cf07ffe4f23",
                  "parent_uuid": "b2dcafb7-d726-404f-aebc-75d2c17e88b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12a66f18-8f41-49ee-9544-d8f71ed3c15d",
              "parent_uuid": "0f23ce2b-f32f-499a-965e-e14f7bf473fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "719ff1f6-91e4-4712-809d-1034526d956b",
                  "parent_uuid": "12a66f18-8f41-49ee-9544-d8f71ed3c15d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca42768e-e7eb-4260-8b35-feaca4b3f272",
              "parent_uuid": "0f23ce2b-f32f-499a-965e-e14f7bf473fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67b61c24-229d-41d6-9b05-5a55f480a62c",
                  "parent_uuid": "ca42768e-e7eb-4260-8b35-feaca4b3f272",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a610704-3091-4c09-9802-5a006b193e4d",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa641266-a622-4e35-9de1-f27efbb4fc2c",
              "parent_uuid": "8a610704-3091-4c09-9802-5a006b193e4d",
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
              "uuid": "a1c0fe46-dbf4-4df9-99f1-8ae5780be8df",
              "parent_uuid": "8a610704-3091-4c09-9802-5a006b193e4d",
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
              "uuid": "44f53178-b7b2-4627-a4ee-7924d6a8037a",
              "parent_uuid": "8a610704-3091-4c09-9802-5a006b193e4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6837909-7d3a-4a29-9f8f-a92d877387b4",
                  "parent_uuid": "44f53178-b7b2-4627-a4ee-7924d6a8037a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5e4964b-eb6c-408a-af9d-180e93dadf1f",
              "parent_uuid": "8a610704-3091-4c09-9802-5a006b193e4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24ae479b-5083-4682-8238-853a83c9ea84",
                  "parent_uuid": "f5e4964b-eb6c-408a-af9d-180e93dadf1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f4a84fc-6b45-4688-8b46-8125fbc77e56",
              "parent_uuid": "8a610704-3091-4c09-9802-5a006b193e4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3f4835a-efb9-4950-9d44-5bae7e6c09b2",
                  "parent_uuid": "3f4a84fc-6b45-4688-8b46-8125fbc77e56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3610bd5a-0466-4688-996b-c50d7da06fae",
              "parent_uuid": "8a610704-3091-4c09-9802-5a006b193e4d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "120d937a-975b-4c33-878b-0242f94c5ce9",
                  "parent_uuid": "3610bd5a-0466-4688-996b-c50d7da06fae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ba9907d4-d56c-437e-9279-8bb464c1f41a",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "081d7794-398b-4e33-b18f-d1b86b0068de",
              "parent_uuid": "ba9907d4-d56c-437e-9279-8bb464c1f41a",
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
              "uuid": "b7645883-5f61-4a5c-a9b0-20767c28c3d6",
              "parent_uuid": "ba9907d4-d56c-437e-9279-8bb464c1f41a",
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
              "uuid": "cda1e946-e310-4dfd-ab09-f9a0833a93e9",
              "parent_uuid": "ba9907d4-d56c-437e-9279-8bb464c1f41a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f88909c1-b2c5-4b3a-b2cb-3a7d2a18d517",
                  "parent_uuid": "cda1e946-e310-4dfd-ab09-f9a0833a93e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9773b1c5-2f1f-4835-9ab9-563fd28dc4d5",
              "parent_uuid": "ba9907d4-d56c-437e-9279-8bb464c1f41a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80726b69-c757-4329-a8bc-935b6612130f",
                  "parent_uuid": "9773b1c5-2f1f-4835-9ab9-563fd28dc4d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21c169cd-2610-4cfa-a20e-25f60a3f58b3",
              "parent_uuid": "ba9907d4-d56c-437e-9279-8bb464c1f41a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "886479e7-6393-44bc-b3dc-6cb1cbbe217f",
                  "parent_uuid": "21c169cd-2610-4cfa-a20e-25f60a3f58b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a1bb412-5aab-483b-868f-52bb5b21d00f",
              "parent_uuid": "ba9907d4-d56c-437e-9279-8bb464c1f41a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5623eb7-f95a-4ed7-a5db-6c03a6cc906b",
                  "parent_uuid": "0a1bb412-5aab-483b-868f-52bb5b21d00f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "abd6550e-4e74-498b-820e-ca8fcca29d80",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00832ec6-6aa0-46da-83ce-03dba2fbdc76",
              "parent_uuid": "abd6550e-4e74-498b-820e-ca8fcca29d80",
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
              "uuid": "6112d814-6056-487e-a567-5a8bec08b4b2",
              "parent_uuid": "abd6550e-4e74-498b-820e-ca8fcca29d80",
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
              "uuid": "e60adac2-1944-41f5-aa8e-40864d542295",
              "parent_uuid": "abd6550e-4e74-498b-820e-ca8fcca29d80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fdfb0e4-b003-4c0c-a222-75c5550bc6e1",
                  "parent_uuid": "e60adac2-1944-41f5-aa8e-40864d542295",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca04e912-21b2-4eec-920e-1ec0479905b3",
              "parent_uuid": "abd6550e-4e74-498b-820e-ca8fcca29d80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82c151ca-6dc1-4253-8bff-4c7313b07a6e",
                  "parent_uuid": "ca04e912-21b2-4eec-920e-1ec0479905b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca07c946-0117-4060-a0e4-1e2bab16b011",
              "parent_uuid": "abd6550e-4e74-498b-820e-ca8fcca29d80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "338f34c8-9b14-463e-bc37-9a32cc73fb58",
                  "parent_uuid": "ca07c946-0117-4060-a0e4-1e2bab16b011",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "812ac95d-133f-474c-b618-8a688a9a5de0",
              "parent_uuid": "abd6550e-4e74-498b-820e-ca8fcca29d80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f312d7db-568c-4501-a40d-ebd0bd35e06e",
                  "parent_uuid": "812ac95d-133f-474c-b618-8a688a9a5de0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a2ac132e-dd90-49ec-974c-1efc4e9c594b",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0283831c-403f-4e78-b7f7-0edcab130cdd",
              "parent_uuid": "a2ac132e-dd90-49ec-974c-1efc4e9c594b",
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
              "uuid": "4cc8aa58-0e8e-49b9-b38f-682e5eee8ffd",
              "parent_uuid": "a2ac132e-dd90-49ec-974c-1efc4e9c594b",
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
              "uuid": "f49a7531-b1f2-4bb4-826a-3c8427e2604e",
              "parent_uuid": "a2ac132e-dd90-49ec-974c-1efc4e9c594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3506b6f9-736e-40df-83e8-61822d838ba9",
                  "parent_uuid": "f49a7531-b1f2-4bb4-826a-3c8427e2604e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "369576b9-8374-4d7d-a485-ec2069ccb101",
              "parent_uuid": "a2ac132e-dd90-49ec-974c-1efc4e9c594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e07c28e2-4ff7-4184-9f76-25d833cb136d",
                  "parent_uuid": "369576b9-8374-4d7d-a485-ec2069ccb101",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7bbd84a-1735-434b-96d9-7c7a863545fe",
              "parent_uuid": "a2ac132e-dd90-49ec-974c-1efc4e9c594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae8100c5-ad8b-4c24-88b1-d6de7a9dd4ef",
                  "parent_uuid": "e7bbd84a-1735-434b-96d9-7c7a863545fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8fec54b-0178-4bb3-a812-adba6aadbd81",
              "parent_uuid": "a2ac132e-dd90-49ec-974c-1efc4e9c594b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93e1cac6-1457-4b4d-b8c7-de59acea83b5",
                  "parent_uuid": "f8fec54b-0178-4bb3-a812-adba6aadbd81",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5b714e9b-37d3-446a-83a7-b095ec18a61a",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "45769010-d3dd-40cd-a48a-4b207eb3d67b",
              "parent_uuid": "5b714e9b-37d3-446a-83a7-b095ec18a61a",
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
              "uuid": "7fc6f165-bb0b-40ff-8230-41daa7730c48",
              "parent_uuid": "5b714e9b-37d3-446a-83a7-b095ec18a61a",
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
              "uuid": "3dca5ef1-1dcc-4892-af9f-1243344aa285",
              "parent_uuid": "5b714e9b-37d3-446a-83a7-b095ec18a61a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcb5ffb7-9de7-4001-969e-07c122796e77",
                  "parent_uuid": "3dca5ef1-1dcc-4892-af9f-1243344aa285",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0523fd51-05e1-40c1-ab9c-6ec0727de6b2",
              "parent_uuid": "5b714e9b-37d3-446a-83a7-b095ec18a61a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9850d7e9-f69d-4a02-be1c-b0335d2243a5",
                  "parent_uuid": "0523fd51-05e1-40c1-ab9c-6ec0727de6b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1e73bc4-b02f-4aaa-92f9-063ff7632e2f",
              "parent_uuid": "5b714e9b-37d3-446a-83a7-b095ec18a61a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee47919a-a63c-4ffb-8b39-ed9f143ce9ee",
                  "parent_uuid": "f1e73bc4-b02f-4aaa-92f9-063ff7632e2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78e0fd46-1bb8-447d-b290-3546dd101b8d",
              "parent_uuid": "5b714e9b-37d3-446a-83a7-b095ec18a61a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "790bf678-a9c0-4ddd-9da0-83d9f8a1e161",
                  "parent_uuid": "78e0fd46-1bb8-447d-b290-3546dd101b8d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "33d866de-970e-40df-89de-0cd5c0d12a2d",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c8ef06d4-9b2b-4935-856e-da0a1a106333",
              "parent_uuid": "33d866de-970e-40df-89de-0cd5c0d12a2d",
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
              "uuid": "b6e7fba1-8734-47b1-8bf6-3299721b26de",
              "parent_uuid": "33d866de-970e-40df-89de-0cd5c0d12a2d",
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
              "uuid": "14cf58fe-39f5-48e9-bb03-9adcf765a76e",
              "parent_uuid": "33d866de-970e-40df-89de-0cd5c0d12a2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efe414ca-542b-4e82-8144-053cf651fa42",
                  "parent_uuid": "14cf58fe-39f5-48e9-bb03-9adcf765a76e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8b9dfc1-a179-47f4-a0f5-18cba59aafa8",
              "parent_uuid": "33d866de-970e-40df-89de-0cd5c0d12a2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b92601be-b552-4f82-b7f0-990493a7e3f1",
                  "parent_uuid": "c8b9dfc1-a179-47f4-a0f5-18cba59aafa8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cde1cf2a-96f5-45ec-a2dc-08e2c425e19e",
              "parent_uuid": "33d866de-970e-40df-89de-0cd5c0d12a2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "574fdc9e-beae-471e-9087-a4b446841e8b",
                  "parent_uuid": "cde1cf2a-96f5-45ec-a2dc-08e2c425e19e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8aca2e7-24f3-455a-b454-6e7c72000d39",
              "parent_uuid": "33d866de-970e-40df-89de-0cd5c0d12a2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e61a9a08-9034-4c87-be1b-5e09b977cfce",
                  "parent_uuid": "b8aca2e7-24f3-455a-b454-6e7c72000d39",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "818392c3-e2b3-4a6b-bf8d-1a06f8d71022",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12b946cc-6233-4ea4-9820-7b97cafbcc02",
              "parent_uuid": "818392c3-e2b3-4a6b-bf8d-1a06f8d71022",
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
              "uuid": "6f633344-9a93-4903-8b08-aafd5b031d5c",
              "parent_uuid": "818392c3-e2b3-4a6b-bf8d-1a06f8d71022",
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
              "uuid": "18830d24-f70e-47dc-96df-d2196c678a21",
              "parent_uuid": "818392c3-e2b3-4a6b-bf8d-1a06f8d71022",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0bda334-abf8-421c-b68a-dd6330985b04",
                  "parent_uuid": "18830d24-f70e-47dc-96df-d2196c678a21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db679a12-393b-4b81-80d6-038e32ddb2bb",
              "parent_uuid": "818392c3-e2b3-4a6b-bf8d-1a06f8d71022",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bae3686c-85aa-47c0-bfae-44fe7165447e",
                  "parent_uuid": "db679a12-393b-4b81-80d6-038e32ddb2bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bfc4ccb-9915-4e5d-9611-49be92e6f141",
              "parent_uuid": "818392c3-e2b3-4a6b-bf8d-1a06f8d71022",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82ac6469-732d-4215-aa2c-00f47e2126fd",
                  "parent_uuid": "6bfc4ccb-9915-4e5d-9611-49be92e6f141",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7f93903-5a60-48dd-a26e-8d8b1a6ded12",
              "parent_uuid": "818392c3-e2b3-4a6b-bf8d-1a06f8d71022",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b2cf33f-4b97-4116-b3a5-70254ecb6aa9",
                  "parent_uuid": "e7f93903-5a60-48dd-a26e-8d8b1a6ded12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "980bae10-6002-4078-aec7-b9e943d3a385",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c14bbe68-d57d-47b9-a393-c27289405629",
              "parent_uuid": "980bae10-6002-4078-aec7-b9e943d3a385",
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
          "uuid": "5fe00745-2512-464b-ae82-d2856f5b253d",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "65f058c2-53ad-47f8-a2fb-3616dfcda889",
              "parent_uuid": "5fe00745-2512-464b-ae82-d2856f5b253d",
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
          "uuid": "8826ab5f-1ec4-4269-b3d8-97cab5731564",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32de04ae-61e2-486b-8b5e-1b00cc22e5b0",
              "parent_uuid": "8826ab5f-1ec4-4269-b3d8-97cab5731564",
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
              "uuid": "ed690b27-b8ba-4eeb-8c6d-634dd1bdca48",
              "parent_uuid": "8826ab5f-1ec4-4269-b3d8-97cab5731564",
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
              "uuid": "cebba343-9e0c-4bf6-8279-1f9ad750fc16",
              "parent_uuid": "8826ab5f-1ec4-4269-b3d8-97cab5731564",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "072db9fb-3072-4521-b738-3e5042968252",
                  "parent_uuid": "cebba343-9e0c-4bf6-8279-1f9ad750fc16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0dda107-eee9-4925-be41-e1c802e78109",
              "parent_uuid": "8826ab5f-1ec4-4269-b3d8-97cab5731564",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c4c0ae2-cce5-4e28-9d81-e297d2de646a",
                  "parent_uuid": "d0dda107-eee9-4925-be41-e1c802e78109",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae256d06-e6e2-443b-b152-27fced14c109",
              "parent_uuid": "8826ab5f-1ec4-4269-b3d8-97cab5731564",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff6efde4-b5ea-47b4-96bd-4d390de4ec4b",
                  "parent_uuid": "ae256d06-e6e2-443b-b152-27fced14c109",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1061b9ee-b136-42fe-b76b-9ab5103c6a0e",
              "parent_uuid": "8826ab5f-1ec4-4269-b3d8-97cab5731564",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5c51593-de87-4ec3-a132-350b78f93244",
                  "parent_uuid": "1061b9ee-b136-42fe-b76b-9ab5103c6a0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3cee0463-6ca8-4b03-a9c6-0026c3606387",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e060078-0676-4906-bc6f-38db49096984",
              "parent_uuid": "3cee0463-6ca8-4b03-a9c6-0026c3606387",
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
              "uuid": "8ebe09ef-9ffa-4a57-9c9f-d4e89f276830",
              "parent_uuid": "3cee0463-6ca8-4b03-a9c6-0026c3606387",
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
              "uuid": "7e54ab97-c73f-49d2-b1ef-e6aa76fb5fc7",
              "parent_uuid": "3cee0463-6ca8-4b03-a9c6-0026c3606387",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa3721b0-4022-4b51-8bb1-374f10a5032c",
                  "parent_uuid": "7e54ab97-c73f-49d2-b1ef-e6aa76fb5fc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "284ab798-c978-4139-bdb8-b436aff4cc37",
              "parent_uuid": "3cee0463-6ca8-4b03-a9c6-0026c3606387",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "305a72cc-356c-4c8c-944f-ab4af4f390d1",
                  "parent_uuid": "284ab798-c978-4139-bdb8-b436aff4cc37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "961dffdd-9ca1-4f32-b356-03985de0a790",
              "parent_uuid": "3cee0463-6ca8-4b03-a9c6-0026c3606387",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef5e08f6-a567-42cf-96d2-8a84845892f3",
                  "parent_uuid": "961dffdd-9ca1-4f32-b356-03985de0a790",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bdbef56-e234-4a49-9b84-3ecfa720e03b",
              "parent_uuid": "3cee0463-6ca8-4b03-a9c6-0026c3606387",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80c5e645-7e14-43b7-b980-9c5e0014efdd",
                  "parent_uuid": "5bdbef56-e234-4a49-9b84-3ecfa720e03b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ffa8410a-e3fe-41e4-90f8-366ffb74a853",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d9c59657-ab31-42b6-8149-3b2c0ddb93c3",
              "parent_uuid": "ffa8410a-e3fe-41e4-90f8-366ffb74a853",
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
              "uuid": "92f3079c-5916-4c6a-b422-13cce1fbb044",
              "parent_uuid": "ffa8410a-e3fe-41e4-90f8-366ffb74a853",
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
              "uuid": "4444e718-f9cf-4917-bc31-d19e8ba92ff0",
              "parent_uuid": "ffa8410a-e3fe-41e4-90f8-366ffb74a853",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35eb45b7-3569-495b-87ea-27c763345b94",
                  "parent_uuid": "4444e718-f9cf-4917-bc31-d19e8ba92ff0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d734ff0d-7f31-4a8e-a368-3e0603a18225",
              "parent_uuid": "ffa8410a-e3fe-41e4-90f8-366ffb74a853",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "804979ec-2a5c-462f-9c8f-0ea9101e2a75",
                  "parent_uuid": "d734ff0d-7f31-4a8e-a368-3e0603a18225",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ebb74be-3c76-4fcf-b97d-99ca0a6e53f4",
              "parent_uuid": "ffa8410a-e3fe-41e4-90f8-366ffb74a853",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7fc7c5e-c681-44cc-bcb5-6073efcc6c80",
                  "parent_uuid": "5ebb74be-3c76-4fcf-b97d-99ca0a6e53f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf5e6edf-abcf-4052-a119-56a632986aba",
              "parent_uuid": "ffa8410a-e3fe-41e4-90f8-366ffb74a853",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c0d1941-798f-48f2-8fc9-171164f8675f",
                  "parent_uuid": "bf5e6edf-abcf-4052-a119-56a632986aba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4b927395-d0ac-4dde-89ee-15bb6b43bdb2",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f86a4382-b03e-4c43-ac64-1a7464807419",
              "parent_uuid": "4b927395-d0ac-4dde-89ee-15bb6b43bdb2",
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
              "uuid": "bab491e2-7711-46e3-a295-d870a56a55c2",
              "parent_uuid": "4b927395-d0ac-4dde-89ee-15bb6b43bdb2",
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
              "uuid": "f915a1bd-b5da-477b-a406-a605ff46f48a",
              "parent_uuid": "4b927395-d0ac-4dde-89ee-15bb6b43bdb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8476db8-c938-449e-a4ba-d88dfb9efade",
                  "parent_uuid": "f915a1bd-b5da-477b-a406-a605ff46f48a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7469d9a-a0ed-4471-aa17-579771fa7389",
              "parent_uuid": "4b927395-d0ac-4dde-89ee-15bb6b43bdb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22f51712-9596-4e14-94d9-4701dd3ab226",
                  "parent_uuid": "f7469d9a-a0ed-4471-aa17-579771fa7389",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2fa8421-b3b8-4768-a60d-981839841690",
              "parent_uuid": "4b927395-d0ac-4dde-89ee-15bb6b43bdb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e9ca361-0915-4142-87b0-9d0112dc9e60",
                  "parent_uuid": "f2fa8421-b3b8-4768-a60d-981839841690",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff515e7e-10cf-4a07-8797-be5fe0afe220",
              "parent_uuid": "4b927395-d0ac-4dde-89ee-15bb6b43bdb2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1f056b8-52e0-4993-ade1-47335987850d",
                  "parent_uuid": "ff515e7e-10cf-4a07-8797-be5fe0afe220",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "68795a00-e596-43fb-b216-f0304ecdd05f",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11be1340-dbda-4d16-aa57-f7813e3917f6",
              "parent_uuid": "68795a00-e596-43fb-b216-f0304ecdd05f",
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
              "uuid": "6e4aa89e-c6bf-4108-928a-eb6fdf98fc13",
              "parent_uuid": "68795a00-e596-43fb-b216-f0304ecdd05f",
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
              "uuid": "3802661c-bf85-42fe-8f99-de39da79cda1",
              "parent_uuid": "68795a00-e596-43fb-b216-f0304ecdd05f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b289d6a7-8db8-4b47-857b-4224dd564f2c",
                  "parent_uuid": "3802661c-bf85-42fe-8f99-de39da79cda1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5d611d2-13df-454e-b58b-03f37a92b31a",
              "parent_uuid": "68795a00-e596-43fb-b216-f0304ecdd05f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8453828-1b2e-47d9-ae9c-c0880afa3ea6",
                  "parent_uuid": "e5d611d2-13df-454e-b58b-03f37a92b31a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14a973aa-ff63-494c-87ca-d682c288af74",
              "parent_uuid": "68795a00-e596-43fb-b216-f0304ecdd05f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44ba959b-5de7-4d1c-a2d8-5f65364deb9c",
                  "parent_uuid": "14a973aa-ff63-494c-87ca-d682c288af74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0582b551-b94a-4502-9452-ae9056e0d6ea",
              "parent_uuid": "68795a00-e596-43fb-b216-f0304ecdd05f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47de35ec-7ce1-4494-b073-0be0a4adf825",
                  "parent_uuid": "0582b551-b94a-4502-9452-ae9056e0d6ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "11813837-6c98-4aed-9b4d-b623e005f3c9",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "057e38aa-c490-4eba-ae7b-88bfb9edf55f",
              "parent_uuid": "11813837-6c98-4aed-9b4d-b623e005f3c9",
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
              "uuid": "c7ddef08-1662-4bee-97cc-ecc8f6fb9600",
              "parent_uuid": "11813837-6c98-4aed-9b4d-b623e005f3c9",
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
              "uuid": "bd4f5369-4fd6-406b-9656-c3d5c59b7949",
              "parent_uuid": "11813837-6c98-4aed-9b4d-b623e005f3c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc7e3f24-07f3-44df-ae4c-df20e26a1a73",
                  "parent_uuid": "bd4f5369-4fd6-406b-9656-c3d5c59b7949",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b34a04b-6355-4f27-bf9b-9e8228f4dc2a",
              "parent_uuid": "11813837-6c98-4aed-9b4d-b623e005f3c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76b62f1b-388c-473c-bf66-52a4d64d43b0",
                  "parent_uuid": "6b34a04b-6355-4f27-bf9b-9e8228f4dc2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "418da684-25b2-44a4-8044-7ed68cd21c64",
              "parent_uuid": "11813837-6c98-4aed-9b4d-b623e005f3c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1effb255-e33d-49b8-9baa-639e5f2446bb",
                  "parent_uuid": "418da684-25b2-44a4-8044-7ed68cd21c64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "306cdefd-e09f-4c9d-ba48-608a5ccfe57a",
              "parent_uuid": "11813837-6c98-4aed-9b4d-b623e005f3c9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b89ecdbd-881d-4fd6-b44b-2d11eef8fe06",
                  "parent_uuid": "306cdefd-e09f-4c9d-ba48-608a5ccfe57a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1fff0ea7-06e0-4129-a064-2608612e6506",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca981b34-8921-4ec9-8b44-c03c60b1ce55",
              "parent_uuid": "1fff0ea7-06e0-4129-a064-2608612e6506",
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
              "uuid": "20eb84d8-b7a5-403b-a27e-7632fee23c24",
              "parent_uuid": "1fff0ea7-06e0-4129-a064-2608612e6506",
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
              "uuid": "d9b30fe6-9588-4769-a06d-04b39c073662",
              "parent_uuid": "1fff0ea7-06e0-4129-a064-2608612e6506",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c51b8fb-9700-4d30-92ca-e018078f0971",
                  "parent_uuid": "d9b30fe6-9588-4769-a06d-04b39c073662",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f692ce7a-9210-4b42-aa88-5935989b5f8a",
              "parent_uuid": "1fff0ea7-06e0-4129-a064-2608612e6506",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25838e41-f8cb-4ec6-a074-677d9ee6ba0b",
                  "parent_uuid": "f692ce7a-9210-4b42-aa88-5935989b5f8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42de9fa5-720a-4e3c-ad2f-8b18c2728084",
              "parent_uuid": "1fff0ea7-06e0-4129-a064-2608612e6506",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3182da1-7c6d-45f2-b3e8-7f2c2284c250",
                  "parent_uuid": "42de9fa5-720a-4e3c-ad2f-8b18c2728084",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "403c2659-7460-4b61-8eb5-24c687e99e7d",
              "parent_uuid": "1fff0ea7-06e0-4129-a064-2608612e6506",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a87e61f-5eed-47e7-bb50-21be0c93df81",
                  "parent_uuid": "403c2659-7460-4b61-8eb5-24c687e99e7d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23ea99b6-2970-4d17-9b59-e5f86ddf1399",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8c6581e-a61a-436e-a997-9d4e6590ba6a",
              "parent_uuid": "23ea99b6-2970-4d17-9b59-e5f86ddf1399",
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
              "uuid": "2d9c47aa-77b8-4866-ad0b-9aeb4e2caeb2",
              "parent_uuid": "23ea99b6-2970-4d17-9b59-e5f86ddf1399",
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
              "uuid": "9941cab6-f91e-4aec-9d1d-fd1c094db5d4",
              "parent_uuid": "23ea99b6-2970-4d17-9b59-e5f86ddf1399",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "030871c9-1609-4e3f-afc6-d01a19017288",
                  "parent_uuid": "9941cab6-f91e-4aec-9d1d-fd1c094db5d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b78feb7a-6160-4ca5-b992-789979350dfb",
              "parent_uuid": "23ea99b6-2970-4d17-9b59-e5f86ddf1399",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38bf1730-f4cf-4107-a21a-85202ca9ca78",
                  "parent_uuid": "b78feb7a-6160-4ca5-b992-789979350dfb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7fa21b0e-47f9-4df3-938e-85281498529c",
              "parent_uuid": "23ea99b6-2970-4d17-9b59-e5f86ddf1399",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8076e0e-4673-4ff5-860c-69139cbbc9b3",
                  "parent_uuid": "7fa21b0e-47f9-4df3-938e-85281498529c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e64481ca-25d5-4b03-9452-930f270b2594",
              "parent_uuid": "23ea99b6-2970-4d17-9b59-e5f86ddf1399",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de8b22e8-670c-4cd3-8136-0ee80c58f127",
                  "parent_uuid": "e64481ca-25d5-4b03-9452-930f270b2594",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "844c80e5-e05d-4354-898a-46d6c352a82b",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "250b5bd5-5b8d-4e75-afe9-a3a07c9d1186",
              "parent_uuid": "844c80e5-e05d-4354-898a-46d6c352a82b",
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
          "uuid": "3bed3c52-8bf3-41f1-9da2-b26a2feba980",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61317e0d-6838-4533-a406-98a49ff2a05d",
              "parent_uuid": "3bed3c52-8bf3-41f1-9da2-b26a2feba980",
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
              "uuid": "e3977296-6d88-440b-9d4a-0b4d2e9ef7e0",
              "parent_uuid": "3bed3c52-8bf3-41f1-9da2-b26a2feba980",
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
              "uuid": "099dac5e-7a4a-47a8-a38d-f910666487ac",
              "parent_uuid": "3bed3c52-8bf3-41f1-9da2-b26a2feba980",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a95cbfd-bb18-4a54-b96a-43c96513cfd3",
                  "parent_uuid": "099dac5e-7a4a-47a8-a38d-f910666487ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52d0f7d0-bc85-4b02-9b12-394cb9c7be9c",
              "parent_uuid": "3bed3c52-8bf3-41f1-9da2-b26a2feba980",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f72c099c-0a92-4db5-9341-ee0fb616aba2",
                  "parent_uuid": "52d0f7d0-bc85-4b02-9b12-394cb9c7be9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e5271928-4253-4fac-af3a-2b53d41010ac",
              "parent_uuid": "3bed3c52-8bf3-41f1-9da2-b26a2feba980",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d78a89e3-e64d-4521-94bb-5b2c1892d67c",
                  "parent_uuid": "e5271928-4253-4fac-af3a-2b53d41010ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "455580e8-4ba3-44d2-b27a-b7dbef506628",
              "parent_uuid": "3bed3c52-8bf3-41f1-9da2-b26a2feba980",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e59d790f-3daa-41a4-959c-f1338bfba28b",
                  "parent_uuid": "455580e8-4ba3-44d2-b27a-b7dbef506628",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a3761d59-5bba-457a-a03e-922f62feb69a",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48914cbb-0746-42fe-a56b-e506caf54f86",
              "parent_uuid": "a3761d59-5bba-457a-a03e-922f62feb69a",
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
              "uuid": "9030f50a-d7cc-433f-a670-38f126b1c445",
              "parent_uuid": "a3761d59-5bba-457a-a03e-922f62feb69a",
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
              "uuid": "9968e3ba-6c3a-49d1-84be-ec9dae4b44b8",
              "parent_uuid": "a3761d59-5bba-457a-a03e-922f62feb69a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e447d862-aa82-4f5c-bd45-7ee466ffab5a",
                  "parent_uuid": "9968e3ba-6c3a-49d1-84be-ec9dae4b44b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "406e341f-c1ba-4d6b-8bef-b6430cc51633",
              "parent_uuid": "a3761d59-5bba-457a-a03e-922f62feb69a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bc85b16-da3a-41b7-a863-a0793d0b52fe",
                  "parent_uuid": "406e341f-c1ba-4d6b-8bef-b6430cc51633",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eeab7e6c-a599-41b4-bec8-9eb23d3990fb",
              "parent_uuid": "a3761d59-5bba-457a-a03e-922f62feb69a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "988b131d-e663-4707-a55b-daa9a1f886ee",
                  "parent_uuid": "eeab7e6c-a599-41b4-bec8-9eb23d3990fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df5a0e85-8127-494f-a2b1-e749fc1bfa96",
              "parent_uuid": "a3761d59-5bba-457a-a03e-922f62feb69a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a676a16d-294d-4b2d-82c0-d46144ea5562",
                  "parent_uuid": "df5a0e85-8127-494f-a2b1-e749fc1bfa96",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e1809521-e617-458b-9960-b8e81466238f",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fb4afef-d086-4542-81d5-0dfd9daa05cd",
              "parent_uuid": "e1809521-e617-458b-9960-b8e81466238f",
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
          "uuid": "a9efed3d-3609-4fb1-aeb2-0c55c1521129",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa6a7887-8f6d-430b-818d-7c1bbfb31cf1",
              "parent_uuid": "a9efed3d-3609-4fb1-aeb2-0c55c1521129",
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
          "uuid": "6b3e1d95-c957-4c59-87c0-050fae7b55c2",
          "parent_uuid": "8160e183-9707-4744-a09c-6e2291c9ed69",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1ce73740-7874-4ce6-b857-d973402a8d42",
              "parent_uuid": "6b3e1d95-c957-4c59-87c0-050fae7b55c2",
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
                  "uuid": "390e8932-11fa-40e9-9416-5a2d88ec1611",
                  "parent_uuid": "1ce73740-7874-4ce6-b857-d973402a8d42",
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

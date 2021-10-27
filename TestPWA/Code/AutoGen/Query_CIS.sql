
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
  "uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "756d3c2c-4f55-4fa8-b4b2-5d8e01d2f861",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "7aa81095-4d64-4790-954f-07ef552d40ed",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "162c09f0-e2e7-4098-8604-c5f6181f0c24",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "7a9ecaa5-dd0f-400f-9f82-8c4bcdf987f0",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "734de98c-4c0a-4d1f-a152-fcbabb4dd70c",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "6ba3cdc2-97b1-4139-b9eb-daa81a7b8a8c",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "780f1d67-f076-4b94-8328-8d86bf8d9f29",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
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
      "uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
      "parent_uuid": "de0d687d-802a-49ad-9729-30ff923176cb",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "e1ab3e95-8743-4e2b-bb0e-2c6b0dbc965c",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e52af454-77ed-45b9-b70d-fc2d9eec98fd",
              "parent_uuid": "e1ab3e95-8743-4e2b-bb0e-2c6b0dbc965c",
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
              "uuid": "3e23c90c-789c-4278-95bc-3f03b3dd80c6",
              "parent_uuid": "e1ab3e95-8743-4e2b-bb0e-2c6b0dbc965c",
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
              "uuid": "66314037-0250-4023-83df-c640b616bb5b",
              "parent_uuid": "e1ab3e95-8743-4e2b-bb0e-2c6b0dbc965c",
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
              "uuid": "ec254697-de60-40b1-9c8f-427183e029d1",
              "parent_uuid": "e1ab3e95-8743-4e2b-bb0e-2c6b0dbc965c",
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
          "uuid": "2f375800-d6a5-4c61-9450-d0b0786f7079",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "afe2445f-ff8d-4f14-ac55-a1a75c191918",
              "parent_uuid": "2f375800-d6a5-4c61-9450-d0b0786f7079",
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
              "uuid": "0c6dacd5-e989-41d0-a9a5-a0cf11e2a190",
              "parent_uuid": "2f375800-d6a5-4c61-9450-d0b0786f7079",
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
              "uuid": "9fe8c4ca-643c-455c-a028-9bc741344559",
              "parent_uuid": "2f375800-d6a5-4c61-9450-d0b0786f7079",
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
              "uuid": "3da7ec89-0183-4dc6-939e-27f37ca175e5",
              "parent_uuid": "2f375800-d6a5-4c61-9450-d0b0786f7079",
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
          "uuid": "5c10b35f-c79d-4ab9-90c7-8ed5eb5eb8ca",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af59adf0-3c57-499e-ae5c-ebff3f083557",
              "parent_uuid": "5c10b35f-c79d-4ab9-90c7-8ed5eb5eb8ca",
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
              "uuid": "f8361ca6-8ac7-4042-9f45-8b0df8a2d7c0",
              "parent_uuid": "5c10b35f-c79d-4ab9-90c7-8ed5eb5eb8ca",
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
              "uuid": "e358594e-ef28-4d54-9490-0f3d626c0a90",
              "parent_uuid": "5c10b35f-c79d-4ab9-90c7-8ed5eb5eb8ca",
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
              "uuid": "4246a752-a4e0-4e3b-8ecb-e41ce2d74b58",
              "parent_uuid": "5c10b35f-c79d-4ab9-90c7-8ed5eb5eb8ca",
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
              "uuid": "c6622d4d-7109-4072-8329-15b11b123fcb",
              "parent_uuid": "5c10b35f-c79d-4ab9-90c7-8ed5eb5eb8ca",
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
              "uuid": "3da6ac7f-c7e0-4520-b96c-20d5d1757439",
              "parent_uuid": "5c10b35f-c79d-4ab9-90c7-8ed5eb5eb8ca",
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
          "uuid": "c28671fe-ee4a-4fe0-b5e1-548e0af43a74",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "fceab706-90dd-44f5-ad09-e7ddf2add920",
              "parent_uuid": "c28671fe-ee4a-4fe0-b5e1-548e0af43a74",
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
          "uuid": "fc609bae-49cf-40af-a0c5-9d0d91f04086",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c96c90e5-01ac-40c2-8fc6-2f1f306f2234",
              "parent_uuid": "fc609bae-49cf-40af-a0c5-9d0d91f04086",
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
              "uuid": "0859bd9a-714f-4849-a571-1c519922d50e",
              "parent_uuid": "fc609bae-49cf-40af-a0c5-9d0d91f04086",
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
              "uuid": "e0500959-5de4-46d9-8e96-c6e2a2c34794",
              "parent_uuid": "fc609bae-49cf-40af-a0c5-9d0d91f04086",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed78d8dc-7323-4e5d-84e0-f007b94d4b94",
                  "parent_uuid": "e0500959-5de4-46d9-8e96-c6e2a2c34794",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07fd65ef-b4f1-427d-849e-5bcbc933955d",
              "parent_uuid": "fc609bae-49cf-40af-a0c5-9d0d91f04086",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1dbf210-9166-41ee-bc73-3898bfe64b87",
                  "parent_uuid": "07fd65ef-b4f1-427d-849e-5bcbc933955d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85ed8b05-8b72-453d-9fa4-9667b91b6678",
              "parent_uuid": "fc609bae-49cf-40af-a0c5-9d0d91f04086",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53f1ce72-0c3f-4921-8aec-3c1708641564",
                  "parent_uuid": "85ed8b05-8b72-453d-9fa4-9667b91b6678",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bdbc09a-24ea-4e43-8bea-411e43187b7b",
              "parent_uuid": "fc609bae-49cf-40af-a0c5-9d0d91f04086",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52581568-819a-4105-a7ae-40604269c7c0",
                  "parent_uuid": "4bdbc09a-24ea-4e43-8bea-411e43187b7b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86a8e6fa-706c-4eee-9d85-f52ffd557777",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d41fbfd-a2dd-421f-9e0b-f34120fb44dc",
              "parent_uuid": "86a8e6fa-706c-4eee-9d85-f52ffd557777",
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
              "uuid": "3f930806-8ed1-4ad2-9c1e-3ae197a2833a",
              "parent_uuid": "86a8e6fa-706c-4eee-9d85-f52ffd557777",
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
              "uuid": "a9f87226-5e25-4320-b658-15e99d5cfa73",
              "parent_uuid": "86a8e6fa-706c-4eee-9d85-f52ffd557777",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9466e1f1-7112-4a71-a40b-9c4af2b65ded",
                  "parent_uuid": "a9f87226-5e25-4320-b658-15e99d5cfa73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7733efe2-b4b3-4bb5-bc87-54bb3bf14685",
              "parent_uuid": "86a8e6fa-706c-4eee-9d85-f52ffd557777",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a7f4952-1e25-4b29-b793-9dc123a65df0",
                  "parent_uuid": "7733efe2-b4b3-4bb5-bc87-54bb3bf14685",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f027cfc7-3cc7-4186-b866-3ef1111afcbd",
              "parent_uuid": "86a8e6fa-706c-4eee-9d85-f52ffd557777",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "180f2fdd-a625-45cc-b3f8-41a9f4d9b6ad",
                  "parent_uuid": "f027cfc7-3cc7-4186-b866-3ef1111afcbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "594e75f4-e561-4502-823a-9d47bdb31c76",
              "parent_uuid": "86a8e6fa-706c-4eee-9d85-f52ffd557777",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f46f9e0-d3de-44c4-9c5e-460b0053117c",
                  "parent_uuid": "594e75f4-e561-4502-823a-9d47bdb31c76",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "055a48f2-8501-4bb0-80bd-ac559f0d4c2d",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f05228d-bb63-48d2-ab75-00c3a6e71c5c",
              "parent_uuid": "055a48f2-8501-4bb0-80bd-ac559f0d4c2d",
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
              "uuid": "f313cc4f-88b2-4e62-b568-271f8d11fbb4",
              "parent_uuid": "055a48f2-8501-4bb0-80bd-ac559f0d4c2d",
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
              "uuid": "bc393d8d-3a74-43b3-b0fa-7737d9c5fa78",
              "parent_uuid": "055a48f2-8501-4bb0-80bd-ac559f0d4c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41c74252-7757-4b85-adfe-b36fe1cdfcc4",
                  "parent_uuid": "bc393d8d-3a74-43b3-b0fa-7737d9c5fa78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "677a7628-1f21-4aab-8a96-c8966972d0c5",
              "parent_uuid": "055a48f2-8501-4bb0-80bd-ac559f0d4c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d06145f-0054-4449-aa53-630bac15e44a",
                  "parent_uuid": "677a7628-1f21-4aab-8a96-c8966972d0c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59c79e99-a659-43ad-b87d-ca0a9c0dc6f6",
              "parent_uuid": "055a48f2-8501-4bb0-80bd-ac559f0d4c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef5b9a2c-7e47-4014-bce8-070099d1891a",
                  "parent_uuid": "59c79e99-a659-43ad-b87d-ca0a9c0dc6f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2520c901-5584-4540-a790-00bb015f79bb",
              "parent_uuid": "055a48f2-8501-4bb0-80bd-ac559f0d4c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8137c40-3e3f-4d04-990e-d8d9ce31f909",
                  "parent_uuid": "2520c901-5584-4540-a790-00bb015f79bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b7165b8-ed5e-4fa2-919b-1d874176ec23",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fecc4d6f-854a-4e7d-b29d-42365a8bc2dd",
              "parent_uuid": "0b7165b8-ed5e-4fa2-919b-1d874176ec23",
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
              "uuid": "5c178769-98e2-46f4-be09-297a01833384",
              "parent_uuid": "0b7165b8-ed5e-4fa2-919b-1d874176ec23",
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
              "uuid": "91c5b98a-bd43-4dda-af5c-aef262b19284",
              "parent_uuid": "0b7165b8-ed5e-4fa2-919b-1d874176ec23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13b1ba80-8e43-47dd-aa6e-998f1a70933c",
                  "parent_uuid": "91c5b98a-bd43-4dda-af5c-aef262b19284",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd78cb19-6025-43ee-a785-84fda14dcada",
              "parent_uuid": "0b7165b8-ed5e-4fa2-919b-1d874176ec23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0216067-e26e-4858-87a5-6e598b8437b9",
                  "parent_uuid": "bd78cb19-6025-43ee-a785-84fda14dcada",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c68873c3-0de3-4502-8e9a-740ee5441f88",
              "parent_uuid": "0b7165b8-ed5e-4fa2-919b-1d874176ec23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05d8ef03-858f-4d3f-87fd-dbd4f8e737e2",
                  "parent_uuid": "c68873c3-0de3-4502-8e9a-740ee5441f88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33b08f35-1843-4ba5-b5d7-97db5cd31fea",
              "parent_uuid": "0b7165b8-ed5e-4fa2-919b-1d874176ec23",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa9f53d7-2516-4c91-ba84-6ba4c8b639fd",
                  "parent_uuid": "33b08f35-1843-4ba5-b5d7-97db5cd31fea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5de569f-c300-43b7-b9f9-710214da9a46",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "82afe8c3-1129-43ae-ba1c-192b76243e7e",
              "parent_uuid": "c5de569f-c300-43b7-b9f9-710214da9a46",
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
          "uuid": "e2b6ed79-f4b9-459d-a7f4-4721f902a79d",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8aaa4788-ad41-4515-8c38-09f4f03d4830",
              "parent_uuid": "e2b6ed79-f4b9-459d-a7f4-4721f902a79d",
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
              "uuid": "402d5dee-8686-4a89-813d-6832e4d676e4",
              "parent_uuid": "e2b6ed79-f4b9-459d-a7f4-4721f902a79d",
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
              "uuid": "20c7f265-1ddd-49ce-991a-1a41511595e1",
              "parent_uuid": "e2b6ed79-f4b9-459d-a7f4-4721f902a79d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "598128a1-1cd6-49a0-b749-e41ee2c361c0",
                  "parent_uuid": "20c7f265-1ddd-49ce-991a-1a41511595e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66477e23-f630-4a0c-9d46-272e365b3c5b",
              "parent_uuid": "e2b6ed79-f4b9-459d-a7f4-4721f902a79d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6db2fc08-5207-4729-b6ab-6a7d7b056091",
                  "parent_uuid": "66477e23-f630-4a0c-9d46-272e365b3c5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a70d316-7ec9-4053-af47-22a13dff8aeb",
              "parent_uuid": "e2b6ed79-f4b9-459d-a7f4-4721f902a79d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f72c69e2-ba68-4a0b-b024-aed484385a56",
                  "parent_uuid": "6a70d316-7ec9-4053-af47-22a13dff8aeb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f1e62da-0bbb-402b-b68e-1f3b56eaac30",
              "parent_uuid": "e2b6ed79-f4b9-459d-a7f4-4721f902a79d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f499213a-67ff-49d2-9c0b-550e150ad6e4",
                  "parent_uuid": "7f1e62da-0bbb-402b-b68e-1f3b56eaac30",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b4ae6abc-872d-4ada-b039-e2d17e8f8705",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21468536-18be-4d90-bcec-540bfe44c219",
              "parent_uuid": "b4ae6abc-872d-4ada-b039-e2d17e8f8705",
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
              "uuid": "21e198ce-4152-4383-aad8-f3e9b25088da",
              "parent_uuid": "b4ae6abc-872d-4ada-b039-e2d17e8f8705",
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
              "uuid": "70e813bd-0a92-4b2d-bc70-488982d51e0d",
              "parent_uuid": "b4ae6abc-872d-4ada-b039-e2d17e8f8705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6317a8d-a360-4393-acaa-ee8ba8b26f88",
                  "parent_uuid": "70e813bd-0a92-4b2d-bc70-488982d51e0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5157e31f-f380-49c9-a79c-5a73cc81eec4",
              "parent_uuid": "b4ae6abc-872d-4ada-b039-e2d17e8f8705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50d6a1ef-f9cc-414a-9f86-6492674dcdde",
                  "parent_uuid": "5157e31f-f380-49c9-a79c-5a73cc81eec4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e4a4306-0057-4f9e-9e06-e15942f77541",
              "parent_uuid": "b4ae6abc-872d-4ada-b039-e2d17e8f8705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee9d0549-48e9-4d2b-b2c6-9ef716b0c4f1",
                  "parent_uuid": "0e4a4306-0057-4f9e-9e06-e15942f77541",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc882d1d-0ae0-4b7f-ae2c-195f618afefc",
              "parent_uuid": "b4ae6abc-872d-4ada-b039-e2d17e8f8705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adbba07d-7c6c-4695-b372-8cdc21ac1cd5",
                  "parent_uuid": "dc882d1d-0ae0-4b7f-ae2c-195f618afefc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a054e37b-bd18-4756-8eee-51452ec5ab11",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c28c9484-4384-4a0e-b3fa-aafc00440377",
              "parent_uuid": "a054e37b-bd18-4756-8eee-51452ec5ab11",
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
              "uuid": "6dc98d9c-2622-493f-ad50-42488a9e7337",
              "parent_uuid": "a054e37b-bd18-4756-8eee-51452ec5ab11",
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
              "uuid": "0592d2f2-d83d-48cc-8419-c9badcf1da10",
              "parent_uuid": "a054e37b-bd18-4756-8eee-51452ec5ab11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f95e60e5-3ab3-4a51-acd7-4e35aa121b16",
                  "parent_uuid": "0592d2f2-d83d-48cc-8419-c9badcf1da10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f176ea8b-1169-417d-8cdf-0b213eb55985",
              "parent_uuid": "a054e37b-bd18-4756-8eee-51452ec5ab11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "603ea830-a2a5-4c66-be1a-9fa38734dc6d",
                  "parent_uuid": "f176ea8b-1169-417d-8cdf-0b213eb55985",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8736becc-ca15-44e1-af07-e43c68070154",
              "parent_uuid": "a054e37b-bd18-4756-8eee-51452ec5ab11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "826e6efa-0902-4dc2-9bb9-c0084b9fea57",
                  "parent_uuid": "8736becc-ca15-44e1-af07-e43c68070154",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f12cd0f9-c9df-4413-aad2-53645ea7d409",
              "parent_uuid": "a054e37b-bd18-4756-8eee-51452ec5ab11",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91c3a66c-cbfd-4591-89a2-4f7fb63cd30b",
                  "parent_uuid": "f12cd0f9-c9df-4413-aad2-53645ea7d409",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "019e108a-b49d-4e4d-b01b-61b3a1928156",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d20aa329-189d-49b8-a329-74a90ea8342d",
              "parent_uuid": "019e108a-b49d-4e4d-b01b-61b3a1928156",
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
              "uuid": "7a86e07b-84a0-4039-8820-e3e1ad341cf4",
              "parent_uuid": "019e108a-b49d-4e4d-b01b-61b3a1928156",
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
              "uuid": "94a8b20b-b757-4eb8-8720-b80191da876b",
              "parent_uuid": "019e108a-b49d-4e4d-b01b-61b3a1928156",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c8164a3-c247-4a3e-bd5b-af018e82dd6d",
                  "parent_uuid": "94a8b20b-b757-4eb8-8720-b80191da876b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ade3dc0-7fe9-4a28-bd53-7415d186ce81",
              "parent_uuid": "019e108a-b49d-4e4d-b01b-61b3a1928156",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e433354-0365-47f3-ab38-808cb0a9284d",
                  "parent_uuid": "4ade3dc0-7fe9-4a28-bd53-7415d186ce81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3d3debf-9d04-4f73-a210-8071d4d7f7b5",
              "parent_uuid": "019e108a-b49d-4e4d-b01b-61b3a1928156",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55704cff-cafd-4c05-bb9b-7066d6372569",
                  "parent_uuid": "d3d3debf-9d04-4f73-a210-8071d4d7f7b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0904eeea-70fe-4ff8-a7bc-22fb9b2f7018",
              "parent_uuid": "019e108a-b49d-4e4d-b01b-61b3a1928156",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "005c7d50-dbae-4456-a3ca-3132cd79f5e1",
                  "parent_uuid": "0904eeea-70fe-4ff8-a7bc-22fb9b2f7018",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a1b4b237-591e-452b-87be-863bbb6e0388",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07b95811-8a85-4981-888b-4aed65f5bfc6",
              "parent_uuid": "a1b4b237-591e-452b-87be-863bbb6e0388",
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
              "uuid": "031c88d7-08f5-4658-b3f5-b29cc4e6418f",
              "parent_uuid": "a1b4b237-591e-452b-87be-863bbb6e0388",
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
              "uuid": "7c15a320-1c22-46ac-a627-aa9b802bab1d",
              "parent_uuid": "a1b4b237-591e-452b-87be-863bbb6e0388",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96bfabb4-5bf1-4562-9b00-059e42fe7037",
                  "parent_uuid": "7c15a320-1c22-46ac-a627-aa9b802bab1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4ee6e66-6f7b-4afb-8b2f-46af8ecc475b",
              "parent_uuid": "a1b4b237-591e-452b-87be-863bbb6e0388",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87dabefe-71d8-4e59-8671-9040fb4810a9",
                  "parent_uuid": "f4ee6e66-6f7b-4afb-8b2f-46af8ecc475b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c6d16691-06aa-44f0-9de2-f790f6298165",
              "parent_uuid": "a1b4b237-591e-452b-87be-863bbb6e0388",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75c6eccd-eb3c-407d-88a6-b437289c9207",
                  "parent_uuid": "c6d16691-06aa-44f0-9de2-f790f6298165",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46e4692b-2d1d-4910-b068-e0ec27c0c6b0",
              "parent_uuid": "a1b4b237-591e-452b-87be-863bbb6e0388",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b36eb219-285e-47df-b98a-1a528b62de90",
                  "parent_uuid": "46e4692b-2d1d-4910-b068-e0ec27c0c6b0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "52847ee2-15b5-475f-bdd0-deba755569aa",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a5f565f-8b0e-40d7-9325-854c3e7552c5",
              "parent_uuid": "52847ee2-15b5-475f-bdd0-deba755569aa",
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
              "uuid": "822c1b31-687a-44c6-ba3f-a2fc9958dc44",
              "parent_uuid": "52847ee2-15b5-475f-bdd0-deba755569aa",
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
              "uuid": "bb4ac28a-852c-49b5-a2ef-c71fa64cf9a4",
              "parent_uuid": "52847ee2-15b5-475f-bdd0-deba755569aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3ae4a89-047f-42ff-b85d-ba4ace771c48",
                  "parent_uuid": "bb4ac28a-852c-49b5-a2ef-c71fa64cf9a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9af3589-78b7-4250-9573-7e3be56d84c3",
              "parent_uuid": "52847ee2-15b5-475f-bdd0-deba755569aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "599b0362-6bd2-4c64-9409-d347598e8d2e",
                  "parent_uuid": "a9af3589-78b7-4250-9573-7e3be56d84c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b4929e38-b51a-4a87-ad52-c3b8e942bde0",
              "parent_uuid": "52847ee2-15b5-475f-bdd0-deba755569aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cff20105-38ea-4d93-92c3-8c16579d982f",
                  "parent_uuid": "b4929e38-b51a-4a87-ad52-c3b8e942bde0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47b0c87a-4775-4854-adc4-4925509b31ec",
              "parent_uuid": "52847ee2-15b5-475f-bdd0-deba755569aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29c38942-61db-4af5-9a77-d981539cc75d",
                  "parent_uuid": "47b0c87a-4775-4854-adc4-4925509b31ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "225114e9-ebc4-4a9c-b819-8aa674cb1495",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8eacbe2-76a0-44db-b24b-03d7fda96e85",
              "parent_uuid": "225114e9-ebc4-4a9c-b819-8aa674cb1495",
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
              "uuid": "5d7c6d5a-f2e1-444f-a683-217d67925d90",
              "parent_uuid": "225114e9-ebc4-4a9c-b819-8aa674cb1495",
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
              "uuid": "a6728fa7-fe4f-4c9f-bab2-ce6400e197b6",
              "parent_uuid": "225114e9-ebc4-4a9c-b819-8aa674cb1495",
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
                  "uuid": "cb1184c6-28d4-445b-a709-8de7ac50fb8d",
                  "parent_uuid": "a6728fa7-fe4f-4c9f-bab2-ce6400e197b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19623c61-582b-4544-8f26-fd4a5af5c6f9",
              "parent_uuid": "225114e9-ebc4-4a9c-b819-8aa674cb1495",
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
                  "uuid": "a6f5ed9f-7de5-44be-a688-cbf0454f6bc9",
                  "parent_uuid": "19623c61-582b-4544-8f26-fd4a5af5c6f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10b88cdb-de6a-4424-93ec-e87c96f658fb",
              "parent_uuid": "225114e9-ebc4-4a9c-b819-8aa674cb1495",
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
                  "uuid": "b9e3a373-16fc-4730-97cf-c0b99358a9b5",
                  "parent_uuid": "10b88cdb-de6a-4424-93ec-e87c96f658fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01f78a6f-e250-4639-bbc1-0b533b5846f5",
              "parent_uuid": "225114e9-ebc4-4a9c-b819-8aa674cb1495",
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
                  "uuid": "30d0776e-fd62-4e6f-91c7-3e72dc1c1f60",
                  "parent_uuid": "01f78a6f-e250-4639-bbc1-0b533b5846f5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a3ddbb51-bab1-4159-bc40-1b7ae475cf65",
              "parent_uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
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
              "uuid": "7fb65392-ddaf-4359-9ef8-01a29448aab8",
              "parent_uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
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
              "uuid": "ff3beec2-94f9-4397-8118-c2402f3736e6",
              "parent_uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
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
              "uuid": "b1a7b0fe-eba5-4b2d-b4db-9da736461ffd",
              "parent_uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
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
                  "uuid": "3fa7a2d4-827e-4e57-9417-eb38261a25ab",
                  "parent_uuid": "b1a7b0fe-eba5-4b2d-b4db-9da736461ffd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63d0cf54-213f-40b3-a217-99cfe6b21bb9",
              "parent_uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
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
                  "uuid": "1f11bec9-99bb-4325-b71a-fa2abd3b6cc0",
                  "parent_uuid": "63d0cf54-213f-40b3-a217-99cfe6b21bb9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "497bfc76-dd6b-4d7c-b099-ba6d8a20c110",
              "parent_uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
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
                  "uuid": "fd4d95fe-1973-4f97-8033-7296d6e36a27",
                  "parent_uuid": "497bfc76-dd6b-4d7c-b099-ba6d8a20c110",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b6a0743-4815-46ce-9293-08197334efe9",
              "parent_uuid": "04a35cc4-0a1a-4e22-83d2-7a48b5bc52dd",
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
                  "uuid": "d1e58de4-1fd5-468b-be00-d30d094eb060",
                  "parent_uuid": "8b6a0743-4815-46ce-9293-08197334efe9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f692855-a6c5-4b4d-8b72-f1daf5087e3a",
              "parent_uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
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
              "uuid": "2cdca21d-e89c-4c9c-a3b4-17fbcf0c0df0",
              "parent_uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
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
              "uuid": "e74041bb-be41-4b88-aa76-b16ada91454a",
              "parent_uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
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
                  "uuid": "22115c73-1577-4ada-b5b6-bf079b88f8ac",
                  "parent_uuid": "e74041bb-be41-4b88-aa76-b16ada91454a",
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
              "uuid": "4fefb1f0-7d1a-4e45-9306-5fb96931c914",
              "parent_uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
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
                  "uuid": "2e683994-d56c-48f6-b695-78c3f331e722",
                  "parent_uuid": "4fefb1f0-7d1a-4e45-9306-5fb96931c914",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e554bd1-5cfc-4cb3-9cab-59555e35ef2a",
              "parent_uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
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
                  "uuid": "82a3b8d7-2c7c-4160-9230-63213f13bc45",
                  "parent_uuid": "7e554bd1-5cfc-4cb3-9cab-59555e35ef2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9ba5835-c15e-44d1-a4b1-79f9b815aa24",
              "parent_uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
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
                  "uuid": "86a0c5bc-cb44-4a47-91cc-417e0ffec4e5",
                  "parent_uuid": "e9ba5835-c15e-44d1-a4b1-79f9b815aa24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79238991-250c-4bb7-bf6b-3625c53bfea1",
              "parent_uuid": "c337f9c9-582e-4bfa-a32a-5be51fd3e1ca",
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
                  "uuid": "f53ff280-55dc-4363-bd6f-091ac5ccd702",
                  "parent_uuid": "79238991-250c-4bb7-bf6b-3625c53bfea1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fae85c4a-bd5c-4853-b5dc-f09477c24381",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21b79b11-4855-43f8-977d-a65a4c7ff426",
              "parent_uuid": "fae85c4a-bd5c-4853-b5dc-f09477c24381",
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
              "uuid": "2c821946-14e0-4dd8-9407-363ada61d6ac",
              "parent_uuid": "fae85c4a-bd5c-4853-b5dc-f09477c24381",
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
              "uuid": "d80a0257-21a2-47d6-b98d-f7166d2a75b1",
              "parent_uuid": "fae85c4a-bd5c-4853-b5dc-f09477c24381",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d150ee12-0e6f-4ee0-adc6-196d9bb1f376",
                  "parent_uuid": "d80a0257-21a2-47d6-b98d-f7166d2a75b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00d57023-c697-44c7-9eec-30e3211004ab",
              "parent_uuid": "fae85c4a-bd5c-4853-b5dc-f09477c24381",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9643496d-63ad-48f6-8be4-f37dfa7b170c",
                  "parent_uuid": "00d57023-c697-44c7-9eec-30e3211004ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0ede0d9-4493-4aa5-9bc1-260ccc194820",
              "parent_uuid": "fae85c4a-bd5c-4853-b5dc-f09477c24381",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f652be4-9a74-4d7b-ac94-3e7d90ab232f",
                  "parent_uuid": "e0ede0d9-4493-4aa5-9bc1-260ccc194820",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa823598-4a5f-4861-a1c0-823aa37ac912",
              "parent_uuid": "fae85c4a-bd5c-4853-b5dc-f09477c24381",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12fc01f1-ef2c-4b73-89ee-fd385f48f01c",
                  "parent_uuid": "fa823598-4a5f-4861-a1c0-823aa37ac912",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cf5e1f1c-b43a-46af-a137-44819990460d",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "476a4958-0cde-4c80-aedb-d343f8d9a53a",
              "parent_uuid": "cf5e1f1c-b43a-46af-a137-44819990460d",
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
              "uuid": "54f1c276-7213-424e-a000-b45b5968ef80",
              "parent_uuid": "cf5e1f1c-b43a-46af-a137-44819990460d",
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
              "uuid": "95e9eb80-cbcf-4d50-b581-16747bc376d1",
              "parent_uuid": "cf5e1f1c-b43a-46af-a137-44819990460d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "256b77a7-514f-4e5c-be58-c39fd52d1bd1",
                  "parent_uuid": "95e9eb80-cbcf-4d50-b581-16747bc376d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c8df5bf-c9c5-4988-a734-144d00cfef02",
              "parent_uuid": "cf5e1f1c-b43a-46af-a137-44819990460d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1c194ea-755c-4d19-a660-2972feacd502",
                  "parent_uuid": "8c8df5bf-c9c5-4988-a734-144d00cfef02",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3451195a-0c7c-4c0f-bf55-39d112c0df4b",
              "parent_uuid": "cf5e1f1c-b43a-46af-a137-44819990460d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b63ea44f-a113-46e2-b607-2dbd30d7f53b",
                  "parent_uuid": "3451195a-0c7c-4c0f-bf55-39d112c0df4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a45c2ed1-f80a-4068-8571-d3ad5c18e024",
              "parent_uuid": "cf5e1f1c-b43a-46af-a137-44819990460d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1935e687-64cf-4386-b816-59b8311e30de",
                  "parent_uuid": "a45c2ed1-f80a-4068-8571-d3ad5c18e024",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "991673b9-3627-4d3d-a715-67f6bd08713a",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63191049-6a0f-4246-97d6-708235480125",
              "parent_uuid": "991673b9-3627-4d3d-a715-67f6bd08713a",
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
              "uuid": "2002571a-d034-4da2-af42-2f7a6c9e8c0b",
              "parent_uuid": "991673b9-3627-4d3d-a715-67f6bd08713a",
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
              "uuid": "da9562c6-68d6-4850-bd5e-58ce0729a8cd",
              "parent_uuid": "991673b9-3627-4d3d-a715-67f6bd08713a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5011e8cf-c273-4d0b-a156-d424b2857b84",
                  "parent_uuid": "da9562c6-68d6-4850-bd5e-58ce0729a8cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d9326e8-283c-475e-81e1-6aa7bf166d45",
              "parent_uuid": "991673b9-3627-4d3d-a715-67f6bd08713a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4359df9-dd20-45ad-a872-95dbded576f6",
                  "parent_uuid": "3d9326e8-283c-475e-81e1-6aa7bf166d45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "411af959-318b-481d-ab59-f631638c36e3",
              "parent_uuid": "991673b9-3627-4d3d-a715-67f6bd08713a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c63703ab-b232-46cf-aabe-9dd78b11aeb7",
                  "parent_uuid": "411af959-318b-481d-ab59-f631638c36e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2269e623-e823-43a5-a305-e0fd02cad146",
              "parent_uuid": "991673b9-3627-4d3d-a715-67f6bd08713a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "006d4aa5-1d54-4696-bfe8-6fa4035bcd71",
                  "parent_uuid": "2269e623-e823-43a5-a305-e0fd02cad146",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "88b64e7e-4990-472c-aedc-8005c4c11805",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "417585c1-85a3-4476-858a-512b1f5d97e9",
              "parent_uuid": "88b64e7e-4990-472c-aedc-8005c4c11805",
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
              "uuid": "7356ac0d-8659-4fe6-a982-75945a37aa77",
              "parent_uuid": "88b64e7e-4990-472c-aedc-8005c4c11805",
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
              "uuid": "6763f31f-8ab8-45df-bec7-a1ab10f7ff11",
              "parent_uuid": "88b64e7e-4990-472c-aedc-8005c4c11805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c16445e9-5635-4765-b83a-967827eca067",
                  "parent_uuid": "6763f31f-8ab8-45df-bec7-a1ab10f7ff11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9f3b537-d1c1-41f3-b434-a8ddb38f791e",
              "parent_uuid": "88b64e7e-4990-472c-aedc-8005c4c11805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "349ad9c1-b9bc-43c3-bb8f-0097d12dbb98",
                  "parent_uuid": "e9f3b537-d1c1-41f3-b434-a8ddb38f791e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7479f630-1531-4336-bb5b-fdb749779c75",
              "parent_uuid": "88b64e7e-4990-472c-aedc-8005c4c11805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e62671f7-74fe-4a04-acdd-5a0a83539186",
                  "parent_uuid": "7479f630-1531-4336-bb5b-fdb749779c75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20e7973f-38f3-49b3-bdf7-ef57fe9ac827",
              "parent_uuid": "88b64e7e-4990-472c-aedc-8005c4c11805",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dba3f55-0bda-4d67-b038-0ff31d5b6ff8",
                  "parent_uuid": "20e7973f-38f3-49b3-bdf7-ef57fe9ac827",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a98f303-23bf-43ce-a2af-79526d9f02a5",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3159e512-09e6-426e-b5f8-dccd11eb7258",
              "parent_uuid": "8a98f303-23bf-43ce-a2af-79526d9f02a5",
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
          "uuid": "2a639e48-08b1-4b2a-8e0f-9d1014e0a01e",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0506aed2-c9fe-4e49-8db9-7b86f2134024",
              "parent_uuid": "2a639e48-08b1-4b2a-8e0f-9d1014e0a01e",
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
              "uuid": "ad2f6b96-e03a-4abc-82c0-61f50d88e296",
              "parent_uuid": "2a639e48-08b1-4b2a-8e0f-9d1014e0a01e",
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
              "uuid": "e004c88a-bd0b-4a37-a4c5-9c05bf2851da",
              "parent_uuid": "2a639e48-08b1-4b2a-8e0f-9d1014e0a01e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f39919a-6cc5-4af7-98e5-110bfae0cf0a",
                  "parent_uuid": "e004c88a-bd0b-4a37-a4c5-9c05bf2851da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e87c2215-66f3-4c09-be5f-379462ab31d0",
              "parent_uuid": "2a639e48-08b1-4b2a-8e0f-9d1014e0a01e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea6e8434-07c9-4e24-9e37-e87dd76f0ff3",
                  "parent_uuid": "e87c2215-66f3-4c09-be5f-379462ab31d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71d54eea-2211-443e-9070-3e43c90451b4",
              "parent_uuid": "2a639e48-08b1-4b2a-8e0f-9d1014e0a01e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "992293af-b4d1-471d-8511-886635306644",
                  "parent_uuid": "71d54eea-2211-443e-9070-3e43c90451b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03f2806f-0ee5-4f0f-90cd-25968e45e783",
              "parent_uuid": "2a639e48-08b1-4b2a-8e0f-9d1014e0a01e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d41390d-1006-4304-a996-0c71482b8926",
                  "parent_uuid": "03f2806f-0ee5-4f0f-90cd-25968e45e783",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9db81826-ee51-4537-92d1-6870ebcca133",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02bba277-af67-4a7e-96c5-0e4575e02017",
              "parent_uuid": "9db81826-ee51-4537-92d1-6870ebcca133",
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
              "uuid": "aef86e2b-6be0-4e51-a2dc-8be15ec91ade",
              "parent_uuid": "9db81826-ee51-4537-92d1-6870ebcca133",
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
              "uuid": "2d1d8cd7-c6bd-4b57-a7cd-cddc10038b68",
              "parent_uuid": "9db81826-ee51-4537-92d1-6870ebcca133",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d2f9580-e3dc-47d9-adf3-b068c902f287",
                  "parent_uuid": "2d1d8cd7-c6bd-4b57-a7cd-cddc10038b68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff07e62a-3fd7-46e3-a756-4d573ffcca94",
              "parent_uuid": "9db81826-ee51-4537-92d1-6870ebcca133",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e07afdd9-a399-4a8a-969e-6d75ad1bcebb",
                  "parent_uuid": "ff07e62a-3fd7-46e3-a756-4d573ffcca94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31ea3461-b3a9-4f62-9ddc-96eeec548fc7",
              "parent_uuid": "9db81826-ee51-4537-92d1-6870ebcca133",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ce66cba-696c-4c8d-9b22-9ae20a86a284",
                  "parent_uuid": "31ea3461-b3a9-4f62-9ddc-96eeec548fc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "434d4385-3d53-4388-9905-d80f02cd479f",
              "parent_uuid": "9db81826-ee51-4537-92d1-6870ebcca133",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56373485-9af9-4793-9718-5d7bab69af0c",
                  "parent_uuid": "434d4385-3d53-4388-9905-d80f02cd479f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "268d628e-c19d-473c-80f6-02109f1d6a1e",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a56e5cd0-bf41-45de-a3cc-e74a20608020",
              "parent_uuid": "268d628e-c19d-473c-80f6-02109f1d6a1e",
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
              "uuid": "ca289ddd-9216-4861-886e-4ca7c9e59511",
              "parent_uuid": "268d628e-c19d-473c-80f6-02109f1d6a1e",
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
              "uuid": "914ac8f1-014d-4bc9-9e34-7ac2ebf64b9b",
              "parent_uuid": "268d628e-c19d-473c-80f6-02109f1d6a1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52abc0e9-6ba2-410d-b9b6-f50811f5044d",
                  "parent_uuid": "914ac8f1-014d-4bc9-9e34-7ac2ebf64b9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f023168-bfe8-4f3a-9e59-60abb5fe6c61",
              "parent_uuid": "268d628e-c19d-473c-80f6-02109f1d6a1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c104ccd-fedc-4807-9839-2fa89076fc8d",
                  "parent_uuid": "7f023168-bfe8-4f3a-9e59-60abb5fe6c61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72290d50-f32d-4b15-a78b-48f190f619dd",
              "parent_uuid": "268d628e-c19d-473c-80f6-02109f1d6a1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6524747-dea6-42a0-85bf-841bd53b8553",
                  "parent_uuid": "72290d50-f32d-4b15-a78b-48f190f619dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1597a69d-1883-432a-a355-e34047904841",
              "parent_uuid": "268d628e-c19d-473c-80f6-02109f1d6a1e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8eb1c8c-7700-479d-bfe2-dfe1471427a2",
                  "parent_uuid": "1597a69d-1883-432a-a355-e34047904841",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14942765-07cb-4276-b639-5ab5e61a7bd7",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65b5ac7a-cce4-4895-baf8-62c3944bccd6",
              "parent_uuid": "14942765-07cb-4276-b639-5ab5e61a7bd7",
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
              "uuid": "e4c1e103-bf5e-4f19-a9d5-0cac58e8a298",
              "parent_uuid": "14942765-07cb-4276-b639-5ab5e61a7bd7",
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
              "uuid": "01208e2c-762a-42e0-8504-6711f0eb8150",
              "parent_uuid": "14942765-07cb-4276-b639-5ab5e61a7bd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfb6b5d7-82d3-4284-aadd-6e5f111764e9",
                  "parent_uuid": "01208e2c-762a-42e0-8504-6711f0eb8150",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6692359-3d3a-4210-b0f3-38c708d97b2d",
              "parent_uuid": "14942765-07cb-4276-b639-5ab5e61a7bd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5bb7092-f9c0-4674-95b1-d40f4df9408d",
                  "parent_uuid": "f6692359-3d3a-4210-b0f3-38c708d97b2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6abeedec-7a9f-4048-8c12-70444496f4c6",
              "parent_uuid": "14942765-07cb-4276-b639-5ab5e61a7bd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0aec2e0-d83c-4ce1-a5b5-c36b79b2b56f",
                  "parent_uuid": "6abeedec-7a9f-4048-8c12-70444496f4c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "660e0466-d4ea-4204-8de1-681c3ba7cbc7",
              "parent_uuid": "14942765-07cb-4276-b639-5ab5e61a7bd7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24f03be6-7820-45dc-aa66-1c9bb1472ee3",
                  "parent_uuid": "660e0466-d4ea-4204-8de1-681c3ba7cbc7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "91d2d536-713e-446b-9639-c41284c94894",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9158c7a5-e178-4460-9804-26147c685b1f",
              "parent_uuid": "91d2d536-713e-446b-9639-c41284c94894",
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
              "uuid": "7e1a841d-6093-4242-bae5-cff84a839faa",
              "parent_uuid": "91d2d536-713e-446b-9639-c41284c94894",
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
              "uuid": "ba613b23-9f47-4c1b-8d94-098a331b8e47",
              "parent_uuid": "91d2d536-713e-446b-9639-c41284c94894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18a09915-6bf9-42ca-82c5-ccabcdf8bcf8",
                  "parent_uuid": "ba613b23-9f47-4c1b-8d94-098a331b8e47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01c23a7c-ab28-4c70-9e3f-bd52ba5550f7",
              "parent_uuid": "91d2d536-713e-446b-9639-c41284c94894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a56ca2c-4858-4ee8-a0b3-ec951bfc2308",
                  "parent_uuid": "01c23a7c-ab28-4c70-9e3f-bd52ba5550f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d8a15fd-32d0-48b7-a0a8-d1c2f6379a42",
              "parent_uuid": "91d2d536-713e-446b-9639-c41284c94894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a52d6506-b1ad-437e-a7fc-255deb5428b7",
                  "parent_uuid": "7d8a15fd-32d0-48b7-a0a8-d1c2f6379a42",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c078aad-d836-46db-802b-933bd6d64f77",
              "parent_uuid": "91d2d536-713e-446b-9639-c41284c94894",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0e32622-7329-4642-ae11-5857cd10f097",
                  "parent_uuid": "7c078aad-d836-46db-802b-933bd6d64f77",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d63cbd4d-a799-4314-ae6f-99f1ab06800e",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74d6d501-f822-4c9a-8ba5-a76e749a8f93",
              "parent_uuid": "d63cbd4d-a799-4314-ae6f-99f1ab06800e",
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
          "uuid": "ca5e0bd4-06c9-43d5-a7d1-02c92d594b53",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "82409dc8-82e4-4552-b44b-0dcf336f03af",
              "parent_uuid": "ca5e0bd4-06c9-43d5-a7d1-02c92d594b53",
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
          "uuid": "ffe1dcbd-ee7d-43dc-bbb4-3d3b000bc3a4",
          "parent_uuid": "577a4b7a-d5b8-4815-adde-c9254c8fa1ee",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9d743634-077b-41af-a0ee-5111766a1e10",
              "parent_uuid": "ffe1dcbd-ee7d-43dc-bbb4-3d3b000bc3a4",
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
                  "uuid": "798d1d40-d62f-4d01-95d8-cd22d47531db",
                  "parent_uuid": "9d743634-077b-41af-a0ee-5111766a1e10",
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

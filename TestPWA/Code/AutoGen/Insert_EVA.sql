
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
  "uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "bf5cd695-238b-4eb3-9c7f-04ac2ea35b3b",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "7d05b6a1-6011-40ca-8cd8-47880433571b",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "ddf9e1ba-1c31-4ef2-a362-703398df2d53",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "cbe33a0d-5dd5-4025-a512-40654a4aa173",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "4d97b8fc-8669-4fb6-ba5d-481d10a6ae83",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "f1d2245b-69e9-4c67-a090-6b3afb80ea10",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "1d8e8889-7e21-4cd5-9638-f9c27b8687a7",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
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
      "uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
      "parent_uuid": "7c1be86b-3e66-43c6-9755-7318d35792b5",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "813e9d40-10f7-4eda-b613-dc3f69b36559",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "fd5fc50e-61ec-44c6-b711-a4b1b0f9765c",
              "parent_uuid": "813e9d40-10f7-4eda-b613-dc3f69b36559",
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
              "uuid": "71158ec9-2ae6-4e49-96f3-259ff60402ad",
              "parent_uuid": "813e9d40-10f7-4eda-b613-dc3f69b36559",
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
              "uuid": "569899a6-1d01-4f37-a565-78972b06d16f",
              "parent_uuid": "813e9d40-10f7-4eda-b613-dc3f69b36559",
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
              "uuid": "32fc0cea-5816-4093-ba09-8a8fee302f86",
              "parent_uuid": "813e9d40-10f7-4eda-b613-dc3f69b36559",
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
          "uuid": "81666d25-073e-40b8-b0e5-873993c6d2ff",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "9c1d9145-a7dd-4a94-85ec-ad114cc9e0c7",
              "parent_uuid": "81666d25-073e-40b8-b0e5-873993c6d2ff",
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
              "uuid": "c1a70546-ba1f-44bc-80a9-ea47000cbc8d",
              "parent_uuid": "81666d25-073e-40b8-b0e5-873993c6d2ff",
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
              "uuid": "9a6a3943-3481-410d-bdde-c3b1835898a4",
              "parent_uuid": "81666d25-073e-40b8-b0e5-873993c6d2ff",
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
              "uuid": "c4e49d90-704f-4e2a-844e-7f8a96f853d1",
              "parent_uuid": "81666d25-073e-40b8-b0e5-873993c6d2ff",
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
          "uuid": "d5f50873-6ac6-4b68-9d6d-1c76dc680752",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2f09427-de12-480b-b670-1ace278b1ea1",
              "parent_uuid": "d5f50873-6ac6-4b68-9d6d-1c76dc680752",
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
              "uuid": "204d1a0e-ea7e-42c1-a763-ac0d76882b4c",
              "parent_uuid": "d5f50873-6ac6-4b68-9d6d-1c76dc680752",
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
              "uuid": "ef71361e-5a5f-491c-9654-9379c58a10e1",
              "parent_uuid": "d5f50873-6ac6-4b68-9d6d-1c76dc680752",
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
              "uuid": "172c40a8-b0f4-45e2-ab25-25b6c104c3fb",
              "parent_uuid": "d5f50873-6ac6-4b68-9d6d-1c76dc680752",
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
              "uuid": "702b3693-f23a-49a1-b60e-21da000b095c",
              "parent_uuid": "d5f50873-6ac6-4b68-9d6d-1c76dc680752",
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
              "uuid": "30e66516-0bb5-4698-a759-38688dc8f112",
              "parent_uuid": "d5f50873-6ac6-4b68-9d6d-1c76dc680752",
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
          "uuid": "78b09332-f6dc-4a0c-834f-af64ebea2dbe",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c0229332-5ef5-4a2d-9767-e957bf696dec",
              "parent_uuid": "78b09332-f6dc-4a0c-834f-af64ebea2dbe",
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
          "uuid": "62bc5abe-e974-41d8-8fc1-5c6063a07ebf",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb0949c0-38a6-4ce0-bb1f-61d7f7cdeaef",
              "parent_uuid": "62bc5abe-e974-41d8-8fc1-5c6063a07ebf",
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
              "uuid": "bd690cee-4856-4748-b087-3caa1959c051",
              "parent_uuid": "62bc5abe-e974-41d8-8fc1-5c6063a07ebf",
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
              "uuid": "2d9b747f-3306-49f4-9873-6d70929c5628",
              "parent_uuid": "62bc5abe-e974-41d8-8fc1-5c6063a07ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9ac169b-86a2-48c9-9ed2-b84021a6baf7",
                  "parent_uuid": "2d9b747f-3306-49f4-9873-6d70929c5628",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecc904bb-14c3-4288-9e5b-ab66ca7b4fab",
              "parent_uuid": "62bc5abe-e974-41d8-8fc1-5c6063a07ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90f4a47e-849b-45a9-bcf3-687aeaef840a",
                  "parent_uuid": "ecc904bb-14c3-4288-9e5b-ab66ca7b4fab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab19b756-e65f-4b33-9ddf-567311306aa0",
              "parent_uuid": "62bc5abe-e974-41d8-8fc1-5c6063a07ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "271918ee-ad99-4b63-beaf-467e9c9097b4",
                  "parent_uuid": "ab19b756-e65f-4b33-9ddf-567311306aa0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddf4f3af-a38d-4195-ada4-25a73a009d75",
              "parent_uuid": "62bc5abe-e974-41d8-8fc1-5c6063a07ebf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "040d0dc8-210d-40ac-838f-d1ed5c6522cb",
                  "parent_uuid": "ddf4f3af-a38d-4195-ada4-25a73a009d75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d536c92-a0b7-486f-88d2-24e51807e2e6",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a9f1414f-9a90-440f-82ae-8879effd842a",
              "parent_uuid": "6d536c92-a0b7-486f-88d2-24e51807e2e6",
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
              "uuid": "d2ddbd53-4cdc-45f9-b3be-6021d04d47ec",
              "parent_uuid": "6d536c92-a0b7-486f-88d2-24e51807e2e6",
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
              "uuid": "418cb34a-de6c-430b-926b-222451ff3d94",
              "parent_uuid": "6d536c92-a0b7-486f-88d2-24e51807e2e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e28ac5c-8e5b-4a6c-8997-14116e48d3cc",
                  "parent_uuid": "418cb34a-de6c-430b-926b-222451ff3d94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5939df76-37e8-4ad2-bbf6-0a37a1e1b773",
              "parent_uuid": "6d536c92-a0b7-486f-88d2-24e51807e2e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bbe5b3d9-3eb4-484b-86e0-9fbbf46d23a8",
                  "parent_uuid": "5939df76-37e8-4ad2-bbf6-0a37a1e1b773",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc84c854-2593-4a37-acda-fef51a30b0ad",
              "parent_uuid": "6d536c92-a0b7-486f-88d2-24e51807e2e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f72dc88f-3e93-4c45-a97e-042104ab2545",
                  "parent_uuid": "bc84c854-2593-4a37-acda-fef51a30b0ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27d284ec-02d6-4115-84ae-3b9c551c424a",
              "parent_uuid": "6d536c92-a0b7-486f-88d2-24e51807e2e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3587f8fe-dc09-47e0-8c14-45558839a6f4",
                  "parent_uuid": "27d284ec-02d6-4115-84ae-3b9c551c424a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "24f668ed-7af1-4797-aab0-2f2f578adeee",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4647467f-5253-4098-9f39-cfcd7892a096",
              "parent_uuid": "24f668ed-7af1-4797-aab0-2f2f578adeee",
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
              "uuid": "1f170d35-5578-4c5c-9937-9d6503eb7c3e",
              "parent_uuid": "24f668ed-7af1-4797-aab0-2f2f578adeee",
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
              "uuid": "df8dd06c-1db7-43c2-a87d-872964590b88",
              "parent_uuid": "24f668ed-7af1-4797-aab0-2f2f578adeee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e8771ca-f267-4432-8f2e-539c9f7983a5",
                  "parent_uuid": "df8dd06c-1db7-43c2-a87d-872964590b88",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76fd9adb-7dec-4b16-ab54-10e70ad41599",
              "parent_uuid": "24f668ed-7af1-4797-aab0-2f2f578adeee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "803e4be6-8e40-4295-84e4-f6d359b7b7e8",
                  "parent_uuid": "76fd9adb-7dec-4b16-ab54-10e70ad41599",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a4f29f4-9151-43c0-8283-2ef07c0813de",
              "parent_uuid": "24f668ed-7af1-4797-aab0-2f2f578adeee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbc83083-f461-487a-82c2-5e78aea4a268",
                  "parent_uuid": "3a4f29f4-9151-43c0-8283-2ef07c0813de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7f87776-3e0b-49e4-9ccd-3c8a33cf4589",
              "parent_uuid": "24f668ed-7af1-4797-aab0-2f2f578adeee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8334270-e2c0-414f-93f1-0abce714c240",
                  "parent_uuid": "f7f87776-3e0b-49e4-9ccd-3c8a33cf4589",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a034aabc-5896-4bfe-abeb-b3cf32ff530c",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f9e5040-e662-43ac-998d-5957b5362eaf",
              "parent_uuid": "a034aabc-5896-4bfe-abeb-b3cf32ff530c",
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
              "uuid": "1e141dff-cb97-4bbf-ab95-0eb8c8cbc02f",
              "parent_uuid": "a034aabc-5896-4bfe-abeb-b3cf32ff530c",
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
              "uuid": "c3e58b93-881a-4dce-b6db-06ea474a7d04",
              "parent_uuid": "a034aabc-5896-4bfe-abeb-b3cf32ff530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c997dddb-fa29-4d87-94f7-0136967eb0c3",
                  "parent_uuid": "c3e58b93-881a-4dce-b6db-06ea474a7d04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82a08375-a180-4936-8e58-ecd92ee1ce07",
              "parent_uuid": "a034aabc-5896-4bfe-abeb-b3cf32ff530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0669990e-70de-4fe3-8bad-0642e1e210b9",
                  "parent_uuid": "82a08375-a180-4936-8e58-ecd92ee1ce07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "782a6f55-2f85-4cf7-b3a9-3c543d730e23",
              "parent_uuid": "a034aabc-5896-4bfe-abeb-b3cf32ff530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cc9b9a1-3e44-4c8b-adf9-0aa8936f1e64",
                  "parent_uuid": "782a6f55-2f85-4cf7-b3a9-3c543d730e23",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3ac4a7c-b6e8-49f1-b6ac-d807da566ef5",
              "parent_uuid": "a034aabc-5896-4bfe-abeb-b3cf32ff530c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bad8834-ff8b-4c7a-9296-5c5de19fc38c",
                  "parent_uuid": "d3ac4a7c-b6e8-49f1-b6ac-d807da566ef5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eb7078ca-d5de-411c-bbc2-f9c439550b3d",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6502f797-eee7-41f1-8a0d-a0f230ee55e8",
              "parent_uuid": "eb7078ca-d5de-411c-bbc2-f9c439550b3d",
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
              "uuid": "4771caa1-9d43-42f9-8b09-f2870ad345ee",
              "parent_uuid": "eb7078ca-d5de-411c-bbc2-f9c439550b3d",
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
              "uuid": "d8913b35-752f-43fb-af23-d429c67a7c99",
              "parent_uuid": "eb7078ca-d5de-411c-bbc2-f9c439550b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ebea34de-49fd-445f-a77c-0bb1af1d1d83",
                  "parent_uuid": "d8913b35-752f-43fb-af23-d429c67a7c99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66fe65ba-5c06-4500-8c18-8a51c3f3a4ce",
              "parent_uuid": "eb7078ca-d5de-411c-bbc2-f9c439550b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b9d88a1-f28e-46d6-bacc-e769f136d990",
                  "parent_uuid": "66fe65ba-5c06-4500-8c18-8a51c3f3a4ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7bbacb5-4975-45d5-8fd0-21ccf90dadd2",
              "parent_uuid": "eb7078ca-d5de-411c-bbc2-f9c439550b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab6c1d25-3801-4739-aac4-cb7fde2a7e81",
                  "parent_uuid": "c7bbacb5-4975-45d5-8fd0-21ccf90dadd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b69e763a-004b-4e80-a18b-d52b5168360e",
              "parent_uuid": "eb7078ca-d5de-411c-bbc2-f9c439550b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb288c84-5bff-4ba2-aac8-0da305343338",
                  "parent_uuid": "b69e763a-004b-4e80-a18b-d52b5168360e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b0af162e-5e85-4c5b-b10b-2c5dceb2d2fa",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "45561cf9-2e6e-4071-a9db-abd3c2f0747c",
              "parent_uuid": "b0af162e-5e85-4c5b-b10b-2c5dceb2d2fa",
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
              "uuid": "1d8bb399-9b0a-489e-9e77-e29b7a3a7c3d",
              "parent_uuid": "b0af162e-5e85-4c5b-b10b-2c5dceb2d2fa",
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
              "uuid": "f08e6dca-40f5-4bd2-be90-ddf5472741e2",
              "parent_uuid": "b0af162e-5e85-4c5b-b10b-2c5dceb2d2fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cb59f16-28e6-44e0-957b-947814c6d747",
                  "parent_uuid": "f08e6dca-40f5-4bd2-be90-ddf5472741e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4db8dc78-c5ab-47b2-92a4-e442da22c3c3",
              "parent_uuid": "b0af162e-5e85-4c5b-b10b-2c5dceb2d2fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cd25880-32fc-4376-94ab-86c6bbbcdfea",
                  "parent_uuid": "4db8dc78-c5ab-47b2-92a4-e442da22c3c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78c5e99e-87fe-4ccb-9792-1fa91428cbc9",
              "parent_uuid": "b0af162e-5e85-4c5b-b10b-2c5dceb2d2fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59e31442-1cb7-4d81-a8c0-2de9716d24e2",
                  "parent_uuid": "78c5e99e-87fe-4ccb-9792-1fa91428cbc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec5609a6-c271-4b89-907e-640865e161d5",
              "parent_uuid": "b0af162e-5e85-4c5b-b10b-2c5dceb2d2fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e2e9844-fb83-4af8-bdfe-ae0c82cfb800",
                  "parent_uuid": "ec5609a6-c271-4b89-907e-640865e161d5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "06f61ceb-cc28-48bd-9c46-8f13417f8270",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7ae3948a-c853-49bc-a86d-23d1a16d28d7",
              "parent_uuid": "06f61ceb-cc28-48bd-9c46-8f13417f8270",
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
              "uuid": "ad39739f-eafe-4baf-b775-0a0ef7492b6a",
              "parent_uuid": "06f61ceb-cc28-48bd-9c46-8f13417f8270",
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
              "uuid": "c0923a63-3641-423d-ad6a-64abeb70e1b2",
              "parent_uuid": "06f61ceb-cc28-48bd-9c46-8f13417f8270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0a04ced-3663-4a18-9ea0-ba9031c45b24",
                  "parent_uuid": "c0923a63-3641-423d-ad6a-64abeb70e1b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9e20d93-4cf9-4fd4-82e9-3d97859812c5",
              "parent_uuid": "06f61ceb-cc28-48bd-9c46-8f13417f8270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ef01dad-b6b6-4af3-bb0b-a809eaa7ccdd",
                  "parent_uuid": "b9e20d93-4cf9-4fd4-82e9-3d97859812c5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de443b73-2d74-4c18-9ed3-e4a2db942d81",
              "parent_uuid": "06f61ceb-cc28-48bd-9c46-8f13417f8270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f8f53ac-17e0-4dc1-a048-2b06181033e9",
                  "parent_uuid": "de443b73-2d74-4c18-9ed3-e4a2db942d81",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f2dfc6e-bcd8-4175-8aff-f4872eb78951",
              "parent_uuid": "06f61ceb-cc28-48bd-9c46-8f13417f8270",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7089f41f-6cd1-45fd-8555-4a10b7deaaa4",
                  "parent_uuid": "0f2dfc6e-bcd8-4175-8aff-f4872eb78951",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5e30f0a-646c-4887-8781-6380f7a75d5d",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "277834dd-97ca-46e0-84e7-54191088ff3b",
              "parent_uuid": "c5e30f0a-646c-4887-8781-6380f7a75d5d",
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
              "uuid": "8cac0f79-043e-44df-9b08-51e881a1713d",
              "parent_uuid": "c5e30f0a-646c-4887-8781-6380f7a75d5d",
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
              "uuid": "305a9e0d-7919-465d-8cd3-648713de4945",
              "parent_uuid": "c5e30f0a-646c-4887-8781-6380f7a75d5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b3059fb-3b53-4b2e-851c-4dff75775a95",
                  "parent_uuid": "305a9e0d-7919-465d-8cd3-648713de4945",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d28b0eb7-0267-44fd-bb19-11b510ba6bbc",
              "parent_uuid": "c5e30f0a-646c-4887-8781-6380f7a75d5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a89eb677-7e1b-4e3f-829e-0713ced7f301",
                  "parent_uuid": "d28b0eb7-0267-44fd-bb19-11b510ba6bbc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af192770-297c-49ae-813f-92b231b58878",
              "parent_uuid": "c5e30f0a-646c-4887-8781-6380f7a75d5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ccc42b5-87be-4025-8039-0e0f923e2632",
                  "parent_uuid": "af192770-297c-49ae-813f-92b231b58878",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4fd2eb4-12f5-4f2e-809b-130aa943e7cd",
              "parent_uuid": "c5e30f0a-646c-4887-8781-6380f7a75d5d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c18fce99-a03f-4b86-a3c8-ba499497ee8a",
                  "parent_uuid": "f4fd2eb4-12f5-4f2e-809b-130aa943e7cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "803db092-7ca7-45f0-8dd5-7faba64aa1c5",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0f8ff29-cdaa-451e-928f-7c3e8f61c7d8",
              "parent_uuid": "803db092-7ca7-45f0-8dd5-7faba64aa1c5",
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
              "uuid": "5640c63d-d0ee-4e92-a1ca-eb7a26863ace",
              "parent_uuid": "803db092-7ca7-45f0-8dd5-7faba64aa1c5",
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
              "uuid": "4beef891-288e-47b4-92d6-d13ba8fabe32",
              "parent_uuid": "803db092-7ca7-45f0-8dd5-7faba64aa1c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "317ac39e-953c-44d5-8936-c84f45807ce1",
                  "parent_uuid": "4beef891-288e-47b4-92d6-d13ba8fabe32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0008a08e-e38b-4185-88d2-a663e2b4e578",
              "parent_uuid": "803db092-7ca7-45f0-8dd5-7faba64aa1c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c5c6e56-e516-41a3-902d-ea77283f5246",
                  "parent_uuid": "0008a08e-e38b-4185-88d2-a663e2b4e578",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "beab8932-cf9b-4b71-84bb-e066a0226840",
              "parent_uuid": "803db092-7ca7-45f0-8dd5-7faba64aa1c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "564a83a5-cbe1-4784-a30a-d5c93c1c2f90",
                  "parent_uuid": "beab8932-cf9b-4b71-84bb-e066a0226840",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1549366-3574-49c1-b9f5-31e034ccfcb5",
              "parent_uuid": "803db092-7ca7-45f0-8dd5-7faba64aa1c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36b344e8-fd57-4e2a-8d9b-32c6d4d656db",
                  "parent_uuid": "a1549366-3574-49c1-b9f5-31e034ccfcb5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8291baca-b3a8-48ff-bde2-21ecb9eec5e0",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b0fff1e-c7b0-4f42-a2a8-ff089ef5c678",
              "parent_uuid": "8291baca-b3a8-48ff-bde2-21ecb9eec5e0",
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
              "uuid": "03eb7a1e-605e-40df-9433-d248287a441a",
              "parent_uuid": "8291baca-b3a8-48ff-bde2-21ecb9eec5e0",
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
              "uuid": "6072ba33-5353-4cfc-ad0e-f19052e21b66",
              "parent_uuid": "8291baca-b3a8-48ff-bde2-21ecb9eec5e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9e5e358-129f-4858-900a-63db4b272ef6",
                  "parent_uuid": "6072ba33-5353-4cfc-ad0e-f19052e21b66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d235d901-bfbd-4f54-a634-d5942724280d",
              "parent_uuid": "8291baca-b3a8-48ff-bde2-21ecb9eec5e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8c2cc64-4196-4668-818f-25e132c70443",
                  "parent_uuid": "d235d901-bfbd-4f54-a634-d5942724280d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18272c44-fdd0-4d7b-9114-ba5f75632356",
              "parent_uuid": "8291baca-b3a8-48ff-bde2-21ecb9eec5e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "479af19b-957b-49d0-8f96-08c5278ec132",
                  "parent_uuid": "18272c44-fdd0-4d7b-9114-ba5f75632356",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38b01cdb-eab9-4ea2-a269-efac9808d0c8",
              "parent_uuid": "8291baca-b3a8-48ff-bde2-21ecb9eec5e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7101c5f9-27dc-4b3e-a90b-c4bfefa8acbc",
                  "parent_uuid": "38b01cdb-eab9-4ea2-a269-efac9808d0c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "df52a6d8-3326-458d-af6c-9a52a221812b",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f564f122-7fbb-4537-9838-1e94ca7f89fa",
              "parent_uuid": "df52a6d8-3326-458d-af6c-9a52a221812b",
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
              "uuid": "e7fee4a4-3b0a-4961-aeab-09b9fcc3cc1d",
              "parent_uuid": "df52a6d8-3326-458d-af6c-9a52a221812b",
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
              "uuid": "b3c232e1-8f1f-4acf-973f-3eed3949b7e7",
              "parent_uuid": "df52a6d8-3326-458d-af6c-9a52a221812b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "798d7a48-45cc-4634-a519-832b0e63461b",
                  "parent_uuid": "b3c232e1-8f1f-4acf-973f-3eed3949b7e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "569110a9-4879-4776-ad30-8712ed7bda27",
              "parent_uuid": "df52a6d8-3326-458d-af6c-9a52a221812b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "292d0826-285f-484e-acb6-26c1a3f56d59",
                  "parent_uuid": "569110a9-4879-4776-ad30-8712ed7bda27",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "789375d8-5d32-41dd-b850-e5a1da44bf17",
              "parent_uuid": "df52a6d8-3326-458d-af6c-9a52a221812b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70c91557-af67-48bc-833f-820f91a4913d",
                  "parent_uuid": "789375d8-5d32-41dd-b850-e5a1da44bf17",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "884fb5f6-f106-42ba-9020-5108deb96fcf",
              "parent_uuid": "df52a6d8-3326-458d-af6c-9a52a221812b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98ee8449-ddf6-4e75-bc23-15e9dcd3c558",
                  "parent_uuid": "884fb5f6-f106-42ba-9020-5108deb96fcf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a6787fe3-7909-4d5c-8ca5-5e4e0d093acb",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61a0d9e0-1ce5-41ae-a9e6-7a4585a9a76f",
              "parent_uuid": "a6787fe3-7909-4d5c-8ca5-5e4e0d093acb",
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
              "uuid": "abc3037f-2dad-4826-b3e5-a9e0ee3b3669",
              "parent_uuid": "a6787fe3-7909-4d5c-8ca5-5e4e0d093acb",
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
              "uuid": "3929c621-b1c4-4801-af44-fa210fcb54c9",
              "parent_uuid": "a6787fe3-7909-4d5c-8ca5-5e4e0d093acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6a817fa-574a-43b4-959d-4349732f560f",
                  "parent_uuid": "3929c621-b1c4-4801-af44-fa210fcb54c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6b297c71-9c11-4b36-b793-b5faf9673d9c",
              "parent_uuid": "a6787fe3-7909-4d5c-8ca5-5e4e0d093acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6037c8b3-01b3-4dcc-83b8-6b555bc64f20",
                  "parent_uuid": "6b297c71-9c11-4b36-b793-b5faf9673d9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c7a737c-8571-4f0c-8e81-8c2a3e4fdbc1",
              "parent_uuid": "a6787fe3-7909-4d5c-8ca5-5e4e0d093acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39d185b2-be34-42c4-9475-dab1e0b726da",
                  "parent_uuid": "1c7a737c-8571-4f0c-8e81-8c2a3e4fdbc1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0fa0628b-2150-48ac-9879-fcc8bf88eda8",
              "parent_uuid": "a6787fe3-7909-4d5c-8ca5-5e4e0d093acb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "094df6c3-7302-452c-b3be-5fd2296f78f9",
                  "parent_uuid": "0fa0628b-2150-48ac-9879-fcc8bf88eda8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "133449c5-e361-4ccd-a141-427154f7cbaa",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91a401be-1c05-4c1d-a5e6-2bfd11ef71e2",
              "parent_uuid": "133449c5-e361-4ccd-a141-427154f7cbaa",
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
              "uuid": "2bc46bef-ebb4-4346-bd7b-c5b7d6f62ea4",
              "parent_uuid": "133449c5-e361-4ccd-a141-427154f7cbaa",
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
              "uuid": "ac16d9ac-9da7-4a33-ba80-caee53256a11",
              "parent_uuid": "133449c5-e361-4ccd-a141-427154f7cbaa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1078efe-2a2f-4f3a-be91-3cad06e0bdb1",
                  "parent_uuid": "ac16d9ac-9da7-4a33-ba80-caee53256a11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4109512-b0be-4688-acae-9c1fc4d9bb38",
              "parent_uuid": "133449c5-e361-4ccd-a141-427154f7cbaa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b925f8f-2137-4d52-b055-c0202a8df433",
                  "parent_uuid": "a4109512-b0be-4688-acae-9c1fc4d9bb38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72aa0004-4724-4812-abec-5e1e53e41c2c",
              "parent_uuid": "133449c5-e361-4ccd-a141-427154f7cbaa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7228e451-229f-4562-99e0-92738c8c48b4",
                  "parent_uuid": "72aa0004-4724-4812-abec-5e1e53e41c2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e4d2cc6-e9c3-4e6c-8683-5d6fe8cd9f80",
              "parent_uuid": "133449c5-e361-4ccd-a141-427154f7cbaa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff811878-214e-494c-a303-5d05315d5b00",
                  "parent_uuid": "5e4d2cc6-e9c3-4e6c-8683-5d6fe8cd9f80",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4ad0b67a-5b50-49f8-957a-3e58e67e987e",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9536637c-e883-422e-ac84-c2e00dbc4659",
              "parent_uuid": "4ad0b67a-5b50-49f8-957a-3e58e67e987e",
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
              "uuid": "554c55c0-5eaa-4f7e-98a8-ac1b38f6e6c1",
              "parent_uuid": "4ad0b67a-5b50-49f8-957a-3e58e67e987e",
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
              "uuid": "ab51d811-13e4-4e97-9a47-40d40b03faed",
              "parent_uuid": "4ad0b67a-5b50-49f8-957a-3e58e67e987e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7eb95b61-59fb-49d8-8752-dc29e0d80aab",
                  "parent_uuid": "ab51d811-13e4-4e97-9a47-40d40b03faed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ea3cc36-3cd4-4233-9654-3cf3b01fa395",
              "parent_uuid": "4ad0b67a-5b50-49f8-957a-3e58e67e987e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b73b8566-a87b-4687-9e94-3c84324a7c4d",
                  "parent_uuid": "0ea3cc36-3cd4-4233-9654-3cf3b01fa395",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "801abe76-cdfd-4728-b8af-ba5074320ee5",
              "parent_uuid": "4ad0b67a-5b50-49f8-957a-3e58e67e987e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a97c2ea3-defc-4143-afdc-1bc0e550ed5d",
                  "parent_uuid": "801abe76-cdfd-4728-b8af-ba5074320ee5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12316314-4a8e-4b58-ad43-3f5ff1bbcff7",
              "parent_uuid": "4ad0b67a-5b50-49f8-957a-3e58e67e987e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2072fc6d-7701-4d6c-bd1e-475bdc830b31",
                  "parent_uuid": "12316314-4a8e-4b58-ad43-3f5ff1bbcff7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5ef2bc29-6497-4eb7-8864-fc4cb55d7429",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c377e6ba-94ac-44be-b11c-7b5874fd1e7b",
              "parent_uuid": "5ef2bc29-6497-4eb7-8864-fc4cb55d7429",
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
          "uuid": "eb11f609-8210-43ec-a764-6591545bd324",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "596c2f13-47e9-4f0d-9a10-a1bde02a1af6",
              "parent_uuid": "eb11f609-8210-43ec-a764-6591545bd324",
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
          "uuid": "f1a37f1b-1281-4ee2-9250-e049401c3295",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "871d5e06-020f-4857-9245-4c05c5c67dab",
              "parent_uuid": "f1a37f1b-1281-4ee2-9250-e049401c3295",
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
              "uuid": "6c7d19b7-7439-4499-9ece-b9a38e0a8eeb",
              "parent_uuid": "f1a37f1b-1281-4ee2-9250-e049401c3295",
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
              "uuid": "70ff7538-a43b-4914-bc35-b2668cff56dc",
              "parent_uuid": "f1a37f1b-1281-4ee2-9250-e049401c3295",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a00cfe98-fbd3-47db-9e33-efce996ce5c1",
                  "parent_uuid": "70ff7538-a43b-4914-bc35-b2668cff56dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "346b4ca5-8323-40d8-ae2c-33a5f8707e71",
              "parent_uuid": "f1a37f1b-1281-4ee2-9250-e049401c3295",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2fb750d0-348f-4bc2-a5b9-238d9413613f",
                  "parent_uuid": "346b4ca5-8323-40d8-ae2c-33a5f8707e71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32d340da-2d42-4106-bd94-74b14ba2a7a8",
              "parent_uuid": "f1a37f1b-1281-4ee2-9250-e049401c3295",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70d16b0f-b960-42ed-8027-fe5a6d804d75",
                  "parent_uuid": "32d340da-2d42-4106-bd94-74b14ba2a7a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8509f714-ab83-4550-9831-ce5776c3dab1",
              "parent_uuid": "f1a37f1b-1281-4ee2-9250-e049401c3295",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da43e455-77d4-4585-a15b-7628e9c01f1c",
                  "parent_uuid": "8509f714-ab83-4550-9831-ce5776c3dab1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "81965ecf-b110-4e4f-bb3d-a97b823a2392",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8042a91c-4d59-4946-88b2-3ac7e4f27509",
              "parent_uuid": "81965ecf-b110-4e4f-bb3d-a97b823a2392",
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
              "uuid": "f08c34b0-85fb-44e5-886e-2803ecdd0ebf",
              "parent_uuid": "81965ecf-b110-4e4f-bb3d-a97b823a2392",
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
              "uuid": "09c048cb-080a-4fcf-bb92-f1e726c86138",
              "parent_uuid": "81965ecf-b110-4e4f-bb3d-a97b823a2392",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d9a298e-fb3a-43b4-a4e3-e5eb0c6d8774",
                  "parent_uuid": "09c048cb-080a-4fcf-bb92-f1e726c86138",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "322a0c26-97ab-45ce-8089-c3f9b96c09b6",
              "parent_uuid": "81965ecf-b110-4e4f-bb3d-a97b823a2392",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2591aad7-796b-4ce6-8506-3d703a43b892",
                  "parent_uuid": "322a0c26-97ab-45ce-8089-c3f9b96c09b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "009a6f0e-3645-4257-8705-403692493930",
              "parent_uuid": "81965ecf-b110-4e4f-bb3d-a97b823a2392",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88089964-fe03-41b4-ba6b-925e0053fc77",
                  "parent_uuid": "009a6f0e-3645-4257-8705-403692493930",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82668e4b-48c2-4e91-b2e6-d47c280ae138",
              "parent_uuid": "81965ecf-b110-4e4f-bb3d-a97b823a2392",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c45979d5-39bc-422a-a573-9dff8b8e7227",
                  "parent_uuid": "82668e4b-48c2-4e91-b2e6-d47c280ae138",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e9bb877-4242-4d44-81d2-f9fd3b176e8b",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8e2a4990-4342-46fa-940c-0abbb28e8994",
              "parent_uuid": "4e9bb877-4242-4d44-81d2-f9fd3b176e8b",
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
              "uuid": "447aff00-b636-4ac6-8f36-4956e7a86ce5",
              "parent_uuid": "4e9bb877-4242-4d44-81d2-f9fd3b176e8b",
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
              "uuid": "70c4d8d1-9903-414c-b9a0-b631a250bbe2",
              "parent_uuid": "4e9bb877-4242-4d44-81d2-f9fd3b176e8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26f889ce-5a2c-4e41-82d9-cbd116e18f18",
                  "parent_uuid": "70c4d8d1-9903-414c-b9a0-b631a250bbe2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20d70298-55a2-4828-acb0-5f4a01a67ed6",
              "parent_uuid": "4e9bb877-4242-4d44-81d2-f9fd3b176e8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d779fcb-0b0c-40b0-828d-3352ca5076d1",
                  "parent_uuid": "20d70298-55a2-4828-acb0-5f4a01a67ed6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "153d9874-48c6-4df1-ac23-485344763e8f",
              "parent_uuid": "4e9bb877-4242-4d44-81d2-f9fd3b176e8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42da4ee6-d9d1-440c-b8e0-76f326e4da8d",
                  "parent_uuid": "153d9874-48c6-4df1-ac23-485344763e8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72cb296b-7168-4347-bdd8-2f33e5c7a9ae",
              "parent_uuid": "4e9bb877-4242-4d44-81d2-f9fd3b176e8b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2649d884-c01f-45f8-ba7a-7c2423c4b98f",
                  "parent_uuid": "72cb296b-7168-4347-bdd8-2f33e5c7a9ae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "074fc3cd-de6f-44ca-ba60-feffbb10437a",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2632a7c-91f9-45bd-9b2a-b75252536a3e",
              "parent_uuid": "074fc3cd-de6f-44ca-ba60-feffbb10437a",
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
              "uuid": "e95be289-f7c0-470e-b75a-94a2854e947d",
              "parent_uuid": "074fc3cd-de6f-44ca-ba60-feffbb10437a",
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
              "uuid": "0328b6db-3eb3-4263-8ff7-68e1207e81d4",
              "parent_uuid": "074fc3cd-de6f-44ca-ba60-feffbb10437a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e5bdd21-dff3-4103-afba-7a0e97eea531",
                  "parent_uuid": "0328b6db-3eb3-4263-8ff7-68e1207e81d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d203a78a-a060-4923-91e7-213fa08f09e8",
              "parent_uuid": "074fc3cd-de6f-44ca-ba60-feffbb10437a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7a95ad2-85ae-45a9-a26e-34e8bfcd4f86",
                  "parent_uuid": "d203a78a-a060-4923-91e7-213fa08f09e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1d4d109-133d-4896-a55e-8f39e9a4ec51",
              "parent_uuid": "074fc3cd-de6f-44ca-ba60-feffbb10437a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ec03f633-b561-4ffb-9e09-5505baed2a0d",
                  "parent_uuid": "d1d4d109-133d-4896-a55e-8f39e9a4ec51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1e37a93-1e2d-4741-9d7c-d3314effcb74",
              "parent_uuid": "074fc3cd-de6f-44ca-ba60-feffbb10437a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9a97230-3f81-44e6-8253-f8a460daf19f",
                  "parent_uuid": "f1e37a93-1e2d-4741-9d7c-d3314effcb74",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "602fe828-5077-4248-a3b0-4fb7caa37f68",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16c245aa-9fd0-4fec-a800-a4098d4cd66b",
              "parent_uuid": "602fe828-5077-4248-a3b0-4fb7caa37f68",
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
              "uuid": "2ad8fe90-dc63-4a10-85c9-3fa570a9bee1",
              "parent_uuid": "602fe828-5077-4248-a3b0-4fb7caa37f68",
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
              "uuid": "84a84af2-32b9-4ace-9d7c-d90bfd843537",
              "parent_uuid": "602fe828-5077-4248-a3b0-4fb7caa37f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42bec105-a395-478e-9d13-e09ddfa62754",
                  "parent_uuid": "84a84af2-32b9-4ace-9d7c-d90bfd843537",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1c21c35-4541-4437-b299-3aac2bbce2c8",
              "parent_uuid": "602fe828-5077-4248-a3b0-4fb7caa37f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c965681a-4435-4fb6-91d6-87b1d2cf4cd0",
                  "parent_uuid": "d1c21c35-4541-4437-b299-3aac2bbce2c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7e4d7d8-0b29-4e06-ae7d-fec7eace3b62",
              "parent_uuid": "602fe828-5077-4248-a3b0-4fb7caa37f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a976535-7400-4b36-9043-43e34e36dfdb",
                  "parent_uuid": "e7e4d7d8-0b29-4e06-ae7d-fec7eace3b62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f31e140b-cae5-4a31-89c2-96c695a6dd9d",
              "parent_uuid": "602fe828-5077-4248-a3b0-4fb7caa37f68",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c0b7645-4f9a-48ed-8d8c-074de77140f1",
                  "parent_uuid": "f31e140b-cae5-4a31-89c2-96c695a6dd9d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e1e26a6-7dc0-4057-9c16-05883c7100ef",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "56b5b367-10c3-428d-b68d-2580c331af40",
              "parent_uuid": "8e1e26a6-7dc0-4057-9c16-05883c7100ef",
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
              "uuid": "d155548c-0f4a-45b0-a09c-68216a503146",
              "parent_uuid": "8e1e26a6-7dc0-4057-9c16-05883c7100ef",
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
              "uuid": "f26bef2c-d0f6-4cdf-b2b4-ba09cb6097ab",
              "parent_uuid": "8e1e26a6-7dc0-4057-9c16-05883c7100ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c4255da-30aa-433e-9a07-dc8fb4af2a34",
                  "parent_uuid": "f26bef2c-d0f6-4cdf-b2b4-ba09cb6097ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bffcc050-1e6e-4bb6-8189-215eb1a49321",
              "parent_uuid": "8e1e26a6-7dc0-4057-9c16-05883c7100ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9903566c-42ae-4690-a630-e90a37fdc571",
                  "parent_uuid": "bffcc050-1e6e-4bb6-8189-215eb1a49321",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7661a007-f214-4f10-b47f-4840a77561b3",
              "parent_uuid": "8e1e26a6-7dc0-4057-9c16-05883c7100ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58ceb015-3584-4baf-8502-4a2de30004ae",
                  "parent_uuid": "7661a007-f214-4f10-b47f-4840a77561b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "beb8c004-677f-4264-ad27-fd380a7b8aa3",
              "parent_uuid": "8e1e26a6-7dc0-4057-9c16-05883c7100ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe7acd22-dc08-4eb0-a567-c475869307fa",
                  "parent_uuid": "beb8c004-677f-4264-ad27-fd380a7b8aa3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "91606a85-be06-4e06-9fdf-aadc381eadf0",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "841eb767-bf52-4428-b5b9-9cd0ada81bcb",
              "parent_uuid": "91606a85-be06-4e06-9fdf-aadc381eadf0",
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
              "uuid": "34f039a7-427f-4155-a379-b1ba5cb85b02",
              "parent_uuid": "91606a85-be06-4e06-9fdf-aadc381eadf0",
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
              "uuid": "fea3690e-64db-46ed-a3b8-b8cf02bab1c0",
              "parent_uuid": "91606a85-be06-4e06-9fdf-aadc381eadf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16ed0301-8497-4111-8ee3-602a37197ed2",
                  "parent_uuid": "fea3690e-64db-46ed-a3b8-b8cf02bab1c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df1276d2-c779-4ccd-8610-e15ca936bb5b",
              "parent_uuid": "91606a85-be06-4e06-9fdf-aadc381eadf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9cf103aa-f45a-4464-854e-6985be03fa52",
                  "parent_uuid": "df1276d2-c779-4ccd-8610-e15ca936bb5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9b132107-56de-4035-9e54-c15e81e7dd3a",
              "parent_uuid": "91606a85-be06-4e06-9fdf-aadc381eadf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5ef34e7-6abe-4982-846a-2419f1c560d1",
                  "parent_uuid": "9b132107-56de-4035-9e54-c15e81e7dd3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d627a0d6-9cdc-484c-b1c9-4936fa90584d",
              "parent_uuid": "91606a85-be06-4e06-9fdf-aadc381eadf0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "007ef5fe-34a3-499d-804c-4b49dbe21b02",
                  "parent_uuid": "d627a0d6-9cdc-484c-b1c9-4936fa90584d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cb50b4d4-fec9-493d-9041-47d3222be705",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c524120d-d105-4b4f-b34c-b3268b0cf220",
              "parent_uuid": "cb50b4d4-fec9-493d-9041-47d3222be705",
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
              "uuid": "3344583d-583c-4874-b379-92331b634d8c",
              "parent_uuid": "cb50b4d4-fec9-493d-9041-47d3222be705",
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
              "uuid": "b6a20594-d72a-45b2-85a3-9c536dcad8b1",
              "parent_uuid": "cb50b4d4-fec9-493d-9041-47d3222be705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f678261-817f-4181-97e1-1c86d5d4847d",
                  "parent_uuid": "b6a20594-d72a-45b2-85a3-9c536dcad8b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b400757c-a4e7-49f8-b3b5-8b964cf45ca7",
              "parent_uuid": "cb50b4d4-fec9-493d-9041-47d3222be705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72e22d78-0bfa-42aa-86bf-2170466509d1",
                  "parent_uuid": "b400757c-a4e7-49f8-b3b5-8b964cf45ca7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2374355c-b7df-472c-9695-8f78d30894a7",
              "parent_uuid": "cb50b4d4-fec9-493d-9041-47d3222be705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53639407-a607-43ab-bd08-fa83b9fd84fa",
                  "parent_uuid": "2374355c-b7df-472c-9695-8f78d30894a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36b70ba8-8683-40b3-8384-66536b286578",
              "parent_uuid": "cb50b4d4-fec9-493d-9041-47d3222be705",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0836621-3613-407b-916e-2df96b4bb5a5",
                  "parent_uuid": "36b70ba8-8683-40b3-8384-66536b286578",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70f2f6a4-2d13-47ff-be8a-10bacf57cc8d",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "089b9843-9b25-4c9d-9cbf-260f37155cb0",
              "parent_uuid": "70f2f6a4-2d13-47ff-be8a-10bacf57cc8d",
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
          "uuid": "8e19f46e-3dae-4504-a5bb-78fb9dddb8c3",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6446b929-3789-4a5b-9c5e-f421053882d2",
              "parent_uuid": "8e19f46e-3dae-4504-a5bb-78fb9dddb8c3",
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
              "uuid": "4c785de0-88bb-48f0-8d16-8ca7704a849a",
              "parent_uuid": "8e19f46e-3dae-4504-a5bb-78fb9dddb8c3",
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
              "uuid": "e9e52195-f425-4625-9660-b6a1097ac5f1",
              "parent_uuid": "8e19f46e-3dae-4504-a5bb-78fb9dddb8c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc72a8d8-d7a6-46bf-988f-b4a3bbcc7ac6",
                  "parent_uuid": "e9e52195-f425-4625-9660-b6a1097ac5f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f91c156e-07ac-4ddd-abd8-a599f001a6e7",
              "parent_uuid": "8e19f46e-3dae-4504-a5bb-78fb9dddb8c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88afdd60-fac8-4384-9be6-c6ac858108e6",
                  "parent_uuid": "f91c156e-07ac-4ddd-abd8-a599f001a6e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ee9f4fa-5adf-459d-adb8-c9df8afdb5df",
              "parent_uuid": "8e19f46e-3dae-4504-a5bb-78fb9dddb8c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77d92801-0922-4450-b47b-30798c19cf89",
                  "parent_uuid": "3ee9f4fa-5adf-459d-adb8-c9df8afdb5df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78579e67-fd01-44fa-973e-f1b08e2c9fc5",
              "parent_uuid": "8e19f46e-3dae-4504-a5bb-78fb9dddb8c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d88389d3-2af2-483a-8124-756db193ae25",
                  "parent_uuid": "78579e67-fd01-44fa-973e-f1b08e2c9fc5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0837c2bf-3c74-47aa-9f73-a51da6361115",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de012e4b-3dd0-4e50-90a0-f540c5edeb60",
              "parent_uuid": "0837c2bf-3c74-47aa-9f73-a51da6361115",
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
              "uuid": "28d3a50f-ae81-4f74-b663-ac7af6e77909",
              "parent_uuid": "0837c2bf-3c74-47aa-9f73-a51da6361115",
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
              "uuid": "addd6950-7417-4483-b415-4f67bad661f9",
              "parent_uuid": "0837c2bf-3c74-47aa-9f73-a51da6361115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6470a4fb-5f13-441a-9810-debaa95ddca3",
                  "parent_uuid": "addd6950-7417-4483-b415-4f67bad661f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76fb71b6-6053-40bb-9340-61a68756b907",
              "parent_uuid": "0837c2bf-3c74-47aa-9f73-a51da6361115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8fd825b-18a5-4f1c-833c-02174a8f1089",
                  "parent_uuid": "76fb71b6-6053-40bb-9340-61a68756b907",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bc4d508-b99f-4581-868c-7cf540b26b4d",
              "parent_uuid": "0837c2bf-3c74-47aa-9f73-a51da6361115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18cfbdf6-144c-4376-b36c-1619119c7171",
                  "parent_uuid": "9bc4d508-b99f-4581-868c-7cf540b26b4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "325c7dd9-831d-4aa8-b16b-6cd51be3f703",
              "parent_uuid": "0837c2bf-3c74-47aa-9f73-a51da6361115",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5fcac1f-2097-4464-831f-9405a277f636",
                  "parent_uuid": "325c7dd9-831d-4aa8-b16b-6cd51be3f703",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c28afc73-1c5b-4bbd-ac18-73258ade1123",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50cd7983-8c2d-48f1-936d-26516e7a65e5",
              "parent_uuid": "c28afc73-1c5b-4bbd-ac18-73258ade1123",
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
          "uuid": "8fe29a5a-2acf-49b8-8863-97a4c48e1da8",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "785f30d7-7518-419c-a449-8c5a30054e72",
              "parent_uuid": "8fe29a5a-2acf-49b8-8863-97a4c48e1da8",
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
          "uuid": "4700e364-0ccd-4ed3-997a-79dbed92a822",
          "parent_uuid": "1fa296ac-9d9f-465a-9e02-b3d8d0d25bc7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "78448587-42f4-49da-a193-5171c6515d47",
              "parent_uuid": "4700e364-0ccd-4ed3-997a-79dbed92a822",
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
                  "uuid": "a2876e71-071e-4c91-b465-6fe3c5e74343",
                  "parent_uuid": "78448587-42f4-49da-a193-5171c6515d47",
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

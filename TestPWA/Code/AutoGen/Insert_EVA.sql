
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
  "uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "7c2a5c99-4bce-4573-aaa8-1f0d438020b0",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "4660fda6-1b95-40d1-bba8-5cbb93352755",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "ab41c2e0-223f-4fcf-b8ae-8b384ddd964b",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "2972eb3a-a854-4814-9ad7-6521e04447be",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "0eedb986-bbec-4253-9b45-7af949251b01",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "c711d2db-7cbb-40e8-afd3-8fe230c9264c",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "781a6651-05c5-4497-bc12-3ae0ec06c0d9",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
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
      "uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
      "parent_uuid": "4e88e305-4548-4a46-9c2c-cade1408b663",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "48150bac-c9ea-4c7f-b346-df94c159f5ec",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5fae6ae1-aa32-40a8-9921-2797a2873498",
              "parent_uuid": "48150bac-c9ea-4c7f-b346-df94c159f5ec",
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
              "uuid": "bc1cfbc1-31b9-445e-8c9d-67c312dae527",
              "parent_uuid": "48150bac-c9ea-4c7f-b346-df94c159f5ec",
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
              "uuid": "efcd2d2b-520c-48e1-8370-1eef8b87f7e9",
              "parent_uuid": "48150bac-c9ea-4c7f-b346-df94c159f5ec",
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
              "uuid": "56e865b1-961b-49d8-b918-c34bc4d1af1b",
              "parent_uuid": "48150bac-c9ea-4c7f-b346-df94c159f5ec",
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
          "uuid": "3391c20f-81e1-4d2e-9f25-9bd45d36028f",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "a6f5d130-d76d-402d-9eb6-42199bc88a33",
              "parent_uuid": "3391c20f-81e1-4d2e-9f25-9bd45d36028f",
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
              "uuid": "0d00197d-c028-4381-b234-ad8734a1a04f",
              "parent_uuid": "3391c20f-81e1-4d2e-9f25-9bd45d36028f",
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
              "uuid": "67d78852-2f12-4320-8286-845ff8e5c8d1",
              "parent_uuid": "3391c20f-81e1-4d2e-9f25-9bd45d36028f",
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
              "uuid": "448fae4d-cfe1-4fa1-a930-72e4bd5da4e0",
              "parent_uuid": "3391c20f-81e1-4d2e-9f25-9bd45d36028f",
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
          "uuid": "7d3b4952-ee82-48b2-829a-ae83c6635f0d",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5deb0d98-82fe-4422-8f0f-f3dca7c74f44",
              "parent_uuid": "7d3b4952-ee82-48b2-829a-ae83c6635f0d",
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
              "uuid": "526f3be2-e604-445d-8428-61b4a43e79a0",
              "parent_uuid": "7d3b4952-ee82-48b2-829a-ae83c6635f0d",
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
              "uuid": "b17b6620-24ef-4e27-8b28-18edd3ea83e0",
              "parent_uuid": "7d3b4952-ee82-48b2-829a-ae83c6635f0d",
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
              "uuid": "9035750f-3224-4b1f-822f-cd505941f2b3",
              "parent_uuid": "7d3b4952-ee82-48b2-829a-ae83c6635f0d",
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
              "uuid": "f2f4e48a-579c-48ed-913e-10eb4c36900d",
              "parent_uuid": "7d3b4952-ee82-48b2-829a-ae83c6635f0d",
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
              "uuid": "d310084b-a74a-4678-82ad-03897b6a2e2d",
              "parent_uuid": "7d3b4952-ee82-48b2-829a-ae83c6635f0d",
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
          "uuid": "03b1ba40-1de8-4506-8627-7bb18ad90283",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "19853082-60ef-4f1b-9b80-0fd271f505ca",
              "parent_uuid": "03b1ba40-1de8-4506-8627-7bb18ad90283",
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
          "uuid": "e951beef-40dd-4d79-af7f-20ec93d0ac3b",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "83d6f05b-529f-4fbe-8fb1-d51621911d9b",
              "parent_uuid": "e951beef-40dd-4d79-af7f-20ec93d0ac3b",
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
              "uuid": "26e6f41b-a184-4daa-8f14-f944140ae64e",
              "parent_uuid": "e951beef-40dd-4d79-af7f-20ec93d0ac3b",
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
              "uuid": "79e984ae-9e0b-4e47-b91d-545b6713ceb6",
              "parent_uuid": "e951beef-40dd-4d79-af7f-20ec93d0ac3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c298c24a-3e6a-49be-b2f3-e47400d7f8d3",
                  "parent_uuid": "79e984ae-9e0b-4e47-b91d-545b6713ceb6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "395f1c7f-7496-425b-873d-bf8cc0da582c",
              "parent_uuid": "e951beef-40dd-4d79-af7f-20ec93d0ac3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4451d10b-a53e-47f0-b101-266a32af3629",
                  "parent_uuid": "395f1c7f-7496-425b-873d-bf8cc0da582c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89b40edc-af6f-436a-8bf8-3420c1e9f162",
              "parent_uuid": "e951beef-40dd-4d79-af7f-20ec93d0ac3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e68a701d-d1c6-4bbb-af7a-60c1cb429e47",
                  "parent_uuid": "89b40edc-af6f-436a-8bf8-3420c1e9f162",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b831473-68bd-4778-9d96-9bb2e101f15c",
              "parent_uuid": "e951beef-40dd-4d79-af7f-20ec93d0ac3b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b63db80a-a2de-468b-ad3d-621f320250f5",
                  "parent_uuid": "7b831473-68bd-4778-9d96-9bb2e101f15c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a36b4f1f-ff6c-423c-96f4-89d96b9e1b8d",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e93901e-f009-4199-9e2d-f123d7c15801",
              "parent_uuid": "a36b4f1f-ff6c-423c-96f4-89d96b9e1b8d",
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
              "uuid": "d04e1a3b-915f-4f9a-8cc5-24e13e39192d",
              "parent_uuid": "a36b4f1f-ff6c-423c-96f4-89d96b9e1b8d",
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
              "uuid": "3fa6f0c4-2ea3-4c36-a296-9a19007e050d",
              "parent_uuid": "a36b4f1f-ff6c-423c-96f4-89d96b9e1b8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d3c20a8-4390-438e-aca8-d1f07a6f2164",
                  "parent_uuid": "3fa6f0c4-2ea3-4c36-a296-9a19007e050d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2a7bc87-2386-4840-9280-185428e92082",
              "parent_uuid": "a36b4f1f-ff6c-423c-96f4-89d96b9e1b8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21094873-2da0-4d7c-857c-f067b698555a",
                  "parent_uuid": "f2a7bc87-2386-4840-9280-185428e92082",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "854ef636-3e75-4069-95f1-1dd39629dd8f",
              "parent_uuid": "a36b4f1f-ff6c-423c-96f4-89d96b9e1b8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c810b866-dc07-47c2-a54b-04c21b94febb",
                  "parent_uuid": "854ef636-3e75-4069-95f1-1dd39629dd8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bcb60a5-6e5f-4880-bdd6-c4c99a559941",
              "parent_uuid": "a36b4f1f-ff6c-423c-96f4-89d96b9e1b8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6564821-4e26-49d5-978e-eaccabf1221c",
                  "parent_uuid": "0bcb60a5-6e5f-4880-bdd6-c4c99a559941",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9ae70da4-4bff-49f3-85e5-e8cd73fa4920",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39f986e1-026f-4750-8f0a-829490e8fc44",
              "parent_uuid": "9ae70da4-4bff-49f3-85e5-e8cd73fa4920",
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
              "uuid": "b717f797-72cb-41f8-bdf3-85a92e83bf43",
              "parent_uuid": "9ae70da4-4bff-49f3-85e5-e8cd73fa4920",
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
              "uuid": "bf05cec4-315a-4e47-9cd0-544e1992890b",
              "parent_uuid": "9ae70da4-4bff-49f3-85e5-e8cd73fa4920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23d241eb-e5ba-4f4b-89bb-59b5c0e4ccc5",
                  "parent_uuid": "bf05cec4-315a-4e47-9cd0-544e1992890b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83ccae5a-4f61-49ed-8521-061d0c88438d",
              "parent_uuid": "9ae70da4-4bff-49f3-85e5-e8cd73fa4920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0620b89a-4b1d-40ea-8058-9f4a44c929d6",
                  "parent_uuid": "83ccae5a-4f61-49ed-8521-061d0c88438d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f3bbc51-ee3b-4caf-ad25-94d7f6022d2b",
              "parent_uuid": "9ae70da4-4bff-49f3-85e5-e8cd73fa4920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d59c11d3-d940-48d2-b267-da043fa7d913",
                  "parent_uuid": "9f3bbc51-ee3b-4caf-ad25-94d7f6022d2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9396082e-4e70-4d90-9381-b34e626f39bd",
              "parent_uuid": "9ae70da4-4bff-49f3-85e5-e8cd73fa4920",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66f7d79c-d0f2-44b8-af0c-3ee5ba26f95b",
                  "parent_uuid": "9396082e-4e70-4d90-9381-b34e626f39bd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8739a236-34cb-4b93-a062-10b12502ed42",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "947fd1b9-4054-4b86-956d-3966fae7b658",
              "parent_uuid": "8739a236-34cb-4b93-a062-10b12502ed42",
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
              "uuid": "9eb2a815-86b0-4005-879d-152c2678ba2c",
              "parent_uuid": "8739a236-34cb-4b93-a062-10b12502ed42",
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
              "uuid": "96073db0-2116-408d-84d1-7e707903e0ce",
              "parent_uuid": "8739a236-34cb-4b93-a062-10b12502ed42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2e4b2c1-3a9b-45b8-b13c-e3dbf32f8daf",
                  "parent_uuid": "96073db0-2116-408d-84d1-7e707903e0ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f9d7879-aa5a-4f8e-be63-6f8afefef3cf",
              "parent_uuid": "8739a236-34cb-4b93-a062-10b12502ed42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c214881-5637-46a9-b855-f08b924abbde",
                  "parent_uuid": "2f9d7879-aa5a-4f8e-be63-6f8afefef3cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "855c7010-2c8e-40de-9d91-05843368240d",
              "parent_uuid": "8739a236-34cb-4b93-a062-10b12502ed42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd339ee0-e1a3-4fe2-b809-b1d41b7b70ca",
                  "parent_uuid": "855c7010-2c8e-40de-9d91-05843368240d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bd26d4d-3e97-4524-a4f6-7d233b966105",
              "parent_uuid": "8739a236-34cb-4b93-a062-10b12502ed42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c42053d3-b5c0-43ad-a11a-74972effd2ed",
                  "parent_uuid": "5bd26d4d-3e97-4524-a4f6-7d233b966105",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ac2f40c4-806c-45fb-a2c3-62ec5077f871",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e1b6d0ce-847f-4279-858f-388fad0932f7",
              "parent_uuid": "ac2f40c4-806c-45fb-a2c3-62ec5077f871",
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
              "uuid": "edfc7a65-4c65-436d-9c85-8d288efbed3e",
              "parent_uuid": "ac2f40c4-806c-45fb-a2c3-62ec5077f871",
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
              "uuid": "3c93a7f9-34cd-4b86-968f-3a8e4f6888cd",
              "parent_uuid": "ac2f40c4-806c-45fb-a2c3-62ec5077f871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3483888b-85c2-43a9-aa30-041feeff1a36",
                  "parent_uuid": "3c93a7f9-34cd-4b86-968f-3a8e4f6888cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60e52af8-40ef-4cc7-9860-e817aeac66c0",
              "parent_uuid": "ac2f40c4-806c-45fb-a2c3-62ec5077f871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1748f5b6-cb22-498c-aa22-ce997aa08abc",
                  "parent_uuid": "60e52af8-40ef-4cc7-9860-e817aeac66c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f5ecd28-ee83-401d-8dcb-cb8f3a76c152",
              "parent_uuid": "ac2f40c4-806c-45fb-a2c3-62ec5077f871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5076f5c-5296-49bf-9d85-ceac6fc44d60",
                  "parent_uuid": "9f5ecd28-ee83-401d-8dcb-cb8f3a76c152",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f4f1d6b-6f3d-4982-b376-528861719f60",
              "parent_uuid": "ac2f40c4-806c-45fb-a2c3-62ec5077f871",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4ff83f4-3e01-4cd3-9cc1-06b59e80cb62",
                  "parent_uuid": "4f4f1d6b-6f3d-4982-b376-528861719f60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e05a98aa-3745-4f61-a739-f331f7462d15",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "93b4a482-1a49-499c-85f8-19f084057ccc",
              "parent_uuid": "e05a98aa-3745-4f61-a739-f331f7462d15",
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
              "uuid": "3e19d0b4-b27a-42b2-a49d-14033b1e5970",
              "parent_uuid": "e05a98aa-3745-4f61-a739-f331f7462d15",
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
              "uuid": "d4f07c3a-1f31-46c8-98d9-991d17cebf80",
              "parent_uuid": "e05a98aa-3745-4f61-a739-f331f7462d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8c42d3e-f5ed-4a4b-ae3e-f6fb5781b770",
                  "parent_uuid": "d4f07c3a-1f31-46c8-98d9-991d17cebf80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1501335c-b2a9-4265-8a48-ab45fa252e12",
              "parent_uuid": "e05a98aa-3745-4f61-a739-f331f7462d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53ce3e6b-7b27-4db1-bb7a-6612cf92addb",
                  "parent_uuid": "1501335c-b2a9-4265-8a48-ab45fa252e12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d3306d7-8253-46ac-8563-04ce73941658",
              "parent_uuid": "e05a98aa-3745-4f61-a739-f331f7462d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3208c49-e8ab-4065-b541-a81b99c25758",
                  "parent_uuid": "2d3306d7-8253-46ac-8563-04ce73941658",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6b2b32d-22cb-49a0-89a0-18b7261c5b1a",
              "parent_uuid": "e05a98aa-3745-4f61-a739-f331f7462d15",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16a187dd-c5af-4777-b992-a64fb3e23348",
                  "parent_uuid": "d6b2b32d-22cb-49a0-89a0-18b7261c5b1a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "989ecd73-faa5-49af-8fe8-af6de383b023",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9d40711c-f2c5-4af9-8af4-31e30bd2136a",
              "parent_uuid": "989ecd73-faa5-49af-8fe8-af6de383b023",
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
              "uuid": "a594b8cc-043d-41bf-8d90-4f834e6b7b05",
              "parent_uuid": "989ecd73-faa5-49af-8fe8-af6de383b023",
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
              "uuid": "746bd16d-0f4f-4678-a731-f3fc9a632bff",
              "parent_uuid": "989ecd73-faa5-49af-8fe8-af6de383b023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4ba8be3-030e-4494-b0f4-7e3d5061461d",
                  "parent_uuid": "746bd16d-0f4f-4678-a731-f3fc9a632bff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "408335f4-8014-404e-8efb-5bf7063d83e3",
              "parent_uuid": "989ecd73-faa5-49af-8fe8-af6de383b023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6bd08efb-e20a-46ac-a2e0-dc8f361f15e3",
                  "parent_uuid": "408335f4-8014-404e-8efb-5bf7063d83e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c1329c6-9445-49eb-a259-a35b4506d1e0",
              "parent_uuid": "989ecd73-faa5-49af-8fe8-af6de383b023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2fc385b7-2fbb-4b6e-bf91-1a4b875766c7",
                  "parent_uuid": "8c1329c6-9445-49eb-a259-a35b4506d1e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43f3c42d-e4f2-4ad3-b6cb-31f0208af7ad",
              "parent_uuid": "989ecd73-faa5-49af-8fe8-af6de383b023",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3ce5696-2db3-4e4e-ad95-6a2227924047",
                  "parent_uuid": "43f3c42d-e4f2-4ad3-b6cb-31f0208af7ad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ef3b9f55-f0ec-4616-92c9-96e932374e5f",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "901f4a40-1e13-4e50-a6dc-e8a7e0f0f482",
              "parent_uuid": "ef3b9f55-f0ec-4616-92c9-96e932374e5f",
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
              "uuid": "d9eb5940-65a2-4420-8f0f-e66010c87143",
              "parent_uuid": "ef3b9f55-f0ec-4616-92c9-96e932374e5f",
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
              "uuid": "396009a7-dfec-43c6-9bd9-c6e1d161a025",
              "parent_uuid": "ef3b9f55-f0ec-4616-92c9-96e932374e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc86f50d-a069-4182-b2dc-179d13efb9ae",
                  "parent_uuid": "396009a7-dfec-43c6-9bd9-c6e1d161a025",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a17f003-9420-4bcf-bc0e-e8e7929d1dc9",
              "parent_uuid": "ef3b9f55-f0ec-4616-92c9-96e932374e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2538779-bf45-4616-b125-b2691ec34ca8",
                  "parent_uuid": "5a17f003-9420-4bcf-bc0e-e8e7929d1dc9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e08d7cc7-9a07-492b-bbad-21eca252667d",
              "parent_uuid": "ef3b9f55-f0ec-4616-92c9-96e932374e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd213f2c-233f-456c-a750-7060cf50d4c5",
                  "parent_uuid": "e08d7cc7-9a07-492b-bbad-21eca252667d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7acbe75-72e4-42f3-96ec-e76717fc64bb",
              "parent_uuid": "ef3b9f55-f0ec-4616-92c9-96e932374e5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0157a83a-75fb-42fc-bd61-e43fdbf0fe9f",
                  "parent_uuid": "f7acbe75-72e4-42f3-96ec-e76717fc64bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a2641718-fe09-4307-bcf3-ad2b950c69a6",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d2c2cde4-88ff-4934-8576-326c7695d2be",
              "parent_uuid": "a2641718-fe09-4307-bcf3-ad2b950c69a6",
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
              "uuid": "64ad2404-87a6-4243-a065-f6fe7fa63206",
              "parent_uuid": "a2641718-fe09-4307-bcf3-ad2b950c69a6",
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
              "uuid": "89425924-dc79-47fd-82c2-cc4c5f91e1ed",
              "parent_uuid": "a2641718-fe09-4307-bcf3-ad2b950c69a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8598452e-a4ef-40d6-a818-7191c5db3ab5",
                  "parent_uuid": "89425924-dc79-47fd-82c2-cc4c5f91e1ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50dd04de-91f9-4af9-83b9-58ad03e28764",
              "parent_uuid": "a2641718-fe09-4307-bcf3-ad2b950c69a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c06273aa-d480-4823-b721-ddfdefdd60ce",
                  "parent_uuid": "50dd04de-91f9-4af9-83b9-58ad03e28764",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86edd543-081c-4e53-bde3-edbadafd97f8",
              "parent_uuid": "a2641718-fe09-4307-bcf3-ad2b950c69a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e4f12cf-4ca9-4d9f-a9ab-9783a12fd845",
                  "parent_uuid": "86edd543-081c-4e53-bde3-edbadafd97f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da6c6ad8-5e4f-451c-add4-6569ccac84ae",
              "parent_uuid": "a2641718-fe09-4307-bcf3-ad2b950c69a6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b0a42aa-cbad-4b41-9106-6a03a623cf8d",
                  "parent_uuid": "da6c6ad8-5e4f-451c-add4-6569ccac84ae",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "488b9b5e-58ed-4fc7-872c-642d54381cfc",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89d94479-c81b-4a12-b693-daf76ca1216d",
              "parent_uuid": "488b9b5e-58ed-4fc7-872c-642d54381cfc",
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
              "uuid": "07894266-b68f-46f2-ac53-0244160240ce",
              "parent_uuid": "488b9b5e-58ed-4fc7-872c-642d54381cfc",
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
              "uuid": "56111c52-45d5-4502-acb4-c76569469591",
              "parent_uuid": "488b9b5e-58ed-4fc7-872c-642d54381cfc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d509021-082f-420e-bb33-16cc49a104cd",
                  "parent_uuid": "56111c52-45d5-4502-acb4-c76569469591",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5f61976-cb48-474f-9dd0-261c0ad160c3",
              "parent_uuid": "488b9b5e-58ed-4fc7-872c-642d54381cfc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92b462aa-53c2-4f1f-8a08-eebf3f57888c",
                  "parent_uuid": "f5f61976-cb48-474f-9dd0-261c0ad160c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "823c4518-906d-4ab0-a3c5-ee2113f0c01a",
              "parent_uuid": "488b9b5e-58ed-4fc7-872c-642d54381cfc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5966eaae-1e4f-46eb-83f6-68a294d1b1a7",
                  "parent_uuid": "823c4518-906d-4ab0-a3c5-ee2113f0c01a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16c6168b-4883-4d3f-84c8-f3e1abd88afd",
              "parent_uuid": "488b9b5e-58ed-4fc7-872c-642d54381cfc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac2ebb3e-b09f-45de-94b8-ee7badb865d3",
                  "parent_uuid": "16c6168b-4883-4d3f-84c8-f3e1abd88afd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e39c97a2-2407-44bd-9b83-ea8bcad70f70",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6358ef5-999d-4abf-82f5-8be8bf131422",
              "parent_uuid": "e39c97a2-2407-44bd-9b83-ea8bcad70f70",
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
              "uuid": "01edcb64-c931-43de-be79-d55a3cde1215",
              "parent_uuid": "e39c97a2-2407-44bd-9b83-ea8bcad70f70",
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
              "uuid": "43930d54-90ad-41d7-8258-172dbdd65dbf",
              "parent_uuid": "e39c97a2-2407-44bd-9b83-ea8bcad70f70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "703fcada-5ac6-47b7-8e39-56966bcb820e",
                  "parent_uuid": "43930d54-90ad-41d7-8258-172dbdd65dbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3276d3f-1107-4e58-bf34-98b692cd4bae",
              "parent_uuid": "e39c97a2-2407-44bd-9b83-ea8bcad70f70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "405e596d-79c7-45f5-b484-c50fa714ecdb",
                  "parent_uuid": "c3276d3f-1107-4e58-bf34-98b692cd4bae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0580a2a5-f180-4cc3-8d82-28991d30e4f8",
              "parent_uuid": "e39c97a2-2407-44bd-9b83-ea8bcad70f70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3b13e9b-77ce-43bf-881b-37c5154f406c",
                  "parent_uuid": "0580a2a5-f180-4cc3-8d82-28991d30e4f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ebf6dee-933a-4c3d-bf08-19c3fdab6ae2",
              "parent_uuid": "e39c97a2-2407-44bd-9b83-ea8bcad70f70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85c70269-9e33-4116-a537-a5f71b549cc5",
                  "parent_uuid": "6ebf6dee-933a-4c3d-bf08-19c3fdab6ae2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0a1599fa-659c-43a3-852f-ac572f2b19a0",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04609de0-57f8-49c5-bcc9-c03b3a55008c",
              "parent_uuid": "0a1599fa-659c-43a3-852f-ac572f2b19a0",
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
              "uuid": "9b2a6041-f7a0-4853-a3d9-8749c29eb5b7",
              "parent_uuid": "0a1599fa-659c-43a3-852f-ac572f2b19a0",
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
              "uuid": "3b3f01ef-1de1-452f-8019-e648fd0393cb",
              "parent_uuid": "0a1599fa-659c-43a3-852f-ac572f2b19a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58b74c85-e297-4174-8387-460720958949",
                  "parent_uuid": "3b3f01ef-1de1-452f-8019-e648fd0393cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a879606-1caf-4712-b9f5-f879c6a4d050",
              "parent_uuid": "0a1599fa-659c-43a3-852f-ac572f2b19a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b21f5a6-55ef-41d3-9def-24de8d69ba5d",
                  "parent_uuid": "7a879606-1caf-4712-b9f5-f879c6a4d050",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89eac657-f020-4388-bd34-b94798730a61",
              "parent_uuid": "0a1599fa-659c-43a3-852f-ac572f2b19a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6ea7185-a35b-4473-b29e-f2bf876781c2",
                  "parent_uuid": "89eac657-f020-4388-bd34-b94798730a61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a32cee25-d30d-47df-a0ff-8a982bc7da78",
              "parent_uuid": "0a1599fa-659c-43a3-852f-ac572f2b19a0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc02ca59-1b36-4740-87fb-a60829162e76",
                  "parent_uuid": "a32cee25-d30d-47df-a0ff-8a982bc7da78",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3ec220e-f966-43df-9198-0dd0f671c20e",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5829eae0-d421-405b-9471-469ad24cd9bf",
              "parent_uuid": "b3ec220e-f966-43df-9198-0dd0f671c20e",
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
              "uuid": "46a3abf8-e340-4228-a72c-ba3e23265a2a",
              "parent_uuid": "b3ec220e-f966-43df-9198-0dd0f671c20e",
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
              "uuid": "950df013-6048-46af-a6f4-8da9839d466a",
              "parent_uuid": "b3ec220e-f966-43df-9198-0dd0f671c20e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8137d94d-f0e5-489b-8b36-7b46c613e97e",
                  "parent_uuid": "950df013-6048-46af-a6f4-8da9839d466a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "445305d6-58ec-451e-b424-2847910c7721",
              "parent_uuid": "b3ec220e-f966-43df-9198-0dd0f671c20e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c8bdb71-8078-48f1-a833-0d5d16dab697",
                  "parent_uuid": "445305d6-58ec-451e-b424-2847910c7721",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d65783d-cdd2-429e-a41a-e604d330eb3d",
              "parent_uuid": "b3ec220e-f966-43df-9198-0dd0f671c20e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7614d335-bc20-4038-bcd3-94bf8afc48cf",
                  "parent_uuid": "9d65783d-cdd2-429e-a41a-e604d330eb3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f20c6f9f-15b8-498c-8887-3121995cb873",
              "parent_uuid": "b3ec220e-f966-43df-9198-0dd0f671c20e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab7f8c06-f506-42f3-b304-2b73c7e77b9d",
                  "parent_uuid": "f20c6f9f-15b8-498c-8887-3121995cb873",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e17d0a64-8ef4-4127-9923-561e205e5b1a",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "812a2971-f787-49a4-bcbe-3a2204e06fd2",
              "parent_uuid": "e17d0a64-8ef4-4127-9923-561e205e5b1a",
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
              "uuid": "193a2056-ac20-4f54-a148-f325cb5831d1",
              "parent_uuid": "e17d0a64-8ef4-4127-9923-561e205e5b1a",
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
              "uuid": "bd9b270d-8d9a-48c8-9f60-60b4a737021b",
              "parent_uuid": "e17d0a64-8ef4-4127-9923-561e205e5b1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23552cdf-b6bb-4e04-8a4e-aabbe164f004",
                  "parent_uuid": "bd9b270d-8d9a-48c8-9f60-60b4a737021b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dcebaf1e-6598-4edf-b499-05b225d9d593",
              "parent_uuid": "e17d0a64-8ef4-4127-9923-561e205e5b1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f336faa-a6c7-4ce1-8a12-c82b3c1c73bf",
                  "parent_uuid": "dcebaf1e-6598-4edf-b499-05b225d9d593",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2083c661-fed9-49cf-9e6d-13f8ecf415df",
              "parent_uuid": "e17d0a64-8ef4-4127-9923-561e205e5b1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6d5cc34-ff60-4abf-9612-c4757022d7f3",
                  "parent_uuid": "2083c661-fed9-49cf-9e6d-13f8ecf415df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f417c9e9-aeea-4687-b901-7e52992b888e",
              "parent_uuid": "e17d0a64-8ef4-4127-9923-561e205e5b1a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e1002af-a468-41f3-9237-28c0352e5f8f",
                  "parent_uuid": "f417c9e9-aeea-4687-b901-7e52992b888e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3d0376e8-3d4d-4c87-a27f-58c2bb87a86d",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9188a816-4ac2-4c19-89a4-42d855f29932",
              "parent_uuid": "3d0376e8-3d4d-4c87-a27f-58c2bb87a86d",
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
          "uuid": "4537d77f-c0c7-46fb-80bd-a6072981f0a9",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "41a92f62-ea42-42f8-a93c-eada8071d157",
              "parent_uuid": "4537d77f-c0c7-46fb-80bd-a6072981f0a9",
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
          "uuid": "1e38a885-2e0b-4f89-bafb-b76476d90915",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e3fc45b-fed9-4387-9f4a-7cbfba7d7144",
              "parent_uuid": "1e38a885-2e0b-4f89-bafb-b76476d90915",
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
              "uuid": "32aaa7e9-1f79-4c12-9e77-23880b0fbe53",
              "parent_uuid": "1e38a885-2e0b-4f89-bafb-b76476d90915",
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
              "uuid": "2b940b31-7859-454e-9a06-8d02fa4b0966",
              "parent_uuid": "1e38a885-2e0b-4f89-bafb-b76476d90915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5959d2fa-532c-46c1-a7ea-523de72c5141",
                  "parent_uuid": "2b940b31-7859-454e-9a06-8d02fa4b0966",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "786185ed-f8a7-4daa-b87b-6151d71745ac",
              "parent_uuid": "1e38a885-2e0b-4f89-bafb-b76476d90915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ced482a6-ff07-4a7e-8c5a-4fd6673fbf25",
                  "parent_uuid": "786185ed-f8a7-4daa-b87b-6151d71745ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cd613c8-6425-4101-ba0f-ece93458f1ab",
              "parent_uuid": "1e38a885-2e0b-4f89-bafb-b76476d90915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9476b37d-c5e7-49bf-8405-b5eba3c8fd2f",
                  "parent_uuid": "1cd613c8-6425-4101-ba0f-ece93458f1ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa406629-86e7-46ba-a60f-59ade10e0369",
              "parent_uuid": "1e38a885-2e0b-4f89-bafb-b76476d90915",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2426ba4e-1da5-40ce-b49e-d8e2272800cd",
                  "parent_uuid": "fa406629-86e7-46ba-a60f-59ade10e0369",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c70f7307-eb48-4dc3-bb7f-8075e787a4e9",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a68cd0ea-4385-48bc-8975-aad97525d317",
              "parent_uuid": "c70f7307-eb48-4dc3-bb7f-8075e787a4e9",
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
              "uuid": "4c4da52f-f003-46c4-848e-5469572d32a5",
              "parent_uuid": "c70f7307-eb48-4dc3-bb7f-8075e787a4e9",
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
              "uuid": "70cda0fc-f1bf-4693-a09d-6f4123df757a",
              "parent_uuid": "c70f7307-eb48-4dc3-bb7f-8075e787a4e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1e40963-efa3-4d92-a867-13be46db87a6",
                  "parent_uuid": "70cda0fc-f1bf-4693-a09d-6f4123df757a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f203503-03f2-4f2a-898c-48e7e79cc461",
              "parent_uuid": "c70f7307-eb48-4dc3-bb7f-8075e787a4e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4aa0d331-323d-411e-bae7-42613b062f3e",
                  "parent_uuid": "1f203503-03f2-4f2a-898c-48e7e79cc461",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5124334-1ddf-4cc8-881b-5479800603bf",
              "parent_uuid": "c70f7307-eb48-4dc3-bb7f-8075e787a4e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "246295ba-fc67-45ef-8283-37134ea6d78d",
                  "parent_uuid": "c5124334-1ddf-4cc8-881b-5479800603bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50a79892-838a-4e8c-9e2b-224a224ebd4a",
              "parent_uuid": "c70f7307-eb48-4dc3-bb7f-8075e787a4e9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11a6b652-b678-4607-bb8c-31a2c06b4a9e",
                  "parent_uuid": "50a79892-838a-4e8c-9e2b-224a224ebd4a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86acbd57-90c0-445a-989d-2165b7920781",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23a781e7-bb73-4ac3-b6a2-b51e6898d5cf",
              "parent_uuid": "86acbd57-90c0-445a-989d-2165b7920781",
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
              "uuid": "69848c3d-bd57-4da8-8e77-0c9f75679eff",
              "parent_uuid": "86acbd57-90c0-445a-989d-2165b7920781",
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
              "uuid": "5ff52f33-b2b5-47d3-a958-b93e6a411f49",
              "parent_uuid": "86acbd57-90c0-445a-989d-2165b7920781",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81543af5-0903-4c73-aa51-7ba0c7c3dcbd",
                  "parent_uuid": "5ff52f33-b2b5-47d3-a958-b93e6a411f49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a71c023-cd6d-43f1-bc47-ac074df640ae",
              "parent_uuid": "86acbd57-90c0-445a-989d-2165b7920781",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb2d45ac-7bd0-4f1a-8e8e-a9d03a429c90",
                  "parent_uuid": "0a71c023-cd6d-43f1-bc47-ac074df640ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "592fd95d-9f81-4d92-80f3-0b513bee4105",
              "parent_uuid": "86acbd57-90c0-445a-989d-2165b7920781",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33c2a086-98a5-4910-895b-a8a03b935c6a",
                  "parent_uuid": "592fd95d-9f81-4d92-80f3-0b513bee4105",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ca89e6a-e499-4db6-86d1-90c2bf22e686",
              "parent_uuid": "86acbd57-90c0-445a-989d-2165b7920781",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8dd42fa2-a8e3-4692-87db-a0f710e647e3",
                  "parent_uuid": "4ca89e6a-e499-4db6-86d1-90c2bf22e686",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e4344268-ded1-4d24-ae90-30a8bc153854",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a43ee85-b6b5-4b1d-91f7-2461d50c0317",
              "parent_uuid": "e4344268-ded1-4d24-ae90-30a8bc153854",
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
              "uuid": "623ac0ef-f84d-4fd3-b4d6-c6e612b6f813",
              "parent_uuid": "e4344268-ded1-4d24-ae90-30a8bc153854",
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
              "uuid": "952e619f-c617-4177-a619-24add7b9b67b",
              "parent_uuid": "e4344268-ded1-4d24-ae90-30a8bc153854",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd30e4a4-4745-4eaf-9fe1-657a7082561a",
                  "parent_uuid": "952e619f-c617-4177-a619-24add7b9b67b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e14b8add-2408-4474-ac00-e81687feaa41",
              "parent_uuid": "e4344268-ded1-4d24-ae90-30a8bc153854",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c6f10903-d3bf-4388-a65a-a88a924a9a0c",
                  "parent_uuid": "e14b8add-2408-4474-ac00-e81687feaa41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8529785-43fb-4b4f-9df4-8b90ab0a61ea",
              "parent_uuid": "e4344268-ded1-4d24-ae90-30a8bc153854",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bdbb9025-2e7d-462b-8d1f-a0267240456a",
                  "parent_uuid": "b8529785-43fb-4b4f-9df4-8b90ab0a61ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d529c571-adba-47e4-8148-262dba512e2b",
              "parent_uuid": "e4344268-ded1-4d24-ae90-30a8bc153854",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3602dcb-3d5a-4a56-8560-a6ca9ac0b5d3",
                  "parent_uuid": "d529c571-adba-47e4-8148-262dba512e2b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "78f1617a-21e7-4ab7-affe-6e562502b5ed",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f08cbb3-48e6-44cd-a8ac-4d491c7ccd2c",
              "parent_uuid": "78f1617a-21e7-4ab7-affe-6e562502b5ed",
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
              "uuid": "de785999-25ab-4be3-a49a-b4b95adc4aa7",
              "parent_uuid": "78f1617a-21e7-4ab7-affe-6e562502b5ed",
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
              "uuid": "33fe0249-5176-4d50-acfa-95186dbd6e3a",
              "parent_uuid": "78f1617a-21e7-4ab7-affe-6e562502b5ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa059953-4d26-409c-a66b-802929598548",
                  "parent_uuid": "33fe0249-5176-4d50-acfa-95186dbd6e3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2fe64c0a-af8c-42de-b9fb-27ad3cdd1804",
              "parent_uuid": "78f1617a-21e7-4ab7-affe-6e562502b5ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fc44932-5fb7-4b1c-a91e-bb8d50db3f0b",
                  "parent_uuid": "2fe64c0a-af8c-42de-b9fb-27ad3cdd1804",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c164cda-6e1d-46ef-90ab-e2275b8ab519",
              "parent_uuid": "78f1617a-21e7-4ab7-affe-6e562502b5ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70568114-f4ec-4f03-8273-51894145cd06",
                  "parent_uuid": "1c164cda-6e1d-46ef-90ab-e2275b8ab519",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d867c17-b875-4ec5-8e44-7b11aaf1f318",
              "parent_uuid": "78f1617a-21e7-4ab7-affe-6e562502b5ed",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77002cb7-64e4-4a22-b9e1-3d26607f26ee",
                  "parent_uuid": "6d867c17-b875-4ec5-8e44-7b11aaf1f318",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "05cc26ed-94c7-4af7-a16a-8e8028e6736b",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6832e765-c3bd-4c06-b165-8779d9719148",
              "parent_uuid": "05cc26ed-94c7-4af7-a16a-8e8028e6736b",
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
              "uuid": "681564eb-cd4f-4c66-9d52-2812b3d46b29",
              "parent_uuid": "05cc26ed-94c7-4af7-a16a-8e8028e6736b",
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
              "uuid": "449a48e8-68af-42af-98ff-5ed579942a43",
              "parent_uuid": "05cc26ed-94c7-4af7-a16a-8e8028e6736b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96ed6be5-a790-4ab1-bfe0-45314520821f",
                  "parent_uuid": "449a48e8-68af-42af-98ff-5ed579942a43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "425169c5-18d3-41c0-be27-f83cba52498a",
              "parent_uuid": "05cc26ed-94c7-4af7-a16a-8e8028e6736b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bbfe9ec-cbfc-4023-a80e-9f712317511b",
                  "parent_uuid": "425169c5-18d3-41c0-be27-f83cba52498a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c011e77-4f33-4dc0-8b31-d9dd64ca2c34",
              "parent_uuid": "05cc26ed-94c7-4af7-a16a-8e8028e6736b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee8fe3ba-e6d0-45e7-833f-83c552bb215b",
                  "parent_uuid": "4c011e77-4f33-4dc0-8b31-d9dd64ca2c34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e23269da-22a8-436c-afd4-c8f3dabd7f88",
              "parent_uuid": "05cc26ed-94c7-4af7-a16a-8e8028e6736b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b80edb93-1231-44bd-9bd6-9029968e63af",
                  "parent_uuid": "e23269da-22a8-436c-afd4-c8f3dabd7f88",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cb8457c0-3a44-4877-93fd-39e461cc830b",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a6a82454-f67b-4b95-b312-fc24581fe008",
              "parent_uuid": "cb8457c0-3a44-4877-93fd-39e461cc830b",
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
              "uuid": "9845ee89-b188-4d93-bb8c-112205f1f9b9",
              "parent_uuid": "cb8457c0-3a44-4877-93fd-39e461cc830b",
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
              "uuid": "3757197d-a283-4fc3-a642-6bc12239e92f",
              "parent_uuid": "cb8457c0-3a44-4877-93fd-39e461cc830b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1718b2a-6979-4915-9aa0-8d8ddbca181c",
                  "parent_uuid": "3757197d-a283-4fc3-a642-6bc12239e92f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c907b0b-051f-416b-b567-aa22bfc1cb34",
              "parent_uuid": "cb8457c0-3a44-4877-93fd-39e461cc830b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "444541ee-3c2d-488b-903d-d4a273492b0f",
                  "parent_uuid": "5c907b0b-051f-416b-b567-aa22bfc1cb34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "105cb651-43a0-42ba-b7c8-1b0f2bd83d9a",
              "parent_uuid": "cb8457c0-3a44-4877-93fd-39e461cc830b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2caa6ff9-2696-49f4-b714-90cbe5f2985c",
                  "parent_uuid": "105cb651-43a0-42ba-b7c8-1b0f2bd83d9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b53c19e-ea85-47c1-a4f3-712e3ce1e873",
              "parent_uuid": "cb8457c0-3a44-4877-93fd-39e461cc830b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3484c58f-234e-4114-b3ba-ba28ee2da987",
                  "parent_uuid": "0b53c19e-ea85-47c1-a4f3-712e3ce1e873",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a5c6745-8106-416e-acbf-0c22fb88098f",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65874d92-7220-4a1e-96a4-ca6383aa701e",
              "parent_uuid": "8a5c6745-8106-416e-acbf-0c22fb88098f",
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
              "uuid": "221eec7b-fc2a-4343-b91b-bcf83dc9d5f5",
              "parent_uuid": "8a5c6745-8106-416e-acbf-0c22fb88098f",
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
              "uuid": "aca495c4-82f5-4d22-ac41-755067d921f8",
              "parent_uuid": "8a5c6745-8106-416e-acbf-0c22fb88098f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e26e187-35dd-46ae-9ac9-dea2bf808b35",
                  "parent_uuid": "aca495c4-82f5-4d22-ac41-755067d921f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf31de1b-ac87-4ad7-a3af-bf34d70c6f96",
              "parent_uuid": "8a5c6745-8106-416e-acbf-0c22fb88098f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "760105c9-058a-4cb1-a6f7-78190dcc4776",
                  "parent_uuid": "bf31de1b-ac87-4ad7-a3af-bf34d70c6f96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c636a8c-ca0e-4f3b-ac65-78e0b9b5915b",
              "parent_uuid": "8a5c6745-8106-416e-acbf-0c22fb88098f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d81ca01-8431-4cbf-ab13-1c716a1215f4",
                  "parent_uuid": "2c636a8c-ca0e-4f3b-ac65-78e0b9b5915b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1930d8fd-9570-486c-8e39-9df0b4b92317",
              "parent_uuid": "8a5c6745-8106-416e-acbf-0c22fb88098f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57cb6f8f-d73d-4ad9-99c0-17158143fe15",
                  "parent_uuid": "1930d8fd-9570-486c-8e39-9df0b4b92317",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7997d1b2-ba05-4b86-8c5d-43dbb906a8ef",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ef19aa83-f061-4fc1-9314-a4d2d5086e40",
              "parent_uuid": "7997d1b2-ba05-4b86-8c5d-43dbb906a8ef",
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
          "uuid": "24170515-5b3e-4747-9419-31968d9dcc25",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e51be821-7a9e-4335-a2b9-65425e77a5b0",
              "parent_uuid": "24170515-5b3e-4747-9419-31968d9dcc25",
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
              "uuid": "11cc65ef-fd22-4244-b158-9ef9695fae3a",
              "parent_uuid": "24170515-5b3e-4747-9419-31968d9dcc25",
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
              "uuid": "1dd65dcb-f173-422b-880d-075e22faa057",
              "parent_uuid": "24170515-5b3e-4747-9419-31968d9dcc25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efa7b54b-7e9f-453a-9f82-6d83780ff63f",
                  "parent_uuid": "1dd65dcb-f173-422b-880d-075e22faa057",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79fef4e8-679d-4de0-b1c7-a5be3cf200dc",
              "parent_uuid": "24170515-5b3e-4747-9419-31968d9dcc25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f74816b-aa3c-4742-85ee-a7b1b01b98a9",
                  "parent_uuid": "79fef4e8-679d-4de0-b1c7-a5be3cf200dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "442fdcaa-c529-4b83-9da8-0d4b203fa96b",
              "parent_uuid": "24170515-5b3e-4747-9419-31968d9dcc25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08eb10e8-92f4-4b45-86c9-543b7a29d15a",
                  "parent_uuid": "442fdcaa-c529-4b83-9da8-0d4b203fa96b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa15aefd-ee8a-41c0-8bac-59954d49b2fc",
              "parent_uuid": "24170515-5b3e-4747-9419-31968d9dcc25",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd8acdd2-fe8d-4e59-aed7-4c308dd6efbf",
                  "parent_uuid": "aa15aefd-ee8a-41c0-8bac-59954d49b2fc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d9fbee6-bb07-403f-89c6-39899f45143c",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89b2ce68-b51e-46ed-b7b4-c8370e4adfe6",
              "parent_uuid": "6d9fbee6-bb07-403f-89c6-39899f45143c",
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
              "uuid": "d29b5c34-9b3b-420a-a48a-2a83df21b6aa",
              "parent_uuid": "6d9fbee6-bb07-403f-89c6-39899f45143c",
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
              "uuid": "37449cd6-ad18-4389-a7d7-5e28d6f1f610",
              "parent_uuid": "6d9fbee6-bb07-403f-89c6-39899f45143c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27adfd40-9e1b-4aec-9470-0dbd21b42660",
                  "parent_uuid": "37449cd6-ad18-4389-a7d7-5e28d6f1f610",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1f67f92a-bb9a-4a9f-96a4-73095b5f8b68",
              "parent_uuid": "6d9fbee6-bb07-403f-89c6-39899f45143c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53887788-b342-4dd7-a883-fb120a16b6a6",
                  "parent_uuid": "1f67f92a-bb9a-4a9f-96a4-73095b5f8b68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47987f0f-cddc-4ac4-ab8f-dcd1cc00b78f",
              "parent_uuid": "6d9fbee6-bb07-403f-89c6-39899f45143c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c0ca91d-6c15-4493-90b8-2716f2a716ec",
                  "parent_uuid": "47987f0f-cddc-4ac4-ab8f-dcd1cc00b78f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3a78672-d397-4cd8-bba8-78bd52fec55f",
              "parent_uuid": "6d9fbee6-bb07-403f-89c6-39899f45143c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4eb38ed9-01c7-4e11-9bc4-0c0328725cc7",
                  "parent_uuid": "b3a78672-d397-4cd8-bba8-78bd52fec55f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b8414daf-4605-4b4c-98f2-799148e69fe1",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb6de727-edcc-4654-b093-f2713181185e",
              "parent_uuid": "b8414daf-4605-4b4c-98f2-799148e69fe1",
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
          "uuid": "4ac0bcad-7bb8-44de-b2dc-2b6006f2f2c6",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b8c60cd-a3da-4038-a4c1-12070cdc68bd",
              "parent_uuid": "4ac0bcad-7bb8-44de-b2dc-2b6006f2f2c6",
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
          "uuid": "5a377361-668f-4c25-a5c4-60655b2f59d1",
          "parent_uuid": "0c7cda3a-28f0-43eb-9ac6-b85fef1bbae7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "513eb37e-33b5-480c-9f67-3b015b2b3e38",
              "parent_uuid": "5a377361-668f-4c25-a5c4-60655b2f59d1",
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
                  "uuid": "2afeea4a-0148-461f-a2a9-1a13f4b1ad76",
                  "parent_uuid": "513eb37e-33b5-480c-9f67-3b015b2b3e38",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
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

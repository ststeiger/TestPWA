
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
  "uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "816633b2-d53e-4eb7-8189-51a7da8fd824",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "9368f831-990f-4c6c-b13a-57577e4ed129",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "fe80f478-55be-460c-887a-a2f42d7da504",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "c7873667-1710-4901-a6ba-0913cacfd4b9",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "69b26c5f-1d39-4e0e-830c-b592b845b8f8",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "cd9272e9-efba-49e1-bba2-1e9521cea5ec",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "c49de613-c142-48cb-9386-082e26255492",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
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
      "uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
      "parent_uuid": "2187e1db-576a-4d89-9e06-47c082b57069",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "f7ef3f94-4933-4f66-a9a6-b4ef5a2958e1",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "3121b051-1129-4bfc-8346-617546cf0b7b",
              "parent_uuid": "f7ef3f94-4933-4f66-a9a6-b4ef5a2958e1",
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
              "uuid": "c5cf6349-f36d-4a71-8ff4-a3960b141167",
              "parent_uuid": "f7ef3f94-4933-4f66-a9a6-b4ef5a2958e1",
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
              "uuid": "449ac793-89fd-45a1-b859-389284b3862f",
              "parent_uuid": "f7ef3f94-4933-4f66-a9a6-b4ef5a2958e1",
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
              "uuid": "0587c155-1c61-498a-b0e9-28b45482c008",
              "parent_uuid": "f7ef3f94-4933-4f66-a9a6-b4ef5a2958e1",
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
          "uuid": "f3d16eaf-32ed-4194-92aa-55c55bd2ba8e",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "3d0c2614-a575-4315-a7a6-17bfef944801",
              "parent_uuid": "f3d16eaf-32ed-4194-92aa-55c55bd2ba8e",
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
              "uuid": "2ea5ac32-9f89-4a40-9b9d-7f956872e4b0",
              "parent_uuid": "f3d16eaf-32ed-4194-92aa-55c55bd2ba8e",
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
              "uuid": "f8f0e342-6848-47c2-803f-890c31c29792",
              "parent_uuid": "f3d16eaf-32ed-4194-92aa-55c55bd2ba8e",
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
              "uuid": "c104f9ae-9235-4e52-846a-683ecdce6800",
              "parent_uuid": "f3d16eaf-32ed-4194-92aa-55c55bd2ba8e",
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
          "uuid": "0234c606-52c2-4b40-9765-b7dd55d2f9ae",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0446c539-e02d-4c68-8c9a-cc7b6b0d521a",
              "parent_uuid": "0234c606-52c2-4b40-9765-b7dd55d2f9ae",
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
              "uuid": "f7f0766a-f647-4c3a-b135-6acaa9915075",
              "parent_uuid": "0234c606-52c2-4b40-9765-b7dd55d2f9ae",
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
              "uuid": "acd86e2b-4f7d-4cc0-90e4-2db38238db8b",
              "parent_uuid": "0234c606-52c2-4b40-9765-b7dd55d2f9ae",
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
              "uuid": "4139dd18-944c-4d0e-8773-5e44ce68d8fa",
              "parent_uuid": "0234c606-52c2-4b40-9765-b7dd55d2f9ae",
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
              "uuid": "6142ddf5-7515-492d-9528-cb2e3510561c",
              "parent_uuid": "0234c606-52c2-4b40-9765-b7dd55d2f9ae",
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
              "uuid": "17b305d3-e3a3-411a-8fe4-5ebf06845589",
              "parent_uuid": "0234c606-52c2-4b40-9765-b7dd55d2f9ae",
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
          "uuid": "3d26f09f-5ed6-41de-8150-7ff3cd23862b",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "209b4b84-c5c8-45d0-b9e5-d90dd6f4e74b",
              "parent_uuid": "3d26f09f-5ed6-41de-8150-7ff3cd23862b",
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
          "uuid": "975e804c-7d27-45b1-9d28-a0a2c5e8fb87",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca6751c0-4d07-4d9d-9539-ec3e2ec7e816",
              "parent_uuid": "975e804c-7d27-45b1-9d28-a0a2c5e8fb87",
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
              "uuid": "514fb809-8b12-478c-b8aa-cd79560eb24a",
              "parent_uuid": "975e804c-7d27-45b1-9d28-a0a2c5e8fb87",
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
              "uuid": "d273d98a-b838-4f39-9e6f-1a5fafd12ddd",
              "parent_uuid": "975e804c-7d27-45b1-9d28-a0a2c5e8fb87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a7ed04d-02ff-42c4-a025-7a759a67d50a",
                  "parent_uuid": "d273d98a-b838-4f39-9e6f-1a5fafd12ddd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b8e6ac6-30cf-4643-869f-52897c262c02",
              "parent_uuid": "975e804c-7d27-45b1-9d28-a0a2c5e8fb87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9be69ec-abf8-4718-b48e-243172574c43",
                  "parent_uuid": "8b8e6ac6-30cf-4643-869f-52897c262c02",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dee156c5-106d-4b1d-90dc-bbc779f36693",
              "parent_uuid": "975e804c-7d27-45b1-9d28-a0a2c5e8fb87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7be055ba-6894-4837-bb72-1d4f0065da9d",
                  "parent_uuid": "dee156c5-106d-4b1d-90dc-bbc779f36693",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd79ee1b-c866-4e40-a77c-1ce3412f66df",
              "parent_uuid": "975e804c-7d27-45b1-9d28-a0a2c5e8fb87",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fc3a6ad-f079-4340-a4eb-4aeb890c3c47",
                  "parent_uuid": "fd79ee1b-c866-4e40-a77c-1ce3412f66df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "59d6275f-b972-4b62-a2ea-bcaecd2562c7",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "191d9b4d-e0ed-45d0-b92f-bba6755f0c21",
              "parent_uuid": "59d6275f-b972-4b62-a2ea-bcaecd2562c7",
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
              "uuid": "e09e58f5-778f-46b0-b63f-b54314860d6e",
              "parent_uuid": "59d6275f-b972-4b62-a2ea-bcaecd2562c7",
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
              "uuid": "57009d62-8f22-4612-979f-8d603af1051c",
              "parent_uuid": "59d6275f-b972-4b62-a2ea-bcaecd2562c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22a0142e-5a28-445c-9e4a-e8b842dfdc12",
                  "parent_uuid": "57009d62-8f22-4612-979f-8d603af1051c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "469a0c03-1a85-4285-975d-3bd99c635178",
              "parent_uuid": "59d6275f-b972-4b62-a2ea-bcaecd2562c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "963985e1-ff37-425e-bd6e-621825bb3142",
                  "parent_uuid": "469a0c03-1a85-4285-975d-3bd99c635178",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f4e7e9a-67fc-43a4-a747-3c34453831fa",
              "parent_uuid": "59d6275f-b972-4b62-a2ea-bcaecd2562c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "45e9d8c0-72e5-4b2e-a5ef-b9c64de0b852",
                  "parent_uuid": "0f4e7e9a-67fc-43a4-a747-3c34453831fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "337b10ad-1d70-4fe7-bb07-359a09ef9d91",
              "parent_uuid": "59d6275f-b972-4b62-a2ea-bcaecd2562c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ef5c68a-956b-464a-9646-0a634fa7abfb",
                  "parent_uuid": "337b10ad-1d70-4fe7-bb07-359a09ef9d91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "86f706cb-669d-4fe1-a79b-92e12e83acbb",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87ba46a1-558e-47f6-bfe2-64124e4d5ddc",
              "parent_uuid": "86f706cb-669d-4fe1-a79b-92e12e83acbb",
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
              "uuid": "15bdffec-cf54-4f0b-a879-e46c26bc3141",
              "parent_uuid": "86f706cb-669d-4fe1-a79b-92e12e83acbb",
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
              "uuid": "482abbf8-d7bc-4df1-b606-ce8cec33904e",
              "parent_uuid": "86f706cb-669d-4fe1-a79b-92e12e83acbb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f1b7ee3-7544-44c5-93db-3745b52080a8",
                  "parent_uuid": "482abbf8-d7bc-4df1-b606-ce8cec33904e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c238f5e-c167-4a99-be44-c6e9a74fdfd8",
              "parent_uuid": "86f706cb-669d-4fe1-a79b-92e12e83acbb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef5ad616-72f4-49ba-8a92-7e4e60017ac3",
                  "parent_uuid": "4c238f5e-c167-4a99-be44-c6e9a74fdfd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cc300c6-543b-4d78-bf81-32fe14da8e78",
              "parent_uuid": "86f706cb-669d-4fe1-a79b-92e12e83acbb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f649330-01e0-4cf6-af63-33bef801f1ed",
                  "parent_uuid": "2cc300c6-543b-4d78-bf81-32fe14da8e78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c24d4721-2108-467d-bb9f-94be095609fb",
              "parent_uuid": "86f706cb-669d-4fe1-a79b-92e12e83acbb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68eeef3b-5270-4991-86e5-65ae8b2b6724",
                  "parent_uuid": "c24d4721-2108-467d-bb9f-94be095609fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a1f6d103-87aa-4892-a9c9-cd3c8c80bc98",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1efbaeeb-6fd0-495a-8257-566c25234c38",
              "parent_uuid": "a1f6d103-87aa-4892-a9c9-cd3c8c80bc98",
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
              "uuid": "66c6548e-e32c-4c7e-8f76-512b492f58bb",
              "parent_uuid": "a1f6d103-87aa-4892-a9c9-cd3c8c80bc98",
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
              "uuid": "87b365b2-a9f4-4edb-aad2-6468edafbb74",
              "parent_uuid": "a1f6d103-87aa-4892-a9c9-cd3c8c80bc98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc20df26-cbac-488b-ba1b-eeb5136648b9",
                  "parent_uuid": "87b365b2-a9f4-4edb-aad2-6468edafbb74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "386006bd-beee-4522-905e-136549cde1d2",
              "parent_uuid": "a1f6d103-87aa-4892-a9c9-cd3c8c80bc98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55e6692f-6358-4f12-b75c-5b832d6e4483",
                  "parent_uuid": "386006bd-beee-4522-905e-136549cde1d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f990c615-3b2d-455b-a0f6-489447b2cae1",
              "parent_uuid": "a1f6d103-87aa-4892-a9c9-cd3c8c80bc98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98fe8ff2-0a2c-469f-b07b-53b62b8b9353",
                  "parent_uuid": "f990c615-3b2d-455b-a0f6-489447b2cae1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "096ccfae-a933-4c9a-9a59-a1d4b4890716",
              "parent_uuid": "a1f6d103-87aa-4892-a9c9-cd3c8c80bc98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "302ee484-667f-42d9-89b9-fb57e11081d3",
                  "parent_uuid": "096ccfae-a933-4c9a-9a59-a1d4b4890716",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "50ac6580-4ce8-4291-9d9d-a67b1b6fb744",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb97c2e1-8cbd-4674-abdb-4b6dc11c2589",
              "parent_uuid": "50ac6580-4ce8-4291-9d9d-a67b1b6fb744",
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
              "uuid": "acbdd3a5-8ae6-4a0a-af28-ec3252234090",
              "parent_uuid": "50ac6580-4ce8-4291-9d9d-a67b1b6fb744",
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
              "uuid": "b61c1ad9-ff91-4828-b89a-843de8c18e65",
              "parent_uuid": "50ac6580-4ce8-4291-9d9d-a67b1b6fb744",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07440d1c-d7f1-4004-9e20-7cdf51beb4ab",
                  "parent_uuid": "b61c1ad9-ff91-4828-b89a-843de8c18e65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abd20bce-7ef3-4e2c-94be-fa9ef50c2074",
              "parent_uuid": "50ac6580-4ce8-4291-9d9d-a67b1b6fb744",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4f3e77c-b6e3-4512-8af4-3bbed79efd94",
                  "parent_uuid": "abd20bce-7ef3-4e2c-94be-fa9ef50c2074",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18c41b80-519e-4310-863d-a592d295bfba",
              "parent_uuid": "50ac6580-4ce8-4291-9d9d-a67b1b6fb744",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8853779e-1e2d-4970-8dde-8eb790bae6e7",
                  "parent_uuid": "18c41b80-519e-4310-863d-a592d295bfba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "630f14c4-5fd1-4058-bd7c-9c2419795330",
              "parent_uuid": "50ac6580-4ce8-4291-9d9d-a67b1b6fb744",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b07175c2-05e9-40d3-bc8f-2e24ba1586b7",
                  "parent_uuid": "630f14c4-5fd1-4058-bd7c-9c2419795330",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "24d08c49-b527-40d1-8639-5c2b7e2d8b90",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a318a013-1f4a-4187-b332-0218deaed106",
              "parent_uuid": "24d08c49-b527-40d1-8639-5c2b7e2d8b90",
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
              "uuid": "da71b226-1d72-416d-b57e-13c351343235",
              "parent_uuid": "24d08c49-b527-40d1-8639-5c2b7e2d8b90",
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
              "uuid": "b7c48905-ae85-426a-9c2b-8d763b7ba08f",
              "parent_uuid": "24d08c49-b527-40d1-8639-5c2b7e2d8b90",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8433dbcf-3ef3-4ddf-ae12-a1f0a0836f8d",
                  "parent_uuid": "b7c48905-ae85-426a-9c2b-8d763b7ba08f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "118b3302-f9f1-4688-bcf2-ddce70cad686",
              "parent_uuid": "24d08c49-b527-40d1-8639-5c2b7e2d8b90",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77f43407-c415-4143-b50c-0715ad9a53cf",
                  "parent_uuid": "118b3302-f9f1-4688-bcf2-ddce70cad686",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24690a0a-3c77-4844-943c-7af642c75351",
              "parent_uuid": "24d08c49-b527-40d1-8639-5c2b7e2d8b90",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77bd3b74-5a06-455a-84a1-2079bd4057c5",
                  "parent_uuid": "24690a0a-3c77-4844-943c-7af642c75351",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c145fdbe-2424-412e-8ce5-883f78e95ae3",
              "parent_uuid": "24d08c49-b527-40d1-8639-5c2b7e2d8b90",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f123370b-6efd-4aa3-90d8-925e631e238f",
                  "parent_uuid": "c145fdbe-2424-412e-8ce5-883f78e95ae3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1f6ffdfd-1fc0-46fd-934a-2fffc876cb20",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "244ac632-99d6-44c0-808f-16d9e8ed5320",
              "parent_uuid": "1f6ffdfd-1fc0-46fd-934a-2fffc876cb20",
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
              "uuid": "037714e7-ecaf-4f41-b9b9-ad187d7f7624",
              "parent_uuid": "1f6ffdfd-1fc0-46fd-934a-2fffc876cb20",
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
              "uuid": "304c1388-70ab-45ce-8d57-2909c159ce32",
              "parent_uuid": "1f6ffdfd-1fc0-46fd-934a-2fffc876cb20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78b8cfe2-e213-49b6-b546-36bef5cec8ef",
                  "parent_uuid": "304c1388-70ab-45ce-8d57-2909c159ce32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8898e38c-597a-49cd-be10-4eb20e9c27aa",
              "parent_uuid": "1f6ffdfd-1fc0-46fd-934a-2fffc876cb20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "355cab27-55f9-4ccb-aa54-84005e81d110",
                  "parent_uuid": "8898e38c-597a-49cd-be10-4eb20e9c27aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f600843c-9230-4c28-9447-58814f7f5c35",
              "parent_uuid": "1f6ffdfd-1fc0-46fd-934a-2fffc876cb20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c0a47f4-af2c-46f4-9cae-759b329b605f",
                  "parent_uuid": "f600843c-9230-4c28-9447-58814f7f5c35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebad7bb1-50ef-4913-a7bb-16567388c477",
              "parent_uuid": "1f6ffdfd-1fc0-46fd-934a-2fffc876cb20",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3f5b850-6774-4d2d-9e8e-30152d282ef0",
                  "parent_uuid": "ebad7bb1-50ef-4913-a7bb-16567388c477",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2b84f278-dc6d-47f2-88c7-f440ed70e352",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bb99a8f-81f9-413a-83b6-6853a0b72187",
              "parent_uuid": "2b84f278-dc6d-47f2-88c7-f440ed70e352",
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
              "uuid": "4ac973e3-9d15-4cfd-85a8-9b50523e1c78",
              "parent_uuid": "2b84f278-dc6d-47f2-88c7-f440ed70e352",
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
              "uuid": "b41ce9fe-cb34-4efc-9458-13143d687490",
              "parent_uuid": "2b84f278-dc6d-47f2-88c7-f440ed70e352",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f0d1d88-bc2a-41ce-8990-2e52f829a907",
                  "parent_uuid": "b41ce9fe-cb34-4efc-9458-13143d687490",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec41e23f-8329-49b0-86fb-ed18ef280598",
              "parent_uuid": "2b84f278-dc6d-47f2-88c7-f440ed70e352",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a81a699-c3c8-4b53-999b-8af71985d1c1",
                  "parent_uuid": "ec41e23f-8329-49b0-86fb-ed18ef280598",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcb348c9-3ece-4216-be58-166e07b9e854",
              "parent_uuid": "2b84f278-dc6d-47f2-88c7-f440ed70e352",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbfcf544-d9a3-41db-8db7-adcd97ca021f",
                  "parent_uuid": "fcb348c9-3ece-4216-be58-166e07b9e854",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4dc4866-69e4-4a58-b36e-7412521ea19a",
              "parent_uuid": "2b84f278-dc6d-47f2-88c7-f440ed70e352",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cdb1895-9bcf-4b3f-8607-6c3a6b158764",
                  "parent_uuid": "e4dc4866-69e4-4a58-b36e-7412521ea19a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6cf29251-7c9b-45c0-a924-1ffe9df7c031",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "36ced18b-564c-4c74-8f2f-64b944eb02b4",
              "parent_uuid": "6cf29251-7c9b-45c0-a924-1ffe9df7c031",
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
              "uuid": "1f42c9d4-a444-445d-b2e9-22df1db86673",
              "parent_uuid": "6cf29251-7c9b-45c0-a924-1ffe9df7c031",
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
              "uuid": "c074aabb-c9a4-4295-91e4-489b9614fd98",
              "parent_uuid": "6cf29251-7c9b-45c0-a924-1ffe9df7c031",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54c05ede-fd95-45ff-b2d6-1797e327af36",
                  "parent_uuid": "c074aabb-c9a4-4295-91e4-489b9614fd98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83e254a7-cab8-4ada-837e-09e3c8c94fde",
              "parent_uuid": "6cf29251-7c9b-45c0-a924-1ffe9df7c031",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa8d74c6-10bb-4546-ad7e-29b505cc6035",
                  "parent_uuid": "83e254a7-cab8-4ada-837e-09e3c8c94fde",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2461bbe6-1e6b-44f5-adb0-4027c75c7e04",
              "parent_uuid": "6cf29251-7c9b-45c0-a924-1ffe9df7c031",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd146863-28ad-4b43-849e-592876bf01dc",
                  "parent_uuid": "2461bbe6-1e6b-44f5-adb0-4027c75c7e04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "530f93dc-d915-4711-aed4-e5533c2a0147",
              "parent_uuid": "6cf29251-7c9b-45c0-a924-1ffe9df7c031",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07f1bf29-de2d-4fad-9c58-76c444d4cfb7",
                  "parent_uuid": "530f93dc-d915-4711-aed4-e5533c2a0147",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "45eed7f1-eabc-475c-95cb-6ea192598580",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9013c0b5-71ed-481f-babf-d652fdb86d21",
              "parent_uuid": "45eed7f1-eabc-475c-95cb-6ea192598580",
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
              "uuid": "71d6aaa8-fcf1-4b7a-a2a8-2998451e4215",
              "parent_uuid": "45eed7f1-eabc-475c-95cb-6ea192598580",
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
              "uuid": "7aa0e445-6b9e-415b-9b8f-a8afe288f810",
              "parent_uuid": "45eed7f1-eabc-475c-95cb-6ea192598580",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97648b4b-c4ed-438d-8243-69425d60cae4",
                  "parent_uuid": "7aa0e445-6b9e-415b-9b8f-a8afe288f810",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "12791b27-a3d6-4102-8649-05df3398a1b2",
              "parent_uuid": "45eed7f1-eabc-475c-95cb-6ea192598580",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7cfa9d94-0ecb-4646-adb6-0fcd5ca89a87",
                  "parent_uuid": "12791b27-a3d6-4102-8649-05df3398a1b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "197fcd84-8620-4115-8a6f-72b08b1772cb",
              "parent_uuid": "45eed7f1-eabc-475c-95cb-6ea192598580",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b666b7f-294b-49fe-9ee4-0882a8433e13",
                  "parent_uuid": "197fcd84-8620-4115-8a6f-72b08b1772cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7714a7ec-f2b5-428c-987e-0901aef62422",
              "parent_uuid": "45eed7f1-eabc-475c-95cb-6ea192598580",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63ec70e8-4988-4663-bb97-5dd1181e6e2f",
                  "parent_uuid": "7714a7ec-f2b5-428c-987e-0901aef62422",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3c09640d-121c-414b-be75-48c7464c2860",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee7fd292-ef4d-4572-bb24-ab6285a4c8bc",
              "parent_uuid": "3c09640d-121c-414b-be75-48c7464c2860",
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
              "uuid": "9697d2d6-1b5e-4b4f-96e5-71975607be8c",
              "parent_uuid": "3c09640d-121c-414b-be75-48c7464c2860",
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
              "uuid": "0d0b202b-f280-4799-a5c0-c2886a3ee354",
              "parent_uuid": "3c09640d-121c-414b-be75-48c7464c2860",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7a5dbc5-dd36-444c-8aee-49013f36c70e",
                  "parent_uuid": "0d0b202b-f280-4799-a5c0-c2886a3ee354",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c02b5da-d7d0-4a1c-842c-ddf8bd12a28a",
              "parent_uuid": "3c09640d-121c-414b-be75-48c7464c2860",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12b8cc56-63a0-4219-92b8-1665ecfa44c4",
                  "parent_uuid": "9c02b5da-d7d0-4a1c-842c-ddf8bd12a28a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b5f2b49-c25e-41ec-a0b3-37461f416cef",
              "parent_uuid": "3c09640d-121c-414b-be75-48c7464c2860",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9d3c466-ff37-400a-b61b-c05a5163d77f",
                  "parent_uuid": "3b5f2b49-c25e-41ec-a0b3-37461f416cef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13bd026d-0249-4525-a43b-ae40ffb887c3",
              "parent_uuid": "3c09640d-121c-414b-be75-48c7464c2860",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3809b022-b258-413a-af2f-933b8b062b17",
                  "parent_uuid": "13bd026d-0249-4525-a43b-ae40ffb887c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cc0cd404-8f3e-43dd-bf05-54030090c173",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4607cb8f-92f7-4011-b3b2-22317f1503b4",
              "parent_uuid": "cc0cd404-8f3e-43dd-bf05-54030090c173",
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
              "uuid": "54f40bef-eae1-4a6d-a4f0-5811509352c3",
              "parent_uuid": "cc0cd404-8f3e-43dd-bf05-54030090c173",
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
              "uuid": "e60ff66b-c4c7-493e-8524-03d9b92eeef0",
              "parent_uuid": "cc0cd404-8f3e-43dd-bf05-54030090c173",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64806bbc-38ec-48be-a2a3-5026efbbb5b3",
                  "parent_uuid": "e60ff66b-c4c7-493e-8524-03d9b92eeef0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bae63a3d-7aa6-4543-89f4-c0026c3dc8e5",
              "parent_uuid": "cc0cd404-8f3e-43dd-bf05-54030090c173",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0476e999-ae6b-4232-872b-4b3a6ed5eb00",
                  "parent_uuid": "bae63a3d-7aa6-4543-89f4-c0026c3dc8e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7230775f-4539-43f9-97b7-6ff16df35a22",
              "parent_uuid": "cc0cd404-8f3e-43dd-bf05-54030090c173",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9bda5dea-9fbc-4752-948e-314990f9c2b5",
                  "parent_uuid": "7230775f-4539-43f9-97b7-6ff16df35a22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4f9e7c1-647b-47de-a161-a31024dca81d",
              "parent_uuid": "cc0cd404-8f3e-43dd-bf05-54030090c173",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7a851e4-d48e-48a7-a91c-db084b1533f4",
                  "parent_uuid": "d4f9e7c1-647b-47de-a161-a31024dca81d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "12ab0159-1f0c-4de2-921f-9acf27329f89",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0f02e1f-8571-49ce-9b69-a5f20475c333",
              "parent_uuid": "12ab0159-1f0c-4de2-921f-9acf27329f89",
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
              "uuid": "97fe2d5d-52ca-4612-b4bf-60bf004accbf",
              "parent_uuid": "12ab0159-1f0c-4de2-921f-9acf27329f89",
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
              "uuid": "0f0a91b5-fb0f-48dd-b9c2-cf53ad041307",
              "parent_uuid": "12ab0159-1f0c-4de2-921f-9acf27329f89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f9bdb3bf-c5e2-4c01-8b8a-6d90214f99aa",
                  "parent_uuid": "0f0a91b5-fb0f-48dd-b9c2-cf53ad041307",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4dee3006-0087-4987-bbd6-6bab4bebe65d",
              "parent_uuid": "12ab0159-1f0c-4de2-921f-9acf27329f89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a27b02fa-be30-4dc7-b3c9-7dc770e171ba",
                  "parent_uuid": "4dee3006-0087-4987-bbd6-6bab4bebe65d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8ba5c90-df76-4d22-9ee9-2de3b028e59f",
              "parent_uuid": "12ab0159-1f0c-4de2-921f-9acf27329f89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "163a127a-dd61-4437-93dc-5aad9cb07cdf",
                  "parent_uuid": "f8ba5c90-df76-4d22-9ee9-2de3b028e59f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ad76bd3-5263-4525-9d3f-d0feeb1e030a",
              "parent_uuid": "12ab0159-1f0c-4de2-921f-9acf27329f89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eefd2654-cd6f-440f-87d6-10a440ff721a",
                  "parent_uuid": "6ad76bd3-5263-4525-9d3f-d0feeb1e030a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18c38c00-8876-4dad-9875-65a6d185e144",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c229dcdd-a922-4aab-9e38-26ec118ddab1",
              "parent_uuid": "18c38c00-8876-4dad-9875-65a6d185e144",
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
              "uuid": "99ca8543-27c6-493d-a036-985a25cf6686",
              "parent_uuid": "18c38c00-8876-4dad-9875-65a6d185e144",
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
              "uuid": "e5f1a8e9-84d8-47d4-8a60-0c188a323b7d",
              "parent_uuid": "18c38c00-8876-4dad-9875-65a6d185e144",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "891f4245-c49f-426b-bc8d-6c0df0b97c9a",
                  "parent_uuid": "e5f1a8e9-84d8-47d4-8a60-0c188a323b7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "19e53161-31db-4301-a03d-edc34b5942fd",
              "parent_uuid": "18c38c00-8876-4dad-9875-65a6d185e144",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0cb0c23-9506-4d11-9b30-482bf44bb63e",
                  "parent_uuid": "19e53161-31db-4301-a03d-edc34b5942fd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edecd8a5-e48e-4302-ad25-e6fd92c83000",
              "parent_uuid": "18c38c00-8876-4dad-9875-65a6d185e144",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ecbd869-930f-4899-9651-d0fcdbea4d45",
                  "parent_uuid": "edecd8a5-e48e-4302-ad25-e6fd92c83000",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4defbe6d-32fe-425d-9e97-c9423761ab26",
              "parent_uuid": "18c38c00-8876-4dad-9875-65a6d185e144",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3307000-7c9f-43f9-ad09-ecea5eb6fb64",
                  "parent_uuid": "4defbe6d-32fe-425d-9e97-c9423761ab26",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "32aa99e2-d1ec-45ec-add7-48126d855f73",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3447be1a-c689-4d3e-9ccd-f2c48ecc7349",
              "parent_uuid": "32aa99e2-d1ec-45ec-add7-48126d855f73",
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
          "uuid": "73d3ed4a-c912-4ed2-bce1-6587b33b3397",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3fbc8fc7-ec8b-46c0-8394-2aa2b1b8610c",
              "parent_uuid": "73d3ed4a-c912-4ed2-bce1-6587b33b3397",
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
          "uuid": "82174268-94e2-489a-92c7-74b814715df4",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f38ab725-327b-4791-9be9-883b35a7f8db",
              "parent_uuid": "82174268-94e2-489a-92c7-74b814715df4",
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
              "uuid": "917fee5f-e6d3-4e62-a86f-e2501b21d6ea",
              "parent_uuid": "82174268-94e2-489a-92c7-74b814715df4",
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
              "uuid": "d68e867a-977f-47ba-aef9-9b8d4b41f865",
              "parent_uuid": "82174268-94e2-489a-92c7-74b814715df4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccc18c6b-5582-4e76-9101-b74be8c62b09",
                  "parent_uuid": "d68e867a-977f-47ba-aef9-9b8d4b41f865",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55ab37a8-0d45-43d1-954c-16ae1edee5fb",
              "parent_uuid": "82174268-94e2-489a-92c7-74b814715df4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1f90e74-bd10-4d1c-8922-2c53b19d8e4f",
                  "parent_uuid": "55ab37a8-0d45-43d1-954c-16ae1edee5fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9571542-59c9-4587-9456-d4fd620ea917",
              "parent_uuid": "82174268-94e2-489a-92c7-74b814715df4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "377bc0d5-bfc3-4d60-ae89-8bb07c6b33ae",
                  "parent_uuid": "a9571542-59c9-4587-9456-d4fd620ea917",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9363eff5-b4ea-40a3-9e6e-d7d7aa00e551",
              "parent_uuid": "82174268-94e2-489a-92c7-74b814715df4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "003b373d-8d5a-44d2-b142-fde17196b73b",
                  "parent_uuid": "9363eff5-b4ea-40a3-9e6e-d7d7aa00e551",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e2d4ce17-2bb1-4fbd-a46f-83c6800a568b",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2e918ed-773e-4cd6-8cca-d98e03f7eafe",
              "parent_uuid": "e2d4ce17-2bb1-4fbd-a46f-83c6800a568b",
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
              "uuid": "eb51798e-3154-4f1a-83a4-3307282a12aa",
              "parent_uuid": "e2d4ce17-2bb1-4fbd-a46f-83c6800a568b",
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
              "uuid": "8658796c-4714-4c66-aa54-d4651e68620c",
              "parent_uuid": "e2d4ce17-2bb1-4fbd-a46f-83c6800a568b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d81ea66e-d2a8-49c0-81e8-ba8a0858b26d",
                  "parent_uuid": "8658796c-4714-4c66-aa54-d4651e68620c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0256000-6c52-4efc-980b-ca04c2b4f8f7",
              "parent_uuid": "e2d4ce17-2bb1-4fbd-a46f-83c6800a568b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "666c8fd3-c6e5-429c-b804-c2733adc319d",
                  "parent_uuid": "e0256000-6c52-4efc-980b-ca04c2b4f8f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c5f39b9-6ec1-401d-98a5-4794b8161694",
              "parent_uuid": "e2d4ce17-2bb1-4fbd-a46f-83c6800a568b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e402de1-12a2-4847-93bf-d91d0e445873",
                  "parent_uuid": "1c5f39b9-6ec1-401d-98a5-4794b8161694",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52aca4ff-d59a-465a-b777-a146893fba96",
              "parent_uuid": "e2d4ce17-2bb1-4fbd-a46f-83c6800a568b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85435dae-77bc-481c-9aa8-145f41772581",
                  "parent_uuid": "52aca4ff-d59a-465a-b777-a146893fba96",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "46de42d7-3762-4c48-8ac9-c74ecbd1f99b",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06238a74-a912-4e5c-acb0-1457ec5f5d2f",
              "parent_uuid": "46de42d7-3762-4c48-8ac9-c74ecbd1f99b",
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
              "uuid": "b9f44f63-fe82-4e3d-a0f5-896eb0dd950c",
              "parent_uuid": "46de42d7-3762-4c48-8ac9-c74ecbd1f99b",
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
              "uuid": "db48fb3b-9a96-4700-b389-51218fdfcc91",
              "parent_uuid": "46de42d7-3762-4c48-8ac9-c74ecbd1f99b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85d00802-573f-492a-af73-4c8c0323a989",
                  "parent_uuid": "db48fb3b-9a96-4700-b389-51218fdfcc91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "625c0fee-d1e1-4577-9a05-08a4b21d801b",
              "parent_uuid": "46de42d7-3762-4c48-8ac9-c74ecbd1f99b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2a3f2a0-eeb8-4a1a-884c-ce4631411182",
                  "parent_uuid": "625c0fee-d1e1-4577-9a05-08a4b21d801b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6473f6ac-054a-4129-a3cd-2d71e0f55479",
              "parent_uuid": "46de42d7-3762-4c48-8ac9-c74ecbd1f99b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2b1bde4e-e6ce-4a19-a493-c5565e4f1edd",
                  "parent_uuid": "6473f6ac-054a-4129-a3cd-2d71e0f55479",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "20e1d1d3-4f57-452a-bcd3-6d8bdf53f868",
              "parent_uuid": "46de42d7-3762-4c48-8ac9-c74ecbd1f99b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e356276-8fe5-477a-b9f3-6e519b3834e4",
                  "parent_uuid": "20e1d1d3-4f57-452a-bcd3-6d8bdf53f868",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "046f59a8-137c-410e-a8e2-005fba59179f",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae30e5f4-aabc-4776-a859-3e7375c8015f",
              "parent_uuid": "046f59a8-137c-410e-a8e2-005fba59179f",
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
              "uuid": "8a9f2dcb-76ad-47ab-8d5a-5c80601453b1",
              "parent_uuid": "046f59a8-137c-410e-a8e2-005fba59179f",
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
              "uuid": "66d1870b-5ebd-4ee4-a85c-956cfc7e61f0",
              "parent_uuid": "046f59a8-137c-410e-a8e2-005fba59179f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37f6cc95-4f9c-45b7-909a-15b2cd6fedf9",
                  "parent_uuid": "66d1870b-5ebd-4ee4-a85c-956cfc7e61f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d779e27-9227-4878-8c63-1542f5fd2c50",
              "parent_uuid": "046f59a8-137c-410e-a8e2-005fba59179f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "054d2e91-a2a2-4731-a2eb-aa7c3bdb7f53",
                  "parent_uuid": "1d779e27-9227-4878-8c63-1542f5fd2c50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e83fb046-2f05-40de-b3c3-20f89a3c82a2",
              "parent_uuid": "046f59a8-137c-410e-a8e2-005fba59179f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "075863f5-a8f6-4e8f-a14c-62eee3df2de6",
                  "parent_uuid": "e83fb046-2f05-40de-b3c3-20f89a3c82a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee3b324c-1cee-4554-9f40-43f91fe68adb",
              "parent_uuid": "046f59a8-137c-410e-a8e2-005fba59179f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e70cec6d-4a93-4cd2-b35f-81accfe929d8",
                  "parent_uuid": "ee3b324c-1cee-4554-9f40-43f91fe68adb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c4da4ba4-c8b5-4832-854e-e1b7d04a1655",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "598cb718-7b26-4442-88da-927e9735e9f7",
              "parent_uuid": "c4da4ba4-c8b5-4832-854e-e1b7d04a1655",
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
              "uuid": "83e94054-fa28-43df-801d-e24734a1df30",
              "parent_uuid": "c4da4ba4-c8b5-4832-854e-e1b7d04a1655",
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
              "uuid": "6880c1eb-e45c-4b3e-a490-2e3725a851d9",
              "parent_uuid": "c4da4ba4-c8b5-4832-854e-e1b7d04a1655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33e7e139-ab1b-46b6-b72d-cb499c918839",
                  "parent_uuid": "6880c1eb-e45c-4b3e-a490-2e3725a851d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00f99679-6c3f-462a-a63e-59ac703e07f2",
              "parent_uuid": "c4da4ba4-c8b5-4832-854e-e1b7d04a1655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b0a3456-66d2-4b3d-92cd-0321f6ea81ff",
                  "parent_uuid": "00f99679-6c3f-462a-a63e-59ac703e07f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0998f985-af0e-4aeb-91f6-1da605376e8f",
              "parent_uuid": "c4da4ba4-c8b5-4832-854e-e1b7d04a1655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42730b3d-2cc3-4718-8a84-95f2429aa386",
                  "parent_uuid": "0998f985-af0e-4aeb-91f6-1da605376e8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f402c34-6b6c-4198-9427-2faa1cfa960c",
              "parent_uuid": "c4da4ba4-c8b5-4832-854e-e1b7d04a1655",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "818855e7-89cf-4737-9286-2e40919cb593",
                  "parent_uuid": "2f402c34-6b6c-4198-9427-2faa1cfa960c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ac883982-eb38-4d73-bd9b-117662b6d223",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd1c872e-f62a-40eb-af44-a76305a45d9a",
              "parent_uuid": "ac883982-eb38-4d73-bd9b-117662b6d223",
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
              "uuid": "edd8c728-9bdb-4510-9b88-01a0374e78f5",
              "parent_uuid": "ac883982-eb38-4d73-bd9b-117662b6d223",
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
              "uuid": "c7f918da-97a6-4b75-9f25-bce9d5db3b78",
              "parent_uuid": "ac883982-eb38-4d73-bd9b-117662b6d223",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc242311-6062-4eb7-aae8-218740a47523",
                  "parent_uuid": "c7f918da-97a6-4b75-9f25-bce9d5db3b78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5233f2b6-5e78-46bc-89a0-2852f1c2e5e9",
              "parent_uuid": "ac883982-eb38-4d73-bd9b-117662b6d223",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "547c4445-a27f-446e-95a7-3f45086fa3e5",
                  "parent_uuid": "5233f2b6-5e78-46bc-89a0-2852f1c2e5e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7724941-8f02-4a56-b19a-6085907aba29",
              "parent_uuid": "ac883982-eb38-4d73-bd9b-117662b6d223",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19346af9-f71c-4739-be66-83d5322cbac7",
                  "parent_uuid": "f7724941-8f02-4a56-b19a-6085907aba29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "437a271f-585b-49b2-af67-74467e69fa7b",
              "parent_uuid": "ac883982-eb38-4d73-bd9b-117662b6d223",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e50c68f5-43cf-4102-b7d6-036ae3e7e65e",
                  "parent_uuid": "437a271f-585b-49b2-af67-74467e69fa7b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "219bf1f8-4be6-40ac-b2fe-1edb84241e3a",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e375f3dc-4017-4778-8222-78dd0ec8ebbd",
              "parent_uuid": "219bf1f8-4be6-40ac-b2fe-1edb84241e3a",
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
              "uuid": "dbab0e4c-f69f-47e6-a012-03bf8c95a03a",
              "parent_uuid": "219bf1f8-4be6-40ac-b2fe-1edb84241e3a",
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
              "uuid": "4a9933a6-a188-402c-bf5f-c540d16d3b5f",
              "parent_uuid": "219bf1f8-4be6-40ac-b2fe-1edb84241e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2f0910d-5391-493a-b96a-64a3309c4630",
                  "parent_uuid": "4a9933a6-a188-402c-bf5f-c540d16d3b5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "888e794a-5aca-41aa-89dc-24c8a2bdc3c8",
              "parent_uuid": "219bf1f8-4be6-40ac-b2fe-1edb84241e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57868faf-ed1b-478d-ab36-10fe6e418c10",
                  "parent_uuid": "888e794a-5aca-41aa-89dc-24c8a2bdc3c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f6588b3-f104-4b29-a300-9cba7e5668ea",
              "parent_uuid": "219bf1f8-4be6-40ac-b2fe-1edb84241e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c24c1d47-a1ac-4c28-9b51-b2e8b5be95d3",
                  "parent_uuid": "5f6588b3-f104-4b29-a300-9cba7e5668ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f22a68f-f6ff-487a-acca-3c428c671c12",
              "parent_uuid": "219bf1f8-4be6-40ac-b2fe-1edb84241e3a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03bf9581-c569-4338-91dc-c98b7699397c",
                  "parent_uuid": "2f22a68f-f6ff-487a-acca-3c428c671c12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "59626186-5d9f-49ea-a4ed-c9c7f5a96203",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3207d812-e57a-4094-ba10-d350ed188b7e",
              "parent_uuid": "59626186-5d9f-49ea-a4ed-c9c7f5a96203",
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
              "uuid": "5a811e8d-d668-4954-8c38-face72200ee2",
              "parent_uuid": "59626186-5d9f-49ea-a4ed-c9c7f5a96203",
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
              "uuid": "8185db1f-50c7-4503-9db9-6d884b5f0357",
              "parent_uuid": "59626186-5d9f-49ea-a4ed-c9c7f5a96203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4de7c1cf-586c-4d76-84e2-3bf5fb221f15",
                  "parent_uuid": "8185db1f-50c7-4503-9db9-6d884b5f0357",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "101dcd32-c65a-4dff-8967-add5bb1e5ed7",
              "parent_uuid": "59626186-5d9f-49ea-a4ed-c9c7f5a96203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07c20a48-d0cb-4500-aa7f-d2fd2781578f",
                  "parent_uuid": "101dcd32-c65a-4dff-8967-add5bb1e5ed7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a3926ce-fa41-4c94-b825-d921adf27839",
              "parent_uuid": "59626186-5d9f-49ea-a4ed-c9c7f5a96203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c080baee-8165-476f-9a57-db9b3223807d",
                  "parent_uuid": "2a3926ce-fa41-4c94-b825-d921adf27839",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f5a10d2-282b-4352-b01e-6d0c4ad5ebe6",
              "parent_uuid": "59626186-5d9f-49ea-a4ed-c9c7f5a96203",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df4ce10d-4e06-493b-b215-900eb5d4bc1b",
                  "parent_uuid": "6f5a10d2-282b-4352-b01e-6d0c4ad5ebe6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "699b5e68-ab64-45b5-880c-1e04258015a2",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "277fde73-f806-4bac-b850-13f280411de3",
              "parent_uuid": "699b5e68-ab64-45b5-880c-1e04258015a2",
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
          "uuid": "0c2541f7-dae1-4356-b64f-a78e58d5a65b",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06cf75a3-cecc-4b00-8cd0-cf9596ba1d7f",
              "parent_uuid": "0c2541f7-dae1-4356-b64f-a78e58d5a65b",
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
              "uuid": "8690eee8-51ed-481c-bb1b-70ee0b7a8610",
              "parent_uuid": "0c2541f7-dae1-4356-b64f-a78e58d5a65b",
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
              "uuid": "0eeda922-cc8b-4f70-8804-8d73692e884f",
              "parent_uuid": "0c2541f7-dae1-4356-b64f-a78e58d5a65b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35e18336-093a-4abe-b6a0-8f1eac643223",
                  "parent_uuid": "0eeda922-cc8b-4f70-8804-8d73692e884f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52ca6fb4-2256-4353-b3e2-c372c8ddf211",
              "parent_uuid": "0c2541f7-dae1-4356-b64f-a78e58d5a65b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4f7e5f4-d16d-40ae-8f6c-33f84815e533",
                  "parent_uuid": "52ca6fb4-2256-4353-b3e2-c372c8ddf211",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "659d75b7-a62a-45dc-ae81-92706db934d6",
              "parent_uuid": "0c2541f7-dae1-4356-b64f-a78e58d5a65b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2926738d-7407-4894-9636-23f2a83fd2fc",
                  "parent_uuid": "659d75b7-a62a-45dc-ae81-92706db934d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df3f1ad7-e31a-40d7-9231-0917611ca3bb",
              "parent_uuid": "0c2541f7-dae1-4356-b64f-a78e58d5a65b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5da945fc-1392-4dc1-a40a-63f7a42d9085",
                  "parent_uuid": "df3f1ad7-e31a-40d7-9231-0917611ca3bb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f6f5c998-f168-4fba-88bf-9ed9c900bbd3",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "62161f11-6e9c-44aa-aed5-5e9ccc62c049",
              "parent_uuid": "f6f5c998-f168-4fba-88bf-9ed9c900bbd3",
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
              "uuid": "3b87d673-d172-441f-8fa2-cc0cfc007fd6",
              "parent_uuid": "f6f5c998-f168-4fba-88bf-9ed9c900bbd3",
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
              "uuid": "cd2bfcb6-c581-44b9-a17b-8a5fc1c40198",
              "parent_uuid": "f6f5c998-f168-4fba-88bf-9ed9c900bbd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9f722f5-6ea7-4934-b0dd-bff044c1f974",
                  "parent_uuid": "cd2bfcb6-c581-44b9-a17b-8a5fc1c40198",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f833e09-605a-4b14-9871-445c9207ac94",
              "parent_uuid": "f6f5c998-f168-4fba-88bf-9ed9c900bbd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ad39421-34e1-402f-868a-8673b7b41fe5",
                  "parent_uuid": "4f833e09-605a-4b14-9871-445c9207ac94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a028127e-98d2-45e0-bc38-4408fd0e0ba7",
              "parent_uuid": "f6f5c998-f168-4fba-88bf-9ed9c900bbd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb43bdd3-1c24-48d2-8a72-fa71b5d0b644",
                  "parent_uuid": "a028127e-98d2-45e0-bc38-4408fd0e0ba7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc8a4100-e25d-4b8b-b037-bea6dd92e0c8",
              "parent_uuid": "f6f5c998-f168-4fba-88bf-9ed9c900bbd3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "10cfc81d-441f-4d1e-90be-cbefe2f0e8b4",
                  "parent_uuid": "fc8a4100-e25d-4b8b-b037-bea6dd92e0c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0cdb3527-ba9b-4bc2-9bc6-38d38ee2739a",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c9a13a0-c009-46d4-9598-323f332f4b89",
              "parent_uuid": "0cdb3527-ba9b-4bc2-9bc6-38d38ee2739a",
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
          "uuid": "aa89c38d-6c14-4937-94cb-dc8abba17ef8",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cada8e1-9597-4876-a503-477787263edd",
              "parent_uuid": "aa89c38d-6c14-4937-94cb-dc8abba17ef8",
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
          "uuid": "a1048245-926a-425d-b588-7f7c8c9d5df3",
          "parent_uuid": "12bbec2d-bc17-469f-a4a6-9dee55eacc64",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a999b4a-b7e7-4f75-8923-afea578cc420",
              "parent_uuid": "a1048245-926a-425d-b588-7f7c8c9d5df3",
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
                  "uuid": "ba11f0a4-a40e-4b81-92f1-92c8c15a14d3",
                  "parent_uuid": "2a999b4a-b7e7-4f75-8923-afea578cc420",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

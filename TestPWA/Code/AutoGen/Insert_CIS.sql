
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
  "uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "b3820c59-c349-4f3f-91cf-f71dde15ac23",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "c81d7832-a21a-417a-ab50-dd71591e39b6",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "8df2f404-3881-458c-ba15-bcf14b3b4077",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "901d8175-9279-4c55-97d1-c4bb318434a8",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "3ab7744a-990f-4fc0-90af-2bbe1d43d09c",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "7aec65ab-5069-4147-a054-5f395b54cde6",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "09738986-d667-487d-9075-bb413fbcc9c0",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
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
      "uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
      "parent_uuid": "fe64304d-ae56-413f-a0ae-ad09f82e483a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "ffa426bb-ccc1-4863-b05a-3811a3f554ba",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "eaaef9dc-6ac3-4bcd-80cb-5b3005515a06",
              "parent_uuid": "ffa426bb-ccc1-4863-b05a-3811a3f554ba",
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
              "uuid": "50d1ca5f-77b7-43e8-9a9b-083ea80d1599",
              "parent_uuid": "ffa426bb-ccc1-4863-b05a-3811a3f554ba",
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
              "uuid": "2f0c1f77-2c5c-466d-961e-75959b761116",
              "parent_uuid": "ffa426bb-ccc1-4863-b05a-3811a3f554ba",
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
              "uuid": "786380a3-d31d-4643-bc1e-cd1830b9cb17",
              "parent_uuid": "ffa426bb-ccc1-4863-b05a-3811a3f554ba",
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
          "uuid": "80c43f8c-a3a3-41f3-b97e-8dd6da818db6",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4c22cbcd-9ede-4fd4-b1c9-4c9fab6b6ae0",
              "parent_uuid": "80c43f8c-a3a3-41f3-b97e-8dd6da818db6",
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
              "uuid": "ad10aafb-2f90-4918-8b74-f98e57ee8765",
              "parent_uuid": "80c43f8c-a3a3-41f3-b97e-8dd6da818db6",
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
              "uuid": "47ddacf5-23f0-4532-b3a6-547b5d3b7408",
              "parent_uuid": "80c43f8c-a3a3-41f3-b97e-8dd6da818db6",
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
              "uuid": "5507e5f9-75a0-499f-8cc0-a49daa9029fd",
              "parent_uuid": "80c43f8c-a3a3-41f3-b97e-8dd6da818db6",
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
          "uuid": "1592c912-659b-45b5-90ea-0c374498e7f7",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48853c0f-b3ac-4c6b-9feb-817808c9701b",
              "parent_uuid": "1592c912-659b-45b5-90ea-0c374498e7f7",
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
              "uuid": "a78da4b7-d856-4cc6-9896-2cfcfccaeab9",
              "parent_uuid": "1592c912-659b-45b5-90ea-0c374498e7f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "max-height: 4cm;"
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
              "uuid": "82d6a3f5-85d3-4b5a-9729-2e5b3d8d9f88",
              "parent_uuid": "1592c912-659b-45b5-90ea-0c374498e7f7",
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
              "uuid": "7619e89b-9073-46f6-8e1c-65f8637fe1c0",
              "parent_uuid": "1592c912-659b-45b5-90ea-0c374498e7f7",
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
              "uuid": "e2018f20-21bf-4f30-9bf8-d0d77cd8bfad",
              "parent_uuid": "1592c912-659b-45b5-90ea-0c374498e7f7",
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
              "uuid": "8ff7d230-ef2e-40bd-b899-28a7f5c3c0d4",
              "parent_uuid": "1592c912-659b-45b5-90ea-0c374498e7f7",
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
          "uuid": "450c0a98-4b05-479c-8a73-1385daae9e72",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8d0b7682-f879-48f8-9fb5-c94983a054a4",
              "parent_uuid": "450c0a98-4b05-479c-8a73-1385daae9e72",
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
          "uuid": "68945033-ad04-4142-b9fd-039302a100c8",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7736aa1-f414-45d2-afe5-8b522ac29781",
              "parent_uuid": "68945033-ad04-4142-b9fd-039302a100c8",
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
              "uuid": "2269ff6a-e6ac-40cd-be52-6dfbc3ccac36",
              "parent_uuid": "68945033-ad04-4142-b9fd-039302a100c8",
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
              "uuid": "f99861aa-fcb8-49b0-8792-86aa85f19372",
              "parent_uuid": "68945033-ad04-4142-b9fd-039302a100c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "637880a0-4c34-49d0-8049-7e7fd1a21c12",
                  "parent_uuid": "f99861aa-fcb8-49b0-8792-86aa85f19372",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "665b4bc5-05f4-4387-a183-998449ffc975",
              "parent_uuid": "68945033-ad04-4142-b9fd-039302a100c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "68c78f12-ba9c-4694-b867-4740d5e1d73d",
                  "parent_uuid": "665b4bc5-05f4-4387-a183-998449ffc975",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d1f397a-29f3-446c-97fe-b144ac0dbd7f",
              "parent_uuid": "68945033-ad04-4142-b9fd-039302a100c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c5ea3b3-1c12-4cd4-a9cb-a2cf98bc101e",
                  "parent_uuid": "1d1f397a-29f3-446c-97fe-b144ac0dbd7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cd6d9a2-ffdb-4c5b-84a1-da52871f9ec1",
              "parent_uuid": "68945033-ad04-4142-b9fd-039302a100c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f2c43f1-5977-479b-b9c8-2d06ec569dea",
                  "parent_uuid": "5cd6d9a2-ffdb-4c5b-84a1-da52871f9ec1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e7d6a9ca-6a91-477b-b2ac-363f3ea556f2",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "522d98a0-c1e2-4910-8db7-8749579e2155",
              "parent_uuid": "e7d6a9ca-6a91-477b-b2ac-363f3ea556f2",
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
              "uuid": "1e96c72e-4467-49ea-9852-43c4037f5cd0",
              "parent_uuid": "e7d6a9ca-6a91-477b-b2ac-363f3ea556f2",
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
              "uuid": "29776f32-cdfe-4978-a2c7-4e4996fe8fd5",
              "parent_uuid": "e7d6a9ca-6a91-477b-b2ac-363f3ea556f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2f53192-4b89-4e13-859a-59c3dff0dba4",
                  "parent_uuid": "29776f32-cdfe-4978-a2c7-4e4996fe8fd5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10c7ff3b-d211-4fba-8f1d-6356328a7cfe",
              "parent_uuid": "e7d6a9ca-6a91-477b-b2ac-363f3ea556f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c29aacb5-937a-4d42-9dbf-e1f4939c26ee",
                  "parent_uuid": "10c7ff3b-d211-4fba-8f1d-6356328a7cfe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58f792ea-a8c7-420e-a15b-a9b7c0fe4ba9",
              "parent_uuid": "e7d6a9ca-6a91-477b-b2ac-363f3ea556f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66df8727-78ec-40f8-8f38-917f62c12240",
                  "parent_uuid": "58f792ea-a8c7-420e-a15b-a9b7c0fe4ba9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebb1a85d-acc7-435b-bfd4-43ed4810c6dc",
              "parent_uuid": "e7d6a9ca-6a91-477b-b2ac-363f3ea556f2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "767fc4b5-6e2e-4f75-b4ae-2287dd7de076",
                  "parent_uuid": "ebb1a85d-acc7-435b-bfd4-43ed4810c6dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c56502b3-4422-4b69-b60a-6351b4d4e13e",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a9ad351-01b6-4553-a081-ff652f9684a6",
              "parent_uuid": "c56502b3-4422-4b69-b60a-6351b4d4e13e",
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
              "uuid": "59dc2a3b-eed1-4b50-a024-777a85af864f",
              "parent_uuid": "c56502b3-4422-4b69-b60a-6351b4d4e13e",
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
              "uuid": "f4c9e9c3-9bbe-4f59-aaa2-7eafdc5cadbb",
              "parent_uuid": "c56502b3-4422-4b69-b60a-6351b4d4e13e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40929a81-d1e3-4286-980d-8a3820c475b2",
                  "parent_uuid": "f4c9e9c3-9bbe-4f59-aaa2-7eafdc5cadbb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5915c2cd-f5ec-4e5c-a784-61fbb983bd71",
              "parent_uuid": "c56502b3-4422-4b69-b60a-6351b4d4e13e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17d3dbf4-415e-483c-859a-b76eb21cd5e8",
                  "parent_uuid": "5915c2cd-f5ec-4e5c-a784-61fbb983bd71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c28d5381-823a-4f2d-80c0-feabac4fb834",
              "parent_uuid": "c56502b3-4422-4b69-b60a-6351b4d4e13e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ac0029d-1eb4-455b-9497-195ac92edb3f",
                  "parent_uuid": "c28d5381-823a-4f2d-80c0-feabac4fb834",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cf2a996-d476-49af-be1a-3c24e8acef66",
              "parent_uuid": "c56502b3-4422-4b69-b60a-6351b4d4e13e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c6f827c-ce36-4da1-b5d2-b49838a4739e",
                  "parent_uuid": "5cf2a996-d476-49af-be1a-3c24e8acef66",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e8422f2-afae-4e4e-89da-688dd809677c",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "963d2c29-68e0-4137-a3d6-3e9daea0a911",
              "parent_uuid": "2e8422f2-afae-4e4e-89da-688dd809677c",
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
              "uuid": "a14db9d6-998e-4089-903e-68dc219d2ef2",
              "parent_uuid": "2e8422f2-afae-4e4e-89da-688dd809677c",
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
              "uuid": "c6c851f1-8815-44a9-a079-28352d3898b7",
              "parent_uuid": "2e8422f2-afae-4e4e-89da-688dd809677c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60c575a9-bd7c-4336-a5b7-d0b5549d64d3",
                  "parent_uuid": "c6c851f1-8815-44a9-a079-28352d3898b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea10e84b-5ce2-44a3-8087-b6887d548bcc",
              "parent_uuid": "2e8422f2-afae-4e4e-89da-688dd809677c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b866646-782a-45f9-baf4-79ffcdd1e082",
                  "parent_uuid": "ea10e84b-5ce2-44a3-8087-b6887d548bcc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eee0a539-c8f5-496e-8b55-55a2cf76a008",
              "parent_uuid": "2e8422f2-afae-4e4e-89da-688dd809677c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b07d6d86-d1a3-4be0-b57c-49e3a9af4a0a",
                  "parent_uuid": "eee0a539-c8f5-496e-8b55-55a2cf76a008",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49cfea26-41c9-4fbc-832f-1db5e48d6d41",
              "parent_uuid": "2e8422f2-afae-4e4e-89da-688dd809677c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "422d4df9-1fce-4321-8612-ccbb0cee90d4",
                  "parent_uuid": "49cfea26-41c9-4fbc-832f-1db5e48d6d41",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5b3e3fec-b19a-4429-91ae-918263027b77",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9d20d108-3147-40a7-b27b-00615b7024b7",
              "parent_uuid": "5b3e3fec-b19a-4429-91ae-918263027b77",
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
          "uuid": "c2935e1e-1ba4-48e8-a6dd-ab46323389f7",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8cc102c3-162a-4527-8af1-2989df779f43",
              "parent_uuid": "c2935e1e-1ba4-48e8-a6dd-ab46323389f7",
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
              "uuid": "ec127881-b582-473a-a550-03ecd94cb12b",
              "parent_uuid": "c2935e1e-1ba4-48e8-a6dd-ab46323389f7",
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
              "uuid": "d1efaefa-2a3e-404a-90ff-d66ec7ad9dcd",
              "parent_uuid": "c2935e1e-1ba4-48e8-a6dd-ab46323389f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0383408f-91e7-4fcb-a363-50aadb42afdb",
                  "parent_uuid": "d1efaefa-2a3e-404a-90ff-d66ec7ad9dcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6743fa6f-5e61-4863-b6f5-a10417b1f13a",
              "parent_uuid": "c2935e1e-1ba4-48e8-a6dd-ab46323389f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a855b700-c928-465c-a043-0f1fcc9370bf",
                  "parent_uuid": "6743fa6f-5e61-4863-b6f5-a10417b1f13a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24a7cb4d-7852-49cb-af5b-1c9d9e29ed9a",
              "parent_uuid": "c2935e1e-1ba4-48e8-a6dd-ab46323389f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cd517e6-feda-4684-ad30-db306c241e31",
                  "parent_uuid": "24a7cb4d-7852-49cb-af5b-1c9d9e29ed9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f2f109e-0aa1-4399-8377-c29dacf9bdfd",
              "parent_uuid": "c2935e1e-1ba4-48e8-a6dd-ab46323389f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f3650445-7bf7-49f9-a6a2-8c61406488fe",
                  "parent_uuid": "7f2f109e-0aa1-4399-8377-c29dacf9bdfd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "14e4a7d7-23ed-4058-b8c4-ebf06905c56d",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80c9f731-749b-4605-9f98-b22f169384e9",
              "parent_uuid": "14e4a7d7-23ed-4058-b8c4-ebf06905c56d",
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
              "uuid": "090d3b11-80a9-4622-9bba-4787e152772e",
              "parent_uuid": "14e4a7d7-23ed-4058-b8c4-ebf06905c56d",
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
              "uuid": "9784e7cc-5bd3-4fcc-a9e3-4fb02837cd53",
              "parent_uuid": "14e4a7d7-23ed-4058-b8c4-ebf06905c56d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e9adc91-bc74-42bd-9791-92b1bc9c90a9",
                  "parent_uuid": "9784e7cc-5bd3-4fcc-a9e3-4fb02837cd53",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a06ae4fb-9fe0-4dd6-81c2-8bb693424e35",
              "parent_uuid": "14e4a7d7-23ed-4058-b8c4-ebf06905c56d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b726fe7-6078-40e7-b5bd-d2630f6298e6",
                  "parent_uuid": "a06ae4fb-9fe0-4dd6-81c2-8bb693424e35",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cc80f0b-37fe-43c5-b666-a2b4115019dd",
              "parent_uuid": "14e4a7d7-23ed-4058-b8c4-ebf06905c56d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0eeaa1f2-8da0-462c-89aa-f8901cb950ad",
                  "parent_uuid": "6cc80f0b-37fe-43c5-b666-a2b4115019dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91bd0418-97aa-462c-b392-3d8df86ee99e",
              "parent_uuid": "14e4a7d7-23ed-4058-b8c4-ebf06905c56d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23154e5d-bfa2-468d-9b8e-401f259c57a1",
                  "parent_uuid": "91bd0418-97aa-462c-b392-3d8df86ee99e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3975d0cb-055e-4343-8c2f-ebafb0d89bc0",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cee88792-3fb7-4b7b-b5d5-c15137d500cc",
              "parent_uuid": "3975d0cb-055e-4343-8c2f-ebafb0d89bc0",
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
              "uuid": "499f205e-d609-4fd1-b5c9-5a6a83e7110a",
              "parent_uuid": "3975d0cb-055e-4343-8c2f-ebafb0d89bc0",
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
              "uuid": "d996bf68-7bef-499c-b7f7-127596fc50aa",
              "parent_uuid": "3975d0cb-055e-4343-8c2f-ebafb0d89bc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a53128bb-e4bb-4d80-aae0-2ac1e8663635",
                  "parent_uuid": "d996bf68-7bef-499c-b7f7-127596fc50aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4e0b1f3a-175d-4c1f-b2ef-3effbdb962ba",
              "parent_uuid": "3975d0cb-055e-4343-8c2f-ebafb0d89bc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8405fa38-087b-4afb-9f11-b72c3c750273",
                  "parent_uuid": "4e0b1f3a-175d-4c1f-b2ef-3effbdb962ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dd4e430-ea15-410c-8e2c-b81836dd5a03",
              "parent_uuid": "3975d0cb-055e-4343-8c2f-ebafb0d89bc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70076c55-3935-4bd1-8054-1dd5576ef8d0",
                  "parent_uuid": "6dd4e430-ea15-410c-8e2c-b81836dd5a03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b10bc2d-99f4-4068-b742-3b2f9a5959da",
              "parent_uuid": "3975d0cb-055e-4343-8c2f-ebafb0d89bc0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65fa4828-c027-415f-9218-325dfd7c9be5",
                  "parent_uuid": "8b10bc2d-99f4-4068-b742-3b2f9a5959da",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4f6779c5-5253-47c1-97c8-739eb97ff5d5",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eafe0f8f-8346-49cb-95e6-6f02192d8a78",
              "parent_uuid": "4f6779c5-5253-47c1-97c8-739eb97ff5d5",
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
              "uuid": "239fcee5-983e-4004-80e2-a81dc2db9c48",
              "parent_uuid": "4f6779c5-5253-47c1-97c8-739eb97ff5d5",
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
              "uuid": "86b17d5d-7cba-4dd0-9a1e-2a7ad3948ef4",
              "parent_uuid": "4f6779c5-5253-47c1-97c8-739eb97ff5d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ef211ee-687d-463d-b55e-23030387b78d",
                  "parent_uuid": "86b17d5d-7cba-4dd0-9a1e-2a7ad3948ef4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93beaef2-f70b-49ae-b79d-cca61708408a",
              "parent_uuid": "4f6779c5-5253-47c1-97c8-739eb97ff5d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "745c171d-6e79-48a2-b123-4ed2463b0e94",
                  "parent_uuid": "93beaef2-f70b-49ae-b79d-cca61708408a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2884a7ed-17f5-4c32-a513-80ea39ca9248",
              "parent_uuid": "4f6779c5-5253-47c1-97c8-739eb97ff5d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95b0613c-4ee1-4695-8f8c-f0e326aec5bd",
                  "parent_uuid": "2884a7ed-17f5-4c32-a513-80ea39ca9248",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99c9544e-1569-4e2f-9f39-fbb432cc629a",
              "parent_uuid": "4f6779c5-5253-47c1-97c8-739eb97ff5d5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "514e869d-d676-496a-ab13-b7eb9910cbe4",
                  "parent_uuid": "99c9544e-1569-4e2f-9f39-fbb432cc629a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ed03f99d-e939-4cb3-970c-fbf6f4a6e6c8",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85d527c7-f9e9-4317-8da5-35d3ac1d0e48",
              "parent_uuid": "ed03f99d-e939-4cb3-970c-fbf6f4a6e6c8",
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
              "uuid": "ec11ff4e-a265-40dd-9e80-6400b8f1d59d",
              "parent_uuid": "ed03f99d-e939-4cb3-970c-fbf6f4a6e6c8",
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
              "uuid": "fb12df87-ba53-4081-9d76-52a219081c49",
              "parent_uuid": "ed03f99d-e939-4cb3-970c-fbf6f4a6e6c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a63ed356-bbb5-4f0d-9963-afab8b78032e",
                  "parent_uuid": "fb12df87-ba53-4081-9d76-52a219081c49",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c5f0f1e-d9ca-4146-b0be-ac41abb0d6f5",
              "parent_uuid": "ed03f99d-e939-4cb3-970c-fbf6f4a6e6c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3acae123-525d-4f76-9207-787aa0f1102c",
                  "parent_uuid": "8c5f0f1e-d9ca-4146-b0be-ac41abb0d6f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bb284ed-a113-49f7-a2fd-bbd080ef871c",
              "parent_uuid": "ed03f99d-e939-4cb3-970c-fbf6f4a6e6c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cda41d9-cb7f-480b-9332-46d397739107",
                  "parent_uuid": "2bb284ed-a113-49f7-a2fd-bbd080ef871c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f292fd64-1611-4e59-b74c-e411ba754b60",
              "parent_uuid": "ed03f99d-e939-4cb3-970c-fbf6f4a6e6c8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "457f472b-c392-4589-a843-cba568ef9b0c",
                  "parent_uuid": "f292fd64-1611-4e59-b74c-e411ba754b60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "59fb67f7-8fe4-4600-857c-24ad19fa55ad",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f2d5775-e41b-4a57-81fe-9b3736f6883e",
              "parent_uuid": "59fb67f7-8fe4-4600-857c-24ad19fa55ad",
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
              "uuid": "92968555-d650-4756-9c23-5a34dbe140f3",
              "parent_uuid": "59fb67f7-8fe4-4600-857c-24ad19fa55ad",
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
              "uuid": "1afc3eed-12df-401b-b8ac-4a386fd3c13c",
              "parent_uuid": "59fb67f7-8fe4-4600-857c-24ad19fa55ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e64f132e-69d5-4f35-889e-adebfa5936e0",
                  "parent_uuid": "1afc3eed-12df-401b-b8ac-4a386fd3c13c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ed8840a9-3754-4303-818e-501e12aaa807",
              "parent_uuid": "59fb67f7-8fe4-4600-857c-24ad19fa55ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc87d98b-d74d-4531-bbcd-64c71b5c5c7f",
                  "parent_uuid": "ed8840a9-3754-4303-818e-501e12aaa807",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb7baae6-0eb4-4f09-963f-a3d0786bca66",
              "parent_uuid": "59fb67f7-8fe4-4600-857c-24ad19fa55ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a4a95ce-3d38-4b10-9226-a0790e66d034",
                  "parent_uuid": "fb7baae6-0eb4-4f09-963f-a3d0786bca66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e6393376-d4e6-4019-a190-e813d7b91f1c",
              "parent_uuid": "59fb67f7-8fe4-4600-857c-24ad19fa55ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0dff3b04-48d8-4563-a80d-d7dcc8279f41",
                  "parent_uuid": "e6393376-d4e6-4019-a190-e813d7b91f1c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b7568e47-f1af-4abc-b4fc-c97a45a4847b",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "841f2008-75f3-4ec5-9281-40e335f5842c",
              "parent_uuid": "b7568e47-f1af-4abc-b4fc-c97a45a4847b",
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
              "uuid": "89f5ce69-e46e-4720-89c5-2fb47a8538d6",
              "parent_uuid": "b7568e47-f1af-4abc-b4fc-c97a45a4847b",
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
              "uuid": "ba74be6e-bbc1-48a8-ac93-8b9ed26a5736",
              "parent_uuid": "b7568e47-f1af-4abc-b4fc-c97a45a4847b",
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
                  "uuid": "01166039-4628-4ca7-a4ae-c5f9aef5d5fb",
                  "parent_uuid": "ba74be6e-bbc1-48a8-ac93-8b9ed26a5736",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a08fa31f-8411-47a8-8e7f-f351b2925106",
              "parent_uuid": "b7568e47-f1af-4abc-b4fc-c97a45a4847b",
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
                  "uuid": "4ad17c8c-9c50-499d-b150-0b4fe9ff2074",
                  "parent_uuid": "a08fa31f-8411-47a8-8e7f-f351b2925106",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb6a97e4-b5b7-451a-a059-5e4ab9672428",
              "parent_uuid": "b7568e47-f1af-4abc-b4fc-c97a45a4847b",
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
                  "uuid": "62dbcf79-672e-478c-8a74-1a5f99f522c4",
                  "parent_uuid": "fb6a97e4-b5b7-451a-a059-5e4ab9672428",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "726ee7ae-7745-430a-978b-d82e79c29166",
              "parent_uuid": "b7568e47-f1af-4abc-b4fc-c97a45a4847b",
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
                  "uuid": "47841402-ae2d-46ce-9f26-7815e1dd1db9",
                  "parent_uuid": "726ee7ae-7745-430a-978b-d82e79c29166",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35dac63e-8d1d-46a8-bfcf-70a43e17e10c",
              "parent_uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
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
              "uuid": "dff20b08-4d3f-44ab-9b7c-84e82f84c686",
              "parent_uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
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
              "uuid": "1607907a-2d54-4b04-bb00-b1b6a832b386",
              "parent_uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
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
              "uuid": "8cd1d5b7-ad0d-40ee-87d0-48048f188f73",
              "parent_uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
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
                  "uuid": "7610e99e-b53e-4d0c-b133-8381ef657303",
                  "parent_uuid": "8cd1d5b7-ad0d-40ee-87d0-48048f188f73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55046388-51d8-4bb6-a5cd-f5077e152859",
              "parent_uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
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
                  "uuid": "5dcb0b78-3c01-41ae-879e-cd138f3e098c",
                  "parent_uuid": "55046388-51d8-4bb6-a5cd-f5077e152859",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "70718fba-72a0-41c6-ae5c-8357b85523dd",
              "parent_uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
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
                  "uuid": "25c557d3-a4ae-41d3-b255-855e835f1739",
                  "parent_uuid": "70718fba-72a0-41c6-ae5c-8357b85523dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2ded0c5-d2ff-42cb-b615-9f09d3477bba",
              "parent_uuid": "f3c4eb4b-40df-4f11-9eb1-ff88288114f5",
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
                  "uuid": "f0c168c7-f982-4d71-a94d-86cca60377b8",
                  "parent_uuid": "f2ded0c5-d2ff-42cb-b615-9f09d3477bba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3632d610-dfcd-4635-8afb-cc9d2e06122f",
              "parent_uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
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
              "uuid": "d5ed25f0-3338-425e-92b4-9697af418767",
              "parent_uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
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
              "uuid": "21768dda-26be-4230-a663-15bdc58cd183",
              "parent_uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
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
                  "uuid": "740922c7-2206-4d7c-8034-2f3b4e7fa8b5",
                  "parent_uuid": "21768dda-26be-4230-a663-15bdc58cd183",
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
              "uuid": "ad5ee785-cd4a-4281-a96f-5cd04349272e",
              "parent_uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
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
                  "uuid": "d69d429e-c995-4a71-bf57-c2738d34f988",
                  "parent_uuid": "ad5ee785-cd4a-4281-a96f-5cd04349272e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16230ea7-f84a-4d45-ae97-304d4ed4e866",
              "parent_uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
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
                  "uuid": "be1db98d-0536-4190-9083-9c5d3728906f",
                  "parent_uuid": "16230ea7-f84a-4d45-ae97-304d4ed4e866",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc7b007c-0452-4b28-ab76-9b1bce3ce9e5",
              "parent_uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
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
                  "uuid": "f6ad2945-4624-4fb6-9697-46b794150f2a",
                  "parent_uuid": "cc7b007c-0452-4b28-ab76-9b1bce3ce9e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d1c23e5-b694-42ec-8361-6c93a762c73f",
              "parent_uuid": "82f7ba37-f64f-446e-9e9a-6076f8e70e39",
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
                  "uuid": "dcb259ae-f863-42e9-8b03-1d0c4d8eb0ca",
                  "parent_uuid": "3d1c23e5-b694-42ec-8361-6c93a762c73f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f2a7515-52d6-4798-8075-bff21533e138",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "775168fd-9ec5-4b1e-a1e7-10dc87230145",
              "parent_uuid": "0f2a7515-52d6-4798-8075-bff21533e138",
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
              "uuid": "6e24cc1c-9520-4543-8973-9fad5aa1b806",
              "parent_uuid": "0f2a7515-52d6-4798-8075-bff21533e138",
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
              "uuid": "b68f7ee6-6ae8-4014-9235-0cce0244d8b7",
              "parent_uuid": "0f2a7515-52d6-4798-8075-bff21533e138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c3b7c40-3a00-4e31-92a0-a95685fdbce6",
                  "parent_uuid": "b68f7ee6-6ae8-4014-9235-0cce0244d8b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2ab1bea-726a-430b-9141-e71af10f3fc3",
              "parent_uuid": "0f2a7515-52d6-4798-8075-bff21533e138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e3cbfd0-1d78-44e7-b469-960c929593f7",
                  "parent_uuid": "f2ab1bea-726a-430b-9141-e71af10f3fc3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "687f436e-8440-4c1c-9db8-d39cc20e783d",
              "parent_uuid": "0f2a7515-52d6-4798-8075-bff21533e138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2fa37d6e-15aa-4ca4-a416-3641520eef91",
                  "parent_uuid": "687f436e-8440-4c1c-9db8-d39cc20e783d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db099746-efa4-4591-ace4-7f864726fb83",
              "parent_uuid": "0f2a7515-52d6-4798-8075-bff21533e138",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a022b87-ab43-471f-842f-7266537c1a09",
                  "parent_uuid": "db099746-efa4-4591-ace4-7f864726fb83",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e18c262a-a7fe-4747-b46c-fa7daf60b5fb",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "852e683a-d9b4-4ed6-8db0-991b29240266",
              "parent_uuid": "e18c262a-a7fe-4747-b46c-fa7daf60b5fb",
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
              "uuid": "115714d1-7e42-4336-8451-98e8de709cd6",
              "parent_uuid": "e18c262a-a7fe-4747-b46c-fa7daf60b5fb",
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
              "uuid": "892bffcb-a2c3-4118-bc4f-6ab64f8b84eb",
              "parent_uuid": "e18c262a-a7fe-4747-b46c-fa7daf60b5fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64f37af3-7093-4176-af06-7b731e11348a",
                  "parent_uuid": "892bffcb-a2c3-4118-bc4f-6ab64f8b84eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec3d1d7c-953e-42ce-8117-c1c5047f2211",
              "parent_uuid": "e18c262a-a7fe-4747-b46c-fa7daf60b5fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "360202e0-6fc7-4714-8cf8-166d1da8bce3",
                  "parent_uuid": "ec3d1d7c-953e-42ce-8117-c1c5047f2211",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "452e5e52-4fd5-4316-b537-cd44b445cfd0",
              "parent_uuid": "e18c262a-a7fe-4747-b46c-fa7daf60b5fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2485789-0fd3-426b-9ec1-519a51ba2a38",
                  "parent_uuid": "452e5e52-4fd5-4316-b537-cd44b445cfd0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73058701-deb5-4ba7-b4c0-c142ae3fb8f6",
              "parent_uuid": "e18c262a-a7fe-4747-b46c-fa7daf60b5fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6c3b5b9-9e4a-472a-a7eb-379baef5bad0",
                  "parent_uuid": "73058701-deb5-4ba7-b4c0-c142ae3fb8f6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e7359b9e-3725-40bd-8a1f-d6654f67c16b",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "535c507e-419f-4513-92bd-e49a10f9edf2",
              "parent_uuid": "e7359b9e-3725-40bd-8a1f-d6654f67c16b",
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
              "uuid": "f3cb155f-2b1a-4e2c-9c0b-5cbf1b280e52",
              "parent_uuid": "e7359b9e-3725-40bd-8a1f-d6654f67c16b",
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
              "uuid": "c6f9ddc8-f125-4d1a-b5a0-1fa9dad0ab1a",
              "parent_uuid": "e7359b9e-3725-40bd-8a1f-d6654f67c16b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7afa2d72-8489-4b29-adab-154d9cec2b2c",
                  "parent_uuid": "c6f9ddc8-f125-4d1a-b5a0-1fa9dad0ab1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd4395ab-f993-41a2-a00f-cfe1b9ee3c21",
              "parent_uuid": "e7359b9e-3725-40bd-8a1f-d6654f67c16b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b3d80e9-6d35-4db4-b0fb-59d0547c4191",
                  "parent_uuid": "fd4395ab-f993-41a2-a00f-cfe1b9ee3c21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e546d2c-fba1-4544-8aa9-6091b843e3be",
              "parent_uuid": "e7359b9e-3725-40bd-8a1f-d6654f67c16b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e70773b-15db-4e44-b9cd-02e0409608c1",
                  "parent_uuid": "9e546d2c-fba1-4544-8aa9-6091b843e3be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15617b6c-f152-4382-955d-091300c2958c",
              "parent_uuid": "e7359b9e-3725-40bd-8a1f-d6654f67c16b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93f781d8-fd1d-4c08-b820-2497d9317b17",
                  "parent_uuid": "15617b6c-f152-4382-955d-091300c2958c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18f94c5d-d62d-4064-81e9-bd2d830f51eb",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "56a4fe66-c0e2-411b-ab2d-ae82afd35917",
              "parent_uuid": "18f94c5d-d62d-4064-81e9-bd2d830f51eb",
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
              "uuid": "fe512087-66c7-4910-9edd-edd7eb18f4f6",
              "parent_uuid": "18f94c5d-d62d-4064-81e9-bd2d830f51eb",
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
              "uuid": "fe285c81-1259-4b6c-b95b-ae5f3cc36d2a",
              "parent_uuid": "18f94c5d-d62d-4064-81e9-bd2d830f51eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8650d2f-17d2-4675-90c2-7b02dc821af3",
                  "parent_uuid": "fe285c81-1259-4b6c-b95b-ae5f3cc36d2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cd4289a-1e72-487a-8b61-288f275277b4",
              "parent_uuid": "18f94c5d-d62d-4064-81e9-bd2d830f51eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e3eebe8-678d-4f03-9103-72ec8a08e689",
                  "parent_uuid": "7cd4289a-1e72-487a-8b61-288f275277b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "636d3ea6-19fb-45c0-8d54-c8b0e5e3f0aa",
              "parent_uuid": "18f94c5d-d62d-4064-81e9-bd2d830f51eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b690c844-00bb-47e0-8fa5-96d14c5d262e",
                  "parent_uuid": "636d3ea6-19fb-45c0-8d54-c8b0e5e3f0aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f4828fb-bc76-4a09-adc9-6477aa15c133",
              "parent_uuid": "18f94c5d-d62d-4064-81e9-bd2d830f51eb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0bf496b-ba4d-4517-ad4d-42cf03e7571d",
                  "parent_uuid": "0f4828fb-bc76-4a09-adc9-6477aa15c133",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "97ed72ad-688f-4f53-bf22-1ae3c864d45d",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "94c80f37-35ad-43f2-ae09-74c143bc75c1",
              "parent_uuid": "97ed72ad-688f-4f53-bf22-1ae3c864d45d",
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
          "uuid": "53104548-8575-4693-83b0-75cac1431567",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5625dfec-e70d-4e20-af0e-20b4beaf77de",
              "parent_uuid": "53104548-8575-4693-83b0-75cac1431567",
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
              "uuid": "457eb241-68ee-4ab6-ae23-3f6d3e1ff878",
              "parent_uuid": "53104548-8575-4693-83b0-75cac1431567",
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
              "uuid": "0ea5b914-932f-448f-9e3c-43e278332a4c",
              "parent_uuid": "53104548-8575-4693-83b0-75cac1431567",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f50d69a-28a3-4470-a0a6-06bdb7f1ec2f",
                  "parent_uuid": "0ea5b914-932f-448f-9e3c-43e278332a4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "034b2709-482a-4804-b273-a7bdc716d37d",
              "parent_uuid": "53104548-8575-4693-83b0-75cac1431567",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9204cd5-e6d6-44de-81db-5ea7122f1e2f",
                  "parent_uuid": "034b2709-482a-4804-b273-a7bdc716d37d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47b53767-de3f-4236-ab9f-63e9253b014f",
              "parent_uuid": "53104548-8575-4693-83b0-75cac1431567",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c80848f-26ab-4eed-9de2-59533d85f22e",
                  "parent_uuid": "47b53767-de3f-4236-ab9f-63e9253b014f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74831c98-0178-4681-ac62-59d14f05e225",
              "parent_uuid": "53104548-8575-4693-83b0-75cac1431567",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc8a7272-dcdf-4a9f-b7d0-a6a33a5eab4d",
                  "parent_uuid": "74831c98-0178-4681-ac62-59d14f05e225",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "50230cbd-52ec-4411-be82-029d3d2d0aee",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab839c3e-b791-413b-ac73-af2cc43b0323",
              "parent_uuid": "50230cbd-52ec-4411-be82-029d3d2d0aee",
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
              "uuid": "1c7bb602-8a84-4c53-934b-4d21afa2ff8c",
              "parent_uuid": "50230cbd-52ec-4411-be82-029d3d2d0aee",
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
              "uuid": "017c1d51-5ca3-43c6-9654-67446aafeef1",
              "parent_uuid": "50230cbd-52ec-4411-be82-029d3d2d0aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b67adf8-bfc1-4b01-a77a-aa5a6e73fdb3",
                  "parent_uuid": "017c1d51-5ca3-43c6-9654-67446aafeef1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d451a7da-5c8c-4094-9990-ac4c1ea3d920",
              "parent_uuid": "50230cbd-52ec-4411-be82-029d3d2d0aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd4b7bd6-59cc-4f7f-b7c3-ff267d4b578f",
                  "parent_uuid": "d451a7da-5c8c-4094-9990-ac4c1ea3d920",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb16e5e8-e7f8-4252-b05a-2b595ee2e919",
              "parent_uuid": "50230cbd-52ec-4411-be82-029d3d2d0aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7c9cf31-0fa7-4f5a-8cfc-ea17210b19ab",
                  "parent_uuid": "eb16e5e8-e7f8-4252-b05a-2b595ee2e919",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cf97697-56a8-448e-8f53-628d55838acb",
              "parent_uuid": "50230cbd-52ec-4411-be82-029d3d2d0aee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee628a85-1ec3-41a9-b7fd-c190cbc2588e",
                  "parent_uuid": "3cf97697-56a8-448e-8f53-628d55838acb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "adc7dfee-a6a0-4f25-b92d-7c2f733d630e",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38e10b3c-2eef-4e3c-8680-73d1860d18c9",
              "parent_uuid": "adc7dfee-a6a0-4f25-b92d-7c2f733d630e",
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
              "uuid": "6d07aab6-4a1b-437b-a010-5afc94140237",
              "parent_uuid": "adc7dfee-a6a0-4f25-b92d-7c2f733d630e",
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
              "uuid": "ba801d92-7fc6-4d20-b54b-77b4cfcf98dc",
              "parent_uuid": "adc7dfee-a6a0-4f25-b92d-7c2f733d630e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e6d5ab3-ec55-4f74-8d65-32f26191bde4",
                  "parent_uuid": "ba801d92-7fc6-4d20-b54b-77b4cfcf98dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f8adebd-cb30-4321-949a-528cf56dd700",
              "parent_uuid": "adc7dfee-a6a0-4f25-b92d-7c2f733d630e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5365472f-4ee9-4f4d-b2ee-45f6a5f09486",
                  "parent_uuid": "8f8adebd-cb30-4321-949a-528cf56dd700",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e4b8b5f-8276-4c7e-b492-ed8eeb062651",
              "parent_uuid": "adc7dfee-a6a0-4f25-b92d-7c2f733d630e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af1c39eb-b5cc-4800-9471-0b1e767d0ae7",
                  "parent_uuid": "2e4b8b5f-8276-4c7e-b492-ed8eeb062651",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7242d92b-d997-4233-baa8-603ea0162610",
              "parent_uuid": "adc7dfee-a6a0-4f25-b92d-7c2f733d630e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a12898f-99a4-4f6a-92a1-9f2b3fd672e2",
                  "parent_uuid": "7242d92b-d997-4233-baa8-603ea0162610",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "39a34296-6442-4daf-94fe-198466a104df",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8788d85-3d28-4e61-8770-a56b398dc3cf",
              "parent_uuid": "39a34296-6442-4daf-94fe-198466a104df",
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
              "uuid": "08f85b48-c52f-4b78-9e27-0ec0eacc4e52",
              "parent_uuid": "39a34296-6442-4daf-94fe-198466a104df",
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
              "uuid": "34ef9e61-86f6-4bbd-b8c2-efa20b6f247a",
              "parent_uuid": "39a34296-6442-4daf-94fe-198466a104df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cebcae09-1667-4d08-a4c0-16105fb0231b",
                  "parent_uuid": "34ef9e61-86f6-4bbd-b8c2-efa20b6f247a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5537f3b5-096d-4922-8c89-40d0abf5ee15",
              "parent_uuid": "39a34296-6442-4daf-94fe-198466a104df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c53b0ad-ed9a-4959-a976-0475daecaa00",
                  "parent_uuid": "5537f3b5-096d-4922-8c89-40d0abf5ee15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60d69ca0-ab7d-4ed2-9d14-1d10803594d9",
              "parent_uuid": "39a34296-6442-4daf-94fe-198466a104df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06b2b06f-d23a-463d-acd7-221a653c4925",
                  "parent_uuid": "60d69ca0-ab7d-4ed2-9d14-1d10803594d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db3ec7c9-6722-4582-b5fc-d588a41d41d1",
              "parent_uuid": "39a34296-6442-4daf-94fe-198466a104df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e117cbd4-68ca-47ec-b9ac-674dda63f4c3",
                  "parent_uuid": "db3ec7c9-6722-4582-b5fc-d588a41d41d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0a265ef8-d1ba-48c5-a002-9102652087ef",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98dcc663-26a4-4f00-a696-46cecc5e6751",
              "parent_uuid": "0a265ef8-d1ba-48c5-a002-9102652087ef",
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
              "uuid": "eada4009-5069-4b1b-88a9-388db9049be1",
              "parent_uuid": "0a265ef8-d1ba-48c5-a002-9102652087ef",
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
              "uuid": "5f0ea096-b44e-4e51-ab96-3ffca4b5fbcd",
              "parent_uuid": "0a265ef8-d1ba-48c5-a002-9102652087ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0b73243-378e-4847-85f5-afb4d1286fb1",
                  "parent_uuid": "5f0ea096-b44e-4e51-ab96-3ffca4b5fbcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89d61c44-d740-4ad8-aad9-7281edf444ce",
              "parent_uuid": "0a265ef8-d1ba-48c5-a002-9102652087ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c55cada8-d0ac-4873-9fb8-4016120e11f2",
                  "parent_uuid": "89d61c44-d740-4ad8-aad9-7281edf444ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1231f720-b5bc-4791-ac44-2682f1947a8b",
              "parent_uuid": "0a265ef8-d1ba-48c5-a002-9102652087ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb062e67-9dd6-4a0e-9b88-ed571910b0ee",
                  "parent_uuid": "1231f720-b5bc-4791-ac44-2682f1947a8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b333d20-c589-4c8d-aba3-026cfcbb563e",
              "parent_uuid": "0a265ef8-d1ba-48c5-a002-9102652087ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3e90eda-6e93-44a3-828f-004f25c6584d",
                  "parent_uuid": "4b333d20-c589-4c8d-aba3-026cfcbb563e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c5ac0121-537a-4eef-a1aa-7906f3f40a28",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f951059-cd33-4cf5-8ed7-075cd2c0b999",
              "parent_uuid": "c5ac0121-537a-4eef-a1aa-7906f3f40a28",
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
          "uuid": "272d051b-bc2c-431e-a7be-6aff458825df",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dbc982ea-e574-47d2-a929-fbaa29dd3f49",
              "parent_uuid": "272d051b-bc2c-431e-a7be-6aff458825df",
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
          "uuid": "06d62de0-b8fb-4f6a-abe3-86f2d58e5faf",
          "parent_uuid": "255f1e8c-3add-4c62-bc49-08149eab68f2",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "673d9877-ceee-4dc3-8761-de8e14ad40c4",
              "parent_uuid": "06d62de0-b8fb-4f6a-abe3-86f2d58e5faf",
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
                  "uuid": "94b9e75b-fa4e-4072-9992-c7261a2d26b9",
                  "parent_uuid": "673d9877-ceee-4dc3-8761-de8e14ad40c4",
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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
		,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '58A6D34C-2D4B-4F8A-B831-60488591AEDC'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

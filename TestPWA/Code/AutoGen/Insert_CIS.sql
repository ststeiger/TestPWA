
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
  "uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "f115a07b-b779-4cf0-8604-68d03f5bea8d",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "7c774f8d-a04e-4d24-a833-06854de86af8",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "5f706030-b0c2-45d5-9943-07924eb22954",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "54cb9a49-640e-43b6-85db-81a81be5e175",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "e250d09f-e69c-4072-abbe-a5666aa745c6",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "509683a7-688a-4905-b425-cee396d7e2a0",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "f6c63302-47e4-4034-8aad-f3e1303854a6",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
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
      "uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
      "parent_uuid": "00f6e060-9906-4618-9da1-2c328ddb0b5b",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "ee94bbfd-38c1-4ac6-9d20-47e277dbcadd",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "586d4c19-67b6-4c69-b024-89655fb39194",
              "parent_uuid": "ee94bbfd-38c1-4ac6-9d20-47e277dbcadd",
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
              "uuid": "29a49889-ef31-456a-b35b-0e0528911de2",
              "parent_uuid": "ee94bbfd-38c1-4ac6-9d20-47e277dbcadd",
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
              "uuid": "d50069dd-500b-42f1-8d51-9e9472fe547d",
              "parent_uuid": "ee94bbfd-38c1-4ac6-9d20-47e277dbcadd",
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
              "uuid": "f5c78f2b-de6d-49b5-a2f0-bf4171f55a4e",
              "parent_uuid": "ee94bbfd-38c1-4ac6-9d20-47e277dbcadd",
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
          "uuid": "e20b1878-d6de-43e2-9a05-8b4193cc92dd",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "38eb0718-046b-4472-9ef9-6e8bd64f4096",
              "parent_uuid": "e20b1878-d6de-43e2-9a05-8b4193cc92dd",
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
              "uuid": "459228aa-cc3c-4346-91d0-74bb2e6098e2",
              "parent_uuid": "e20b1878-d6de-43e2-9a05-8b4193cc92dd",
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
              "uuid": "967d4d54-898f-4416-95a7-d5bc25360a64",
              "parent_uuid": "e20b1878-d6de-43e2-9a05-8b4193cc92dd",
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
              "uuid": "9e04f561-3fe9-4524-b2e0-075afa040330",
              "parent_uuid": "e20b1878-d6de-43e2-9a05-8b4193cc92dd",
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
          "uuid": "89d472e3-7570-431b-80fe-2e42ca35199a",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1d546b8-5731-452b-aabd-9273ca48b613",
              "parent_uuid": "89d472e3-7570-431b-80fe-2e42ca35199a",
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
              "uuid": "0d19f2d4-1686-4822-a37d-7efb6a1b6015",
              "parent_uuid": "89d472e3-7570-431b-80fe-2e42ca35199a",
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
              "uuid": "848bc794-41fc-4611-8dce-c1f681f2186e",
              "parent_uuid": "89d472e3-7570-431b-80fe-2e42ca35199a",
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
              "uuid": "06d2d052-8d08-4fe6-b6e6-82f82925ed66",
              "parent_uuid": "89d472e3-7570-431b-80fe-2e42ca35199a",
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
              "uuid": "82891344-ab7c-473f-9a12-90ad55d1ee9a",
              "parent_uuid": "89d472e3-7570-431b-80fe-2e42ca35199a",
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
              "uuid": "57c8508e-c97e-48fb-9941-070d2a08b19d",
              "parent_uuid": "89d472e3-7570-431b-80fe-2e42ca35199a",
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
          "uuid": "cdb93608-640e-4529-abf0-7ef6ed5bf9c1",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "85bf03c8-ebe6-4ead-b028-b3cedd0aa0d7",
              "parent_uuid": "cdb93608-640e-4529-abf0-7ef6ed5bf9c1",
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
          "uuid": "5fc27430-6fe7-4ebc-be34-e72e83d99621",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "acaf5749-8e18-4a6e-ae7b-0da3a4302005",
              "parent_uuid": "5fc27430-6fe7-4ebc-be34-e72e83d99621",
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
              "uuid": "8710a9f6-d68b-44e1-b338-f41e61219e85",
              "parent_uuid": "5fc27430-6fe7-4ebc-be34-e72e83d99621",
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
              "uuid": "d1c6e47d-018e-4964-b95b-e4a38099c2cb",
              "parent_uuid": "5fc27430-6fe7-4ebc-be34-e72e83d99621",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2020a224-0487-46f8-b1ca-777fe5766b9a",
                  "parent_uuid": "d1c6e47d-018e-4964-b95b-e4a38099c2cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56ff55f7-1421-4768-bf6f-90b9dc23fd80",
              "parent_uuid": "5fc27430-6fe7-4ebc-be34-e72e83d99621",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a6a1a87-f090-4073-8e7b-779002b175af",
                  "parent_uuid": "56ff55f7-1421-4768-bf6f-90b9dc23fd80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65b766a0-3589-45ec-ab2f-fa8733e8598d",
              "parent_uuid": "5fc27430-6fe7-4ebc-be34-e72e83d99621",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52dc5959-8fcf-43cd-bfa4-b6c9a69cb5b5",
                  "parent_uuid": "65b766a0-3589-45ec-ab2f-fa8733e8598d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35130563-05a5-4a8d-9f0f-7ed332b56870",
              "parent_uuid": "5fc27430-6fe7-4ebc-be34-e72e83d99621",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4d2dad3-22c5-44aa-ae19-2faf4f97acab",
                  "parent_uuid": "35130563-05a5-4a8d-9f0f-7ed332b56870",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0484841c-3497-42c7-818c-b6fcae507ee5",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd21698f-c02e-4003-8d57-ba32d90b5263",
              "parent_uuid": "0484841c-3497-42c7-818c-b6fcae507ee5",
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
              "uuid": "42d62f8a-85d7-453f-8e11-ce726e02bf4e",
              "parent_uuid": "0484841c-3497-42c7-818c-b6fcae507ee5",
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
              "uuid": "426d4c1b-5653-4210-bd17-2d777a8c912b",
              "parent_uuid": "0484841c-3497-42c7-818c-b6fcae507ee5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b7cc203-e92d-4e72-aba9-9bcce3ae75b3",
                  "parent_uuid": "426d4c1b-5653-4210-bd17-2d777a8c912b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf0a63cc-b905-41d1-9235-3ac849d60a2d",
              "parent_uuid": "0484841c-3497-42c7-818c-b6fcae507ee5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ecd22cac-8932-4714-83de-e8abfa1b8304",
                  "parent_uuid": "cf0a63cc-b905-41d1-9235-3ac849d60a2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec2cd877-cc5e-4899-8b7f-057c0b724ee3",
              "parent_uuid": "0484841c-3497-42c7-818c-b6fcae507ee5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1fec105f-3bfb-4ef9-8fec-00f8102d69fc",
                  "parent_uuid": "ec2cd877-cc5e-4899-8b7f-057c0b724ee3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3776564b-e44f-42fe-a768-5e7eaa3acd06",
              "parent_uuid": "0484841c-3497-42c7-818c-b6fcae507ee5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a123a861-87fb-45b2-8d69-fdeda5cd4ed0",
                  "parent_uuid": "3776564b-e44f-42fe-a768-5e7eaa3acd06",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "63bf0890-b16b-4aba-a9cb-40e71d1c1ed7",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "068c690a-7453-401a-a71c-3d3720f847b1",
              "parent_uuid": "63bf0890-b16b-4aba-a9cb-40e71d1c1ed7",
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
              "uuid": "b1371aef-550b-4e7b-b4ee-91bee4a912da",
              "parent_uuid": "63bf0890-b16b-4aba-a9cb-40e71d1c1ed7",
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
              "uuid": "b6886319-270a-4bf6-abbe-974961378ea2",
              "parent_uuid": "63bf0890-b16b-4aba-a9cb-40e71d1c1ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "531d5d52-5182-4103-bf4f-a2f7f5813477",
                  "parent_uuid": "b6886319-270a-4bf6-abbe-974961378ea2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1189aff-22b7-419c-aea5-5233b9a2eff4",
              "parent_uuid": "63bf0890-b16b-4aba-a9cb-40e71d1c1ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c9228cc-e726-4ca8-b37b-b4273f27cdaa",
                  "parent_uuid": "b1189aff-22b7-419c-aea5-5233b9a2eff4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50cf79da-239b-4b21-b76a-e7510c234702",
              "parent_uuid": "63bf0890-b16b-4aba-a9cb-40e71d1c1ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d38f5b0-f7c2-4c3d-aa52-608d6c0a074f",
                  "parent_uuid": "50cf79da-239b-4b21-b76a-e7510c234702",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "099da728-4d25-4f45-9765-4ac9a99ed5bd",
              "parent_uuid": "63bf0890-b16b-4aba-a9cb-40e71d1c1ed7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0fc45a6-b524-42fe-a844-aacee1cf1d96",
                  "parent_uuid": "099da728-4d25-4f45-9765-4ac9a99ed5bd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "113065d5-ff88-4d1d-8a6e-62b829965094",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa79ba92-fa50-4783-bb03-1bf1b31d44e4",
              "parent_uuid": "113065d5-ff88-4d1d-8a6e-62b829965094",
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
              "uuid": "ce97752e-6b30-4f07-909a-e21fc0ae6950",
              "parent_uuid": "113065d5-ff88-4d1d-8a6e-62b829965094",
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
              "uuid": "36bfb231-9344-4629-8c03-1c048afdcb4b",
              "parent_uuid": "113065d5-ff88-4d1d-8a6e-62b829965094",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d7574501-e0d8-46a9-a253-fa4d84f724c8",
                  "parent_uuid": "36bfb231-9344-4629-8c03-1c048afdcb4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48604873-c56b-4283-9ba8-70ef0ba595e3",
              "parent_uuid": "113065d5-ff88-4d1d-8a6e-62b829965094",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33ad9f12-4c22-4701-81a2-290a1b30f19d",
                  "parent_uuid": "48604873-c56b-4283-9ba8-70ef0ba595e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ad76210-b38f-4b3c-b7eb-50601f33b4eb",
              "parent_uuid": "113065d5-ff88-4d1d-8a6e-62b829965094",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18614571-3169-4385-a211-f40194a2cf1f",
                  "parent_uuid": "5ad76210-b38f-4b3c-b7eb-50601f33b4eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bea7a680-dcf1-4687-87f9-75cc31a4496c",
              "parent_uuid": "113065d5-ff88-4d1d-8a6e-62b829965094",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d07ff633-cbd9-4070-92f2-e694c27ce1d3",
                  "parent_uuid": "bea7a680-dcf1-4687-87f9-75cc31a4496c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8f38b731-7c5a-4fe9-b8a2-bc2f0d7a907a",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "3a415f7f-71ac-4907-b69d-b445edbdd080",
              "parent_uuid": "8f38b731-7c5a-4fe9-b8a2-bc2f0d7a907a",
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
          "uuid": "d34e2049-ea78-4e12-b487-e88e32f57b35",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9314006d-d125-47bd-b008-a55a6f9861da",
              "parent_uuid": "d34e2049-ea78-4e12-b487-e88e32f57b35",
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
              "uuid": "0fcd5cf0-a82c-4f84-a4e3-4f6f4cd4b3b6",
              "parent_uuid": "d34e2049-ea78-4e12-b487-e88e32f57b35",
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
              "uuid": "66811e6f-ea85-4143-a295-5f6db7674a8c",
              "parent_uuid": "d34e2049-ea78-4e12-b487-e88e32f57b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c84c88b-ff3e-498c-a5ce-ae8232f2aaf9",
                  "parent_uuid": "66811e6f-ea85-4143-a295-5f6db7674a8c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dff0ad1-a5b2-4f5c-a2cd-f70f039b2f6b",
              "parent_uuid": "d34e2049-ea78-4e12-b487-e88e32f57b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67a00b6c-65e6-4653-b2c7-3796cc677cf4",
                  "parent_uuid": "0dff0ad1-a5b2-4f5c-a2cd-f70f039b2f6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e61e34ef-ed9b-4b5d-9a2e-0289d3940ad3",
              "parent_uuid": "d34e2049-ea78-4e12-b487-e88e32f57b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0b1c80c-001b-480a-b728-21e342c28e63",
                  "parent_uuid": "e61e34ef-ed9b-4b5d-9a2e-0289d3940ad3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7cee6dca-f2ea-4951-921a-cd8a3ae1a807",
              "parent_uuid": "d34e2049-ea78-4e12-b487-e88e32f57b35",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4adfd9df-0eae-49ca-95b1-5a0fa098976a",
                  "parent_uuid": "7cee6dca-f2ea-4951-921a-cd8a3ae1a807",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e579e095-0986-45ce-8ac3-73050ef52efa",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88b3bfc5-979d-497d-b73c-9e15eed83da7",
              "parent_uuid": "e579e095-0986-45ce-8ac3-73050ef52efa",
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
              "uuid": "ec1028dd-5fc5-4add-9d26-6f6065462f0b",
              "parent_uuid": "e579e095-0986-45ce-8ac3-73050ef52efa",
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
              "uuid": "31035e03-87be-4dd6-9ed9-701912e05fa9",
              "parent_uuid": "e579e095-0986-45ce-8ac3-73050ef52efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d36cee5-de07-4e0c-9c6d-2ae8d974b15c",
                  "parent_uuid": "31035e03-87be-4dd6-9ed9-701912e05fa9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d48d13e5-dcb1-4e59-9926-80bf9854ac1c",
              "parent_uuid": "e579e095-0986-45ce-8ac3-73050ef52efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f24747b-efed-4299-ad03-ce6bdaecd975",
                  "parent_uuid": "d48d13e5-dcb1-4e59-9926-80bf9854ac1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c518e132-367f-412f-9571-7a2fdc102f20",
              "parent_uuid": "e579e095-0986-45ce-8ac3-73050ef52efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72ef35ad-7e1a-414b-ae39-638e01ecd95d",
                  "parent_uuid": "c518e132-367f-412f-9571-7a2fdc102f20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c854e487-233c-4bab-bf7d-42a2c614f286",
              "parent_uuid": "e579e095-0986-45ce-8ac3-73050ef52efa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09a8a184-1790-46bb-abe6-ca3897de0b80",
                  "parent_uuid": "c854e487-233c-4bab-bf7d-42a2c614f286",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de0ee7d8-076b-4433-9391-6108f8918cc2",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d8769f7-336d-4cd4-8dae-768b77c71a07",
              "parent_uuid": "de0ee7d8-076b-4433-9391-6108f8918cc2",
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
              "uuid": "22ee3cf2-ff8b-4799-88ef-65e92cc91021",
              "parent_uuid": "de0ee7d8-076b-4433-9391-6108f8918cc2",
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
              "uuid": "ca5ee951-a7d0-45e0-a3c0-d27915daee97",
              "parent_uuid": "de0ee7d8-076b-4433-9391-6108f8918cc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6bd5b1e-c404-4686-88ea-1b6f2e64e446",
                  "parent_uuid": "ca5ee951-a7d0-45e0-a3c0-d27915daee97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f14a70c-a142-4fa2-bfa3-ed565affc194",
              "parent_uuid": "de0ee7d8-076b-4433-9391-6108f8918cc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b937491c-2ea8-4bbf-83d1-b807c6c019b9",
                  "parent_uuid": "9f14a70c-a142-4fa2-bfa3-ed565affc194",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c3c174e-bd64-450d-9840-ff13e9a188ae",
              "parent_uuid": "de0ee7d8-076b-4433-9391-6108f8918cc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc7cf009-5f5c-412a-a81c-0eef4ba4c72e",
                  "parent_uuid": "4c3c174e-bd64-450d-9840-ff13e9a188ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5448abb0-154e-4faa-9256-41df0a895868",
              "parent_uuid": "de0ee7d8-076b-4433-9391-6108f8918cc2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bf780aa-7eb9-4c08-9605-bd1462b2a878",
                  "parent_uuid": "5448abb0-154e-4faa-9256-41df0a895868",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "769025c7-296d-4b74-81fc-bbca3607a2e4",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7bc570d2-0314-45c4-8054-906fcd4d0ae5",
              "parent_uuid": "769025c7-296d-4b74-81fc-bbca3607a2e4",
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
              "uuid": "474dd847-0815-48c2-9e4b-c2b3ad4e1cf3",
              "parent_uuid": "769025c7-296d-4b74-81fc-bbca3607a2e4",
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
              "uuid": "274c5c7a-8de8-4c98-ab31-137b980682f8",
              "parent_uuid": "769025c7-296d-4b74-81fc-bbca3607a2e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df3162e9-a7b0-4056-8e8b-a253b463fb99",
                  "parent_uuid": "274c5c7a-8de8-4c98-ab31-137b980682f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24af2c50-8622-475d-be84-b751bd80be9a",
              "parent_uuid": "769025c7-296d-4b74-81fc-bbca3607a2e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56c13e9d-b894-40f5-a9c3-2174efb8db77",
                  "parent_uuid": "24af2c50-8622-475d-be84-b751bd80be9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b697eb0f-7e9f-4a41-ac80-bc6612788b06",
              "parent_uuid": "769025c7-296d-4b74-81fc-bbca3607a2e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4308f35c-39ec-42ae-94f4-8f2c922afdd0",
                  "parent_uuid": "b697eb0f-7e9f-4a41-ac80-bc6612788b06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2fd54b88-aa88-4c3d-b106-83dc959b3e09",
              "parent_uuid": "769025c7-296d-4b74-81fc-bbca3607a2e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ac14ec6-72cc-48e1-9ad8-c031e5a48eea",
                  "parent_uuid": "2fd54b88-aa88-4c3d-b106-83dc959b3e09",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc64e905-a59c-4aa0-a7d7-15e15ee091ae",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbefb6d2-c7f2-48f8-9238-4af36af3e88c",
              "parent_uuid": "bc64e905-a59c-4aa0-a7d7-15e15ee091ae",
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
              "uuid": "5c565894-5f01-4b93-aeb6-7932a2ce26d6",
              "parent_uuid": "bc64e905-a59c-4aa0-a7d7-15e15ee091ae",
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
              "uuid": "9c687047-4710-41f8-ad92-1358d1972b90",
              "parent_uuid": "bc64e905-a59c-4aa0-a7d7-15e15ee091ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c867337-47a1-43f1-b618-4ac1f586811e",
                  "parent_uuid": "9c687047-4710-41f8-ad92-1358d1972b90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96b3ffe4-cfbe-411b-9639-0817e4e32bae",
              "parent_uuid": "bc64e905-a59c-4aa0-a7d7-15e15ee091ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "758e6f9a-5349-4cbb-9eaa-789acc4e3aa4",
                  "parent_uuid": "96b3ffe4-cfbe-411b-9639-0817e4e32bae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "263f88b2-ac39-4b64-9dc1-6b4e46eb64f2",
              "parent_uuid": "bc64e905-a59c-4aa0-a7d7-15e15ee091ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86d66ce8-a615-425f-89ac-f0ae87dc4eaa",
                  "parent_uuid": "263f88b2-ac39-4b64-9dc1-6b4e46eb64f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e74ea142-9b71-4ee6-affc-08d52a3ba389",
              "parent_uuid": "bc64e905-a59c-4aa0-a7d7-15e15ee091ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a964a13-bc6c-4e06-825d-5c5f9232084d",
                  "parent_uuid": "e74ea142-9b71-4ee6-affc-08d52a3ba389",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "192c6b3b-423b-443d-9235-d7c15f2cadbd",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ead2795-a067-48b3-97f6-792b4d09ca9e",
              "parent_uuid": "192c6b3b-423b-443d-9235-d7c15f2cadbd",
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
              "uuid": "b9fcb096-8c23-4c2e-bf9a-1220c42e20be",
              "parent_uuid": "192c6b3b-423b-443d-9235-d7c15f2cadbd",
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
              "uuid": "30b943fa-ac6a-4e4f-a519-883177afd450",
              "parent_uuid": "192c6b3b-423b-443d-9235-d7c15f2cadbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1a44d0ef-e3a8-4b74-80ab-302f6649fa1d",
                  "parent_uuid": "30b943fa-ac6a-4e4f-a519-883177afd450",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e93d20a8-b278-4431-a22f-9a6c4717b618",
              "parent_uuid": "192c6b3b-423b-443d-9235-d7c15f2cadbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e324201-4694-431d-bc57-f83343e1c7b4",
                  "parent_uuid": "e93d20a8-b278-4431-a22f-9a6c4717b618",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d569e90-6968-4fd5-bcd2-7574bb40684f",
              "parent_uuid": "192c6b3b-423b-443d-9235-d7c15f2cadbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81c9d09c-2264-4c47-913d-d49b69f8da11",
                  "parent_uuid": "6d569e90-6968-4fd5-bcd2-7574bb40684f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd000faf-ae54-42c8-929c-0ad065729fa2",
              "parent_uuid": "192c6b3b-423b-443d-9235-d7c15f2cadbd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a6699ce-817b-4913-93d7-1114241bfcca",
                  "parent_uuid": "dd000faf-ae54-42c8-929c-0ad065729fa2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "776e4254-69fc-4291-9406-d11d835907bd",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23410d22-047e-4cf5-a858-47f09a4725ed",
              "parent_uuid": "776e4254-69fc-4291-9406-d11d835907bd",
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
              "uuid": "ed1c3186-60f2-40c3-a072-7f90a640bfd7",
              "parent_uuid": "776e4254-69fc-4291-9406-d11d835907bd",
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
              "uuid": "05eb2497-8af7-43fa-a565-d696f110fe05",
              "parent_uuid": "776e4254-69fc-4291-9406-d11d835907bd",
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
                  "uuid": "e6a04315-a7ff-4f5b-8126-854513b6751f",
                  "parent_uuid": "05eb2497-8af7-43fa-a565-d696f110fe05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43426ba7-65ff-4217-a6ab-54d99244b47c",
              "parent_uuid": "776e4254-69fc-4291-9406-d11d835907bd",
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
                  "uuid": "79e46533-b368-4beb-b604-fc674b870c2f",
                  "parent_uuid": "43426ba7-65ff-4217-a6ab-54d99244b47c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f4cfb07-2ba0-4929-8fa9-568a60e3f2f9",
              "parent_uuid": "776e4254-69fc-4291-9406-d11d835907bd",
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
                  "uuid": "5a1cf04c-cdb3-4bac-8df6-5dbb7082d9a5",
                  "parent_uuid": "6f4cfb07-2ba0-4929-8fa9-568a60e3f2f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "116a9e60-b9f8-4656-846d-7182e4bbe557",
              "parent_uuid": "776e4254-69fc-4291-9406-d11d835907bd",
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
                  "uuid": "ea7d8cc6-62d7-4183-888f-83fb619b1248",
                  "parent_uuid": "116a9e60-b9f8-4656-846d-7182e4bbe557",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0854aaa-52d2-411f-9410-b68cfe5d4669",
              "parent_uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
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
              "uuid": "30b1977a-88c1-4207-ba25-4a6c066b3f7a",
              "parent_uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
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
              "uuid": "e3fac094-a40e-48d4-9dce-3086b2d4ac62",
              "parent_uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
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
              "uuid": "a6a985a1-e71b-4791-8e8e-8ed2c9b0cd3f",
              "parent_uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
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
                  "uuid": "cf02e8d1-484a-428e-acd7-a269c307573f",
                  "parent_uuid": "a6a985a1-e71b-4791-8e8e-8ed2c9b0cd3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8467799-ed11-49b8-b9b3-92cf506b9fbc",
              "parent_uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
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
                  "uuid": "d8b63140-7a17-42ea-af5b-7c23af3e84e1",
                  "parent_uuid": "a8467799-ed11-49b8-b9b3-92cf506b9fbc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e860da4-b321-41d4-9277-1798eef4cf6d",
              "parent_uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
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
                  "uuid": "117376d4-b6c4-4d61-a83c-e4a2d746963e",
                  "parent_uuid": "1e860da4-b321-41d4-9277-1798eef4cf6d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54290ef8-80af-416d-9284-af327b59a20a",
              "parent_uuid": "9cc135e3-dfd3-46aa-8554-f5e97023e954",
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
                  "uuid": "f753e1f4-5cb8-4fc4-9983-d8c82bf9b5be",
                  "parent_uuid": "54290ef8-80af-416d-9284-af327b59a20a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "712bab84-0c68-4e0f-be29-1b83778f046b",
              "parent_uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
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
              "uuid": "b4b33eb7-52d7-4fa2-b29d-5daeb83627d3",
              "parent_uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
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
              "uuid": "c91807bc-ec78-4fa6-a4bb-9606728a6762",
              "parent_uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
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
                  "uuid": "60e7417b-a15c-4739-bf0e-7fa414cb96c9",
                  "parent_uuid": "c91807bc-ec78-4fa6-a4bb-9606728a6762",
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
              "uuid": "b0833032-f2c3-4fd3-8998-ee981e2ee129",
              "parent_uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
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
                  "uuid": "ea0ba258-baf0-4f42-a43e-225b936ede3d",
                  "parent_uuid": "b0833032-f2c3-4fd3-8998-ee981e2ee129",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59e317f5-ff0e-4576-ab9b-638f94eb85c1",
              "parent_uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
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
                  "uuid": "80a6051f-32d0-4f04-b648-f06a1ba683c5",
                  "parent_uuid": "59e317f5-ff0e-4576-ab9b-638f94eb85c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2781c8b0-9f68-481f-9d8c-2e0ef7729db9",
              "parent_uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
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
                  "uuid": "2837d50a-11d9-4cd3-8abd-c6435674c2fc",
                  "parent_uuid": "2781c8b0-9f68-481f-9d8c-2e0ef7729db9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cd442f4-3a8b-4519-a1e1-ef9d2607eb2d",
              "parent_uuid": "9832b8be-eacf-475a-91b2-d37fd569a0b4",
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
                  "uuid": "92783d44-dc04-49f2-ae4f-3d998ab40672",
                  "parent_uuid": "2cd442f4-3a8b-4519-a1e1-ef9d2607eb2d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "baea79cc-f859-4bab-810d-5d3418e92ab4",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab683439-3b1c-40e4-b8c0-c44f9bdc907d",
              "parent_uuid": "baea79cc-f859-4bab-810d-5d3418e92ab4",
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
              "uuid": "917fd869-fcf5-4977-8963-40f2f3d56932",
              "parent_uuid": "baea79cc-f859-4bab-810d-5d3418e92ab4",
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
              "uuid": "a3135c9e-12b5-4ec6-b10a-7a59129fca59",
              "parent_uuid": "baea79cc-f859-4bab-810d-5d3418e92ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e50ebe3a-dc6f-4097-b001-85db886d9123",
                  "parent_uuid": "a3135c9e-12b5-4ec6-b10a-7a59129fca59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "153f10ea-ea19-4e9b-bdde-f197b639c597",
              "parent_uuid": "baea79cc-f859-4bab-810d-5d3418e92ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d22f889-1b65-412b-ad5a-26eca787f290",
                  "parent_uuid": "153f10ea-ea19-4e9b-bdde-f197b639c597",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42de70bc-a0c9-4e74-8acb-e004328b6e76",
              "parent_uuid": "baea79cc-f859-4bab-810d-5d3418e92ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "394e1391-a060-4323-aee9-829f6b901f4f",
                  "parent_uuid": "42de70bc-a0c9-4e74-8acb-e004328b6e76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b920ca1f-108e-44ae-a47f-b31667c25cfd",
              "parent_uuid": "baea79cc-f859-4bab-810d-5d3418e92ab4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ba971f3-fd24-4b98-b462-5c8755f78b41",
                  "parent_uuid": "b920ca1f-108e-44ae-a47f-b31667c25cfd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "10109cd0-177a-461d-9429-7ff39376c67d",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1bccbe8-797d-4f46-891c-2228468841ea",
              "parent_uuid": "10109cd0-177a-461d-9429-7ff39376c67d",
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
              "uuid": "edda4946-f963-4283-91b3-cab2260c640e",
              "parent_uuid": "10109cd0-177a-461d-9429-7ff39376c67d",
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
              "uuid": "fafbbd1e-cea6-4cd3-a111-03d34d59b1f7",
              "parent_uuid": "10109cd0-177a-461d-9429-7ff39376c67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40457393-a035-4053-827d-c6393254c58d",
                  "parent_uuid": "fafbbd1e-cea6-4cd3-a111-03d34d59b1f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "683f5ea5-5286-4ab6-bf66-821015ff9900",
              "parent_uuid": "10109cd0-177a-461d-9429-7ff39376c67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "855bea0c-fc94-462f-9d47-7c32693553fd",
                  "parent_uuid": "683f5ea5-5286-4ab6-bf66-821015ff9900",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91dca738-54d8-4dae-b0ed-87f0fbef2f7f",
              "parent_uuid": "10109cd0-177a-461d-9429-7ff39376c67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be6abb5d-bb67-41c5-806a-1a56278887b2",
                  "parent_uuid": "91dca738-54d8-4dae-b0ed-87f0fbef2f7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09f5372d-e5b4-46ab-bea4-12d76aefb9d6",
              "parent_uuid": "10109cd0-177a-461d-9429-7ff39376c67d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9655df79-f7fb-4591-a094-a02a8c0d4e97",
                  "parent_uuid": "09f5372d-e5b4-46ab-bea4-12d76aefb9d6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e475dc8-ba98-4097-92fa-4eb66e47ce6f",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d615c291-6459-4ead-acee-fa422f92d56f",
              "parent_uuid": "4e475dc8-ba98-4097-92fa-4eb66e47ce6f",
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
              "uuid": "cb3da42c-ca8d-4b63-96ce-091498955b13",
              "parent_uuid": "4e475dc8-ba98-4097-92fa-4eb66e47ce6f",
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
              "uuid": "e9d0785e-2058-41cf-a256-6ac6fc36d45e",
              "parent_uuid": "4e475dc8-ba98-4097-92fa-4eb66e47ce6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f50c1d11-c1c3-4fd2-9da7-a516f64f1828",
                  "parent_uuid": "e9d0785e-2058-41cf-a256-6ac6fc36d45e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c7a682d-02bb-4b46-805e-58fcc2826ae2",
              "parent_uuid": "4e475dc8-ba98-4097-92fa-4eb66e47ce6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d279dc28-bfc1-426a-9d53-3eb09c86e9a5",
                  "parent_uuid": "3c7a682d-02bb-4b46-805e-58fcc2826ae2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acb95696-d8b9-4457-9ab9-74c19c9649ca",
              "parent_uuid": "4e475dc8-ba98-4097-92fa-4eb66e47ce6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5c21302-8a5e-4944-9ad9-a2bde5da27e0",
                  "parent_uuid": "acb95696-d8b9-4457-9ab9-74c19c9649ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b60ac10-13ce-48ab-bf79-f34c32da3841",
              "parent_uuid": "4e475dc8-ba98-4097-92fa-4eb66e47ce6f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d06749c-3789-40b3-b6e7-6770ef3df987",
                  "parent_uuid": "1b60ac10-13ce-48ab-bf79-f34c32da3841",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ae3949f9-09cc-4043-bedb-56f9db736c54",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "67a21c2e-1a52-423a-baf2-913c788b178f",
              "parent_uuid": "ae3949f9-09cc-4043-bedb-56f9db736c54",
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
              "uuid": "885b7c61-b63e-4ebe-b6e4-1d04ba4aac71",
              "parent_uuid": "ae3949f9-09cc-4043-bedb-56f9db736c54",
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
              "uuid": "96444969-695a-4a6e-9332-6e9313ebd715",
              "parent_uuid": "ae3949f9-09cc-4043-bedb-56f9db736c54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77b2f655-4cca-4e5a-8a04-2bf04b141fd1",
                  "parent_uuid": "96444969-695a-4a6e-9332-6e9313ebd715",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a568fc8-624d-408c-a608-d32832f8e96a",
              "parent_uuid": "ae3949f9-09cc-4043-bedb-56f9db736c54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2473a04-9944-480a-920b-5ca04b5bda97",
                  "parent_uuid": "0a568fc8-624d-408c-a608-d32832f8e96a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "041963de-5de0-4d92-8432-ca36a7e8687d",
              "parent_uuid": "ae3949f9-09cc-4043-bedb-56f9db736c54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa962f2c-90d1-4664-8213-6ca79ceaad1c",
                  "parent_uuid": "041963de-5de0-4d92-8432-ca36a7e8687d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ea1704f-2caf-41d2-9709-73eaaed1287d",
              "parent_uuid": "ae3949f9-09cc-4043-bedb-56f9db736c54",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc59a002-a741-454b-ac9d-b479e117827a",
                  "parent_uuid": "3ea1704f-2caf-41d2-9709-73eaaed1287d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7021a54f-76f5-49e4-a2ed-46ad464cf11f",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "2912516b-0ef7-4d6e-ad2b-48c79e71653b",
              "parent_uuid": "7021a54f-76f5-49e4-a2ed-46ad464cf11f",
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
          "uuid": "cb2d94f9-b2cb-4e2a-8d50-394985d60cda",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c9bd20f1-ec45-4fb6-bf85-fdbf75fefbe4",
              "parent_uuid": "cb2d94f9-b2cb-4e2a-8d50-394985d60cda",
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
              "uuid": "a89f64fa-600c-4096-a9c6-a6742100c52e",
              "parent_uuid": "cb2d94f9-b2cb-4e2a-8d50-394985d60cda",
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
              "uuid": "44fe38ac-4f77-442c-97e6-40a748c9f6d1",
              "parent_uuid": "cb2d94f9-b2cb-4e2a-8d50-394985d60cda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2483581c-fb3a-4da8-a1d3-eed9e26b92b6",
                  "parent_uuid": "44fe38ac-4f77-442c-97e6-40a748c9f6d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "870dc92a-3315-497d-a8d3-049348bfddea",
              "parent_uuid": "cb2d94f9-b2cb-4e2a-8d50-394985d60cda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c36a1216-12a1-4ed4-80a7-5be8366e2422",
                  "parent_uuid": "870dc92a-3315-497d-a8d3-049348bfddea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ce97741-e05c-467d-9982-a778f818e8bd",
              "parent_uuid": "cb2d94f9-b2cb-4e2a-8d50-394985d60cda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a3af617-8be9-4a44-b93e-3e9e580e5332",
                  "parent_uuid": "8ce97741-e05c-467d-9982-a778f818e8bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ed74e8f-cb6a-4d2f-b522-2c8a520bd5a3",
              "parent_uuid": "cb2d94f9-b2cb-4e2a-8d50-394985d60cda",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01073cdc-1734-4842-8730-26803081fe9b",
                  "parent_uuid": "2ed74e8f-cb6a-4d2f-b522-2c8a520bd5a3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4f6383fa-b43a-4161-860a-5dba6639518f",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55d8caa5-f774-45f5-b747-97a516b57914",
              "parent_uuid": "4f6383fa-b43a-4161-860a-5dba6639518f",
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
              "uuid": "5ec79af3-a2df-4f1e-897c-1c95ade3fe72",
              "parent_uuid": "4f6383fa-b43a-4161-860a-5dba6639518f",
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
              "uuid": "2d2cd987-882a-4010-88df-a38b208385ea",
              "parent_uuid": "4f6383fa-b43a-4161-860a-5dba6639518f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ef77192-af6c-4046-9559-5ec376674ee3",
                  "parent_uuid": "2d2cd987-882a-4010-88df-a38b208385ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97712f26-aeb5-4c22-a57f-9f37f492473b",
              "parent_uuid": "4f6383fa-b43a-4161-860a-5dba6639518f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22929e73-9dd3-4d41-8685-540ba3973349",
                  "parent_uuid": "97712f26-aeb5-4c22-a57f-9f37f492473b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d462547-2720-4c31-81d5-3f5868451b68",
              "parent_uuid": "4f6383fa-b43a-4161-860a-5dba6639518f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "402b0645-dc6d-406f-a54b-66b0d37d7b08",
                  "parent_uuid": "2d462547-2720-4c31-81d5-3f5868451b68",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c056e6c2-8f75-4f02-b7f8-8ccc7b03f103",
              "parent_uuid": "4f6383fa-b43a-4161-860a-5dba6639518f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dcfd1328-f19e-4869-b19a-fcd7dda77aa8",
                  "parent_uuid": "c056e6c2-8f75-4f02-b7f8-8ccc7b03f103",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de9c54e0-db52-4305-a8cd-fd02560b4a2a",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f323b91-833d-4a28-a80f-de920c0fabf8",
              "parent_uuid": "de9c54e0-db52-4305-a8cd-fd02560b4a2a",
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
              "uuid": "27751bc7-c310-49ac-931c-04a8792a3dee",
              "parent_uuid": "de9c54e0-db52-4305-a8cd-fd02560b4a2a",
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
              "uuid": "4725ac68-1348-49a8-b1a3-6482d8b077d6",
              "parent_uuid": "de9c54e0-db52-4305-a8cd-fd02560b4a2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3fb33812-49dc-42f8-ab44-108a8585b29b",
                  "parent_uuid": "4725ac68-1348-49a8-b1a3-6482d8b077d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c164b30-f0e2-472c-8d0d-faefbd94315e",
              "parent_uuid": "de9c54e0-db52-4305-a8cd-fd02560b4a2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91ef966e-5ced-46cd-b10e-660fbe025df3",
                  "parent_uuid": "7c164b30-f0e2-472c-8d0d-faefbd94315e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7539a53-8e0a-4ce8-be8c-639bb2fd10d5",
              "parent_uuid": "de9c54e0-db52-4305-a8cd-fd02560b4a2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ffb79f1-adfc-4eb1-ba5b-ab1275e03556",
                  "parent_uuid": "b7539a53-8e0a-4ce8-be8c-639bb2fd10d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e19a8330-0fe0-4407-a86d-2581674a0490",
              "parent_uuid": "de9c54e0-db52-4305-a8cd-fd02560b4a2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "858f65a9-8ba2-4f05-b1fb-aa00068743db",
                  "parent_uuid": "e19a8330-0fe0-4407-a86d-2581674a0490",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "82b665fe-8efa-4797-bf2c-0667678fbce9",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74e09f6f-44bd-4d0e-8da7-de032bc91a3e",
              "parent_uuid": "82b665fe-8efa-4797-bf2c-0667678fbce9",
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
              "uuid": "ef7ba0bb-764a-4809-ac59-3083e080b46f",
              "parent_uuid": "82b665fe-8efa-4797-bf2c-0667678fbce9",
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
              "uuid": "f2619d0f-771a-48ea-9b48-70d75c9fd91b",
              "parent_uuid": "82b665fe-8efa-4797-bf2c-0667678fbce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f41023f8-338b-40cf-8dc9-9f51d14fd07d",
                  "parent_uuid": "f2619d0f-771a-48ea-9b48-70d75c9fd91b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92787d47-0d15-4974-98d4-a89bd1fdb254",
              "parent_uuid": "82b665fe-8efa-4797-bf2c-0667678fbce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2123445f-bc7b-4991-b01c-25a76fa83841",
                  "parent_uuid": "92787d47-0d15-4974-98d4-a89bd1fdb254",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "513fcac9-fc97-433f-ba85-899c55d14028",
              "parent_uuid": "82b665fe-8efa-4797-bf2c-0667678fbce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7434f273-0d81-4501-8b19-8d2cc880f417",
                  "parent_uuid": "513fcac9-fc97-433f-ba85-899c55d14028",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4187a8f9-bbaa-4666-aae8-f042dc9e17df",
              "parent_uuid": "82b665fe-8efa-4797-bf2c-0667678fbce9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e97cc42f-9955-4b1b-9f8e-f210b6bb5e0f",
                  "parent_uuid": "4187a8f9-bbaa-4666-aae8-f042dc9e17df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ef6310ea-8156-4e53-8f49-a9bbc527dc80",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b820d0b6-58b3-4aaf-8df8-76da28b86480",
              "parent_uuid": "ef6310ea-8156-4e53-8f49-a9bbc527dc80",
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
              "uuid": "f0644e2e-4ff4-4fa4-8868-4bd4008ecc31",
              "parent_uuid": "ef6310ea-8156-4e53-8f49-a9bbc527dc80",
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
              "uuid": "bdcb9b56-af3d-4197-9468-321a13ce9f3d",
              "parent_uuid": "ef6310ea-8156-4e53-8f49-a9bbc527dc80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f6643a0-9e17-4d33-bf04-815bb56f27b4",
                  "parent_uuid": "bdcb9b56-af3d-4197-9468-321a13ce9f3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b24b4e34-8009-4fb5-a497-c851f14f2553",
              "parent_uuid": "ef6310ea-8156-4e53-8f49-a9bbc527dc80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a27c3402-8e54-42c0-8688-43c597ccf6c2",
                  "parent_uuid": "b24b4e34-8009-4fb5-a497-c851f14f2553",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5fca91c-2578-454d-b3b5-d3298cbcf3da",
              "parent_uuid": "ef6310ea-8156-4e53-8f49-a9bbc527dc80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6dca2cbc-0d7a-47fa-af90-3e38022c04eb",
                  "parent_uuid": "f5fca91c-2578-454d-b3b5-d3298cbcf3da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dee4f34d-a3d7-4ca5-9775-d5c0ab39bcb5",
              "parent_uuid": "ef6310ea-8156-4e53-8f49-a9bbc527dc80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8923877e-4b6c-4f51-9cd6-53e267050f1d",
                  "parent_uuid": "dee4f34d-a3d7-4ca5-9775-d5c0ab39bcb5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f45382b3-e47b-4d9c-bd7b-380b5fe65932",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "719b9780-351f-4362-bb76-d67730def4ce",
              "parent_uuid": "f45382b3-e47b-4d9c-bd7b-380b5fe65932",
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
          "uuid": "773ab49d-bc7f-4f37-b2a2-851c36cc2ac1",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8fab39dc-af8a-4942-9b40-a85bf6b22467",
              "parent_uuid": "773ab49d-bc7f-4f37-b2a2-851c36cc2ac1",
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
          "uuid": "59d1d62d-cacd-4bf6-a827-cdd13bab87c0",
          "parent_uuid": "bcef81b4-0ddd-40e3-bf3f-5d4bb9f9e8eb",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3e602ebe-255f-4958-8835-886a0a9a3ded",
              "parent_uuid": "59d1d62d-cacd-4bf6-a827-cdd13bab87c0",
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
                  "uuid": "526998ed-665c-4633-b358-7c2c66bd66a9",
                  "parent_uuid": "3e602ebe-255f-4958-8835-886a0a9a3ded",
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

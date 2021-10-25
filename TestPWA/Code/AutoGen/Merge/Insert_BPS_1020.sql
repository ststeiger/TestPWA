
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
  "uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
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
      "uuid": "1079d59f-de48-41c1-bb30-0cad270a22cb",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
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
      "uuid": "b85b8058-7c41-4af3-8a07-48fa73f54094",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
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
      "uuid": "abfa45a2-8094-4298-9e1d-5bd77da1f481",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
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
      "uuid": "6f023131-d995-4d1c-9b21-a41ac74b0d16",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
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
      "uuid": "bf4d1de7-50bb-48aa-99cd-9eff64ddfafc",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
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
      "uuid": "c9abf095-cd85-47bc-862c-00b8c6ae0257",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "29"
        ]
      ],
      "children": [],
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "c3b8fb3c-d828-4c8c-a4f8-143258f1dbd9",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
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
      "uuid": "a547c083-342d-4826-b242-bd298770c8c3",
      "parent_uuid": "1757ea1d-58e0-43e6-8287-1bb3ea754713",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "761a83ea-8550-402d-b6f6-63b5d7e3da7f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "807c237d-d1b9-4b02-bad6-3218d3407868",
              "parent_uuid": "761a83ea-8550-402d-b6f6-63b5d7e3da7f",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e9e85d62-70c7-4674-be3a-78fa3d7b0311",
              "parent_uuid": "761a83ea-8550-402d-b6f6-63b5d7e3da7f",
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
              "uuid": "6566cbcd-bd92-4aa7-8aa5-16a62982bd5f",
              "parent_uuid": "761a83ea-8550-402d-b6f6-63b5d7e3da7f",
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
              "uuid": "3898128e-f77e-4765-acff-61b62da2fe7b",
              "parent_uuid": "761a83ea-8550-402d-b6f6-63b5d7e3da7f",
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
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<span>Bargeldgewerk:     BPS 1020</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "352c55d9-c317-48c5-a397-41a5d387752b",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "be259bc6-1a6c-4e8b-85a7-4825483f733f",
              "parent_uuid": "352c55d9-c317-48c5-a397-41a5d387752b",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
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
              "innerHtml": "<span>Wartungsfirma:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7d0b5cc0-ac74-4c1e-a13a-8bac1b569add",
              "parent_uuid": "352c55d9-c317-48c5-a397-41a5d387752b",
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
              "uuid": "af9a2dd6-9921-49c8-b57a-581674ba47fb",
              "parent_uuid": "352c55d9-c317-48c5-a397-41a5d387752b",
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
              "uuid": "f4499db4-4c4d-4fea-afa5-7e684be4aa15",
              "parent_uuid": "352c55d9-c317-48c5-a397-41a5d387752b",
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
              "innerHtml": "<span>Servicetechniker:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 1,
          "lvl": 0
        },
        {
          "uuid": "b6d27137-1942-4516-b68d-6ddd0800d5f7",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "517bf050-fd50-4a51-a94f-d1eb21b1f371",
              "parent_uuid": "b6d27137-1942-4516-b68d-6ddd0800d5f7",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 2px solid #000000"
                ],
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
              "innerHtml": "<span>Stunden:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "37edd79a-d6b3-4cd3-9fe6-1fb4112b3b6a",
              "parent_uuid": "b6d27137-1942-4516-b68d-6ddd0800d5f7",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "532145b7-8a9a-4f21-9aa8-141e90e690bf",
              "parent_uuid": "b6d27137-1942-4516-b68d-6ddd0800d5f7",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000"
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9c16f721-c8d1-4583-ad96-ff7ce97fd2ad",
              "parent_uuid": "b6d27137-1942-4516-b68d-6ddd0800d5f7",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-right: 2px solid #000000"
                ],
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
              "innerHtml": "<span>Noten:</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "f02c4557-a56a-49bb-b606-e84f3d0c1aa3",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c7b234c-3b76-42ec-ac69-c8c90d4b5eae",
              "parent_uuid": "f02c4557-a56a-49bb-b606-e84f3d0c1aa3",
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
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "571a41fa-2c91-43b0-b3e8-3432b5c307e6",
              "parent_uuid": "f02c4557-a56a-49bb-b606-e84f3d0c1aa3",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c69b8674-a782-44c7-a5e3-5515ada4c9e2",
              "parent_uuid": "f02c4557-a56a-49bb-b606-e84f3d0c1aa3",
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
              "uuid": "6bf8212f-2519-4f65-b735-60b4ee443c7b",
              "parent_uuid": "f02c4557-a56a-49bb-b606-e84f3d0c1aa3",
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
              "uuid": "fceda904-165d-4103-9e31-1907d228f148",
              "parent_uuid": "f02c4557-a56a-49bb-b606-e84f3d0c1aa3",
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
              "uuid": "474595c2-311d-4c6b-9915-98a1b259ff98",
              "parent_uuid": "f02c4557-a56a-49bb-b606-e84f3d0c1aa3",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "58406ae9-b905-4a86-ab80-d9feeb31a508",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "023f808f-9076-4640-8265-93ff333535c6",
              "parent_uuid": "58406ae9-b905-4a86-ab80-d9feeb31a508",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "83ff3cbc-01e9-4b8d-8e0f-70ef2c6ae7b6",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f72ef14-84a2-4f62-83b9-edfcc26a774a",
              "parent_uuid": "83ff3cbc-01e9-4b8d-8e0f-70ef2c6ae7b6",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im Eingabemodul tauschen </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "907ce3e0-12ce-48bd-a55d-98507a00f7ea",
              "parent_uuid": "83ff3cbc-01e9-4b8d-8e0f-70ef2c6ae7b6",
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
              "innerHtml": "\r\n                    <span>61</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "a93f3721-44ac-4092-b4bd-6f9544fea5a7",
              "parent_uuid": "83ff3cbc-01e9-4b8d-8e0f-70ef2c6ae7b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97495b01-e7fe-4365-b01b-81d8c804c9d1",
                  "parent_uuid": "a93f3721-44ac-4092-b4bd-6f9544fea5a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c4031377-25ce-4571-b8b6-ca43aa0e479f",
              "parent_uuid": "83ff3cbc-01e9-4b8d-8e0f-70ef2c6ae7b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8773757f-065b-4ff5-a762-25a221494507",
                  "parent_uuid": "c4031377-25ce-4571-b8b6-ca43aa0e479f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5c56dd6-b4eb-4416-925f-7538812ced71",
              "parent_uuid": "83ff3cbc-01e9-4b8d-8e0f-70ef2c6ae7b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eca8e35e-776e-4712-b59d-fe670eead1f9",
                  "parent_uuid": "f5c56dd6-b4eb-4416-925f-7538812ced71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cd9eae7-0cbe-42f8-b806-22dd20ae0f14",
              "parent_uuid": "83ff3cbc-01e9-4b8d-8e0f-70ef2c6ae7b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5aab1eb3-a232-4397-a1e5-577820be5466",
                  "parent_uuid": "6cd9eae7-0cbe-42f8-b806-22dd20ae0f14",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "763a8016-723a-4a3e-b6bd-13f3dcaf472f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fee0b50a-051c-436f-bc4e-52dfa6b64d4b",
              "parent_uuid": "763a8016-723a-4a3e-b6bd-13f3dcaf472f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen im OM, DM und SM prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f96564a7-be74-4f88-b512-44570cddc9a3",
              "parent_uuid": "763a8016-723a-4a3e-b6bd-13f3dcaf472f",
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
              "innerHtml": "\r\n                    <span>68</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6362d559-2442-4ed4-90fb-5d0f679d5fa5",
              "parent_uuid": "763a8016-723a-4a3e-b6bd-13f3dcaf472f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bd31201-c30b-4345-80d0-4379f52ccee1",
                  "parent_uuid": "6362d559-2442-4ed4-90fb-5d0f679d5fa5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13f2f900-c5df-42c8-852a-ab6f456b29c1",
              "parent_uuid": "763a8016-723a-4a3e-b6bd-13f3dcaf472f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b56abe6-bf65-4561-add9-0b0933166001",
                  "parent_uuid": "13f2f900-c5df-42c8-852a-ab6f456b29c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f4ac6b8-a2df-44fc-be3f-2a489061b0cb",
              "parent_uuid": "763a8016-723a-4a3e-b6bd-13f3dcaf472f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b15826f9-b345-41b5-a779-6bc2181a9dae",
                  "parent_uuid": "9f4ac6b8-a2df-44fc-be3f-2a489061b0cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbffd7dd-5295-4160-b42d-a4839fc93029",
              "parent_uuid": "763a8016-723a-4a3e-b6bd-13f3dcaf472f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f92cfea-f3ed-48af-9445-b998c6ae9711",
                  "parent_uuid": "bbffd7dd-5295-4160-b42d-a4839fc93029",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d13f67d-a974-4d14-8018-cb22c3c1cc5f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "414f48ed-d9d9-4a69-91d7-19b1e06028a0",
              "parent_uuid": "6d13f67d-a974-4d14-8018-cb22c3c1cc5f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Antriebsriemen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cbf6072b-a9f1-4442-b803-7ab7e5742fd1",
              "parent_uuid": "6d13f67d-a974-4d14-8018-cb22c3c1cc5f",
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
              "innerHtml": "<span>74</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ca3338e4-41e6-4110-950f-034764fc7442",
              "parent_uuid": "6d13f67d-a974-4d14-8018-cb22c3c1cc5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1080cb8-2bcc-46de-aeb5-8a6bdfcb32ef",
                  "parent_uuid": "ca3338e4-41e6-4110-950f-034764fc7442",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "790d9890-af81-4610-b5d7-838769482e48",
              "parent_uuid": "6d13f67d-a974-4d14-8018-cb22c3c1cc5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abce2a2d-128d-4a20-9db9-47ab26aed852",
                  "parent_uuid": "790d9890-af81-4610-b5d7-838769482e48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "969b1491-2e7d-41a4-a774-cb2907ab22eb",
              "parent_uuid": "6d13f67d-a974-4d14-8018-cb22c3c1cc5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b2ff94e-5d41-4f56-b658-494c816fe011",
                  "parent_uuid": "969b1491-2e7d-41a4-a774-cb2907ab22eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72862a26-fb9f-4746-a8ec-9c75c734cd16",
              "parent_uuid": "6d13f67d-a974-4d14-8018-cb22c3c1cc5f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cdabc2c1-12b7-46ad-b72d-9b350b86e3f4",
                  "parent_uuid": "72862a26-fb9f-4746-a8ec-9c75c734cd16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cb2edcf3-77aa-453f-b818-ba98cf3fd34f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c2fac05-60ef-4cee-b8b5-da598800df4a",
              "parent_uuid": "cb2edcf3-77aa-453f-b818-ba98cf3fd34f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "12f50491-fbc7-4964-b7b2-8eb395fcf2d2",
              "parent_uuid": "cb2edcf3-77aa-453f-b818-ba98cf3fd34f",
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
              "innerHtml": "\r\n                    <span>57</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8b9740e3-f749-4e2c-8e9a-186ead86ef80",
              "parent_uuid": "cb2edcf3-77aa-453f-b818-ba98cf3fd34f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93119c39-00e8-4b17-b440-20dc1c613f1a",
                  "parent_uuid": "8b9740e3-f749-4e2c-8e9a-186ead86ef80",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37653995-4f95-4000-a72c-9c6b16dfcbcd",
              "parent_uuid": "cb2edcf3-77aa-453f-b818-ba98cf3fd34f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "80087ef1-c57b-4dae-8a10-20f637cd4dd9",
                  "parent_uuid": "37653995-4f95-4000-a72c-9c6b16dfcbcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "412a353b-bd93-48e0-8127-9c0ba53f1d3d",
              "parent_uuid": "cb2edcf3-77aa-453f-b818-ba98cf3fd34f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6aa8ee11-6dca-49ba-b1f0-723fc583d782",
                  "parent_uuid": "412a353b-bd93-48e0-8127-9c0ba53f1d3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99dad7a2-f456-4553-a1c9-6af565012c15",
              "parent_uuid": "cb2edcf3-77aa-453f-b818-ba98cf3fd34f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3241743-708e-4b5c-b687-2669e6d27726",
                  "parent_uuid": "99dad7a2-f456-4553-a1c9-6af565012c15",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d39c9e5-8051-472a-bf1e-399ed264894e",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c49aabd6-2423-4823-a2a8-ef04d36cd846",
              "parent_uuid": "9d39c9e5-8051-472a-bf1e-399ed264894e",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhalteblock prüfen und reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e244444e-efb1-4409-8a6e-ecb242abf3e3",
              "parent_uuid": "9d39c9e5-8051-472a-bf1e-399ed264894e",
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
              "innerHtml": "\r\n                    <span>59</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9c6c102d-99fc-4790-8be7-32440570eda9",
              "parent_uuid": "9d39c9e5-8051-472a-bf1e-399ed264894e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88d1f724-2fa2-4581-bda6-053e2bee82ca",
                  "parent_uuid": "9c6c102d-99fc-4790-8be7-32440570eda9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b76d67d8-1290-4be8-af3e-d3817608df07",
              "parent_uuid": "9d39c9e5-8051-472a-bf1e-399ed264894e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d6098b7-ff79-40ed-ba11-9640b8d361f3",
                  "parent_uuid": "b76d67d8-1290-4be8-af3e-d3817608df07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9738ed4e-b136-41d7-aa4b-bf01b9d40167",
              "parent_uuid": "9d39c9e5-8051-472a-bf1e-399ed264894e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2410273-75e1-4f1c-82ee-1145718d5373",
                  "parent_uuid": "9738ed4e-b136-41d7-aa4b-bf01b9d40167",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8601c87-28c2-4cbb-afa2-4f21781c6949",
              "parent_uuid": "9d39c9e5-8051-472a-bf1e-399ed264894e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27f6d55d-40e7-458c-a966-c1ad28c5a91f",
                  "parent_uuid": "a8601c87-28c2-4cbb-afa2-4f21781c6949",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aa876a13-0b21-448b-8ccf-2c035dd6334f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "859e8ca0-ca48-475d-84b0-b5213de12b92",
              "parent_uuid": "aa876a13-0b21-448b-8ccf-2c035dd6334f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>BN-Eingabebereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b3e85078-0bf5-451e-ada2-ff44f3204251",
              "parent_uuid": "aa876a13-0b21-448b-8ccf-2c035dd6334f",
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
              "innerHtml": "\r\n                    <span>27</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7cac709f-fcf5-40cf-b01d-c493e82a3993",
              "parent_uuid": "aa876a13-0b21-448b-8ccf-2c035dd6334f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "363133ac-978b-4f21-bc6c-192ea44ef49d",
                  "parent_uuid": "7cac709f-fcf5-40cf-b01d-c493e82a3993",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "958db931-131a-475a-9b6d-dd8dcf609dd4",
              "parent_uuid": "aa876a13-0b21-448b-8ccf-2c035dd6334f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc318f75-6a7b-44d3-96ba-87eeb51a6fa5",
                  "parent_uuid": "958db931-131a-475a-9b6d-dd8dcf609dd4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "843a4dff-49b8-43e1-9fe1-a2ae811f54b1",
              "parent_uuid": "aa876a13-0b21-448b-8ccf-2c035dd6334f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "418b67bc-015c-4071-b976-c7537a69af58",
                  "parent_uuid": "843a4dff-49b8-43e1-9fe1-a2ae811f54b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aee70cad-0477-4f12-baed-81b2e355aa19",
              "parent_uuid": "aa876a13-0b21-448b-8ccf-2c035dd6334f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b7e5927-6ce0-4aed-b67a-0d81ab754e8e",
                  "parent_uuid": "aee70cad-0477-4f12-baed-81b2e355aa19",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2b4ee84-b840-4cf8-9aba-bc81d5977ee4",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8d0c3ab-0afd-4404-8805-92dced7c8c3e",
              "parent_uuid": "c2b4ee84-b840-4cf8-9aba-bc81d5977ee4",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "559b2afa-3401-4671-aaa9-3df78de2658e",
              "parent_uuid": "c2b4ee84-b840-4cf8-9aba-bc81d5977ee4",
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
              "innerHtml": "\r\n                    <span>80</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "06598c05-457e-400c-ad9b-7d7a51ad1ad7",
              "parent_uuid": "c2b4ee84-b840-4cf8-9aba-bc81d5977ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f53564c-63bd-4abe-9770-882dd09b126e",
                  "parent_uuid": "06598c05-457e-400c-ad9b-7d7a51ad1ad7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b43ccbad-61e5-40e5-9bcd-1e58bad03a3a",
              "parent_uuid": "c2b4ee84-b840-4cf8-9aba-bc81d5977ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a23884f9-130f-4e23-b8dd-de6dab2c4123",
                  "parent_uuid": "b43ccbad-61e5-40e5-9bcd-1e58bad03a3a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4642df97-db2d-4af8-ae7d-165168f2e9c1",
              "parent_uuid": "c2b4ee84-b840-4cf8-9aba-bc81d5977ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bc10703-35db-4714-a818-065579f5d9ff",
                  "parent_uuid": "4642df97-db2d-4af8-ae7d-165168f2e9c1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5308175d-9f7a-41e4-8885-f0df76090820",
              "parent_uuid": "c2b4ee84-b840-4cf8-9aba-bc81d5977ee4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b59e5886-e46f-4970-918b-70741a913820",
                  "parent_uuid": "5308175d-9f7a-41e4-8885-f0df76090820",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2c4bf554-02f0-40f0-8e25-d8a6ecbd6af7",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "907ce7fd-5c3f-4846-9ca0-3538641e552f",
              "parent_uuid": "2c4bf554-02f0-40f0-8e25-d8a6ecbd6af7",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Leitbleche und Weichenflügel im Shredderbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "495ec793-fb71-482b-9fc7-f7495e00d737",
              "parent_uuid": "2c4bf554-02f0-40f0-8e25-d8a6ecbd6af7",
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
              "innerHtml": "\r\n                    <span>76</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "39d7691f-d5c9-4323-821e-1f617690779c",
              "parent_uuid": "2c4bf554-02f0-40f0-8e25-d8a6ecbd6af7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8c702a7-880d-4ee8-91b1-0cf5bc954376",
                  "parent_uuid": "39d7691f-d5c9-4323-821e-1f617690779c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5b0b06c-8eb0-433e-9283-be7e970a41cf",
              "parent_uuid": "2c4bf554-02f0-40f0-8e25-d8a6ecbd6af7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07839f2a-b59e-433f-a853-dc4cec265911",
                  "parent_uuid": "a5b0b06c-8eb0-433e-9283-be7e970a41cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7646821e-ec77-414c-8f7f-b1f3e56a6a87",
              "parent_uuid": "2c4bf554-02f0-40f0-8e25-d8a6ecbd6af7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b6fb644-a07c-4204-b900-e168ee28619d",
                  "parent_uuid": "7646821e-ec77-414c-8f7f-b1f3e56a6a87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f79f7af1-4d7e-40e1-ac59-2221a8cc1d48",
              "parent_uuid": "2c4bf554-02f0-40f0-8e25-d8a6ecbd6af7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e0d38bb-2f5a-495e-9cb0-ead52143b396",
                  "parent_uuid": "f79f7af1-4d7e-40e1-ac59-2221a8cc1d48",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4bc29220-885d-446a-8734-f6bcadc66e31",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7159ec77-a307-4337-b1cd-aa3d7a8f4762",
              "parent_uuid": "4bc29220-885d-446a-8734-f6bcadc66e31",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Filtermatten der Lüfter reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c37b68bd-761a-4a05-8ccc-19a378e02f0c",
              "parent_uuid": "4bc29220-885d-446a-8734-f6bcadc66e31",
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
              "innerHtml": "\r\n                    <span>85</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ac84cb12-6e30-45d2-8e55-27b54c920ae1",
              "parent_uuid": "4bc29220-885d-446a-8734-f6bcadc66e31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cf06ccb5-94c2-4cae-9377-ee8aa5b01835",
                  "parent_uuid": "ac84cb12-6e30-45d2-8e55-27b54c920ae1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "236b504c-a1d6-43d2-988c-39f522e605bc",
              "parent_uuid": "4bc29220-885d-446a-8734-f6bcadc66e31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f895ee34-852b-4f3b-be17-6263bbc6f819",
                  "parent_uuid": "236b504c-a1d6-43d2-988c-39f522e605bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1acda2ec-0539-4370-af2f-6344bd51b3e5",
              "parent_uuid": "4bc29220-885d-446a-8734-f6bcadc66e31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "534bbcc0-7e66-44d2-8e0d-6dcd1a4a90c2",
                  "parent_uuid": "1acda2ec-0539-4370-af2f-6344bd51b3e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79ed422b-b64f-4e36-83b1-665c16894849",
              "parent_uuid": "4bc29220-885d-446a-8734-f6bcadc66e31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bed1a7b-e178-4ae5-ab4e-76467fdb9e24",
                  "parent_uuid": "79ed422b-b64f-4e36-83b1-665c16894849",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f141da7-dbd2-48b0-ba39-f2ac967d246f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52600a28-0a8e-40f7-acc2-d8cb8be011ed",
              "parent_uuid": "0f141da7-dbd2-48b0-ba39-f2ac967d246f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Warnzeichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2cbded0c-681e-465b-a276-f6997a6c1289",
              "parent_uuid": "0f141da7-dbd2-48b0-ba39-f2ac967d246f",
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
              "innerHtml": "\r\n                    <span>81</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "dd3992c8-760e-449f-b8db-97e463b1b71a",
              "parent_uuid": "0f141da7-dbd2-48b0-ba39-f2ac967d246f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b29c1a7-7ad7-48fb-8340-ac41331aeed1",
                  "parent_uuid": "dd3992c8-760e-449f-b8db-97e463b1b71a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf69a9ce-0b10-416a-929d-42e4306cfe28",
              "parent_uuid": "0f141da7-dbd2-48b0-ba39-f2ac967d246f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8d4197d-543b-4f83-afd2-e417fe83182d",
                  "parent_uuid": "bf69a9ce-0b10-416a-929d-42e4306cfe28",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5957f290-4cf0-4486-b29c-d45c53bf9069",
              "parent_uuid": "0f141da7-dbd2-48b0-ba39-f2ac967d246f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a19715c0-1215-441e-9736-17fa37b32e59",
                  "parent_uuid": "5957f290-4cf0-4486-b29c-d45c53bf9069",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2aeb88f-7cc9-4620-89e1-3662f6f111d2",
              "parent_uuid": "0f141da7-dbd2-48b0-ba39-f2ac967d246f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "690c7604-0f78-41f0-ac44-e7644d11da83",
                  "parent_uuid": "e2aeb88f-7cc9-4620-89e1-3662f6f111d2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2b332ff8-5f02-48ab-a659-421a9a399765",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6baed6aa-3fd5-47ef-ad18-0e71ecffdf91",
              "parent_uuid": "2b332ff8-5f02-48ab-a659-421a9a399765",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Staplerscheiben reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9c1c5052-3380-471d-b8be-67dcfffbc98d",
              "parent_uuid": "2b332ff8-5f02-48ab-a659-421a9a399765",
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
              "innerHtml": "\r\n                    <span>56</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "47e58276-038f-422a-afb0-55f4c8aa5c1c",
              "parent_uuid": "2b332ff8-5f02-48ab-a659-421a9a399765",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d675c95e-8616-41ab-adcc-b1ab189b1bdd",
                  "parent_uuid": "47e58276-038f-422a-afb0-55f4c8aa5c1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9252297d-8f90-4f3b-97a3-9a723a68c9e8",
              "parent_uuid": "2b332ff8-5f02-48ab-a659-421a9a399765",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96a3b345-cf66-4ae9-abab-2b9cd211b867",
                  "parent_uuid": "9252297d-8f90-4f3b-97a3-9a723a68c9e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e53f6a3-643d-4d97-b549-93df67a37349",
              "parent_uuid": "2b332ff8-5f02-48ab-a659-421a9a399765",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e454f31d-de5f-4867-b8ac-9e355a36f8e6",
                  "parent_uuid": "8e53f6a3-643d-4d97-b549-93df67a37349",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5426dd31-a89f-4565-9d8e-0403af9b33b4",
              "parent_uuid": "2b332ff8-5f02-48ab-a659-421a9a399765",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06a85049-a0b7-4854-97ba-12d9f7c46264",
                  "parent_uuid": "5426dd31-a89f-4565-9d8e-0403af9b33b4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eadd7582-85db-4fa9-b988-f6fa53c1341f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ebf70ab-8f30-4d0a-ad7b-7e1a1ae05165",
              "parent_uuid": "eadd7582-85db-4fa9-b988-f6fa53c1341f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Flachriemen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7f9959c9-1689-405d-938d-252f53f5f6ea",
              "parent_uuid": "eadd7582-85db-4fa9-b988-f6fa53c1341f",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f4302fb7-4b53-485a-b745-6d2d3d9577ec",
              "parent_uuid": "eadd7582-85db-4fa9-b988-f6fa53c1341f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96a4664f-eee2-4ed4-a967-1e66338c6bb0",
                  "parent_uuid": "f4302fb7-4b53-485a-b745-6d2d3d9577ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2aeeaa73-8677-4a2d-9327-e49ce5b700ae",
              "parent_uuid": "eadd7582-85db-4fa9-b988-f6fa53c1341f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f42ef10-36bc-4b56-88c5-967e4b9b7c77",
                  "parent_uuid": "2aeeaa73-8677-4a2d-9327-e49ce5b700ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "314682c9-3869-4779-8a28-40b565753984",
              "parent_uuid": "eadd7582-85db-4fa9-b988-f6fa53c1341f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "484280e9-a0bf-486c-8cac-dd29ca095d38",
                  "parent_uuid": "314682c9-3869-4779-8a28-40b565753984",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5e482d5-cee6-4e06-a5e4-5b3e18781541",
              "parent_uuid": "eadd7582-85db-4fa9-b988-f6fa53c1341f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78479b59-e915-4bd7-8833-0a116c006890",
                  "parent_uuid": "a5e482d5-cee6-4e06-a5e4-5b3e18781541",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "77505d62-ee85-4aa9-90b1-3d652f984a47",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f7d74fec-5ce0-4797-aa5b-f6c5e579be4d",
              "parent_uuid": "77505d62-ee85-4aa9-90b1-3d652f984a47",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "29"
                ],
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "e1e5e3ad-e6ff-4acc-897e-fad6e3ece016",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d17ef146-4be5-4685-831a-f2aafeb28ba3",
              "parent_uuid": "e1e5e3ad-e6ff-4acc-897e-fad6e3ece016",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
                ],
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "5e61b59e-5b70-4ba3-9fa1-a49afb9419b8",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60670171-78dc-4e37-85a2-51e475a47691",
              "parent_uuid": "5e61b59e-5b70-4ba3-9fa1-a49afb9419b8",
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
                  "uuid": "1378afb7-e086-4b4c-af83-df80d9ea3a48",
                  "parent_uuid": "60670171-78dc-4e37-85a2-51e475a47691",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "9e5c58fd-df7e-4c7f-934d-2bdd74a2895d",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa7b3e2f-0844-4729-af47-0cfe9865fdad",
              "parent_uuid": "9e5c58fd-df7e-4c7f-934d-2bdd74a2895d",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "dc61b62f-a8aa-4af9-8523-f1aa1ac93bc6",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "9cb66051-704d-4a23-ba9c-32f989fa2495",
              "parent_uuid": "dc61b62f-a8aa-4af9-8523-f1aa1ac93bc6",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei eingeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "04074e3b-ff68-49ef-933a-0ee63eb05be1",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be0ace09-7f3e-4d1f-9579-e8c7ebd2c180",
              "parent_uuid": "04074e3b-ff68-49ef-933a-0ee63eb05be1",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "46ad42cb-0d7f-4cab-a6ab-60e76e0198b0",
              "parent_uuid": "04074e3b-ff68-49ef-933a-0ee63eb05be1",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ae83e96a-f429-4993-937e-e0070695a076",
              "parent_uuid": "04074e3b-ff68-49ef-933a-0ee63eb05be1",
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
              "uuid": "538d417a-30f3-446c-81db-2aaa30aee3e4",
              "parent_uuid": "04074e3b-ff68-49ef-933a-0ee63eb05be1",
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
              "uuid": "22384519-327f-4247-8c83-ed22373e5618",
              "parent_uuid": "04074e3b-ff68-49ef-933a-0ee63eb05be1",
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
              "uuid": "3e16e735-b57d-4c83-aaa6-dae2402de88c",
              "parent_uuid": "04074e3b-ff68-49ef-933a-0ee63eb05be1",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "8e2fea1c-9811-4e72-9ab4-4d6d4fd55c69",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f58ebea-67eb-4811-80c1-270f962fbad3",
              "parent_uuid": "8e2fea1c-9811-4e72-9ab4-4d6d4fd55c69",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder - Sicherheitsbereich prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d97db369-57af-496f-a236-9b209e5cf68c",
              "parent_uuid": "8e2fea1c-9811-4e72-9ab4-4d6d4fd55c69",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "15a82671-46b6-453e-b640-1f91eed85311",
              "parent_uuid": "8e2fea1c-9811-4e72-9ab4-4d6d4fd55c69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c55025c7-9e83-477a-8e6c-8dcf37c32073",
                  "parent_uuid": "15a82671-46b6-453e-b640-1f91eed85311",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6305059d-0b1c-4178-ab98-89a577da3b1c",
              "parent_uuid": "8e2fea1c-9811-4e72-9ab4-4d6d4fd55c69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ef60fe2-8ac5-49c1-8caa-177cef40db58",
                  "parent_uuid": "6305059d-0b1c-4178-ab98-89a577da3b1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90ec0dee-283b-4751-b038-87ff0d19f6f9",
              "parent_uuid": "8e2fea1c-9811-4e72-9ab4-4d6d4fd55c69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e573f272-f15e-43b1-85ef-c1b7a51be95b",
                  "parent_uuid": "90ec0dee-283b-4751-b038-87ff0d19f6f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f26c2dab-f543-452c-97d2-ffab26eff1b6",
              "parent_uuid": "8e2fea1c-9811-4e72-9ab4-4d6d4fd55c69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a13afb7-82de-4fff-99bd-4d106690b221",
                  "parent_uuid": "f26c2dab-f543-452c-97d2-ffab26eff1b6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5400dabf-0196-4e80-808e-f075242e9465",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f446efee-9efe-441b-b4ab-aa0ea8ad31a0",
              "parent_uuid": "5400dabf-0196-4e80-808e-f075242e9465",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Luftleitplatte und Reflextaster prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "89f6738e-5d00-4903-a5d8-695516baca4e",
              "parent_uuid": "5400dabf-0196-4e80-808e-f075242e9465",
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
              "innerHtml": "\r\n                    <span>89</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "eb094763-f11f-4b3e-9ca0-0e70ff249d98",
              "parent_uuid": "5400dabf-0196-4e80-808e-f075242e9465",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e0e16ba-68da-4d3f-957c-180d414db1f4",
                  "parent_uuid": "eb094763-f11f-4b3e-9ca0-0e70ff249d98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97a5d80c-e458-4200-878f-791f83678a26",
              "parent_uuid": "5400dabf-0196-4e80-808e-f075242e9465",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "575f2837-122e-499b-99be-1fd2a2b6995a",
                  "parent_uuid": "97a5d80c-e458-4200-878f-791f83678a26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "464922ef-de16-488f-ab5c-2418ef8a341f",
              "parent_uuid": "5400dabf-0196-4e80-808e-f075242e9465",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97762307-fa40-4fa3-af77-a63416988075",
                  "parent_uuid": "464922ef-de16-488f-ab5c-2418ef8a341f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a84aecd-02cc-4773-8a26-4ce9ea1deb2b",
              "parent_uuid": "5400dabf-0196-4e80-808e-f075242e9465",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d954df2-fcd2-45a1-9c90-3391d18eb5f9",
                  "parent_uuid": "4a84aecd-02cc-4773-8a26-4ce9ea1deb2b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0ca07535-e950-4827-86ab-6c452cc23ace",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c158f4aa-89c5-4aeb-b606-4b19bce4dcec",
              "parent_uuid": "0ca07535-e950-4827-86ab-6c452cc23ace",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Unterdrucksystem prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7f844676-3681-49d3-8e14-767d03e1a865",
              "parent_uuid": "0ca07535-e950-4827-86ab-6c452cc23ace",
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
              "innerHtml": "\r\n                    <span>x</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "bb2d14a0-a170-4a44-a79f-5aeae3698f6b",
              "parent_uuid": "0ca07535-e950-4827-86ab-6c452cc23ace",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "603e1e21-38f8-49cf-982e-0310fe2ce573",
                  "parent_uuid": "bb2d14a0-a170-4a44-a79f-5aeae3698f6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66cc410a-dc97-4edf-b6c8-fa65c95c9fe6",
              "parent_uuid": "0ca07535-e950-4827-86ab-6c452cc23ace",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4e1720f-0c95-4964-933f-9acb3beead28",
                  "parent_uuid": "66cc410a-dc97-4edf-b6c8-fa65c95c9fe6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91441800-c87c-40a5-90c0-f1761ffd2fb3",
              "parent_uuid": "0ca07535-e950-4827-86ab-6c452cc23ace",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ccdc179-23b3-4472-9946-853f1e0c34a3",
                  "parent_uuid": "91441800-c87c-40a5-90c0-f1761ffd2fb3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f2f45de-a418-4210-9248-10f6d2b29f3d",
              "parent_uuid": "0ca07535-e950-4827-86ab-6c452cc23ace",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a5be2a6-4ce8-48b6-8254-7e0f9f27caf0",
                  "parent_uuid": "4f2f45de-a418-4210-9248-10f6d2b29f3d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e7b7b3a-cb74-4a8a-9ab3-12c8d9563886",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c47b77f-6ce4-4b99-b576-389b9871d36d",
              "parent_uuid": "8e7b7b3a-cb74-4a8a-9ab3-12c8d9563886",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Lüfter prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "aa950f9a-6a3e-4e64-88fb-5331cb4b9377",
              "parent_uuid": "8e7b7b3a-cb74-4a8a-9ab3-12c8d9563886",
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
              "innerHtml": "\r\n                    <span>88</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "2af0eaee-d873-41f5-a0ec-3897e40ce070",
              "parent_uuid": "8e7b7b3a-cb74-4a8a-9ab3-12c8d9563886",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "659c5486-4f2a-437e-802f-0065a2c67fc3",
                  "parent_uuid": "2af0eaee-d873-41f5-a0ec-3897e40ce070",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3710119-36ed-40af-938d-7210f51a4838",
              "parent_uuid": "8e7b7b3a-cb74-4a8a-9ab3-12c8d9563886",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b7c09ed-11ad-4fa0-acd2-f882a4d5c6d2",
                  "parent_uuid": "a3710119-36ed-40af-938d-7210f51a4838",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35fd0ca9-12a4-4a8c-9daa-8ff4aaa4d280",
              "parent_uuid": "8e7b7b3a-cb74-4a8a-9ab3-12c8d9563886",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24c0dda7-7587-48b9-af8e-c50ad8a6e722",
                  "parent_uuid": "35fd0ca9-12a4-4a8c-9daa-8ff4aaa4d280",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57a281a8-e387-4c0a-94ba-b71c91db3159",
              "parent_uuid": "8e7b7b3a-cb74-4a8a-9ab3-12c8d9563886",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aac30a8b-b529-4361-9b45-9d85792d84b1",
                  "parent_uuid": "57a281a8-e387-4c0a-94ba-b71c91db3159",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b495b473-863e-4210-97db-9576f4ff9b93",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35d9e3c8-592d-4b76-957f-5c179c9427c3",
              "parent_uuid": "b495b473-863e-4210-97db-9576f4ff9b93",
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "f3b1f832-5642-4565-b38f-95165d6431a8",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa4f215f-741c-4dc6-bd32-36b2b31dbc01",
              "parent_uuid": "f3b1f832-5642-4565-b38f-95165d6431a8",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
                ],
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "21242cba-1ef0-4ef1-a049-1def0d460eb7",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e7a6184-a93a-4cf1-a568-4c8191c522c0",
              "parent_uuid": "21242cba-1ef0-4ef1-a049-1def0d460eb7",
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
                  "uuid": "de8b1162-c69a-4257-a098-5643b8fdc35c",
                  "parent_uuid": "9e7a6184-a93a-4cf1-a568-4c8191c522c0",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "6b7c6f46-6f9f-45e3-9266-01040cdb40bb",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e255eff0-ebab-4f13-9998-50e6672ca8d2",
              "parent_uuid": "6b7c6f46-6f9f-45e3-9266-01040cdb40bb",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "184f36c6-e3ef-47ce-89ac-92ecfaf91fc7",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5484c870-5143-4f4e-b811-4916f555239a",
              "parent_uuid": "184f36c6-e3ef-47ce-89ac-92ecfaf91fc7",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei laufender Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "2e149068-659c-4f02-9ac2-18fb92a6d7d0",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "124e3679-ed1c-4bef-a2a5-b1d46d84b71e",
              "parent_uuid": "2e149068-659c-4f02-9ac2-18fb92a6d7d0",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "141"
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ea719030-0ce4-4573-bd51-a4c31a315711",
              "parent_uuid": "2e149068-659c-4f02-9ac2-18fb92a6d7d0",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4eefb2ed-02f2-4a5b-82d1-ce8b0ecd5767",
              "parent_uuid": "2e149068-659c-4f02-9ac2-18fb92a6d7d0",
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
              "uuid": "c5b879be-5777-484c-9628-94c930dea18b",
              "parent_uuid": "2e149068-659c-4f02-9ac2-18fb92a6d7d0",
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
              "uuid": "b8635da3-6f1b-4906-93a4-8c7837021568",
              "parent_uuid": "2e149068-659c-4f02-9ac2-18fb92a6d7d0",
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
              "uuid": "0a6ed88d-f59e-4d48-8bf7-6e9d9ffd15c2",
              "parent_uuid": "2e149068-659c-4f02-9ac2-18fb92a6d7d0",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "7b12dc23-41e4-437b-9349-48f85c8ca332",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "48f09843-b8fe-4fc2-8e72-7e582f5369ab",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bba66b4d-4b4a-4706-a5b4-941c11fa7dec",
              "parent_uuid": "48f09843-b8fe-4fc2-8e72-7e582f5369ab",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen auf Gleichlauf überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "eca1623c-c273-4556-a255-c2f09bc242b4",
              "parent_uuid": "48f09843-b8fe-4fc2-8e72-7e582f5369ab",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "618512ed-8e13-4780-ad4b-83def405cce9",
              "parent_uuid": "48f09843-b8fe-4fc2-8e72-7e582f5369ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1768959-e9c2-406b-be26-82e0499e00ca",
                  "parent_uuid": "618512ed-8e13-4780-ad4b-83def405cce9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "726cfb2a-0383-48d8-98f7-bd073e8f8c89",
              "parent_uuid": "48f09843-b8fe-4fc2-8e72-7e582f5369ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b1a9052-bb7c-487a-9f2b-0dec84c02415",
                  "parent_uuid": "726cfb2a-0383-48d8-98f7-bd073e8f8c89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afd25321-162c-4ead-b36e-1aa52031b3db",
              "parent_uuid": "48f09843-b8fe-4fc2-8e72-7e582f5369ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1fac77f-c06e-4de2-8ac0-8a6eff29cea3",
                  "parent_uuid": "afd25321-162c-4ead-b36e-1aa52031b3db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a0020c4-bde1-459b-9594-2930d75075f4",
              "parent_uuid": "48f09843-b8fe-4fc2-8e72-7e582f5369ab",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9c12c93-d103-4a92-8135-353e9a515f9d",
                  "parent_uuid": "9a0020c4-bde1-459b-9594-2930d75075f4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "7152ac65-c2ea-4e61-8c55-dc7976561f9f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e9e6ffda-7957-4a89-a695-5cc3414a4d15",
              "parent_uuid": "7152ac65-c2ea-4e61-8c55-dc7976561f9f",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Transport- und Antriebsrollen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "537e0b52-09c3-4755-9b07-1f21775fc7a6",
              "parent_uuid": "7152ac65-c2ea-4e61-8c55-dc7976561f9f",
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
              "innerHtml": "\r\n                    <span>93</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4029424e-c9df-47db-87ca-231ea5018a7d",
              "parent_uuid": "7152ac65-c2ea-4e61-8c55-dc7976561f9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5077e9a-0690-4db1-acc0-93ae09254e61",
                  "parent_uuid": "4029424e-c9df-47db-87ca-231ea5018a7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74aebb1c-7218-406c-8eb1-e88b46216cd2",
              "parent_uuid": "7152ac65-c2ea-4e61-8c55-dc7976561f9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d405c8a0-ded6-464c-80c5-6d957de90d32",
                  "parent_uuid": "74aebb1c-7218-406c-8eb1-e88b46216cd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3526e6e-2f5f-4c59-8d54-4e42f0dec582",
              "parent_uuid": "7152ac65-c2ea-4e61-8c55-dc7976561f9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5ae0625-533e-4051-ab54-f99157d6f6d4",
                  "parent_uuid": "b3526e6e-2f5f-4c59-8d54-4e42f0dec582",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "972a958a-742e-4335-9dc8-c9c45301d397",
              "parent_uuid": "7152ac65-c2ea-4e61-8c55-dc7976561f9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "888c706e-a9c6-4bf0-9098-fe0d5ad5048f",
                  "parent_uuid": "972a958a-742e-4335-9dc8-c9c45301d397",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "09b49b85-4afb-46ee-998d-da5b5d36ba8e",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e590747-41ee-43ad-bc87-640a33c2e376",
              "parent_uuid": "09b49b85-4afb-46ee-998d-da5b5d36ba8e",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolendruckköpfe und Farbbänder prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c6189613-f90f-4d5b-9c02-7ade3f45d810",
              "parent_uuid": "09b49b85-4afb-46ee-998d-da5b5d36ba8e",
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
              "innerHtml": "\r\n                    <span>96</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "abc82480-9e37-4375-8fe7-bca4cac62a2d",
              "parent_uuid": "09b49b85-4afb-46ee-998d-da5b5d36ba8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d714f3e-4d88-4d96-8275-09b957af577e",
                  "parent_uuid": "abc82480-9e37-4375-8fe7-bca4cac62a2d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea252cf0-1369-4c9e-a11a-21ed2d97b3f2",
              "parent_uuid": "09b49b85-4afb-46ee-998d-da5b5d36ba8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e151bf0a-7a0d-40b3-b1d4-68600e1dd76a",
                  "parent_uuid": "ea252cf0-1369-4c9e-a11a-21ed2d97b3f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "952c0058-0acd-45ff-8402-ad21b3aa004a",
              "parent_uuid": "09b49b85-4afb-46ee-998d-da5b5d36ba8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e98010f7-3a84-40c2-9a2e-b4503ae891ca",
                  "parent_uuid": "952c0058-0acd-45ff-8402-ad21b3aa004a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9e0f523f-93fc-4e1f-9035-9d753dccc220",
              "parent_uuid": "09b49b85-4afb-46ee-998d-da5b5d36ba8e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb476bee-602e-4719-bc47-331add6e1491",
                  "parent_uuid": "9e0f523f-93fc-4e1f-9035-9d753dccc220",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "391bee76-1387-44c7-a3bc-218af73b7b31",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ed8901c7-0049-4a4d-9ece-dacb449b8095",
              "parent_uuid": "391bee76-1387-44c7-a3bc-218af73b7b31",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Banderolierungsvorgang prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c844e578-78fe-429f-84cc-61db30993be9",
              "parent_uuid": "391bee76-1387-44c7-a3bc-218af73b7b31",
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
              "innerHtml": "<span>x</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9c9b2cbb-8910-432b-9f66-be1a2c6886c7",
              "parent_uuid": "391bee76-1387-44c7-a3bc-218af73b7b31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c06aab4a-aeaf-42e4-97e6-7a2f50774aa3",
                  "parent_uuid": "9c9b2cbb-8910-432b-9f66-be1a2c6886c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "446c2b73-81a3-425f-a7ca-cef8cadfb7d0",
              "parent_uuid": "391bee76-1387-44c7-a3bc-218af73b7b31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0edc2bc9-129f-4c9c-9e6a-69fd3dcacfac",
                  "parent_uuid": "446c2b73-81a3-425f-a7ca-cef8cadfb7d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16e44c97-0e39-475a-ba47-8b14d259c5fc",
              "parent_uuid": "391bee76-1387-44c7-a3bc-218af73b7b31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef82eff8-8f45-4789-af6b-7a8fe28155fe",
                  "parent_uuid": "16e44c97-0e39-475a-ba47-8b14d259c5fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35b3a110-97c6-4c69-9e65-e594a15ee0dd",
              "parent_uuid": "391bee76-1387-44c7-a3bc-218af73b7b31",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4173946d-cd32-434d-bdaf-0ca3559c1a26",
                  "parent_uuid": "35b3a110-97c6-4c69-9e65-e594a15ee0dd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "73408b9a-3c09-4acf-a2c5-fafe7f9fff67",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b704f2c0-e948-4d34-a7b6-c77c190e2697",
              "parent_uuid": "73408b9a-3c09-4acf-a2c5-fafe7f9fff67",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Shredder- Saugluftüberwachung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6e51224e-0b8d-4567-b86e-5f8a5245ec19",
              "parent_uuid": "73408b9a-3c09-4acf-a2c5-fafe7f9fff67",
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
              "innerHtml": "\r\n                    <span>124</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8e53107a-76ec-4299-863a-4a72cf521663",
              "parent_uuid": "73408b9a-3c09-4acf-a2c5-fafe7f9fff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e34e761-f213-4f72-8366-b924b1ac0d23",
                  "parent_uuid": "8e53107a-76ec-4299-863a-4a72cf521663",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "902ad552-0124-496e-8e44-27e187877cbf",
              "parent_uuid": "73408b9a-3c09-4acf-a2c5-fafe7f9fff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3422fc5e-7404-46c4-8d32-7c8703718847",
                  "parent_uuid": "902ad552-0124-496e-8e44-27e187877cbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da45ee46-9d0c-424b-b1ff-4129ed6d25da",
              "parent_uuid": "73408b9a-3c09-4acf-a2c5-fafe7f9fff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5c2d578-fd0b-4120-82e6-c01d682ae8f5",
                  "parent_uuid": "da45ee46-9d0c-424b-b1ff-4129ed6d25da",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b88b16b-35f7-4678-8498-62e0e6b8c67a",
              "parent_uuid": "73408b9a-3c09-4acf-a2c5-fafe7f9fff67",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6afecaaf-1f5a-40dd-b96e-daf9b8f9d8bb",
                  "parent_uuid": "0b88b16b-35f7-4678-8498-62e0e6b8c67a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "e773413b-9264-4a72-907d-e220ae0fae50",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b90c3641-1190-403e-8205-b83007192e17",
              "parent_uuid": "e773413b-9264-4a72-907d-e220ae0fae50",
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
                  "30"
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
              "innerHtml": "\r\n                    <span>Sicherheitseinrichtung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a6090268-ed56-45c7-8f74-3d23b41a7be8",
              "parent_uuid": "e773413b-9264-4a72-907d-e220ae0fae50",
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
              "innerHtml": "\r\n                    <span>91</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "79666b17-54aa-402d-b96e-eef0fbd4f5df",
              "parent_uuid": "e773413b-9264-4a72-907d-e220ae0fae50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55e5bcaa-91f8-4772-9e4d-f1901af677ef",
                  "parent_uuid": "79666b17-54aa-402d-b96e-eef0fbd4f5df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d91ee525-cd6c-465a-8866-f19ce1968601",
              "parent_uuid": "e773413b-9264-4a72-907d-e220ae0fae50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4cd6d5a-51c3-4985-8a1d-0870258db0b1",
                  "parent_uuid": "d91ee525-cd6c-465a-8866-f19ce1968601",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47dd7f9b-ac6b-44c4-a9ec-6fb58168bbbd",
              "parent_uuid": "e773413b-9264-4a72-907d-e220ae0fae50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44b4dd19-4b07-4426-8074-f4e5f4210f29",
                  "parent_uuid": "47dd7f9b-ac6b-44c4-a9ec-6fb58168bbbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e51fd26-f0d8-41b4-9d64-fa3eeffc9816",
              "parent_uuid": "e773413b-9264-4a72-907d-e220ae0fae50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67f7e5d7-cba8-4500-a6b2-9d40268cca7d",
                  "parent_uuid": "8e51fd26-f0d8-41b4-9d64-fa3eeffc9816",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "73fcd431-a320-427d-aa9e-d76094cc9ee8",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2387ed0f-7cba-46e9-b14a-cec2ffbec5c0",
              "parent_uuid": "73fcd431-a320-427d-aa9e-d76094cc9ee8",
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "74ba4bb1-7bd6-4e08-b069-58196674c34f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b80802a-624f-4940-9660-3513e5da81d3",
              "parent_uuid": "74ba4bb1-7bd6-4e08-b069-58196674c34f",
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "e773c19f-fb94-43d0-bb16-0cd300cb9193",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7cd750ca-5ad8-4f03-bfac-4dce82c9a1e7",
              "parent_uuid": "e773c19f-fb94-43d0-bb16-0cd300cb9193",
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
                  "uuid": "9783d913-c757-48d2-93f8-55b90dfe007a",
                  "parent_uuid": "7cd750ca-5ad8-4f03-bfac-4dce82c9a1e7",
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "bb8c955e-01e3-4db9-bfb3-dc72afe2aac6",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18061d10-51e0-4625-9780-5efab06d34ce",
              "parent_uuid": "bb8c955e-01e3-4db9-bfb3-dc72afe2aac6",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
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
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "f3d153bf-af12-49d7-b38f-b259513f9dc3",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "44448d16-7eeb-4c50-8f1a-c3a057a8937e",
              "parent_uuid": "f3d153bf-af12-49d7-b38f-b259513f9dc3",
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
                  "valign",
                  "middle"
                ],
                [
                  "colspan",
                  "11"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Benötigte Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "1aac2750-d7d3-41bc-8dd3-ebba2b3339b0",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f950f3e6-9be4-4975-8aaa-1ebdfee87d13",
              "parent_uuid": "1aac2750-d7d3-41bc-8dd3-ebba2b3339b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e6628bd9-3163-4411-a970-4ff2eece6751",
              "parent_uuid": "1aac2750-d7d3-41bc-8dd3-ebba2b3339b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikelnummer</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e3683144-5b79-4cf7-b97b-0f72bdd5a17e",
              "parent_uuid": "1aac2750-d7d3-41bc-8dd3-ebba2b3339b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Anzahl</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a75c5f22-6346-48a6-aaaa-8700c70ccd55",
              "parent_uuid": "1aac2750-d7d3-41bc-8dd3-ebba2b3339b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Lagerort</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "de0b59c6-ec89-4383-b4dd-89d4b3d9963e",
              "parent_uuid": "1aac2750-d7d3-41bc-8dd3-ebba2b3339b0",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "939a9263-4e98-43e1-823c-5faca885b365",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fdc2b0ad-ccf4-4f4c-b6fb-da4629418fbd",
              "parent_uuid": "939a9263-4e98-43e1-823c-5faca885b365",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2842 (M276)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cf7957f0-2e00-4024-a56d-3da83dac8c52",
              "parent_uuid": "939a9263-4e98-43e1-823c-5faca885b365",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 720 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f472290e-394a-46dd-bd03-e4b374ecab5b",
              "parent_uuid": "939a9263-4e98-43e1-823c-5faca885b365",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c08df821-334c-45c0-a4f3-1b506aab737f",
              "parent_uuid": "939a9263-4e98-43e1-823c-5faca885b365",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G04</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "487f5bfb-fa50-4fd5-9251-58634e223e6d",
              "parent_uuid": "939a9263-4e98-43e1-823c-5faca885b365",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "c201442b-020e-49df-8d21-b358e86d57d8",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc020d1f-cfbf-46fc-97eb-ae9690f5ffe4",
              "parent_uuid": "c201442b-020e-49df-8d21-b358e86d57d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2510</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "27583cf9-d974-48f7-8b8d-3a9e10c5b692",
              "parent_uuid": "c201442b-020e-49df-8d21-b358e86d57d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>146 605 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6435fdbe-94fd-4bdb-ba90-e7e2a1557804",
              "parent_uuid": "c201442b-020e-49df-8d21-b358e86d57d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d22237d5-7612-4d9e-99d6-01b573c31956",
              "parent_uuid": "c201442b-020e-49df-8d21-b358e86d57d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 H01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "c1f7050f-ddb8-49d3-a458-5376600f17a5",
              "parent_uuid": "c201442b-020e-49df-8d21-b358e86d57d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "e9baf7b0-cf7d-4467-9828-2643aa0d4c0f",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3745f3b-e6f5-4e99-b61d-865f90a744b9",
              "parent_uuid": "e9baf7b0-cf7d-4467-9828-2643aa0d4c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2233 (M274)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ae44e74b-4f57-4b7c-b3a3-25948a88d492",
              "parent_uuid": "e9baf7b0-cf7d-4467-9828-2643aa0d4c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 718 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8d70ca96-c1db-430b-a088-9057a33ccb27",
              "parent_uuid": "e9baf7b0-cf7d-4467-9828-2643aa0d4c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "2d931716-1b35-464d-aa0a-f5e0e9243731",
              "parent_uuid": "e9baf7b0-cf7d-4467-9828-2643aa0d4c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "32215c8e-3b82-4bbf-a387-e9d47db82b43",
              "parent_uuid": "e9baf7b0-cf7d-4467-9828-2643aa0d4c0f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "3cc0b64e-9b9c-4bba-8545-9c61c24cef64",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b9aa3347-20e2-4027-a8a1-b1edc73f01a3",
              "parent_uuid": "3cc0b64e-9b9c-4bba-8545-9c61c24cef64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 1707 (M275)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5513158c-a899-4bfb-8c14-590fa6e807aa",
              "parent_uuid": "3cc0b64e-9b9c-4bba-8545-9c61c24cef64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>179 719 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "22728b4f-8219-4fdd-b61c-f4395d8e469f",
              "parent_uuid": "3cc0b64e-9b9c-4bba-8545-9c61c24cef64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e9308200-ec0c-4bb5-bead-5defbcfb979c",
              "parent_uuid": "3cc0b64e-9b9c-4bba-8545-9c61c24cef64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 G01</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0b4b1fa8-963a-4b33-bc94-6687e92506fa",
              "parent_uuid": "3cc0b64e-9b9c-4bba-8545-9c61c24cef64",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "77c6e460-cad4-44ec-9790-a131d6f6c416",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bec9ea11-5c75-4f41-beca-9a71f9477935",
              "parent_uuid": "77c6e460-cad4-44ec-9790-a131d6f6c416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M279)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b4fba754-ebae-4877-9886-cc9d89246949",
              "parent_uuid": "77c6e460-cad4-44ec-9790-a131d6f6c416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>156 537 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "bf075a6f-315b-4c26-bc40-ef789a5e1057",
              "parent_uuid": "77c6e460-cad4-44ec-9790-a131d6f6c416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c33e0707-f80c-4f58-b7a5-a6a417c0c45a",
              "parent_uuid": "77c6e460-cad4-44ec-9790-a131d6f6c416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F02</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "c1caab7a-3c82-4bf7-b0c2-fec5031081f2",
              "parent_uuid": "77c6e460-cad4-44ec-9790-a131d6f6c416",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "2f8e0b8e-034e-4ffc-88af-46682d2c1452",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba4e3ff1-7b8f-4071-a060-80eab527c350",
              "parent_uuid": "2f8e0b8e-034e-4ffc-88af-46682d2c1452",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 236 (M269)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bb00d304-48f9-4a03-a13a-9f6d577e0ab4",
              "parent_uuid": "2f8e0b8e-034e-4ffc-88af-46682d2c1452",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    s<span>174 264 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "bc2e81bc-a997-4789-8cbb-d6292392ad5c",
              "parent_uuid": "2f8e0b8e-034e-4ffc-88af-46682d2c1452",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c8469508-0557-43f6-b5e7-2577094bef62",
              "parent_uuid": "2f8e0b8e-034e-4ffc-88af-46682d2c1452",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3 F03</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1c0e4257-2056-46be-8a1f-fa83a0a989cf",
              "parent_uuid": "2f8e0b8e-034e-4ffc-88af-46682d2c1452",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "93ef07ed-6ddb-4838-a276-98f7dfdffca9",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ca003e8-ab85-4f2b-b56e-7a3c90921a97",
              "parent_uuid": "93ef07ed-6ddb-4838-a276-98f7dfdffca9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Klemmrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3e435ca8-2726-42e6-a108-0c6050f010b0",
              "parent_uuid": "93ef07ed-6ddb-4838-a276-98f7dfdffca9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>272 900 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "abfecd97-ab8c-41b3-bc4e-fe6b7ae58403",
              "parent_uuid": "93ef07ed-6ddb-4838-a276-98f7dfdffca9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>2</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "20641fad-4256-4474-b77f-628628044351",
              "parent_uuid": "93ef07ed-6ddb-4838-a276-98f7dfdffca9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E06</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "02e0970a-d35c-4ca8-8031-e5fe79eec76a",
              "parent_uuid": "93ef07ed-6ddb-4838-a276-98f7dfdffca9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "f0185b0f-aaf4-474d-b6cd-617c7122047d",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5353bc71-b57c-4591-838a-659fb4b1524e",
              "parent_uuid": "f0185b0f-aaf4-474d-b6cd-617c7122047d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "30"
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
              "innerHtml": "\r\n                    <span>Kugellager 6001-2RSH</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "81cc8af8-8ed6-4d73-b6b2-c0c66f6aad36",
              "parent_uuid": "f0185b0f-aaf4-474d-b6cd-617c7122047d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>188 512 000</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "5f5ffff1-3f17-4f3b-84fc-63956a276b8e",
              "parent_uuid": "f0185b0f-aaf4-474d-b6cd-617c7122047d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>3</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9e74983e-352e-4fd4-9acb-a8fe4daff05f",
              "parent_uuid": "f0185b0f-aaf4-474d-b6cd-617c7122047d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "colspan",
                  "2"
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
              "innerHtml": "\r\n                    <span>1 E12</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "ac75a2f0-22b4-4883-8013-b2c34948eab2",
              "parent_uuid": "f0185b0f-aaf4-474d-b6cd-617c7122047d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "3a16d416-20a1-4ddb-9f35-b5763915b80d",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad06df68-afbd-4fc2-b042-589358249123",
              "parent_uuid": "3a16d416-20a1-4ddb-9f35-b5763915b80d",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "60"
                ],
                [
                  "align",
                  "left"
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
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "a76355d4-dcd9-4de2-87e3-1fe329507078",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa792b86-01e0-4531-9bb2-c6ed2cfbc5ed",
              "parent_uuid": "a76355d4-dcd9-4de2-87e3-1fe329507078",
              "tagName": "td",
              "properties": [
                [
                  "height",
                  "19"
                ],
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "1412ae9a-b094-4c81-84fe-a48ac44e8395",
          "parent_uuid": "a547c083-342d-4826-b242-bd298770c8c3",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc09b1a9-4ac8-4b09-9029-bef2fc628a07",
              "parent_uuid": "1412ae9a-b094-4c81-84fe-a48ac44e8395",
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
                  "uuid": "46a022f8-501f-476c-9ac6-3cd3dcacf2b6",
                  "parent_uuid": "cc09b1a9-4ac8-4b09-9029-bef2fc628a07",
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
          "sort": 56,
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
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
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
		,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

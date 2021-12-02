
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
  "uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "14d9c3fd-812a-4ed6-827b-55b1b3673f91",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "a5b6f8a3-48b6-432d-aadb-10961213d8df",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "c9dfeccd-f7ac-477f-8f56-c6fc52864f37",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "a6ba5217-a878-41e2-b63c-c52fa2a898cb",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "74699978-a596-4d05-b44f-773521772f49",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "e9fc190a-3536-4c79-94ec-e3dd76111003",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "ebdb116d-68d3-425d-83d9-93aa2fb94758",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
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
      "uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
      "parent_uuid": "5466dc88-e59b-498f-9ee0-8459dfa611fd",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "fc92c009-12cc-47b0-a23a-575c881fbe75",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "655fe368-5f2c-48f2-916b-2db14bb70004",
              "parent_uuid": "fc92c009-12cc-47b0-a23a-575c881fbe75",
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
              "uuid": "ed2a6ca7-6dd1-4b80-8fc2-8b1db10c12fc",
              "parent_uuid": "fc92c009-12cc-47b0-a23a-575c881fbe75",
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
              "uuid": "f1283aa8-3858-4b8e-a25d-e6a9fa225009",
              "parent_uuid": "fc92c009-12cc-47b0-a23a-575c881fbe75",
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
              "uuid": "ffe2a049-1688-4b2b-8764-c14423bf4d31",
              "parent_uuid": "fc92c009-12cc-47b0-a23a-575c881fbe75",
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
          "uuid": "fa33d763-f3ef-4368-938d-6dfc8520a143",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "7468db1e-32be-47d2-9557-34c412cd5e39",
              "parent_uuid": "fa33d763-f3ef-4368-938d-6dfc8520a143",
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
              "uuid": "ccb1bc68-b50a-4e36-b431-964e3fbba8df",
              "parent_uuid": "fa33d763-f3ef-4368-938d-6dfc8520a143",
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
              "uuid": "c7ee3685-6990-4b5e-a836-786b43ff4630",
              "parent_uuid": "fa33d763-f3ef-4368-938d-6dfc8520a143",
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
              "uuid": "2901d6f6-d8d5-452d-b09e-e2e474bb088e",
              "parent_uuid": "fa33d763-f3ef-4368-938d-6dfc8520a143",
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
          "uuid": "c27d4975-a8ed-4d5b-87a6-35c2d66d26b4",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34cef7c1-bcc4-4d99-934d-41da6329767b",
              "parent_uuid": "c27d4975-a8ed-4d5b-87a6-35c2d66d26b4",
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
              "uuid": "cebf9268-d9d2-4de4-87c6-b30406ff7391",
              "parent_uuid": "c27d4975-a8ed-4d5b-87a6-35c2d66d26b4",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "89e493ec-4502-44ac-89bf-8c76f8533c1a",
              "parent_uuid": "c27d4975-a8ed-4d5b-87a6-35c2d66d26b4",
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
              "uuid": "3a6a3aa9-7a60-48d3-a86e-76fa96a5fd68",
              "parent_uuid": "c27d4975-a8ed-4d5b-87a6-35c2d66d26b4",
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
              "uuid": "0e961e0f-b885-453b-8efb-49240605ed1a",
              "parent_uuid": "c27d4975-a8ed-4d5b-87a6-35c2d66d26b4",
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
              "uuid": "89c32066-460e-47dc-b97d-f324fcb096cd",
              "parent_uuid": "c27d4975-a8ed-4d5b-87a6-35c2d66d26b4",
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
          "uuid": "277b5f99-0991-4c7a-a87d-ad7e51164c79",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "30431b02-0f0a-4a70-8247-75a540025182",
              "parent_uuid": "277b5f99-0991-4c7a-a87d-ad7e51164c79",
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
          "uuid": "ff00f640-7d8f-4db5-b2e2-acb7fcdc9956",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8ffc353-b516-4507-a78b-6f63e635751f",
              "parent_uuid": "ff00f640-7d8f-4db5-b2e2-acb7fcdc9956",
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
              "uuid": "d6cfc795-3d7d-400b-b318-7721d12b214d",
              "parent_uuid": "ff00f640-7d8f-4db5-b2e2-acb7fcdc9956",
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
              "uuid": "c205cc34-2379-4245-996d-f8370a916e41",
              "parent_uuid": "ff00f640-7d8f-4db5-b2e2-acb7fcdc9956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3caad7fc-08c7-428d-a64d-471f411c6c81",
                  "parent_uuid": "c205cc34-2379-4245-996d-f8370a916e41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "664d0aae-4187-4fab-9352-419b1f9ccf16",
              "parent_uuid": "ff00f640-7d8f-4db5-b2e2-acb7fcdc9956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5643570f-a5bb-49a9-90e5-4e373325ae1d",
                  "parent_uuid": "664d0aae-4187-4fab-9352-419b1f9ccf16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5dfa76b3-dc13-4197-83db-bad026c4a55b",
              "parent_uuid": "ff00f640-7d8f-4db5-b2e2-acb7fcdc9956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33dd0650-13d4-499f-83f0-c85699fcd1ff",
                  "parent_uuid": "5dfa76b3-dc13-4197-83db-bad026c4a55b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "624cfcd8-a943-4ca1-8e30-6daa8cf4ca70",
              "parent_uuid": "ff00f640-7d8f-4db5-b2e2-acb7fcdc9956",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "950590e0-15b6-4027-88f4-c8c4acb984da",
                  "parent_uuid": "624cfcd8-a943-4ca1-8e30-6daa8cf4ca70",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3a3d7500-79f5-49bc-9aa8-a2b331a77a52",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dca3bfa8-3aaa-459f-b90c-30e586310dd5",
              "parent_uuid": "3a3d7500-79f5-49bc-9aa8-a2b331a77a52",
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
              "uuid": "0098d180-9346-40b5-a0b0-549ab46fbb8e",
              "parent_uuid": "3a3d7500-79f5-49bc-9aa8-a2b331a77a52",
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
              "uuid": "a71965e2-1ccd-4b13-9bc3-8c7674079d2c",
              "parent_uuid": "3a3d7500-79f5-49bc-9aa8-a2b331a77a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "441c969b-5301-4a20-ad31-b737c4abb32e",
                  "parent_uuid": "a71965e2-1ccd-4b13-9bc3-8c7674079d2c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abd88c77-0e11-4829-a8f1-66b5a6af4181",
              "parent_uuid": "3a3d7500-79f5-49bc-9aa8-a2b331a77a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f3258a0-7226-4ea0-bd4c-3c70483cc558",
                  "parent_uuid": "abd88c77-0e11-4829-a8f1-66b5a6af4181",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a89d1db-ee05-4e22-b918-ce2d56ff4032",
              "parent_uuid": "3a3d7500-79f5-49bc-9aa8-a2b331a77a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7eee31ae-3241-4b27-8e89-94bc55a47510",
                  "parent_uuid": "6a89d1db-ee05-4e22-b918-ce2d56ff4032",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6cb10352-fd91-4ef0-8a6d-3c9d6345cc92",
              "parent_uuid": "3a3d7500-79f5-49bc-9aa8-a2b331a77a52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e115d3ce-fb51-424a-8dba-ed50b97e0837",
                  "parent_uuid": "6cb10352-fd91-4ef0-8a6d-3c9d6345cc92",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b07c00d8-aacb-4bc1-a0da-ed2e96195ccf",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "195f304b-80b4-445e-8f20-931d27b84862",
              "parent_uuid": "b07c00d8-aacb-4bc1-a0da-ed2e96195ccf",
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
              "uuid": "fffe3019-6324-4146-bd0a-a1d777b1ad56",
              "parent_uuid": "b07c00d8-aacb-4bc1-a0da-ed2e96195ccf",
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
              "uuid": "77b2b43e-a10d-4d09-8f35-24d76e6c5924",
              "parent_uuid": "b07c00d8-aacb-4bc1-a0da-ed2e96195ccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a11d1e5a-9d7d-427a-841b-492c0d9119a1",
                  "parent_uuid": "77b2b43e-a10d-4d09-8f35-24d76e6c5924",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b476c2f-e57d-4b23-b890-4a2b0fa3e0a6",
              "parent_uuid": "b07c00d8-aacb-4bc1-a0da-ed2e96195ccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "967a8892-ff8c-4834-9aff-b0fa8bdf79ce",
                  "parent_uuid": "3b476c2f-e57d-4b23-b890-4a2b0fa3e0a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7dbec3b5-99e2-47e1-90de-c5c1e7bdd2cf",
              "parent_uuid": "b07c00d8-aacb-4bc1-a0da-ed2e96195ccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2194e4de-5d3b-4ca0-9531-f70a9726b6d2",
                  "parent_uuid": "7dbec3b5-99e2-47e1-90de-c5c1e7bdd2cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e01c9387-22dd-44ba-aed4-b9b6d2eec573",
              "parent_uuid": "b07c00d8-aacb-4bc1-a0da-ed2e96195ccf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e905c923-5302-4a93-9e82-65c3cc9d922d",
                  "parent_uuid": "e01c9387-22dd-44ba-aed4-b9b6d2eec573",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d2395730-b20d-4601-bbfb-fd386254f089",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c850a179-d470-4901-8efc-4107b8ff0ba7",
              "parent_uuid": "d2395730-b20d-4601-bbfb-fd386254f089",
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
              "uuid": "410e1ab3-b9d9-4f50-b2de-ef38980e8e7b",
              "parent_uuid": "d2395730-b20d-4601-bbfb-fd386254f089",
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
              "uuid": "e407e25e-0abb-42eb-af27-40ec3ac316e7",
              "parent_uuid": "d2395730-b20d-4601-bbfb-fd386254f089",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2583a554-8653-4c42-bdfe-b2ec712e95c5",
                  "parent_uuid": "e407e25e-0abb-42eb-af27-40ec3ac316e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1332410-3812-4787-8fe2-ee086ceae096",
              "parent_uuid": "d2395730-b20d-4601-bbfb-fd386254f089",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6dfebb37-72a5-4acc-91b4-c4d4a4bc97c2",
                  "parent_uuid": "e1332410-3812-4787-8fe2-ee086ceae096",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58fc7139-5777-4eda-85be-8fe920eb842b",
              "parent_uuid": "d2395730-b20d-4601-bbfb-fd386254f089",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f3e6ce3-f99e-48ee-91da-3700d8253b36",
                  "parent_uuid": "58fc7139-5777-4eda-85be-8fe920eb842b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c878f054-5242-4a93-a7e5-a4b33a30acf1",
              "parent_uuid": "d2395730-b20d-4601-bbfb-fd386254f089",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99e1bf68-1b7e-4747-8681-308e82e10d35",
                  "parent_uuid": "c878f054-5242-4a93-a7e5-a4b33a30acf1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "40669391-8bb4-48c1-a198-523190915d8d",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "96e80caa-3ba6-449e-a3cc-bfa0c5a619ee",
              "parent_uuid": "40669391-8bb4-48c1-a198-523190915d8d",
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
              "uuid": "d20ff759-662e-471f-a6bf-7b1e48479717",
              "parent_uuid": "40669391-8bb4-48c1-a198-523190915d8d",
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
              "uuid": "44a4f0a0-2bf9-4f54-9bb0-3a042bf7a5e4",
              "parent_uuid": "40669391-8bb4-48c1-a198-523190915d8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37888468-429b-45c2-a6c1-9cfadb3d857f",
                  "parent_uuid": "44a4f0a0-2bf9-4f54-9bb0-3a042bf7a5e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59d114fd-4458-41f6-b300-e70eca1797c4",
              "parent_uuid": "40669391-8bb4-48c1-a198-523190915d8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3d11cf5-74f7-4497-8306-eaf2c489de61",
                  "parent_uuid": "59d114fd-4458-41f6-b300-e70eca1797c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a32ab22a-8145-4f03-8328-d6b48ca33648",
              "parent_uuid": "40669391-8bb4-48c1-a198-523190915d8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7e94ff9-0bf4-4442-9832-7fe2e5771997",
                  "parent_uuid": "a32ab22a-8145-4f03-8328-d6b48ca33648",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4294e7d-7ffd-47c0-ab7d-03dbe37b8f75",
              "parent_uuid": "40669391-8bb4-48c1-a198-523190915d8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba1ce5a9-a8b6-43aa-8778-cda5c4dab774",
                  "parent_uuid": "e4294e7d-7ffd-47c0-ab7d-03dbe37b8f75",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "706bb6a3-6674-459d-bb3c-d89edb56a836",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0bebe9d-9d56-4cf4-9e12-1f2a52622c78",
              "parent_uuid": "706bb6a3-6674-459d-bb3c-d89edb56a836",
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
              "uuid": "1dc4dd77-a7b5-43d2-8e1c-d306cb217e1b",
              "parent_uuid": "706bb6a3-6674-459d-bb3c-d89edb56a836",
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
              "uuid": "fca2a2d0-21b7-4499-8121-2b1ba12acdb0",
              "parent_uuid": "706bb6a3-6674-459d-bb3c-d89edb56a836",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b8d9a8c-6770-4485-9ebc-1cb3e7d2d75e",
                  "parent_uuid": "fca2a2d0-21b7-4499-8121-2b1ba12acdb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acac4399-78a6-4832-a3b9-c717f40950c3",
              "parent_uuid": "706bb6a3-6674-459d-bb3c-d89edb56a836",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "490dab9e-ccfc-4072-a9d2-3a2b0b920c66",
                  "parent_uuid": "acac4399-78a6-4832-a3b9-c717f40950c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbcd1b41-ef72-46ae-952a-aec769ccf90e",
              "parent_uuid": "706bb6a3-6674-459d-bb3c-d89edb56a836",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bb19c38-31cd-4695-af54-e52e8808f045",
                  "parent_uuid": "fbcd1b41-ef72-46ae-952a-aec769ccf90e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e49fffcf-a842-41eb-82e6-4da0aa288eea",
              "parent_uuid": "706bb6a3-6674-459d-bb3c-d89edb56a836",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b292fd64-133e-406d-94d3-b816014c0b6e",
                  "parent_uuid": "e49fffcf-a842-41eb-82e6-4da0aa288eea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b8e6c556-f051-4ad5-9ea6-cfad5f848626",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46d4a434-39dd-475e-9ff9-eb2d91dd54c6",
              "parent_uuid": "b8e6c556-f051-4ad5-9ea6-cfad5f848626",
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
              "uuid": "37e6b9a5-0edd-4454-a525-31fb7b963be9",
              "parent_uuid": "b8e6c556-f051-4ad5-9ea6-cfad5f848626",
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
              "uuid": "8ff58a04-e981-4bdd-a8ec-3f91a677283a",
              "parent_uuid": "b8e6c556-f051-4ad5-9ea6-cfad5f848626",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbd4ad31-24f1-4140-b56f-40ec28165091",
                  "parent_uuid": "8ff58a04-e981-4bdd-a8ec-3f91a677283a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "face86b1-ba44-4b6f-95c1-ac2cb7687b24",
              "parent_uuid": "b8e6c556-f051-4ad5-9ea6-cfad5f848626",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d618d03-9197-48d7-ad02-ac477428796a",
                  "parent_uuid": "face86b1-ba44-4b6f-95c1-ac2cb7687b24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2e84d00-206f-4b8b-9d47-360e0030a095",
              "parent_uuid": "b8e6c556-f051-4ad5-9ea6-cfad5f848626",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "154f7137-cba3-429b-abd5-501de41f0060",
                  "parent_uuid": "b2e84d00-206f-4b8b-9d47-360e0030a095",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59edf12f-38f8-4055-8ef3-b152f5423adf",
              "parent_uuid": "b8e6c556-f051-4ad5-9ea6-cfad5f848626",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dca25680-2d7e-4d4c-a9cb-ac65137bfed9",
                  "parent_uuid": "59edf12f-38f8-4055-8ef3-b152f5423adf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aeb2cec7-c26d-45dd-a0a7-7cd1db5424aa",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bbb7e65c-c2a1-41c2-9fa0-cb0aad61cb34",
              "parent_uuid": "aeb2cec7-c26d-45dd-a0a7-7cd1db5424aa",
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
              "uuid": "db8fc182-2cdd-42de-8f77-484cbbd3edc3",
              "parent_uuid": "aeb2cec7-c26d-45dd-a0a7-7cd1db5424aa",
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
              "uuid": "40ff552a-c0e3-4887-acee-f0b8b02f7cfb",
              "parent_uuid": "aeb2cec7-c26d-45dd-a0a7-7cd1db5424aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd2fcbe5-66ee-4ca9-a3e7-81eb6c4f210a",
                  "parent_uuid": "40ff552a-c0e3-4887-acee-f0b8b02f7cfb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0445bf3-5981-4b0e-8d65-963e8c00ca01",
              "parent_uuid": "aeb2cec7-c26d-45dd-a0a7-7cd1db5424aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d89fd419-27e4-4a11-a082-48fd45b4ae43",
                  "parent_uuid": "c0445bf3-5981-4b0e-8d65-963e8c00ca01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f506e1bc-d9b5-45fe-854a-78d0df27bc96",
              "parent_uuid": "aeb2cec7-c26d-45dd-a0a7-7cd1db5424aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5f8d85e-024d-48cf-aba9-513f77a17081",
                  "parent_uuid": "f506e1bc-d9b5-45fe-854a-78d0df27bc96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "caa11311-09e7-4622-bb83-ebca9a337555",
              "parent_uuid": "aeb2cec7-c26d-45dd-a0a7-7cd1db5424aa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4bf8897d-123a-4052-9c37-b51c3980100f",
                  "parent_uuid": "caa11311-09e7-4622-bb83-ebca9a337555",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8248bd52-1aa9-417f-bde0-0540c4f443fe",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ed4c948-4ae0-44fd-bdfd-bd6408d71297",
              "parent_uuid": "8248bd52-1aa9-417f-bde0-0540c4f443fe",
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
              "uuid": "d2b70a2a-d533-462c-af98-bdbfb4697374",
              "parent_uuid": "8248bd52-1aa9-417f-bde0-0540c4f443fe",
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
              "uuid": "3958bb5f-487b-4333-bb9c-f2e107b14131",
              "parent_uuid": "8248bd52-1aa9-417f-bde0-0540c4f443fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e54e30ba-e7a7-4b5b-a5ef-f3331f090bde",
                  "parent_uuid": "3958bb5f-487b-4333-bb9c-f2e107b14131",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2c84993-831a-4d83-86d9-0d4d81d19f96",
              "parent_uuid": "8248bd52-1aa9-417f-bde0-0540c4f443fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4ea7afae-99f1-49df-b6f7-690c9d2baea4",
                  "parent_uuid": "b2c84993-831a-4d83-86d9-0d4d81d19f96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "818c9b61-a9bb-4e6b-b7a6-41af8607a89c",
              "parent_uuid": "8248bd52-1aa9-417f-bde0-0540c4f443fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90108764-558e-41db-b322-8eedd001dff2",
                  "parent_uuid": "818c9b61-a9bb-4e6b-b7a6-41af8607a89c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2281a246-7e5b-433f-8fcf-fa1440bc8df3",
              "parent_uuid": "8248bd52-1aa9-417f-bde0-0540c4f443fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d0b4994-8771-444b-b1ca-07d47e8d0d17",
                  "parent_uuid": "2281a246-7e5b-433f-8fcf-fa1440bc8df3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1cc5fe77-cfbc-47ad-8d94-dfefcd51b125",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d992cf79-f1d7-4f13-9a16-f958f7c0d338",
              "parent_uuid": "1cc5fe77-cfbc-47ad-8d94-dfefcd51b125",
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
              "uuid": "1e9a9c91-0481-4f0f-bd74-bfe6061b5cfd",
              "parent_uuid": "1cc5fe77-cfbc-47ad-8d94-dfefcd51b125",
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
              "uuid": "3cb0d370-a397-4ba5-a48a-a79c082e0921",
              "parent_uuid": "1cc5fe77-cfbc-47ad-8d94-dfefcd51b125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8cac878c-2544-4c2f-8e0c-1e911a70b3c2",
                  "parent_uuid": "3cb0d370-a397-4ba5-a48a-a79c082e0921",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01ce67ba-f471-40e0-8478-764aff4bebfc",
              "parent_uuid": "1cc5fe77-cfbc-47ad-8d94-dfefcd51b125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e293125c-0058-4578-99d8-e870055ba32a",
                  "parent_uuid": "01ce67ba-f471-40e0-8478-764aff4bebfc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "763589c2-752f-4905-8ff9-4734b1acf13b",
              "parent_uuid": "1cc5fe77-cfbc-47ad-8d94-dfefcd51b125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e58e080-f97e-4d09-98af-6077f342de60",
                  "parent_uuid": "763589c2-752f-4905-8ff9-4734b1acf13b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c06a39f8-561b-4834-bcc0-a8dbef1375e0",
              "parent_uuid": "1cc5fe77-cfbc-47ad-8d94-dfefcd51b125",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e43df96c-7a6f-4462-a944-c099a4cca28e",
                  "parent_uuid": "c06a39f8-561b-4834-bcc0-a8dbef1375e0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a8e2348e-0fbb-4d1b-b4fe-a987cd516aa1",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8953eda3-62d9-4d85-be6d-65f4ad4272dc",
              "parent_uuid": "a8e2348e-0fbb-4d1b-b4fe-a987cd516aa1",
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
              "uuid": "208e6e56-d252-44a3-a3c6-3a6396b080d0",
              "parent_uuid": "a8e2348e-0fbb-4d1b-b4fe-a987cd516aa1",
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
              "uuid": "ca57172d-316b-44f0-904d-6a417e97c6de",
              "parent_uuid": "a8e2348e-0fbb-4d1b-b4fe-a987cd516aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6f5a938-0d36-452e-bc01-de6de7fca237",
                  "parent_uuid": "ca57172d-316b-44f0-904d-6a417e97c6de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58d78dfc-d960-4e19-bfd2-27532c081aad",
              "parent_uuid": "a8e2348e-0fbb-4d1b-b4fe-a987cd516aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed9c43d4-a00d-4fbe-b923-475220779192",
                  "parent_uuid": "58d78dfc-d960-4e19-bfd2-27532c081aad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d2a62a5-dfa7-4082-8b8b-b188c74fe41c",
              "parent_uuid": "a8e2348e-0fbb-4d1b-b4fe-a987cd516aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca348be9-8b85-4910-bcd5-2d60185c9805",
                  "parent_uuid": "5d2a62a5-dfa7-4082-8b8b-b188c74fe41c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ac6773e-8cbc-465f-8f1e-ad8378fbbe0c",
              "parent_uuid": "a8e2348e-0fbb-4d1b-b4fe-a987cd516aa1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5966acb5-53ef-416d-885f-39f9ba085dd9",
                  "parent_uuid": "6ac6773e-8cbc-465f-8f1e-ad8378fbbe0c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e634eeed-a1e2-4370-9f51-8585cc68c7b5",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95648423-0ab5-4a99-8a54-699b69ee4804",
              "parent_uuid": "e634eeed-a1e2-4370-9f51-8585cc68c7b5",
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
              "uuid": "d75dd2c0-183a-4f81-8e61-e54481514d07",
              "parent_uuid": "e634eeed-a1e2-4370-9f51-8585cc68c7b5",
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
              "uuid": "105ea594-b74c-40e9-8dd7-e2a471b7eca5",
              "parent_uuid": "e634eeed-a1e2-4370-9f51-8585cc68c7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "953b8d16-2351-4cd6-806c-88cf7eb57f59",
                  "parent_uuid": "105ea594-b74c-40e9-8dd7-e2a471b7eca5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8335db6-7061-4ee2-b303-f102a5e47c76",
              "parent_uuid": "e634eeed-a1e2-4370-9f51-8585cc68c7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f9f8d68-b4a4-4f80-bfe7-0061fac8587e",
                  "parent_uuid": "c8335db6-7061-4ee2-b303-f102a5e47c76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da12eeec-d6dc-44f5-b491-8c5ca6f2e20a",
              "parent_uuid": "e634eeed-a1e2-4370-9f51-8585cc68c7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7446422e-54ef-4b5f-b89e-1fb6d45b9e8a",
                  "parent_uuid": "da12eeec-d6dc-44f5-b491-8c5ca6f2e20a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f961a605-9447-45ee-a151-0a02e8ba2930",
              "parent_uuid": "e634eeed-a1e2-4370-9f51-8585cc68c7b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e1483ad-c766-4fc6-b10d-633948e4a236",
                  "parent_uuid": "f961a605-9447-45ee-a151-0a02e8ba2930",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "52c79b3a-155b-4b96-9f9e-dbe8bd68717e",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7638ee2c-c477-4999-9531-a33b047013ec",
              "parent_uuid": "52c79b3a-155b-4b96-9f9e-dbe8bd68717e",
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
              "uuid": "ed42f25f-ef49-4f98-9f1c-954e283a0581",
              "parent_uuid": "52c79b3a-155b-4b96-9f9e-dbe8bd68717e",
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
              "uuid": "893e1bae-f723-45dd-9834-377b7f9b896c",
              "parent_uuid": "52c79b3a-155b-4b96-9f9e-dbe8bd68717e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d96f2c77-8edc-4a67-a14a-de055eda3871",
                  "parent_uuid": "893e1bae-f723-45dd-9834-377b7f9b896c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c773a41-9a74-4318-8ec2-379caf5f8cd8",
              "parent_uuid": "52c79b3a-155b-4b96-9f9e-dbe8bd68717e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ee0da27-31c8-4f25-aea7-06b48f4611eb",
                  "parent_uuid": "7c773a41-9a74-4318-8ec2-379caf5f8cd8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78e233e6-30c5-49e1-b8c3-21384e1acec9",
              "parent_uuid": "52c79b3a-155b-4b96-9f9e-dbe8bd68717e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22a46586-a919-4fdf-a501-3c85ed628044",
                  "parent_uuid": "78e233e6-30c5-49e1-b8c3-21384e1acec9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e6aa696-a358-4228-982d-6b811b29d654",
              "parent_uuid": "52c79b3a-155b-4b96-9f9e-dbe8bd68717e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25ee7f84-36c2-412f-bb1c-0789750b088c",
                  "parent_uuid": "8e6aa696-a358-4228-982d-6b811b29d654",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "50824f90-b63b-42f4-8388-e055acfeb226",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8ff42517-9eca-4cdf-9ba6-437a736eff15",
              "parent_uuid": "50824f90-b63b-42f4-8388-e055acfeb226",
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
              "uuid": "a7e6def2-0db3-4021-950c-0567f582fc4f",
              "parent_uuid": "50824f90-b63b-42f4-8388-e055acfeb226",
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
              "uuid": "014de317-94b7-4e6e-9180-5f67b429ad71",
              "parent_uuid": "50824f90-b63b-42f4-8388-e055acfeb226",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01e44979-d7fd-40d4-8a1c-aff8dcfb7ed3",
                  "parent_uuid": "014de317-94b7-4e6e-9180-5f67b429ad71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30213e35-7d47-4116-970a-eedde1caca87",
              "parent_uuid": "50824f90-b63b-42f4-8388-e055acfeb226",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39442580-5585-4b7f-8762-74c93fc941b9",
                  "parent_uuid": "30213e35-7d47-4116-970a-eedde1caca87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c38bb53-a043-4f70-8903-da2d1c44e789",
              "parent_uuid": "50824f90-b63b-42f4-8388-e055acfeb226",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2adb480-8da7-4533-9614-3791c8619763",
                  "parent_uuid": "1c38bb53-a043-4f70-8903-da2d1c44e789",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "554791e7-cb67-49d6-af57-6e57cdcd8f55",
              "parent_uuid": "50824f90-b63b-42f4-8388-e055acfeb226",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79c59851-bd8c-4a89-9e88-a6b9f1be5d76",
                  "parent_uuid": "554791e7-cb67-49d6-af57-6e57cdcd8f55",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c7694f78-7fcb-4890-831b-776365426e67",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ffac3cc-b1ec-4a9f-a6ac-d29fa9831aad",
              "parent_uuid": "c7694f78-7fcb-4890-831b-776365426e67",
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
          "uuid": "f0ef8d38-8a45-4ffb-bb13-7d94f1396e17",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a9306ac1-0176-4a9a-877e-422ae1aa0ca5",
              "parent_uuid": "f0ef8d38-8a45-4ffb-bb13-7d94f1396e17",
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
          "uuid": "07f013c0-a316-42f0-bb8e-5fb590ae77ca",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f01dd7b7-8e40-46ba-81e5-7b5edb4f4460",
              "parent_uuid": "07f013c0-a316-42f0-bb8e-5fb590ae77ca",
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
              "uuid": "284dc335-28c7-457e-bd16-1fc548927834",
              "parent_uuid": "07f013c0-a316-42f0-bb8e-5fb590ae77ca",
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
              "uuid": "038fa182-860f-4fd0-b2ea-cf69307fc3bb",
              "parent_uuid": "07f013c0-a316-42f0-bb8e-5fb590ae77ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5388b2ea-7278-4442-8cdb-0589eb891950",
                  "parent_uuid": "038fa182-860f-4fd0-b2ea-cf69307fc3bb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0eaef005-6e27-489c-a308-1d9c3c1e083c",
              "parent_uuid": "07f013c0-a316-42f0-bb8e-5fb590ae77ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22cd4cd1-34c4-46ce-b0e4-22cb4965903d",
                  "parent_uuid": "0eaef005-6e27-489c-a308-1d9c3c1e083c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c44a8a4-b15c-4a00-bf03-53ebe85c25f2",
              "parent_uuid": "07f013c0-a316-42f0-bb8e-5fb590ae77ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1973b07f-4974-4369-af41-b974a1902c06",
                  "parent_uuid": "1c44a8a4-b15c-4a00-bf03-53ebe85c25f2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "50bdeff7-3acc-4092-8d33-c691e3a73f86",
              "parent_uuid": "07f013c0-a316-42f0-bb8e-5fb590ae77ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84190eb2-785f-4e3d-8800-37beb4af7361",
                  "parent_uuid": "50bdeff7-3acc-4092-8d33-c691e3a73f86",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f30f5ba5-f7ce-4d51-a543-a30677b45ea9",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "055f57f5-9c80-477a-83ff-ee32f443a1a9",
              "parent_uuid": "f30f5ba5-f7ce-4d51-a543-a30677b45ea9",
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
              "uuid": "09e161bb-50e1-44ce-9052-0a3072c7f82a",
              "parent_uuid": "f30f5ba5-f7ce-4d51-a543-a30677b45ea9",
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
              "uuid": "e98dd0cb-b0cd-4627-9a4e-69ea8d94eabd",
              "parent_uuid": "f30f5ba5-f7ce-4d51-a543-a30677b45ea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8490d3fa-4a73-4200-a031-9b6cd41d1efb",
                  "parent_uuid": "e98dd0cb-b0cd-4627-9a4e-69ea8d94eabd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bc92aa6-5a6b-4975-bb40-8c58a7a3da7d",
              "parent_uuid": "f30f5ba5-f7ce-4d51-a543-a30677b45ea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fa3fdb31-b677-4a94-b3ee-72e47918531e",
                  "parent_uuid": "1bc92aa6-5a6b-4975-bb40-8c58a7a3da7d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62541928-8918-4b22-917a-739d03a0067b",
              "parent_uuid": "f30f5ba5-f7ce-4d51-a543-a30677b45ea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17f76ed0-a48d-42fd-92c2-3e5dba984b53",
                  "parent_uuid": "62541928-8918-4b22-917a-739d03a0067b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74b8a150-f51c-42ff-927f-988797c0cc60",
              "parent_uuid": "f30f5ba5-f7ce-4d51-a543-a30677b45ea9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24c554f9-e0ba-475f-b447-2890a266e89f",
                  "parent_uuid": "74b8a150-f51c-42ff-927f-988797c0cc60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "10bb70fe-fb6d-4ffd-be65-692a7785cc2a",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5d0202ad-23c6-417d-9f69-f72c32200ead",
              "parent_uuid": "10bb70fe-fb6d-4ffd-be65-692a7785cc2a",
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
              "uuid": "8ac32497-88cd-467e-bca2-5b570c8baadc",
              "parent_uuid": "10bb70fe-fb6d-4ffd-be65-692a7785cc2a",
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
              "uuid": "1e310b32-8b34-49b9-8a44-cefb2567e66d",
              "parent_uuid": "10bb70fe-fb6d-4ffd-be65-692a7785cc2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed1e72c8-f93f-47cb-8316-a5715f2da2e1",
                  "parent_uuid": "1e310b32-8b34-49b9-8a44-cefb2567e66d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd613c3d-8f2a-47e4-88f6-ccc43ce5b3d0",
              "parent_uuid": "10bb70fe-fb6d-4ffd-be65-692a7785cc2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f30148b3-b843-4417-9bf0-23cc5bad75d1",
                  "parent_uuid": "bd613c3d-8f2a-47e4-88f6-ccc43ce5b3d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eba6b265-38fb-45aa-ad6c-67f27a6ac6ff",
              "parent_uuid": "10bb70fe-fb6d-4ffd-be65-692a7785cc2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8d17308d-9796-4c30-9562-2005393ff430",
                  "parent_uuid": "eba6b265-38fb-45aa-ad6c-67f27a6ac6ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "671db8c8-927c-4720-b17e-0edd9c01b7ad",
              "parent_uuid": "10bb70fe-fb6d-4ffd-be65-692a7785cc2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b71d7f1-bcf5-494d-be18-bfeb43a35a6a",
                  "parent_uuid": "671db8c8-927c-4720-b17e-0edd9c01b7ad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2c53761c-c60d-4a2c-ad15-38a3c1634759",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c998b69-ebaa-4797-b8b8-1ec8162cc4ba",
              "parent_uuid": "2c53761c-c60d-4a2c-ad15-38a3c1634759",
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
              "uuid": "3948650e-1773-48fd-b880-92d9fefd8cee",
              "parent_uuid": "2c53761c-c60d-4a2c-ad15-38a3c1634759",
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
              "uuid": "a6c4b150-321b-4df2-9b59-a8d01de5dd14",
              "parent_uuid": "2c53761c-c60d-4a2c-ad15-38a3c1634759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6eeecd32-e736-41d8-aa51-b745f3d2b0f9",
                  "parent_uuid": "a6c4b150-321b-4df2-9b59-a8d01de5dd14",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44b7bc79-301a-40b3-beec-5909a6136a45",
              "parent_uuid": "2c53761c-c60d-4a2c-ad15-38a3c1634759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f33fd64-ee92-4a73-8467-be77d71220ec",
                  "parent_uuid": "44b7bc79-301a-40b3-beec-5909a6136a45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a94ca09-6c3d-4f61-88a9-cc79d5f78472",
              "parent_uuid": "2c53761c-c60d-4a2c-ad15-38a3c1634759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c581f64c-0537-4a4a-86b3-195b20bef844",
                  "parent_uuid": "1a94ca09-6c3d-4f61-88a9-cc79d5f78472",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fed37ea5-921d-4940-9504-2bf913ea0453",
              "parent_uuid": "2c53761c-c60d-4a2c-ad15-38a3c1634759",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54caea0b-8077-4679-8177-86b70efc22fd",
                  "parent_uuid": "fed37ea5-921d-4940-9504-2bf913ea0453",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c79f50f2-c6c9-4d6c-87ab-1a4c9aeb424a",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d566c24-8c4e-4a50-8c44-713a5996aa93",
              "parent_uuid": "c79f50f2-c6c9-4d6c-87ab-1a4c9aeb424a",
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
              "uuid": "adeb9451-2ce0-426d-aeca-27e44a000a64",
              "parent_uuid": "c79f50f2-c6c9-4d6c-87ab-1a4c9aeb424a",
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
              "uuid": "8491edad-be14-4643-833d-a6c3490a25a6",
              "parent_uuid": "c79f50f2-c6c9-4d6c-87ab-1a4c9aeb424a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5261d5f-84a1-48fa-9f68-71601076e2d2",
                  "parent_uuid": "8491edad-be14-4643-833d-a6c3490a25a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "303977b6-c4e4-46f0-b11d-5af0f3f24835",
              "parent_uuid": "c79f50f2-c6c9-4d6c-87ab-1a4c9aeb424a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f69ef282-0684-4373-a6ea-00057b91826c",
                  "parent_uuid": "303977b6-c4e4-46f0-b11d-5af0f3f24835",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35224c97-3d73-4ac0-8acc-c054e68b31e5",
              "parent_uuid": "c79f50f2-c6c9-4d6c-87ab-1a4c9aeb424a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d82fab9-900a-4483-a7e9-6b1d4d25d022",
                  "parent_uuid": "35224c97-3d73-4ac0-8acc-c054e68b31e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15bf7e1e-b9b2-4b9c-88c7-58df98274c12",
              "parent_uuid": "c79f50f2-c6c9-4d6c-87ab-1a4c9aeb424a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6060811a-51c9-46b0-8140-b9ae38a7bd66",
                  "parent_uuid": "15bf7e1e-b9b2-4b9c-88c7-58df98274c12",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "42f721da-d552-4424-99be-8bd99d5ca85c",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75e27ef1-418a-4f53-b2ea-eb1e25a595aa",
              "parent_uuid": "42f721da-d552-4424-99be-8bd99d5ca85c",
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
              "uuid": "ca15a8be-84cc-4596-a941-6ada677bc7b9",
              "parent_uuid": "42f721da-d552-4424-99be-8bd99d5ca85c",
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
              "uuid": "e65f5dd5-917f-417c-b1b8-52069fe8d401",
              "parent_uuid": "42f721da-d552-4424-99be-8bd99d5ca85c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14915972-74a2-4b1b-bfd7-784fd804c7b0",
                  "parent_uuid": "e65f5dd5-917f-417c-b1b8-52069fe8d401",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46548877-b0a2-4b06-970e-26c60bca0e98",
              "parent_uuid": "42f721da-d552-4424-99be-8bd99d5ca85c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b8636c3-f969-417a-8deb-1ac99934beec",
                  "parent_uuid": "46548877-b0a2-4b06-970e-26c60bca0e98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d343ad07-b14a-4283-b6bf-c9e15e0be21f",
              "parent_uuid": "42f721da-d552-4424-99be-8bd99d5ca85c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e51e21ff-b411-4773-8603-84318fb3e3dd",
                  "parent_uuid": "d343ad07-b14a-4283-b6bf-c9e15e0be21f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71866c7f-d4fc-472d-9686-a16b43fcc657",
              "parent_uuid": "42f721da-d552-4424-99be-8bd99d5ca85c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b042146-72cf-4d5a-aacb-c455171728c3",
                  "parent_uuid": "71866c7f-d4fc-472d-9686-a16b43fcc657",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d8fae1dc-0a44-4d3a-abd6-13d7f5bc10b7",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "870d1f91-f7cb-464b-ab19-e2681400e37c",
              "parent_uuid": "d8fae1dc-0a44-4d3a-abd6-13d7f5bc10b7",
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
              "uuid": "a980835b-29c5-4099-8850-ee6162e64c88",
              "parent_uuid": "d8fae1dc-0a44-4d3a-abd6-13d7f5bc10b7",
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
              "uuid": "5015f363-03fa-4ec0-99e0-d004e162d3eb",
              "parent_uuid": "d8fae1dc-0a44-4d3a-abd6-13d7f5bc10b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c08108a9-9239-4ba0-b18e-5448b514a47f",
                  "parent_uuid": "5015f363-03fa-4ec0-99e0-d004e162d3eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05a7fdaa-0b0a-4b9a-ac25-665442dbbcea",
              "parent_uuid": "d8fae1dc-0a44-4d3a-abd6-13d7f5bc10b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9f90bcb-ed26-4e81-ba11-9621fe41358b",
                  "parent_uuid": "05a7fdaa-0b0a-4b9a-ac25-665442dbbcea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54f7f774-f889-441f-8ce9-81e0e3008572",
              "parent_uuid": "d8fae1dc-0a44-4d3a-abd6-13d7f5bc10b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bdf2e86-6c6a-4bee-8169-447b5b83dbe8",
                  "parent_uuid": "54f7f774-f889-441f-8ce9-81e0e3008572",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d8e8a0f-cecc-486b-8f26-7857ac9777d0",
              "parent_uuid": "d8fae1dc-0a44-4d3a-abd6-13d7f5bc10b7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f836412f-11e6-45c2-bf6a-e2a0eb278340",
                  "parent_uuid": "7d8e8a0f-cecc-486b-8f26-7857ac9777d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e3f9afb6-f3e0-4cef-9e86-e8a4e001df73",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5aa6691f-8096-4dff-b657-d074e0c4a0a5",
              "parent_uuid": "e3f9afb6-f3e0-4cef-9e86-e8a4e001df73",
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
              "uuid": "efff25b8-eaac-41a8-a93a-e849d2d093c5",
              "parent_uuid": "e3f9afb6-f3e0-4cef-9e86-e8a4e001df73",
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
              "uuid": "f2e540dc-7c88-4d2e-bf03-002deafbc040",
              "parent_uuid": "e3f9afb6-f3e0-4cef-9e86-e8a4e001df73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae3964ef-2d53-4ef8-8b3c-c8870431b59f",
                  "parent_uuid": "f2e540dc-7c88-4d2e-bf03-002deafbc040",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17d1e5ec-cf57-4e3e-ad22-98648e03d2ce",
              "parent_uuid": "e3f9afb6-f3e0-4cef-9e86-e8a4e001df73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81fb1293-c1b7-438e-82ba-e8ce51c643bc",
                  "parent_uuid": "17d1e5ec-cf57-4e3e-ad22-98648e03d2ce",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94fa3af7-152f-4c31-b577-5704bb68cff9",
              "parent_uuid": "e3f9afb6-f3e0-4cef-9e86-e8a4e001df73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d1a979d-4ab7-42c1-baad-563b496368c0",
                  "parent_uuid": "94fa3af7-152f-4c31-b577-5704bb68cff9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "229efd13-cd21-4769-adaf-109cc5f51da6",
              "parent_uuid": "e3f9afb6-f3e0-4cef-9e86-e8a4e001df73",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "67d2d460-161b-47b7-ab6a-1f8ef2de25b0",
                  "parent_uuid": "229efd13-cd21-4769-adaf-109cc5f51da6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc26920b-9e09-44e8-80e0-8c9cf34d9866",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5116f8ee-d942-4c96-8c80-397e35a27c98",
              "parent_uuid": "bc26920b-9e09-44e8-80e0-8c9cf34d9866",
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
          "uuid": "06124b15-a916-42cb-a878-12ae7c678f28",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7a0d371-aef9-42ab-8bc8-92d7a4d317d7",
              "parent_uuid": "06124b15-a916-42cb-a878-12ae7c678f28",
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
              "uuid": "e6a8087f-e852-49a6-89eb-d8285042565d",
              "parent_uuid": "06124b15-a916-42cb-a878-12ae7c678f28",
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
              "uuid": "d4b8e335-9210-4a4d-ac1e-8a3890d28012",
              "parent_uuid": "06124b15-a916-42cb-a878-12ae7c678f28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "90539a77-fcd3-454b-a12f-5065eb44d8b8",
                  "parent_uuid": "d4b8e335-9210-4a4d-ac1e-8a3890d28012",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef560ba2-dbef-4621-ae06-c5b880c52bb2",
              "parent_uuid": "06124b15-a916-42cb-a878-12ae7c678f28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5a6f8bd6-2109-4fbd-9c57-32693bfa4219",
                  "parent_uuid": "ef560ba2-dbef-4621-ae06-c5b880c52bb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b16bb22e-8dcc-440b-9cf0-915e5a945326",
              "parent_uuid": "06124b15-a916-42cb-a878-12ae7c678f28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c2ef8fb-ec44-4d9c-9865-1d6263ab92c9",
                  "parent_uuid": "b16bb22e-8dcc-440b-9cf0-915e5a945326",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "69193dad-d721-4d35-a284-f36f90fe25cf",
              "parent_uuid": "06124b15-a916-42cb-a878-12ae7c678f28",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "005f097c-f0f4-4bac-96a6-3a964a3877c1",
                  "parent_uuid": "69193dad-d721-4d35-a284-f36f90fe25cf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3e5326b9-b9f0-46f1-9995-8caaa958f088",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "125b133b-ea09-43b5-a3cf-35a119175de8",
              "parent_uuid": "3e5326b9-b9f0-46f1-9995-8caaa958f088",
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
              "uuid": "e1b3cfe5-83be-43b0-b336-ad5b1d196b45",
              "parent_uuid": "3e5326b9-b9f0-46f1-9995-8caaa958f088",
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
              "uuid": "383e5b97-622d-4418-80f0-c49d0727e7c0",
              "parent_uuid": "3e5326b9-b9f0-46f1-9995-8caaa958f088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f068211-27f3-4a4f-958e-ec782770c785",
                  "parent_uuid": "383e5b97-622d-4418-80f0-c49d0727e7c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc8bf411-dc4c-4e83-afa5-41954666172d",
              "parent_uuid": "3e5326b9-b9f0-46f1-9995-8caaa958f088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c4a6fb5-6ab0-4a53-b0e3-86c68a5fa34e",
                  "parent_uuid": "fc8bf411-dc4c-4e83-afa5-41954666172d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8423d7b5-ccc2-4f68-b593-1ff162d180ab",
              "parent_uuid": "3e5326b9-b9f0-46f1-9995-8caaa958f088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16889961-101e-4ca7-bb25-efe515c3077c",
                  "parent_uuid": "8423d7b5-ccc2-4f68-b593-1ff162d180ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45eaa82a-c064-4849-ba0d-446e36182ca3",
              "parent_uuid": "3e5326b9-b9f0-46f1-9995-8caaa958f088",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbd2417f-f044-41db-b9e6-27925007c0c4",
                  "parent_uuid": "45eaa82a-c064-4849-ba0d-446e36182ca3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "adb007a5-1434-456e-aed9-bc643ae1016f",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f69658d2-46ac-4d0f-a463-a3ae53ba9cb6",
              "parent_uuid": "adb007a5-1434-456e-aed9-bc643ae1016f",
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
          "uuid": "d18e9d11-4989-42e3-ad46-96a3f570c685",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4198ecda-aa80-453e-a5c7-a9b9ac6b3a19",
              "parent_uuid": "d18e9d11-4989-42e3-ad46-96a3f570c685",
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
          "uuid": "fa62fc06-2785-451e-a93e-a5d607d8b846",
          "parent_uuid": "15591a7b-8617-4c0c-b06b-a988654e064d",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "94d34d24-e863-4138-9e5e-5be08c5ac5fa",
              "parent_uuid": "fa62fc06-2785-451e-a93e-a5d607d8b846",
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
                  "uuid": "af44b845-a943-4203-bf6a-24aff8099c82",
                  "parent_uuid": "94d34d24-e863-4138-9e5e-5be08c5ac5fa",
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

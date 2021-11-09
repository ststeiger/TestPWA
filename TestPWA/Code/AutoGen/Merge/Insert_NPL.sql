
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
  "uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "292d8aa8-c8cd-43a3-9d6d-0af2d7dbf26c",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "e82897c2-54f2-4788-90ea-b0954127dfc1",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "7087793d-5816-44c8-a7fc-f04fa3698445",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "8c02a4ae-feb1-4be4-b261-049380a704c2",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "dd53e3d1-cd53-47d4-bfe1-666305eb94cb",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "af7fde22-0e1d-4bbf-b988-213f510ee0f3",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "ad40602a-8fcd-43fd-b380-5d0cfc42a9c5",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
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
      "uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
      "parent_uuid": "20e0aba9-bd4b-4d52-b1ee-16c22a82a45e",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "cfe92fa1-ade3-4734-b406-ceac1cfc0397",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "0b13f289-d3bc-4152-90b7-3f232f2499e1",
              "parent_uuid": "cfe92fa1-ade3-4734-b406-ceac1cfc0397",
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
              "uuid": "b117a606-7e4b-4e47-a317-6330c2eaf7da",
              "parent_uuid": "cfe92fa1-ade3-4734-b406-ceac1cfc0397",
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
              "uuid": "45fe5460-1a86-40ce-8609-317418a9862e",
              "parent_uuid": "cfe92fa1-ade3-4734-b406-ceac1cfc0397",
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
              "uuid": "5be20947-3cab-4a4b-912b-88922b8b61e4",
              "parent_uuid": "cfe92fa1-ade3-4734-b406-ceac1cfc0397",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "8"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Notenpufferlager</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "d01ff2ca-96d0-4ebe-8465-47dfaf71df30",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "6bc213b8-a94b-4d5e-8eb8-28f64a962608",
              "parent_uuid": "d01ff2ca-96d0-4ebe-8465-47dfaf71df30",
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
              "uuid": "c958438b-4ed1-443b-9a9f-c33148b3d48b",
              "parent_uuid": "d01ff2ca-96d0-4ebe-8465-47dfaf71df30",
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
              "uuid": "8def7b8a-77cb-4d8b-a82c-98fc1a59317b",
              "parent_uuid": "d01ff2ca-96d0-4ebe-8465-47dfaf71df30",
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
              "uuid": "60b0a56d-f3dc-45b6-9590-e011329369b5",
              "parent_uuid": "d01ff2ca-96d0-4ebe-8465-47dfaf71df30",
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
                  "#EDEDED"
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
          "uuid": "76d74b30-00ed-4457-a013-06e6655d02f5",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0460c533-274e-45bd-a4ad-1fd0cd98a08f",
              "parent_uuid": "76d74b30-00ed-4457-a013-06e6655d02f5",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ff4c0217-ee29-43b8-ae7a-8d86a3594919",
              "parent_uuid": "76d74b30-00ed-4457-a013-06e6655d02f5",
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
              "uuid": "d35916b8-6933-4f21-a8c4-7f75b46351e8",
              "parent_uuid": "76d74b30-00ed-4457-a013-06e6655d02f5",
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
              "uuid": "dae12f4d-96e4-488b-acb0-f01e3d386bcc",
              "parent_uuid": "76d74b30-00ed-4457-a013-06e6655d02f5",
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
              "uuid": "be4655c2-1ad1-445c-8ea1-c340e970e16f",
              "parent_uuid": "76d74b30-00ed-4457-a013-06e6655d02f5",
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
              "uuid": "b6aa0577-e612-4180-b1a9-28573cf317e6",
              "parent_uuid": "76d74b30-00ed-4457-a013-06e6655d02f5",
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
          "uuid": "47097d2f-8911-4ede-874a-c8766901b469",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "75e52faa-1214-4f65-8687-6d0e689d35e8",
              "parent_uuid": "47097d2f-8911-4ede-874a-c8766901b469",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Prüfarbeiten / Funktionskontrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "fb5126f2-2fc4-4bf8-9598-b4739531454e",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "95f2a6cc-74b0-4699-9a57-70a590b7999e",
              "parent_uuid": "fb5126f2-2fc4-4bf8-9598-b4739531454e",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Not-Halt Taster (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cc7c32a1-cc45-4989-bf19-c5adefea838e",
              "parent_uuid": "fb5126f2-2fc4-4bf8-9598-b4739531454e",
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
              "uuid": "6ef5c5dc-d907-4716-a011-6727ddcd23c2",
              "parent_uuid": "fb5126f2-2fc4-4bf8-9598-b4739531454e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5f3760c-1c3f-4109-8205-00f24f416136",
                  "parent_uuid": "6ef5c5dc-d907-4716-a011-6727ddcd23c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff1e1bdd-c442-42c2-8264-54124c749bb8",
              "parent_uuid": "fb5126f2-2fc4-4bf8-9598-b4739531454e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50f0a0bd-0787-48ec-82da-a8f065e0ec4c",
                  "parent_uuid": "ff1e1bdd-c442-42c2-8264-54124c749bb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6d10ce3-3f6a-4e8c-b132-4cdf7a88cb06",
              "parent_uuid": "fb5126f2-2fc4-4bf8-9598-b4739531454e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b7cb2ed-5cde-4585-bd7c-5280e049b4c0",
                  "parent_uuid": "d6d10ce3-3f6a-4e8c-b132-4cdf7a88cb06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "494d3a1e-6e3e-4d52-a49c-ef5fb05d5519",
              "parent_uuid": "fb5126f2-2fc4-4bf8-9598-b4739531454e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a90eab6d-4687-4b51-b54c-d655bbdb0911",
                  "parent_uuid": "494d3a1e-6e3e-4d52-a49c-ef5fb05d5519",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5c0b7f49-c774-4b19-9651-c19708ba2692",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9cba250b-45ff-4793-87cb-67d37c1d490b",
              "parent_uuid": "5c0b7f49-c774-4b19-9651-c19708ba2692",
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
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "44927734-f432-450e-995f-9c019d8d6342",
              "parent_uuid": "5c0b7f49-c774-4b19-9651-c19708ba2692",
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
              "uuid": "888bbf9e-cf18-4589-9b3f-c93e305437ea",
              "parent_uuid": "5c0b7f49-c774-4b19-9651-c19708ba2692",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b67fbcf-9d2c-42e9-aae7-d16a810104e0",
                  "parent_uuid": "888bbf9e-cf18-4589-9b3f-c93e305437ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97726b21-f006-40e4-aaa2-911f60bbcde7",
              "parent_uuid": "5c0b7f49-c774-4b19-9651-c19708ba2692",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76299a36-0dbb-4d52-a29d-8bb2c69022de",
                  "parent_uuid": "97726b21-f006-40e4-aaa2-911f60bbcde7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8dc0599f-7f51-4cca-8d5f-675c5650e9cc",
              "parent_uuid": "5c0b7f49-c774-4b19-9651-c19708ba2692",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97e37d76-9866-4a9c-a20f-0a0f0f6f6e0b",
                  "parent_uuid": "8dc0599f-7f51-4cca-8d5f-675c5650e9cc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e45ad3ab-2422-49ab-8440-b5cfc0b92670",
              "parent_uuid": "5c0b7f49-c774-4b19-9651-c19708ba2692",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8057e44b-6ce5-4686-adf9-476a104b5d01",
                  "parent_uuid": "e45ad3ab-2422-49ab-8440-b5cfc0b92670",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "744421ae-8fa9-439c-8461-f7056291fdc9",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ffa5635b-9069-492f-b23c-a02402b5fc0e",
              "parent_uuid": "744421ae-8fa9-439c-8461-f7056291fdc9",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Funktionstest Brandschutztore bei Wareneingang / Warenausgang / Verarbeitung<br>- Brandschutztor 101 (2x) <br>- Brandschutztor 102 (2x)<br>- Prüfpunkte: Laufverhalten, Endlagen, Abdichtung, Geräusche, Steuerungsanzeige, Abnutzungsescheinungen, </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "296b99be-7dab-4a31-a63d-5de1bf4d7f26",
              "parent_uuid": "744421ae-8fa9-439c-8461-f7056291fdc9",
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
              "uuid": "5691a5d8-e617-4a57-93e5-882a5134fc4f",
              "parent_uuid": "744421ae-8fa9-439c-8461-f7056291fdc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2fedd964-f97d-42ee-81f0-c2c1347c4ba6",
                  "parent_uuid": "5691a5d8-e617-4a57-93e5-882a5134fc4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dfd869f9-d125-4d62-ad32-c5ee5a0176a8",
              "parent_uuid": "744421ae-8fa9-439c-8461-f7056291fdc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fae0a05-e810-4d8d-a889-91ae170c6fac",
                  "parent_uuid": "dfd869f9-d125-4d62-ad32-c5ee5a0176a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc394bdf-81c5-48f0-954c-698bfbde4e4e",
              "parent_uuid": "744421ae-8fa9-439c-8461-f7056291fdc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5d77f88-bad6-4404-a663-04661cffced0",
                  "parent_uuid": "bc394bdf-81c5-48f0-954c-698bfbde4e4e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3fcc6297-f04e-4d35-852a-f34bd218ab6d",
              "parent_uuid": "744421ae-8fa9-439c-8461-f7056291fdc9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "926b55c1-9d12-4ab9-aea7-3fbd33a7633e",
                  "parent_uuid": "3fcc6297-f04e-4d35-852a-f34bd218ab6d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a5d115c-05c2-4e60-b36f-409524c822af",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1cca738-d463-47a8-9215-8d93a8d86f19",
              "parent_uuid": "2a5d115c-05c2-4e60-b36f-409524c822af",
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
              "innerHtml": "\r\n                    <span>Zustandsprüfung <b>IT Infrastruktur</b> gemäss Wartungsdokument <br>\"Service- und Wartungsplan IT Infrastruktur\"</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "cae6c4a4-b1bd-45eb-9c27-f76efb483e95",
              "parent_uuid": "2a5d115c-05c2-4e60-b36f-409524c822af",
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
              "uuid": "e8d28042-457b-4e79-89e2-cbd18bc51467",
              "parent_uuid": "2a5d115c-05c2-4e60-b36f-409524c822af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8f1ae82-d9e2-4c1a-b57d-e435bdf74457",
                  "parent_uuid": "e8d28042-457b-4e79-89e2-cbd18bc51467",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a04b975-8a1a-4b3d-aa7f-53ddd6d34372",
              "parent_uuid": "2a5d115c-05c2-4e60-b36f-409524c822af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d347e34c-4b73-4e34-8a22-44ea35b20e3d",
                  "parent_uuid": "6a04b975-8a1a-4b3d-aa7f-53ddd6d34372",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "25ece374-7253-470b-b3c8-bdb6ffbee54b",
              "parent_uuid": "2a5d115c-05c2-4e60-b36f-409524c822af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71378d70-a1fe-4633-9080-5eb22fc65290",
                  "parent_uuid": "25ece374-7253-470b-b3c8-bdb6ffbee54b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a8c7446-d70f-4958-9662-277f396bb46c",
              "parent_uuid": "2a5d115c-05c2-4e60-b36f-409524c822af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eba4df16-a5f4-4dc0-8388-3fdeb6faac78",
                  "parent_uuid": "0a8c7446-d70f-4958-9662-277f396bb46c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "64f97da0-d078-4cc0-b774-9df7d8214b22",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "134a10d6-9247-455d-8058-e974fe3c962e",
              "parent_uuid": "64f97da0-d078-4cc0-b774-9df7d8214b22",
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
                  "88"
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
              "innerHtml": "\r\n                    <span><b>Pneumatikzentrale</b> für alle unterschiedlichen Anlagebereiche in Steigzone auf Funktion, genügend Druck, Dichtheit prüfen<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "79dc9de7-7421-46dd-a424-410d118800e7",
              "parent_uuid": "64f97da0-d078-4cc0-b774-9df7d8214b22",
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
              "uuid": "08c9897c-9993-4813-8dea-23771bee7bbd",
              "parent_uuid": "64f97da0-d078-4cc0-b774-9df7d8214b22",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1996ffc-23d5-4e05-a7c1-488701b19183",
                  "parent_uuid": "08c9897c-9993-4813-8dea-23771bee7bbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a146508d-5ea8-4ee6-a359-74b737841b11",
              "parent_uuid": "64f97da0-d078-4cc0-b774-9df7d8214b22",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "887e41be-47e8-4faf-8905-7d159d2b2a96",
                  "parent_uuid": "a146508d-5ea8-4ee6-a359-74b737841b11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9b30591-c7da-4fa1-a649-7f3019843068",
              "parent_uuid": "64f97da0-d078-4cc0-b774-9df7d8214b22",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7bc4516-5c48-42cd-9a2c-d0fa4b38abb7",
                  "parent_uuid": "b9b30591-c7da-4fa1-a649-7f3019843068",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65a0762b-bf56-4605-a9de-aaf4d796991f",
              "parent_uuid": "64f97da0-d078-4cc0-b774-9df7d8214b22",
              "tagName": "td",
              "properties": [
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
                  "top"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34e163cb-a9dd-43b2-be27-ed818f849588",
                  "parent_uuid": "65a0762b-bf56-4605-a9de-aaf4d796991f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ab938194-5cf8-4425-b230-fed819202966",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d64562e0-dbab-4c43-bbb3-ba15d2c2cf33",
              "parent_uuid": "ab938194-5cf8-4425-b230-fed819202966",
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
                  "74"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Rollenantriebe in der <b>Fördertechnik</b> prüfen<br>- Antriebsriemen (Risse, Abnutzung)<br>- Motorrollen (Laufruhe, Leichtgängigkeit, Lagerzustand)<br>- Befestigung (Klipp, Verschraubung)<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1cda81d4-d5f6-4025-8920-a792ad3ea0d9",
              "parent_uuid": "ab938194-5cf8-4425-b230-fed819202966",
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
              "uuid": "8afd84e8-d0fb-49e5-a321-ade96dab7d2f",
              "parent_uuid": "ab938194-5cf8-4425-b230-fed819202966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efa24fb5-2a0d-47e3-bcc9-1cb2ec2f0649",
                  "parent_uuid": "8afd84e8-d0fb-49e5-a321-ade96dab7d2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebf2155a-156a-4abf-8606-82de6a1f4586",
              "parent_uuid": "ab938194-5cf8-4425-b230-fed819202966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "88ed7139-0a4d-4ea6-8215-3738297c7528",
                  "parent_uuid": "ebf2155a-156a-4abf-8606-82de6a1f4586",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9709df41-0d29-47da-8eb4-147efe7085a4",
              "parent_uuid": "ab938194-5cf8-4425-b230-fed819202966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd9f69de-13e3-4fa2-b6be-067fcb10066e",
                  "parent_uuid": "9709df41-0d29-47da-8eb4-147efe7085a4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "754ff275-97db-47c0-adc4-cbb59aa16d52",
              "parent_uuid": "ab938194-5cf8-4425-b230-fed819202966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b726c509-5de3-4e50-8fce-a0b48400110d",
                  "parent_uuid": "754ff275-97db-47c0-adc4-cbb59aa16d52",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ee7a4d2-3684-449e-8547-20790a9f0423",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "509b988e-482b-4854-9b31-aeeb6ec0fbdd",
              "parent_uuid": "1ee7a4d2-3684-449e-8547-20790a9f0423",
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
                  "53"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Hubstopper</b> in der Fördetechnik prüfen<br>- Dichtheit der Ventile<br>- Bewegungsgeschwindigkeit, Endanschlag des Balkens (Pneumatikzylinder)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ef6dabc6-3a14-4d47-b158-04b8849c86de",
              "parent_uuid": "1ee7a4d2-3684-449e-8547-20790a9f0423",
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
              "uuid": "c29c8e4b-3db2-4d34-9d04-1a1c62f8b86b",
              "parent_uuid": "1ee7a4d2-3684-449e-8547-20790a9f0423",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fb2ba7be-be10-4f01-ba51-5b911ac8d2bc",
                  "parent_uuid": "c29c8e4b-3db2-4d34-9d04-1a1c62f8b86b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb3fcad5-f99f-468d-9ecc-afd8bbd6b525",
              "parent_uuid": "1ee7a4d2-3684-449e-8547-20790a9f0423",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc3a69f5-471c-4a3a-ade3-04da2308a713",
                  "parent_uuid": "bb3fcad5-f99f-468d-9ecc-afd8bbd6b525",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb31bbb7-abb2-4201-bc10-c5bd8c2fae18",
              "parent_uuid": "1ee7a4d2-3684-449e-8547-20790a9f0423",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed2acce2-9779-4a0c-86ad-9c043ec6ee78",
                  "parent_uuid": "eb31bbb7-abb2-4201-bc10-c5bd8c2fae18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aaa832ad-9158-49fc-b0b2-930db950afdd",
              "parent_uuid": "1ee7a4d2-3684-449e-8547-20790a9f0423",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c77f87a-522c-4cb3-89a6-b0d6f88596e5",
                  "parent_uuid": "aaa832ad-9158-49fc-b0b2-930db950afdd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fa7ab49e-7db1-4878-826f-a17211a056c6",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e591d4f8-0203-4471-8012-3fa8636182be",
              "parent_uuid": "fa7ab49e-7db1-4878-826f-a17211a056c6",
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
                  "139"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Gurtumsetzer</b> prüfen<br>- Mechanische Spannung der Antriebsriemen beim Schwert (Flachriemen)<br>- Dichtheit der Ventile<br>- Mechanische Bewegung der einzelnen Schwerter (Pneumatikzylinder)<br>- Antriebsketten der Schwerter<br>- Antriebsriemen<br>- Asynchronmotor inkl. Mechanik (Kann manuell per Schütz angesteuert werden)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3a909d6e-bb0f-4bb0-95d6-cfc286527986",
              "parent_uuid": "fa7ab49e-7db1-4878-826f-a17211a056c6",
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
              "uuid": "03514709-c8f0-4415-ab88-64058e3eb8d2",
              "parent_uuid": "fa7ab49e-7db1-4878-826f-a17211a056c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "89160b2c-ded8-472e-8def-45a5bdf7f03d",
                  "parent_uuid": "03514709-c8f0-4415-ab88-64058e3eb8d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5851550-e866-4d8f-9c95-085ceb06d482",
              "parent_uuid": "fa7ab49e-7db1-4878-826f-a17211a056c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a970a3d-8679-4082-b39a-ef74917c66a6",
                  "parent_uuid": "a5851550-e866-4d8f-9c95-085ceb06d482",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee43afdf-8496-4a7d-87f2-7b5514a3b3ea",
              "parent_uuid": "fa7ab49e-7db1-4878-826f-a17211a056c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27e6659b-f2b8-4cc9-8c40-477b8ea600c5",
                  "parent_uuid": "ee43afdf-8496-4a7d-87f2-7b5514a3b3ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de59e16c-1016-4429-9001-9c5aa70f3ee7",
              "parent_uuid": "fa7ab49e-7db1-4878-826f-a17211a056c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cb44938-352f-4bd1-a1b1-b302ac3a52dd",
                  "parent_uuid": "de59e16c-1016-4429-9001-9c5aa70f3ee7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "075a970d-6130-481a-88f0-55fbc30623e4",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54f4fd88-4dab-411a-9656-b33bcb738096",
              "parent_uuid": "075a970d-6130-481a-88f0-55fbc30623e4",
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
                  "110"
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
              "innerHtml": "\r\n                    <span>Zustand, Funktion, Ausrichtung aller <b>Sensoren</b> auf Reflektoren, Sicherheits-Lichtgitter kontrollieren<br>- Fördertechnik<br>- OSR<br>- Behälterlifte<br>- OSR-Lifte</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ac67418d-34e1-40d5-ab34-6d3a2a25cb82",
              "parent_uuid": "075a970d-6130-481a-88f0-55fbc30623e4",
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
              "uuid": "02d035f4-82c4-4759-a73a-890fed3ba3dd",
              "parent_uuid": "075a970d-6130-481a-88f0-55fbc30623e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4749505c-57c3-43fe-9de7-0606ce3fed74",
                  "parent_uuid": "02d035f4-82c4-4759-a73a-890fed3ba3dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dfe8a677-9b0f-458f-bd39-1b87a94c6e91",
              "parent_uuid": "075a970d-6130-481a-88f0-55fbc30623e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "682881d3-693c-4cdb-aec4-ad0fc2e46eda",
                  "parent_uuid": "dfe8a677-9b0f-458f-bd39-1b87a94c6e91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2129d4b-844e-45ce-9b81-95ccb5e00821",
              "parent_uuid": "075a970d-6130-481a-88f0-55fbc30623e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1912696-d690-4376-8ccc-3a5f3b347106",
                  "parent_uuid": "e2129d4b-844e-45ce-9b81-95ccb5e00821",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8ed9b66-fe04-497a-ade4-8de5d93bcaa3",
              "parent_uuid": "075a970d-6130-481a-88f0-55fbc30623e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc8fe507-59f6-4190-9659-5e003b925724",
                  "parent_uuid": "e8ed9b66-fe04-497a-ade4-8de5d93bcaa3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e36e7d46-5975-4b8b-a7f5-df1a3873c221",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a539ff20-7209-47d9-86af-51726080abad",
              "parent_uuid": "e36e7d46-5975-4b8b-a7f5-df1a3873c221",
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion des <b>EBG/Shuttleliftes</b> für Shuttletausch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "265bef2f-84db-4d39-8712-f133ba630db7",
              "parent_uuid": "e36e7d46-5975-4b8b-a7f5-df1a3873c221",
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
              "uuid": "ca2fd434-f544-4efa-a59d-4105ed29c930",
              "parent_uuid": "e36e7d46-5975-4b8b-a7f5-df1a3873c221",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2eaf0759-4b4b-42c0-af53-ac30b06413f9",
                  "parent_uuid": "ca2fd434-f544-4efa-a59d-4105ed29c930",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7041c6c-80e1-4b02-8e5a-9c012dc62c86",
              "parent_uuid": "e36e7d46-5975-4b8b-a7f5-df1a3873c221",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbcf30a7-07a3-4391-b7d3-d8bc6685da2f",
                  "parent_uuid": "f7041c6c-80e1-4b02-8e5a-9c012dc62c86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ea86be2-5ce3-44a4-a00c-bbbed848574d",
              "parent_uuid": "e36e7d46-5975-4b8b-a7f5-df1a3873c221",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6a6b75d-2d3c-45d0-989d-57bacc418812",
                  "parent_uuid": "7ea86be2-5ce3-44a4-a00c-bbbed848574d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "07429d85-f677-4af7-a8b7-6778014eb954",
              "parent_uuid": "e36e7d46-5975-4b8b-a7f5-df1a3873c221",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b83ac7ce-53bd-4ed1-bdf0-02ac50d59ec2",
                  "parent_uuid": "07429d85-f677-4af7-a8b7-6778014eb954",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0190b21b-45e3-41d1-ab5f-10666f71257f",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ddfb3a9b-2c12-41a4-92c6-9cc76a70f205",
              "parent_uuid": "0190b21b-45e3-41d1-ab5f-10666f71257f",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>OSR-Lifte</b><br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b994a63c-bbbe-40cd-9762-213818c7aa41",
              "parent_uuid": "0190b21b-45e3-41d1-ab5f-10666f71257f",
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
              "uuid": "956e8610-d276-4f7d-b587-09ae1fbceebf",
              "parent_uuid": "0190b21b-45e3-41d1-ab5f-10666f71257f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4833e4e3-0916-421f-a1db-39c1adf02047",
                  "parent_uuid": "956e8610-d276-4f7d-b587-09ae1fbceebf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64c9ad27-3feb-4aef-b3be-5c7d29a84749",
              "parent_uuid": "0190b21b-45e3-41d1-ab5f-10666f71257f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7c3ab874-3d29-41a0-b5ff-386f642e1b6b",
                  "parent_uuid": "64c9ad27-3feb-4aef-b3be-5c7d29a84749",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a6c0e78-d8ad-4bb7-a205-03efdc7575e3",
              "parent_uuid": "0190b21b-45e3-41d1-ab5f-10666f71257f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4efa8586-1c05-49db-b405-a1fc7ba75b91",
                  "parent_uuid": "7a6c0e78-d8ad-4bb7-a205-03efdc7575e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "733a37b7-eeeb-4ef4-8dac-7f4f2d7254d1",
              "parent_uuid": "0190b21b-45e3-41d1-ab5f-10666f71257f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12688308-a282-470f-8728-3efbf3b324a2",
                  "parent_uuid": "733a37b7-eeeb-4ef4-8dac-7f4f2d7254d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5c39e0b0-7a8a-420d-aad3-0531a47dc309",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2eeaf21a-b32d-46a2-8a43-ad04c203f3cb",
              "parent_uuid": "5c39e0b0-7a8a-420d-aad3-0531a47dc309",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>Behälterlift/Liftplattform</b><br>- Bewegung Liftplattform (Laufruhe, Vibrationen, Geräusche)<br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "35ddc67f-eb88-4251-9d66-ba33fe816f2d",
              "parent_uuid": "5c39e0b0-7a8a-420d-aad3-0531a47dc309",
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
              "uuid": "935464e6-d5b2-42a5-a280-2e135bf13321",
              "parent_uuid": "5c39e0b0-7a8a-420d-aad3-0531a47dc309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b43ca20-f448-46db-9732-eb3bb692563a",
                  "parent_uuid": "935464e6-d5b2-42a5-a280-2e135bf13321",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65a0bbf6-6237-46ef-8317-ed9de7312f7e",
              "parent_uuid": "5c39e0b0-7a8a-420d-aad3-0531a47dc309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3774a48a-83d9-4986-884e-1dbbaec7a379",
                  "parent_uuid": "65a0bbf6-6237-46ef-8317-ed9de7312f7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bdafc02-3cdc-48be-8ae8-b3369d987d41",
              "parent_uuid": "5c39e0b0-7a8a-420d-aad3-0531a47dc309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0280524b-9eb0-40f0-a59a-d26954acce58",
                  "parent_uuid": "9bdafc02-3cdc-48be-8ae8-b3369d987d41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b419de1-3969-4bbc-a658-1e5c474405c0",
              "parent_uuid": "5c39e0b0-7a8a-420d-aad3-0531a47dc309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6372f2bb-ebe8-4255-8f1e-0de386ea93dc",
                  "parent_uuid": "4b419de1-3969-4bbc-a658-1e5c474405c0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f9a1551c-37ad-4721-9979-a0bdd2474ce7",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f5c5583-e470-49f7-a401-11da90d1732e",
              "parent_uuid": "f9a1551c-37ad-4721-9979-a0bdd2474ce7",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Distanzen<br>- Laufräder für Längs- und Querfahrwerk, Seitenführungsrad (Lagerung, Laufruhe)<br>- Teleskoparme, Antriebkette<br>- Drehgeber, Induktivgeber<br>- Gassenfahrt, Quergassenfahrt, Behälterentnahme, Behältereinlagerung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "631749e5-b2e5-4ee3-b7a7-671f931d46b0",
              "parent_uuid": "f9a1551c-37ad-4721-9979-a0bdd2474ce7",
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
              "uuid": "2bb67931-0d90-460b-a1c0-4dd17d5528fb",
              "parent_uuid": "f9a1551c-37ad-4721-9979-a0bdd2474ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cde2f237-95e5-4666-9582-880f6145ea94",
                  "parent_uuid": "2bb67931-0d90-460b-a1c0-4dd17d5528fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80fe6171-f1ab-4d5e-91a9-07accbf4074c",
              "parent_uuid": "f9a1551c-37ad-4721-9979-a0bdd2474ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac9c3da1-ca90-4317-bfd4-aed5a8beabe8",
                  "parent_uuid": "80fe6171-f1ab-4d5e-91a9-07accbf4074c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dadde24f-02a9-44cd-ab7e-bf84d787df3e",
              "parent_uuid": "f9a1551c-37ad-4721-9979-a0bdd2474ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b91d0a55-e3e1-44bf-b0bd-402354b01bd3",
                  "parent_uuid": "dadde24f-02a9-44cd-ab7e-bf84d787df3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b889859-ef7b-46c6-854d-153848c7c865",
              "parent_uuid": "f9a1551c-37ad-4721-9979-a0bdd2474ce7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ebb99b1-4d9d-4977-8593-1caf3ad9111d",
                  "parent_uuid": "5b889859-ef7b-46c6-854d-153848c7c865",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3289adca-a813-49c9-8dce-5634cd0fb1b1",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac1c31ae-0549-4823-9578-6b2fa0b631d9",
              "parent_uuid": "3289adca-a813-49c9-8dce-5634cd0fb1b1",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand und Funktion der <b>Schutzvorrichtung</b> zu den Gassenbereichen<br>- Knapp-Lock<br>- Not-Halt Taster<br>- Schutzzaun, Schutzabdeckung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4c82a678-f7e8-4753-9462-7cc150baf150",
              "parent_uuid": "3289adca-a813-49c9-8dce-5634cd0fb1b1",
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
              "uuid": "d2b76844-28d0-4b3f-b87a-dd4c188635d8",
              "parent_uuid": "3289adca-a813-49c9-8dce-5634cd0fb1b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fc9b2e2-7a9c-4034-9baf-bba0c470e0f2",
                  "parent_uuid": "d2b76844-28d0-4b3f-b87a-dd4c188635d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f01cb7f4-6e6d-4ad4-8445-ddfa8d6f6a89",
              "parent_uuid": "3289adca-a813-49c9-8dce-5634cd0fb1b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "847537bb-7968-4936-8469-4044d93fe800",
                  "parent_uuid": "f01cb7f4-6e6d-4ad4-8445-ddfa8d6f6a89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b557d1c9-f924-45d4-9553-43057c42cfde",
              "parent_uuid": "3289adca-a813-49c9-8dce-5634cd0fb1b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65032e94-5c9e-4376-964c-9c35ebc44464",
                  "parent_uuid": "b557d1c9-f924-45d4-9553-43057c42cfde",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b33cc5b7-51e7-46d6-bc0c-074936395ffd",
              "parent_uuid": "3289adca-a813-49c9-8dce-5634cd0fb1b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "635b0816-7518-4d24-b060-1e9bfa6fdacd",
                  "parent_uuid": "b33cc5b7-51e7-46d6-bc0c-074936395ffd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dbc731a6-c837-48ee-885c-a215898e4d40",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "68857961-92bc-4d59-9c8e-da3e3759b362",
              "parent_uuid": "dbc731a6-c837-48ee-885c-a215898e4d40",
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "d5c74cba-633f-4b26-8950-548f08dc01c1",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c4cb5585-efdb-40af-842a-6a84259a6d58",
              "parent_uuid": "d5c74cba-633f-4b26-8950-548f08dc01c1",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "20fa5e89-964a-4396-aa68-83a4bb59a00a",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b11eec0-48c7-42fd-a8da-57a26cae7d10",
              "parent_uuid": "20fa5e89-964a-4396-aa68-83a4bb59a00a",
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
                  "uuid": "dc9e641a-e21e-4fda-a3a7-ebf2bdf33cea",
                  "parent_uuid": "3b11eec0-48c7-42fd-a8da-57a26cae7d10",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "eb332d09-068f-4002-8fc8-d89804e2bab2",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1abe94c5-dd8a-4b0a-88de-9da626e1669b",
              "parent_uuid": "eb332d09-068f-4002-8fc8-d89804e2bab2",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000"
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "65dbe847-b764-4a84-8cbd-0713c41e88cc",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ea25cf70-efbe-4db9-abf6-0a4b069c5244",
              "parent_uuid": "65dbe847-b764-4a84-8cbd-0713c41e88cc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten TK01.01 / .02 / .03</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "82384323-4cbd-4173-83f5-a94601bac798",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "29a81eff-20bf-43fe-8e9b-bdfae983935d",
              "parent_uuid": "82384323-4cbd-4173-83f5-a94601bac798",
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
                  "109"
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
              "innerHtml": "\r\n                    <span>Reinigung der Fördertechnik<br>- Barcodescanner (mittels trockenem, fusselfreiem Tuch)<br>- Optische Sensoren / Reflektoren (mittels trockenem, fusselfreiem Tuch)<br>- Antriebsriemen<br>- Antriebsrollen<br>- Gurtumsetzer</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "def423de-215f-4c77-bbb7-08e61d582435",
              "parent_uuid": "82384323-4cbd-4173-83f5-a94601bac798",
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
              "uuid": "752464e7-e7ae-4275-8c84-c2976cb01316",
              "parent_uuid": "82384323-4cbd-4173-83f5-a94601bac798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf3a8a5e-0250-4b2f-b135-3cfeea1ed4a7",
                  "parent_uuid": "752464e7-e7ae-4275-8c84-c2976cb01316",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ce3cdac-4db2-4e94-bbb1-c577c568e90f",
              "parent_uuid": "82384323-4cbd-4173-83f5-a94601bac798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa968a43-510a-44df-a667-21c61601af90",
                  "parent_uuid": "5ce3cdac-4db2-4e94-bbb1-c577c568e90f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "406fed3e-5ac5-44b9-81f1-8ae530c95126",
              "parent_uuid": "82384323-4cbd-4173-83f5-a94601bac798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e612c590-fb0e-4b6d-bc4e-364b3e33ae45",
                  "parent_uuid": "406fed3e-5ac5-44b9-81f1-8ae530c95126",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fbe95d14-8af1-4344-b3ac-6536b7d741b9",
              "parent_uuid": "82384323-4cbd-4173-83f5-a94601bac798",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e6038f5-7361-401d-9e24-270c768d5997",
                  "parent_uuid": "fbe95d14-8af1-4344-b3ac-6536b7d741b9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4fcae0eb-7d76-4aab-85d9-3ff96a590fc1",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33f8ed4b-c2e6-4bbb-a0e5-0386c5fa0b38",
              "parent_uuid": "4fcae0eb-7d76-4aab-85d9-3ff96a590fc1",
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
                  "115"
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
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschränke mittels Staubsauger, Filtermattenaustausch<br>- VERW: F01.GB01<br>- WA: F01.GB02<br>- WE: F01.GB03<br>- Steigzone: F01.GB04 / F01.GB05 / F01.1 / F01.2</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5c232d41-ea03-4c01-b20c-d817e555feec",
              "parent_uuid": "4fcae0eb-7d76-4aab-85d9-3ff96a590fc1",
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
              "uuid": "018786fa-fd42-4cc2-908f-a97d6c8bce26",
              "parent_uuid": "4fcae0eb-7d76-4aab-85d9-3ff96a590fc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2858ca02-804b-4ac2-ad46-40f5e80fd116",
                  "parent_uuid": "018786fa-fd42-4cc2-908f-a97d6c8bce26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0434778d-8ec0-4099-b7c1-99204e6b5900",
              "parent_uuid": "4fcae0eb-7d76-4aab-85d9-3ff96a590fc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "00c9b0f2-90ca-4b06-be1c-f801a8981f46",
                  "parent_uuid": "0434778d-8ec0-4099-b7c1-99204e6b5900",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "280f7cbf-c40a-404b-b8d7-babb606d9e45",
              "parent_uuid": "4fcae0eb-7d76-4aab-85d9-3ff96a590fc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5fa0f3eb-9e7d-4fa6-94bf-e33ce72462d4",
                  "parent_uuid": "280f7cbf-c40a-404b-b8d7-babb606d9e45",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e53b16b7-6f71-4474-b146-f6afe64c49c7",
              "parent_uuid": "4fcae0eb-7d76-4aab-85d9-3ff96a590fc1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "228f1251-51af-4c72-a94c-6e8164b78342",
                  "parent_uuid": "e53b16b7-6f71-4474-b146-f6afe64c49c7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a914635d-6195-4a9f-93ab-16385e7ea26d",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "885f270d-d6ac-4645-bead-df3152894311",
              "parent_uuid": "a914635d-6195-4a9f-93ab-16385e7ea26d",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Brandschutztore (Stöbich)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b60b8d91-5eb6-483d-84c1-9ea4d13e91ab",
              "parent_uuid": "a914635d-6195-4a9f-93ab-16385e7ea26d",
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
              "uuid": "6fe98a84-733d-4133-8891-f6a201cee81d",
              "parent_uuid": "a914635d-6195-4a9f-93ab-16385e7ea26d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0492b7e0-c188-4eef-a0b9-38d843ea1368",
                  "parent_uuid": "6fe98a84-733d-4133-8891-f6a201cee81d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7431db6-7e49-4caf-932b-61ed624b5712",
              "parent_uuid": "a914635d-6195-4a9f-93ab-16385e7ea26d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "26224e35-3490-4828-acd9-3e3339dd5bcd",
                  "parent_uuid": "e7431db6-7e49-4caf-932b-61ed624b5712",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0271a75-7ee3-49a4-9d79-0254fdd5f6ef",
              "parent_uuid": "a914635d-6195-4a9f-93ab-16385e7ea26d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4729afa3-7807-45bd-b24a-f100c8145977",
                  "parent_uuid": "c0271a75-7ee3-49a4-9d79-0254fdd5f6ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce0d3f91-493c-46d6-8fcb-8bf75c4c9e2b",
              "parent_uuid": "a914635d-6195-4a9f-93ab-16385e7ea26d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "79ff3421-7afc-4b64-b2db-1a93f973d796",
                  "parent_uuid": "ce0d3f91-493c-46d6-8fcb-8bf75c4c9e2b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "39d6e981-c39b-493f-b8a5-6afbf808b966",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "937784db-8c44-4a70-943d-b3b8d96be404",
              "parent_uuid": "39d6e981-c39b-493f-b8a5-6afbf808b966",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Tresorschieber (Hügli)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e11851d5-4acb-4cd8-b56e-291f0c0123e1",
              "parent_uuid": "39d6e981-c39b-493f-b8a5-6afbf808b966",
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
              "uuid": "c5873124-e9fb-4f1c-bfdf-aa4d47994dba",
              "parent_uuid": "39d6e981-c39b-493f-b8a5-6afbf808b966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "353ed906-75e5-4c0f-bd62-8532d0bafdc2",
                  "parent_uuid": "c5873124-e9fb-4f1c-bfdf-aa4d47994dba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9aeba60c-8300-4045-857a-4aeeee64a87c",
              "parent_uuid": "39d6e981-c39b-493f-b8a5-6afbf808b966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09ebe7d3-907a-408b-be3e-230b9934e3ab",
                  "parent_uuid": "9aeba60c-8300-4045-857a-4aeeee64a87c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ddb6985-abdb-44e1-84b1-f368cdd9f309",
              "parent_uuid": "39d6e981-c39b-493f-b8a5-6afbf808b966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fcdfd649-0f41-4b44-8f5e-caa1699d96b6",
                  "parent_uuid": "0ddb6985-abdb-44e1-84b1-f368cdd9f309",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a1aecea1-f092-40e2-8fd6-c54903064abd",
              "parent_uuid": "39d6e981-c39b-493f-b8a5-6afbf808b966",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8e31dd6-7a64-4dae-9fa6-1b38d9907865",
                  "parent_uuid": "a1aecea1-f092-40e2-8fd6-c54903064abd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "944e30a5-44cb-42a5-bc22-01605a1b75e4",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c4ac136f-62b5-415c-8516-84a58add56ab",
              "parent_uuid": "944e30a5-44cb-42a5-bc22-01605a1b75e4",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten OSR U30</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "cd86cfd8-0c05-465d-90d8-b7c39b277e5c",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b41d651d-f3bc-48e3-b9bb-891513410690",
              "parent_uuid": "cd86cfd8-0c05-465d-90d8-b7c39b277e5c",
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
              "innerHtml": "\r\n                    <span>Reinigung <b>dezentraler Steuerschränke</b> mittels Staubsauger, Filtermattenaustausch<br>- SH01.04+BHLF1<br>- SH01.01+F1<br>- SH01.01+SUV01<br>- SH01.02+SUV01<br>- SH01.03+SUV01<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ad7f1a01-0817-447e-b02c-9fe2c418c180",
              "parent_uuid": "cd86cfd8-0c05-465d-90d8-b7c39b277e5c",
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
              "uuid": "912a075b-81cf-4ad9-bf06-e6f23ac99800",
              "parent_uuid": "cd86cfd8-0c05-465d-90d8-b7c39b277e5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffedb13b-28c3-4062-8da5-9a8d16a0a104",
                  "parent_uuid": "912a075b-81cf-4ad9-bf06-e6f23ac99800",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36a8a677-d71d-4c03-956a-cea1579edd9c",
              "parent_uuid": "cd86cfd8-0c05-465d-90d8-b7c39b277e5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97608769-ec56-499c-812a-d024f7d2398a",
                  "parent_uuid": "36a8a677-d71d-4c03-956a-cea1579edd9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ebfc9bd-c362-4cca-96f3-d08ede2f20b5",
              "parent_uuid": "cd86cfd8-0c05-465d-90d8-b7c39b277e5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b71e44d8-5e9e-4af1-9b65-0c117311fc88",
                  "parent_uuid": "5ebfc9bd-c362-4cca-96f3-d08ede2f20b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c23ba05-6dd6-45bc-a5ba-d2b17e5f0f38",
              "parent_uuid": "cd86cfd8-0c05-465d-90d8-b7c39b277e5c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3c79b1e-1604-4252-874d-103c2014323a",
                  "parent_uuid": "9c23ba05-6dd6-45bc-a5ba-d2b17e5f0f38",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "6b4072ab-b637-4990-b0db-245b257d65e6",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ed44f39-e67a-40ec-b934-f2fbfd9c9ec4",
              "parent_uuid": "6b4072ab-b637-4990-b0db-245b257d65e6",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten in den <b>Gassenbereichen</b><br>- Knapp-Lock<br>- Quergangüberwachungssensoren<br>- Reflektorfolien<br>- Fahrprofil<br>- Stromschienen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c0a26a83-6347-4680-896d-e96f991ce867",
              "parent_uuid": "6b4072ab-b637-4990-b0db-245b257d65e6",
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
              "uuid": "5c203eef-4cb9-4817-b363-5ef88683200c",
              "parent_uuid": "6b4072ab-b637-4990-b0db-245b257d65e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c663ddf5-dd1a-4b96-b1a0-6584ce809472",
                  "parent_uuid": "5c203eef-4cb9-4817-b363-5ef88683200c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4cbe0c7d-a213-457e-8538-a14df3d2be8e",
              "parent_uuid": "6b4072ab-b637-4990-b0db-245b257d65e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54ac31d9-7b2d-4035-9809-02ff97b94282",
                  "parent_uuid": "4cbe0c7d-a213-457e-8538-a14df3d2be8e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2211b39f-d85f-45ba-b0c2-d638c108314f",
              "parent_uuid": "6b4072ab-b637-4990-b0db-245b257d65e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83a3774e-e227-4e80-be1a-786bba8701c6",
                  "parent_uuid": "2211b39f-d85f-45ba-b0c2-d638c108314f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c7a6e7f7-7d06-4e4b-bac8-02f9b1d6ccf7",
              "parent_uuid": "6b4072ab-b637-4990-b0db-245b257d65e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "31a061f8-3a94-45fa-9084-3383ab2d1ccd",
                  "parent_uuid": "c7a6e7f7-7d06-4e4b-bac8-02f9b1d6ccf7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8273d7e1-d8a9-43b4-897f-dd60c0a795ec",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efa6ba64-631a-48e7-ac5e-10a53b291b0c",
              "parent_uuid": "8273d7e1-d8a9-43b4-897f-dd60c0a795ec",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten im <b>OSR Shuttle-Lift Zwischenpuffer</b><br>- Optische Sensoren, Reflektoren<br>- Gabellichtschranke<br>- Sicherheitslichtgitter<br>- Keilrippenriemen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1edbdb9c-e177-4013-a397-728c07ccf3e9",
              "parent_uuid": "8273d7e1-d8a9-43b4-897f-dd60c0a795ec",
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
              "uuid": "cf609ba7-6866-42c7-ac8d-59ad6a7b606f",
              "parent_uuid": "8273d7e1-d8a9-43b4-897f-dd60c0a795ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3621e228-248a-4502-9eb4-599675f028bb",
                  "parent_uuid": "cf609ba7-6866-42c7-ac8d-59ad6a7b606f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4bf3f749-2543-43cb-bde9-952fef479c46",
              "parent_uuid": "8273d7e1-d8a9-43b4-897f-dd60c0a795ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d31c3432-01ce-43dc-b8f6-46f1b09c8fdb",
                  "parent_uuid": "4bf3f749-2543-43cb-bde9-952fef479c46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d34e5ba-a3e9-4bd9-8403-deb95cc5070a",
              "parent_uuid": "8273d7e1-d8a9-43b4-897f-dd60c0a795ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a085f741-2727-4de6-ba9b-20311fad01c7",
                  "parent_uuid": "8d34e5ba-a3e9-4bd9-8403-deb95cc5070a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65ba4a84-353e-4ad6-aebf-2fc9903c9be3",
              "parent_uuid": "8273d7e1-d8a9-43b4-897f-dd60c0a795ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9cc8b5e-62b4-459b-8a89-910d97f2ab1e",
                  "parent_uuid": "65ba4a84-353e-4ad6-aebf-2fc9903c9be3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "00ecdaa3-6835-4415-a8fd-3e016117b73f",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47235746-85b2-4006-b457-0a0cc7de163f",
              "parent_uuid": "00ecdaa3-6835-4415-a8fd-3e016117b73f",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Reflektoren<br>- Gleitleiste, Schleifer, Laufräder<br>- LED-Steifen, Shuttlegehäuse<br>- Teleskoparme, Antriebkette</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ebf93887-b016-4fb6-be11-039ddfb41c51",
              "parent_uuid": "00ecdaa3-6835-4415-a8fd-3e016117b73f",
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
              "uuid": "f953404f-c329-4765-bae9-312bffeec70b",
              "parent_uuid": "00ecdaa3-6835-4415-a8fd-3e016117b73f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1873c7e6-a8c8-4c3a-9834-124b657a98ff",
                  "parent_uuid": "f953404f-c329-4765-bae9-312bffeec70b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04412761-963f-4bdc-923c-d1cf5511e999",
              "parent_uuid": "00ecdaa3-6835-4415-a8fd-3e016117b73f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4d8983ce-a3c3-48e4-9da0-84475ad6c7d3",
                  "parent_uuid": "04412761-963f-4bdc-923c-d1cf5511e999",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d61710a-5732-41a8-9f84-e906d3eb15b5",
              "parent_uuid": "00ecdaa3-6835-4415-a8fd-3e016117b73f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb64a501-662a-4270-9536-0c3cf695dd60",
                  "parent_uuid": "9d61710a-5732-41a8-9f84-e906d3eb15b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b7a2f23f-1289-4141-ae83-df4c1367e166",
              "parent_uuid": "00ecdaa3-6835-4415-a8fd-3e016117b73f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "396c7279-0f31-4a4f-82af-e3adff69bb55",
                  "parent_uuid": "b7a2f23f-1289-4141-ae83-df4c1367e166",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "c1a73cff-f2eb-44dc-a152-dcacb447c894",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e456caa9-3229-4dc6-88fb-8b4c931edbef",
              "parent_uuid": "c1a73cff-f2eb-44dc-a152-dcacb447c894",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "c3e7133a-bc8b-4622-8d66-136af0c594ef",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5f88362-526f-4f2c-b4d4-1c1861c628ce",
              "parent_uuid": "c3e7133a-bc8b-4622-8d66-136af0c594ef",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "11"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "b45b2555-a527-48da-82d1-db99a394f78a",
          "parent_uuid": "4d04e386-b304-4e88-a902-fd85292d382c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fee009b3-00f8-40ca-9986-07197e1ae0b7",
              "parent_uuid": "b45b2555-a527-48da-82d1-db99a394f78a",
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
                  "uuid": "a90e2844-5ae5-41dd-8d75-ffa76f2ea64e",
                  "parent_uuid": "fee009b3-00f8-40ca-9986-07197e1ae0b7",
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
          "sort": 34,
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
    ,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS cl_uid 
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
		,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '698EA23D-485A-4CEE-9B06-2E130A3A5626'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


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
  "uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "0919875d-918e-48f2-95ac-aece461ecee3",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "274e57e4-1f0e-4a1f-9103-dad41bfec6cd",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "6822c6ff-cf1d-4d6d-baa5-fa6ca5edaa76",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "4e195ba7-d92a-443b-a746-3ff7c64b66aa",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "fd3c1426-edcd-4800-bfe9-fc15716f19b6",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "40e9425a-7175-460b-b207-0be05a3831d6",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "6e35aaf8-816d-4de9-83a0-542e76ce111b",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
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
      "uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
      "parent_uuid": "0a519242-f777-4b99-985c-8a295684bd24",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "dfe09b8f-d2d3-4dc6-a400-53ac43192440",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "909631cf-f3f7-4104-8866-25f88ef69b52",
              "parent_uuid": "dfe09b8f-d2d3-4dc6-a400-53ac43192440",
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
              "uuid": "297b7faf-41c9-4600-b70d-1c1cd344ed6a",
              "parent_uuid": "dfe09b8f-d2d3-4dc6-a400-53ac43192440",
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
              "uuid": "562db78d-3869-4890-a5b6-15145dea4c17",
              "parent_uuid": "dfe09b8f-d2d3-4dc6-a400-53ac43192440",
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
              "uuid": "e2c75d1a-d70a-498d-9de5-acb845d4c4f6",
              "parent_uuid": "dfe09b8f-d2d3-4dc6-a400-53ac43192440",
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
          "uuid": "21bdb404-11b7-4f45-abb1-ef0fe69f1107",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "f0c059b8-422c-4aed-8c22-95530aac9d14",
              "parent_uuid": "21bdb404-11b7-4f45-abb1-ef0fe69f1107",
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
              "uuid": "7ccebf7a-36c6-4af9-92e1-c0ca9ac9bf30",
              "parent_uuid": "21bdb404-11b7-4f45-abb1-ef0fe69f1107",
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
              "uuid": "7d8b7d60-6456-43a3-a50b-c6d92eee9364",
              "parent_uuid": "21bdb404-11b7-4f45-abb1-ef0fe69f1107",
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
              "uuid": "099e2d11-7918-4a39-9c13-aadb91800fb6",
              "parent_uuid": "21bdb404-11b7-4f45-abb1-ef0fe69f1107",
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
          "uuid": "6c0b3e19-163b-4c3b-9d51-7c84a6e86564",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f0ff0fa-7d15-4558-b7c1-7a1c294ae3e9",
              "parent_uuid": "6c0b3e19-163b-4c3b-9d51-7c84a6e86564",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bb17dc14-2228-4fec-9b0d-73fc9704f745",
              "parent_uuid": "6c0b3e19-163b-4c3b-9d51-7c84a6e86564",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "eebc57b7-53ea-4055-8832-4d39b0a1e4a1",
              "parent_uuid": "6c0b3e19-163b-4c3b-9d51-7c84a6e86564",
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
              "uuid": "6b18dff7-a66b-482a-a977-a3491fc29139",
              "parent_uuid": "6c0b3e19-163b-4c3b-9d51-7c84a6e86564",
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
              "uuid": "8afe9c0c-7832-4459-9b2f-404c53a5c5b3",
              "parent_uuid": "6c0b3e19-163b-4c3b-9d51-7c84a6e86564",
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
              "uuid": "a5d1586c-b344-4e47-a395-40d0631b24be",
              "parent_uuid": "6c0b3e19-163b-4c3b-9d51-7c84a6e86564",
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
          "uuid": "9f4cee1c-cd07-4df1-858d-5c4df09eaa5b",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "729c6c8c-9b66-472b-b068-41f059145b62",
              "parent_uuid": "9f4cee1c-cd07-4df1-858d-5c4df09eaa5b",
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
          "uuid": "e82838d3-472e-401a-a9ff-968240ceb709",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1881e20c-20dd-43ef-807f-999cd51c45e8",
              "parent_uuid": "e82838d3-472e-401a-a9ff-968240ceb709",
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
              "uuid": "8b9be291-d926-4ac7-bf3c-17e84ff33d22",
              "parent_uuid": "e82838d3-472e-401a-a9ff-968240ceb709",
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
              "uuid": "9e3fb100-d0af-4565-8b2f-9b89d04617ba",
              "parent_uuid": "e82838d3-472e-401a-a9ff-968240ceb709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8dd7961-22a8-40cc-8cf0-58ae346dbc10",
                  "parent_uuid": "9e3fb100-d0af-4565-8b2f-9b89d04617ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5494aa3-8c6a-44b5-a4ed-19e01de0ce9a",
              "parent_uuid": "e82838d3-472e-401a-a9ff-968240ceb709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a51327f-106e-4e19-a4e5-94f5e998df0d",
                  "parent_uuid": "c5494aa3-8c6a-44b5-a4ed-19e01de0ce9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8a9e3e9-7b15-463c-bc3b-37f68a4a0897",
              "parent_uuid": "e82838d3-472e-401a-a9ff-968240ceb709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1eb28748-a038-4979-9d2b-b4f9107109b8",
                  "parent_uuid": "c8a9e3e9-7b15-463c-bc3b-37f68a4a0897",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6edfe86-afa9-490c-a32a-e3272ede321a",
              "parent_uuid": "e82838d3-472e-401a-a9ff-968240ceb709",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7aa48c0f-8fde-4642-80f1-2ea79398ebdc",
                  "parent_uuid": "a6edfe86-afa9-490c-a32a-e3272ede321a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6572c76e-a425-40fa-83e8-33cb3532e146",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "36fa5946-4755-4562-a3c7-600301b9ce9e",
              "parent_uuid": "6572c76e-a425-40fa-83e8-33cb3532e146",
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
              "uuid": "04031bd1-a3ba-4836-83e7-25853878a066",
              "parent_uuid": "6572c76e-a425-40fa-83e8-33cb3532e146",
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
              "uuid": "7a7809d2-a0b1-4868-b4f4-2257cf8351ca",
              "parent_uuid": "6572c76e-a425-40fa-83e8-33cb3532e146",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e049ac5f-1748-480d-9799-76fa9fbbcfca",
                  "parent_uuid": "7a7809d2-a0b1-4868-b4f4-2257cf8351ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6138a94a-9959-4bd8-8def-b803231748b8",
              "parent_uuid": "6572c76e-a425-40fa-83e8-33cb3532e146",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aaa9ac2b-9215-4a17-8a34-2b4216d42c67",
                  "parent_uuid": "6138a94a-9959-4bd8-8def-b803231748b8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88334835-5098-4a25-a859-2f5d8e91aada",
              "parent_uuid": "6572c76e-a425-40fa-83e8-33cb3532e146",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a8015ede-59b3-4421-a175-3b529a2db1eb",
                  "parent_uuid": "88334835-5098-4a25-a859-2f5d8e91aada",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16cd36b3-6d84-4d8b-a2ca-f58ee305b41e",
              "parent_uuid": "6572c76e-a425-40fa-83e8-33cb3532e146",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "230d071b-55d6-4e77-a1a1-9997c4139011",
                  "parent_uuid": "16cd36b3-6d84-4d8b-a2ca-f58ee305b41e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c4c5dd99-f674-4b7a-9419-87fcf53f332f",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a6d7b6a0-b937-4ca6-9375-8e8b1a0e0308",
              "parent_uuid": "c4c5dd99-f674-4b7a-9419-87fcf53f332f",
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
              "uuid": "0a6ece01-8873-4255-bdf6-213e4dc8b3ce",
              "parent_uuid": "c4c5dd99-f674-4b7a-9419-87fcf53f332f",
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
              "uuid": "174dc040-7076-42ce-bfb9-f64f71deae7f",
              "parent_uuid": "c4c5dd99-f674-4b7a-9419-87fcf53f332f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abb904d3-50fc-4771-bc26-580339409c84",
                  "parent_uuid": "174dc040-7076-42ce-bfb9-f64f71deae7f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a8bd25b7-e313-4a44-a811-7a8db99a38f3",
              "parent_uuid": "c4c5dd99-f674-4b7a-9419-87fcf53f332f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d3701cc-6417-4a7f-a8e9-5863f09899f1",
                  "parent_uuid": "a8bd25b7-e313-4a44-a811-7a8db99a38f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "660c23ca-60e8-4cbf-8816-2d6edc923c7e",
              "parent_uuid": "c4c5dd99-f674-4b7a-9419-87fcf53f332f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14945948-e0cf-4667-9558-098681eff348",
                  "parent_uuid": "660c23ca-60e8-4cbf-8816-2d6edc923c7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd6be212-5db8-418c-b0a6-b618c7744990",
              "parent_uuid": "c4c5dd99-f674-4b7a-9419-87fcf53f332f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19f80e50-f28b-4347-b875-c6fcdf0998f0",
                  "parent_uuid": "fd6be212-5db8-418c-b0a6-b618c7744990",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3b127e72-1933-4fcf-b68a-381bfe7379f0",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "faa3a7fc-bdfb-43b6-b248-704530e9cd19",
              "parent_uuid": "3b127e72-1933-4fcf-b68a-381bfe7379f0",
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
              "uuid": "0ceeb938-01b5-4468-ab21-8c032171f4af",
              "parent_uuid": "3b127e72-1933-4fcf-b68a-381bfe7379f0",
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
              "uuid": "0f5ed47f-2b29-4bc3-b499-877acb54737d",
              "parent_uuid": "3b127e72-1933-4fcf-b68a-381bfe7379f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9efe806b-8881-4312-a62b-82bf8bba2b1b",
                  "parent_uuid": "0f5ed47f-2b29-4bc3-b499-877acb54737d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b86a1c61-104a-438c-98fd-2481168359f7",
              "parent_uuid": "3b127e72-1933-4fcf-b68a-381bfe7379f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4078b44e-2487-4feb-8cf1-42e36dbc39c2",
                  "parent_uuid": "b86a1c61-104a-438c-98fd-2481168359f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bfc0808d-9278-4db3-9e58-dab6cc8b20e5",
              "parent_uuid": "3b127e72-1933-4fcf-b68a-381bfe7379f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "334be025-fcc7-4686-b7b7-9d61812a4ad9",
                  "parent_uuid": "bfc0808d-9278-4db3-9e58-dab6cc8b20e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49d8bf09-22e8-4846-84ab-21a9015bf327",
              "parent_uuid": "3b127e72-1933-4fcf-b68a-381bfe7379f0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee879cd5-45ef-4c4b-ad60-f6b44f598969",
                  "parent_uuid": "49d8bf09-22e8-4846-84ab-21a9015bf327",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e413b014-d139-43c2-87d5-8dc889981bca",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27d74fc9-4abf-4bf5-a5a4-ac5d9a1cbf6d",
              "parent_uuid": "e413b014-d139-43c2-87d5-8dc889981bca",
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
              "uuid": "b2ab48d6-2ab3-40c4-b018-5b341c445773",
              "parent_uuid": "e413b014-d139-43c2-87d5-8dc889981bca",
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
              "uuid": "0facef3d-5094-46ac-99c8-0973f6d65f14",
              "parent_uuid": "e413b014-d139-43c2-87d5-8dc889981bca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "47ada32b-ee15-4d60-b144-3769bb5df742",
                  "parent_uuid": "0facef3d-5094-46ac-99c8-0973f6d65f14",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b69f348f-3326-4ff2-99dc-00583aaa9961",
              "parent_uuid": "e413b014-d139-43c2-87d5-8dc889981bca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e707f1be-f086-436f-85c2-9de1c670ef83",
                  "parent_uuid": "b69f348f-3326-4ff2-99dc-00583aaa9961",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b6f7f1b-a24e-40a1-8915-9280494889fb",
              "parent_uuid": "e413b014-d139-43c2-87d5-8dc889981bca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b8ca4c2-a3c4-4bee-8bbe-a5c3d0316c98",
                  "parent_uuid": "5b6f7f1b-a24e-40a1-8915-9280494889fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38b452a1-b4d8-43fc-84b0-c281ca615cb8",
              "parent_uuid": "e413b014-d139-43c2-87d5-8dc889981bca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e705792f-c0a3-444f-a899-e7afb733c07e",
                  "parent_uuid": "38b452a1-b4d8-43fc-84b0-c281ca615cb8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "abf369b7-1afb-48bd-8b48-6122a2de8577",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "816218d5-e0f3-4d2f-8496-3b07848bd772",
              "parent_uuid": "abf369b7-1afb-48bd-8b48-6122a2de8577",
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
              "uuid": "a0723b13-f8e2-4ec9-89d0-d7299511851d",
              "parent_uuid": "abf369b7-1afb-48bd-8b48-6122a2de8577",
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
              "uuid": "372cdb20-458f-42fd-88c0-f5772ec47b21",
              "parent_uuid": "abf369b7-1afb-48bd-8b48-6122a2de8577",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a62ee245-216d-40d9-8402-44b8242e08dc",
                  "parent_uuid": "372cdb20-458f-42fd-88c0-f5772ec47b21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4553ad4-c05b-4361-b8d2-fd4c7c0ef472",
              "parent_uuid": "abf369b7-1afb-48bd-8b48-6122a2de8577",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c934ef8-5b9e-476e-a8f0-c9097794a274",
                  "parent_uuid": "e4553ad4-c05b-4361-b8d2-fd4c7c0ef472",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a56b7ce-1103-495f-8b2f-0ddf47fbe4fa",
              "parent_uuid": "abf369b7-1afb-48bd-8b48-6122a2de8577",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "947760a1-61f1-418c-b43a-1a8de26cb383",
                  "parent_uuid": "1a56b7ce-1103-495f-8b2f-0ddf47fbe4fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d81df69a-2158-4a17-ad80-2b32de04e5a1",
              "parent_uuid": "abf369b7-1afb-48bd-8b48-6122a2de8577",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d355b02f-d6ea-4666-bdcb-6fdf3ae0389f",
                  "parent_uuid": "d81df69a-2158-4a17-ad80-2b32de04e5a1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5066c0a7-40e3-4324-9b64-184e51d3f01a",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e00cf638-0296-45ac-92f0-ba70d4e6b2ad",
              "parent_uuid": "5066c0a7-40e3-4324-9b64-184e51d3f01a",
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
              "uuid": "13331346-ea6f-45af-a96b-b524a78ae538",
              "parent_uuid": "5066c0a7-40e3-4324-9b64-184e51d3f01a",
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
              "uuid": "e3f1422e-7fb0-4bc5-a142-d9fb3284c6dc",
              "parent_uuid": "5066c0a7-40e3-4324-9b64-184e51d3f01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee4f89f7-679e-4e12-abc4-c1d98a8f0c21",
                  "parent_uuid": "e3f1422e-7fb0-4bc5-a142-d9fb3284c6dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bedc20e2-f87a-4a8b-a7a1-edcc92bf7f32",
              "parent_uuid": "5066c0a7-40e3-4324-9b64-184e51d3f01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6cada455-ffba-4c0c-9664-d68131f7d4d5",
                  "parent_uuid": "bedc20e2-f87a-4a8b-a7a1-edcc92bf7f32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c7d432c-1084-45e3-b354-fc3ebdcf8676",
              "parent_uuid": "5066c0a7-40e3-4324-9b64-184e51d3f01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96758e06-2d15-4a71-b05b-abe7084723e6",
                  "parent_uuid": "4c7d432c-1084-45e3-b354-fc3ebdcf8676",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9120dc99-e21b-45a6-a716-41130f880eba",
              "parent_uuid": "5066c0a7-40e3-4324-9b64-184e51d3f01a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "734bf83e-5e44-435e-8db0-e6d94a73f34d",
                  "parent_uuid": "9120dc99-e21b-45a6-a716-41130f880eba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3112cfae-7b01-4755-ad02-d35ef755ecd6",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "517e6f6d-d772-4b3d-abdd-978248419483",
              "parent_uuid": "3112cfae-7b01-4755-ad02-d35ef755ecd6",
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
              "uuid": "a32c53a6-3a32-47f3-a662-1fc0c472ec7c",
              "parent_uuid": "3112cfae-7b01-4755-ad02-d35ef755ecd6",
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
              "uuid": "7ce0d216-e615-4cd4-a232-e44bb6d7b438",
              "parent_uuid": "3112cfae-7b01-4755-ad02-d35ef755ecd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a353cf49-fef6-4b2a-85ac-8df6a39a4076",
                  "parent_uuid": "7ce0d216-e615-4cd4-a232-e44bb6d7b438",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "541d8673-fef6-4a5b-b60e-dc32636a6061",
              "parent_uuid": "3112cfae-7b01-4755-ad02-d35ef755ecd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51d10bac-f6d7-4d8e-b596-d8c06e8df3c5",
                  "parent_uuid": "541d8673-fef6-4a5b-b60e-dc32636a6061",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f5d6f43-eec5-4e26-9d1b-1705ef80c5ae",
              "parent_uuid": "3112cfae-7b01-4755-ad02-d35ef755ecd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75bad09b-9080-4645-a845-aae90e6c987f",
                  "parent_uuid": "2f5d6f43-eec5-4e26-9d1b-1705ef80c5ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6856c575-cc00-4730-bac6-9e028cca9681",
              "parent_uuid": "3112cfae-7b01-4755-ad02-d35ef755ecd6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3759d6a-0e33-411a-9908-ed0dfd9470f0",
                  "parent_uuid": "6856c575-cc00-4730-bac6-9e028cca9681",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "628341f4-2b6c-4bd3-9bbe-0b62c8c60b6c",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07d96a9b-24a4-4727-804a-340039608f5d",
              "parent_uuid": "628341f4-2b6c-4bd3-9bbe-0b62c8c60b6c",
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
              "uuid": "a473a4f1-a64d-42f9-a697-b7a89e1c27e3",
              "parent_uuid": "628341f4-2b6c-4bd3-9bbe-0b62c8c60b6c",
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
              "uuid": "3d1b5ae0-4c67-484a-aeb2-b89db3cc2697",
              "parent_uuid": "628341f4-2b6c-4bd3-9bbe-0b62c8c60b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "19adb1fc-e3fd-4026-9de5-f2d4d3d92d07",
                  "parent_uuid": "3d1b5ae0-4c67-484a-aeb2-b89db3cc2697",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cef2959c-4f1d-425a-a236-adcfb9f1c88b",
              "parent_uuid": "628341f4-2b6c-4bd3-9bbe-0b62c8c60b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3058498d-4155-46cd-996b-30e3059eb264",
                  "parent_uuid": "cef2959c-4f1d-425a-a236-adcfb9f1c88b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aade5e64-4000-4e06-a0a3-bb5dd512fbe8",
              "parent_uuid": "628341f4-2b6c-4bd3-9bbe-0b62c8c60b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ee8e9af-c5ff-4557-b290-592683e74f9b",
                  "parent_uuid": "aade5e64-4000-4e06-a0a3-bb5dd512fbe8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49ee551c-ceed-4a0f-9b17-8dccfdaf8a87",
              "parent_uuid": "628341f4-2b6c-4bd3-9bbe-0b62c8c60b6c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64baf5d4-4b0c-40d7-b03a-2ccce6c3ffd9",
                  "parent_uuid": "49ee551c-ceed-4a0f-9b17-8dccfdaf8a87",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2ff588e-a360-4f80-9ba0-c497b0ad1e79",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f826cb1a-1a92-4f9d-86e0-f5e44d0ee76a",
              "parent_uuid": "c2ff588e-a360-4f80-9ba0-c497b0ad1e79",
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
              "uuid": "6b4aa57f-0234-4c93-a9fd-572ebdff1102",
              "parent_uuid": "c2ff588e-a360-4f80-9ba0-c497b0ad1e79",
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
              "uuid": "f6f6a47e-7a96-4936-b5d9-7584979d6205",
              "parent_uuid": "c2ff588e-a360-4f80-9ba0-c497b0ad1e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87913915-b121-47de-9b6f-c51a0a6ef9c4",
                  "parent_uuid": "f6f6a47e-7a96-4936-b5d9-7584979d6205",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a74643ad-60d3-4b03-acd0-274b4c6a8f00",
              "parent_uuid": "c2ff588e-a360-4f80-9ba0-c497b0ad1e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bf2f45f-66eb-4691-9c24-326d8f68622f",
                  "parent_uuid": "a74643ad-60d3-4b03-acd0-274b4c6a8f00",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a4bdea4a-472d-4f29-86e3-b1d2189282d5",
              "parent_uuid": "c2ff588e-a360-4f80-9ba0-c497b0ad1e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ec52777-2c90-45b2-b47a-f1700584cb21",
                  "parent_uuid": "a4bdea4a-472d-4f29-86e3-b1d2189282d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b97c5964-edf0-484f-959d-51fe26157aef",
              "parent_uuid": "c2ff588e-a360-4f80-9ba0-c497b0ad1e79",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4c4e30d-0bb0-498b-b111-16c3849a14fb",
                  "parent_uuid": "b97c5964-edf0-484f-959d-51fe26157aef",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "99e48364-773f-46b3-88ec-d588955b5406",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "523acf64-85a0-4a59-ad67-ae9887e9f105",
              "parent_uuid": "99e48364-773f-46b3-88ec-d588955b5406",
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
              "uuid": "c45ee08c-86b4-4d58-b237-34564adfc73e",
              "parent_uuid": "99e48364-773f-46b3-88ec-d588955b5406",
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
              "uuid": "22d9babe-a2ec-4272-bc37-ae6fc65637c2",
              "parent_uuid": "99e48364-773f-46b3-88ec-d588955b5406",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41b983b5-acab-42e5-926f-dbe64c97b72e",
                  "parent_uuid": "22d9babe-a2ec-4272-bc37-ae6fc65637c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c1a5341-dbb2-4a2e-b993-175467de1230",
              "parent_uuid": "99e48364-773f-46b3-88ec-d588955b5406",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29b4f6dc-0de4-408d-ad56-4d2633f22046",
                  "parent_uuid": "5c1a5341-dbb2-4a2e-b993-175467de1230",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a8e871f-b77d-42ca-ac76-68a68c35aba1",
              "parent_uuid": "99e48364-773f-46b3-88ec-d588955b5406",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "840fcd11-a97e-415e-a24f-59e6f2b4bd67",
                  "parent_uuid": "4a8e871f-b77d-42ca-ac76-68a68c35aba1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80e0079d-2b40-41f9-8288-3f5e4c8ecc11",
              "parent_uuid": "99e48364-773f-46b3-88ec-d588955b5406",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d70c48b-a4b8-49e2-8a5a-5d053953e777",
                  "parent_uuid": "80e0079d-2b40-41f9-8288-3f5e4c8ecc11",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f9ba46b4-f885-4ec0-8924-db2a3f28846a",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dcb296eb-9e0e-42d8-abed-0304152e735f",
              "parent_uuid": "f9ba46b4-f885-4ec0-8924-db2a3f28846a",
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
              "uuid": "dbecc752-2e7a-407e-8d94-6802d7ca3b6c",
              "parent_uuid": "f9ba46b4-f885-4ec0-8924-db2a3f28846a",
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
              "uuid": "30deebdd-834a-4d57-b0d6-2e2918407184",
              "parent_uuid": "f9ba46b4-f885-4ec0-8924-db2a3f28846a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c88dd9c7-3d22-4fae-b1ea-c9a2098b8c1b",
                  "parent_uuid": "30deebdd-834a-4d57-b0d6-2e2918407184",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8016adb0-f8f1-405f-a85b-d853665c0494",
              "parent_uuid": "f9ba46b4-f885-4ec0-8924-db2a3f28846a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "64607cf3-0a92-4102-a6d8-d3c9733c1305",
                  "parent_uuid": "8016adb0-f8f1-405f-a85b-d853665c0494",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e65ae481-80f6-4719-bfe5-ddd1b8a7e708",
              "parent_uuid": "f9ba46b4-f885-4ec0-8924-db2a3f28846a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f22f68b-fbc3-420e-9a8d-cf933959d39a",
                  "parent_uuid": "e65ae481-80f6-4719-bfe5-ddd1b8a7e708",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d9efcdf-8528-4839-af56-a47c41198b44",
              "parent_uuid": "f9ba46b4-f885-4ec0-8924-db2a3f28846a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03c94357-850e-4acc-9947-440189559c29",
                  "parent_uuid": "7d9efcdf-8528-4839-af56-a47c41198b44",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "93912c4c-079a-4824-8b7e-1d5a0e41cd1f",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "047a1eaf-a9b2-4837-9b4b-fa87e64edc76",
              "parent_uuid": "93912c4c-079a-4824-8b7e-1d5a0e41cd1f",
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
              "uuid": "8d8abb95-4798-4f00-9290-07e3537871c0",
              "parent_uuid": "93912c4c-079a-4824-8b7e-1d5a0e41cd1f",
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
              "uuid": "21f0b739-39c7-473a-8513-0ef7d366b4a0",
              "parent_uuid": "93912c4c-079a-4824-8b7e-1d5a0e41cd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99e1da57-89f5-4a44-b31c-a59f996f259a",
                  "parent_uuid": "21f0b739-39c7-473a-8513-0ef7d366b4a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cd28bf0-2447-47fd-b214-8745c7510928",
              "parent_uuid": "93912c4c-079a-4824-8b7e-1d5a0e41cd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0c9589fc-f5ae-4525-a9a6-f29067707271",
                  "parent_uuid": "2cd28bf0-2447-47fd-b214-8745c7510928",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fef15ccd-41a7-4a5c-8b60-6287476be26f",
              "parent_uuid": "93912c4c-079a-4824-8b7e-1d5a0e41cd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3771a4c-1a5f-4a04-a870-cd72b9c28fc4",
                  "parent_uuid": "fef15ccd-41a7-4a5c-8b60-6287476be26f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e08837e8-f165-46b2-b5fc-5cad7490aab4",
              "parent_uuid": "93912c4c-079a-4824-8b7e-1d5a0e41cd1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21ca4929-cf09-4897-b078-2342e50bcc8d",
                  "parent_uuid": "e08837e8-f165-46b2-b5fc-5cad7490aab4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29a7bb57-fe33-448b-ad27-69133f33cc18",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3ef96df-2251-4ce1-b300-712874bbf372",
              "parent_uuid": "29a7bb57-fe33-448b-ad27-69133f33cc18",
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
              "uuid": "a236c484-fbcf-4af8-b75b-e4a623a1cfac",
              "parent_uuid": "29a7bb57-fe33-448b-ad27-69133f33cc18",
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
              "uuid": "37761b61-3851-47e2-816d-c354aaaae411",
              "parent_uuid": "29a7bb57-fe33-448b-ad27-69133f33cc18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14823f5d-15ed-45dd-9f81-30207ea400c8",
                  "parent_uuid": "37761b61-3851-47e2-816d-c354aaaae411",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d50951a-6f9f-4fba-b32b-4c46470a3a22",
              "parent_uuid": "29a7bb57-fe33-448b-ad27-69133f33cc18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14343212-b9eb-4a99-9d7d-64e63fd4fc67",
                  "parent_uuid": "7d50951a-6f9f-4fba-b32b-4c46470a3a22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9f4b1a31-b14e-470d-9961-10eacd0ece18",
              "parent_uuid": "29a7bb57-fe33-448b-ad27-69133f33cc18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce8f2752-f100-48f9-bf21-c0d213c728c4",
                  "parent_uuid": "9f4b1a31-b14e-470d-9961-10eacd0ece18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0516021c-4b20-45a9-a09b-2280b6e550f9",
              "parent_uuid": "29a7bb57-fe33-448b-ad27-69133f33cc18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a8146ae-3cc0-448c-8f55-ac1c16d9119e",
                  "parent_uuid": "0516021c-4b20-45a9-a09b-2280b6e550f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "183f68f3-ef74-457c-9dc5-8850b35119b9",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "8578d668-1beb-4bcb-9b1b-d1d5e3b4a8ca",
              "parent_uuid": "183f68f3-ef74-457c-9dc5-8850b35119b9",
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
          "uuid": "0ef43673-4783-4703-ad7e-59576747187d",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9693aff2-b1f7-4750-846f-79f7eaff7f96",
              "parent_uuid": "0ef43673-4783-4703-ad7e-59576747187d",
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
          "uuid": "eee2e940-747c-4f46-86c6-f7c6a0a746cf",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "93e8563e-906f-4364-a9ea-5c414443c349",
              "parent_uuid": "eee2e940-747c-4f46-86c6-f7c6a0a746cf",
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
                  "uuid": "99f86004-9935-481d-93b9-11000054faf9",
                  "parent_uuid": "93e8563e-906f-4364-a9ea-5c414443c349",
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
          "uuid": "95cf1fb5-1eb0-4bf8-ae28-93bee8667436",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b333a254-b18b-4f7b-bcb1-046e4a8c334c",
              "parent_uuid": "95cf1fb5-1eb0-4bf8-ae28-93bee8667436",
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
          "uuid": "d8c42aa1-0e5a-4bdb-a516-a40e73800704",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "92035863-636b-4652-b955-4f0e8135cd43",
              "parent_uuid": "d8c42aa1-0e5a-4bdb-a516-a40e73800704",
              "tagName": "td",
              "properties": [
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
          "uuid": "cef46e7b-338f-471e-92b9-b81607708ef8",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "731bc09a-9656-4d40-b1f3-91622e563e84",
              "parent_uuid": "cef46e7b-338f-471e-92b9-b81607708ef8",
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
              "uuid": "3a1d62fd-d9e1-43b0-a358-9a7d176e5b6a",
              "parent_uuid": "cef46e7b-338f-471e-92b9-b81607708ef8",
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
              "uuid": "fcfa62bb-16da-4b1e-b22b-3eca63c45841",
              "parent_uuid": "cef46e7b-338f-471e-92b9-b81607708ef8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "996391e1-c37d-46e1-8385-ff0aeaf05cb5",
                  "parent_uuid": "fcfa62bb-16da-4b1e-b22b-3eca63c45841",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5686cbb7-778f-40e1-a114-f2dd2ce56540",
              "parent_uuid": "cef46e7b-338f-471e-92b9-b81607708ef8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73a7f690-f1a2-4af4-a9dc-11b8882d1192",
                  "parent_uuid": "5686cbb7-778f-40e1-a114-f2dd2ce56540",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f3cf296-301c-470b-bf61-b61d1d8a685b",
              "parent_uuid": "cef46e7b-338f-471e-92b9-b81607708ef8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "328c772f-ee80-4e49-ad05-922c8db768cc",
                  "parent_uuid": "0f3cf296-301c-470b-bf61-b61d1d8a685b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30d8e560-7269-4a1b-963a-56b4cbf8bfb4",
              "parent_uuid": "cef46e7b-338f-471e-92b9-b81607708ef8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2575cbd9-601d-4f3e-86ed-dbf6315db797",
                  "parent_uuid": "30d8e560-7269-4a1b-963a-56b4cbf8bfb4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "296c90f6-9192-417d-9ebf-b0c38420c71e",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f8600567-f459-46fc-9f99-7675f45996a1",
              "parent_uuid": "296c90f6-9192-417d-9ebf-b0c38420c71e",
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
              "uuid": "50bce28c-3ef3-4df4-b560-65ef94a6a692",
              "parent_uuid": "296c90f6-9192-417d-9ebf-b0c38420c71e",
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
              "uuid": "d7ead463-0962-4dc6-b1c1-6b229d9f163f",
              "parent_uuid": "296c90f6-9192-417d-9ebf-b0c38420c71e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "088fa2fb-de71-4f1a-999c-5afb417c65ab",
                  "parent_uuid": "d7ead463-0962-4dc6-b1c1-6b229d9f163f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6919c406-2825-488f-9802-0fde41bb480f",
              "parent_uuid": "296c90f6-9192-417d-9ebf-b0c38420c71e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a408fb81-2277-4d2d-be94-62530625444a",
                  "parent_uuid": "6919c406-2825-488f-9802-0fde41bb480f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef211257-d094-4c68-9b09-7e7cf21451ba",
              "parent_uuid": "296c90f6-9192-417d-9ebf-b0c38420c71e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db6c010e-d02f-4644-9dba-8b6696ce95b4",
                  "parent_uuid": "ef211257-d094-4c68-9b09-7e7cf21451ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01bd56a3-43a4-4d83-b64a-2fb8229f9502",
              "parent_uuid": "296c90f6-9192-417d-9ebf-b0c38420c71e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "283d26bf-6a5b-44f4-b7ed-5d79c5db3736",
                  "parent_uuid": "01bd56a3-43a4-4d83-b64a-2fb8229f9502",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "905e26d0-a1b6-45e0-99d6-2b5576ddbc6e",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b15f0148-c8b7-4580-915f-b99ee7338680",
              "parent_uuid": "905e26d0-a1b6-45e0-99d6-2b5576ddbc6e",
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
              "uuid": "af27d187-8e3c-44b0-9206-00bcff14f2d8",
              "parent_uuid": "905e26d0-a1b6-45e0-99d6-2b5576ddbc6e",
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
              "uuid": "2257fa30-d5fd-469d-b41e-a313692ad8c9",
              "parent_uuid": "905e26d0-a1b6-45e0-99d6-2b5576ddbc6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63464af4-4663-4555-a5ce-ce9f3711902a",
                  "parent_uuid": "2257fa30-d5fd-469d-b41e-a313692ad8c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7eb60b2c-c658-431f-8ab8-966e304017af",
              "parent_uuid": "905e26d0-a1b6-45e0-99d6-2b5576ddbc6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "14bf5617-2e64-4579-8021-33f1a5157b4e",
                  "parent_uuid": "7eb60b2c-c658-431f-8ab8-966e304017af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f3af32f-df90-4859-9c1e-a2a4e96f3317",
              "parent_uuid": "905e26d0-a1b6-45e0-99d6-2b5576ddbc6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f206ee66-b852-4d0c-858a-cb4d9b778ae3",
                  "parent_uuid": "4f3af32f-df90-4859-9c1e-a2a4e96f3317",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49e78b1d-fd22-488f-9bdf-fe193f87e415",
              "parent_uuid": "905e26d0-a1b6-45e0-99d6-2b5576ddbc6e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5dbdfba7-568a-4af6-ae04-0dd4621c2bba",
                  "parent_uuid": "49e78b1d-fd22-488f-9bdf-fe193f87e415",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "60b1cb8b-8695-49d9-9720-2aa94fcf6216",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5bc684be-a50b-49da-8a92-004362e109b5",
              "parent_uuid": "60b1cb8b-8695-49d9-9720-2aa94fcf6216",
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
              "uuid": "578de228-6208-4771-b0dd-185784b5b4d2",
              "parent_uuid": "60b1cb8b-8695-49d9-9720-2aa94fcf6216",
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
              "uuid": "64bbe3b0-d15d-495d-b950-25d20f930160",
              "parent_uuid": "60b1cb8b-8695-49d9-9720-2aa94fcf6216",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52bf5ddf-89a5-4417-8c50-6cda11e0d77d",
                  "parent_uuid": "64bbe3b0-d15d-495d-b950-25d20f930160",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09cae00f-4059-4a5d-b3dd-0d1fa07c3a24",
              "parent_uuid": "60b1cb8b-8695-49d9-9720-2aa94fcf6216",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09bfe723-c495-4b9a-a5b9-349725cb9002",
                  "parent_uuid": "09cae00f-4059-4a5d-b3dd-0d1fa07c3a24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58ff2aee-060a-4092-ab01-374325ae8598",
              "parent_uuid": "60b1cb8b-8695-49d9-9720-2aa94fcf6216",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9ceb7da-e801-4fcd-8ba6-39e4ce79c7b9",
                  "parent_uuid": "58ff2aee-060a-4092-ab01-374325ae8598",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c254c8d-c351-4880-a86f-103a2867978d",
              "parent_uuid": "60b1cb8b-8695-49d9-9720-2aa94fcf6216",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6eeafbc7-102c-4771-be30-e2316c054d00",
                  "parent_uuid": "9c254c8d-c351-4880-a86f-103a2867978d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "76938dda-42ae-4429-9222-c14af559ded2",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1c70ef1e-8a36-4288-bf7f-c9ed27f1c3ba",
              "parent_uuid": "76938dda-42ae-4429-9222-c14af559ded2",
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
          "uuid": "14f7f31b-6866-4136-9429-97a0e96fa4b3",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f7ea071-e6b1-4f69-9a33-185837c61bdc",
              "parent_uuid": "14f7f31b-6866-4136-9429-97a0e96fa4b3",
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
              "uuid": "13cd3e13-f04c-4f39-bd67-753c04179fbb",
              "parent_uuid": "14f7f31b-6866-4136-9429-97a0e96fa4b3",
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
              "uuid": "474882f2-66e1-4bc3-8ad5-a8a2bc4ff378",
              "parent_uuid": "14f7f31b-6866-4136-9429-97a0e96fa4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4b177876-39c0-405a-a961-f5d6a66114de",
                  "parent_uuid": "474882f2-66e1-4bc3-8ad5-a8a2bc4ff378",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e1442ea-6c3f-4a47-90c6-e8792d4f1347",
              "parent_uuid": "14f7f31b-6866-4136-9429-97a0e96fa4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c31caf0d-7169-4e88-9726-665253ea9999",
                  "parent_uuid": "5e1442ea-6c3f-4a47-90c6-e8792d4f1347",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ed4dd47-0dd1-4eea-b052-a0ffc4c94701",
              "parent_uuid": "14f7f31b-6866-4136-9429-97a0e96fa4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e093d50-24c0-418d-afa8-ae03660b0c39",
                  "parent_uuid": "3ed4dd47-0dd1-4eea-b052-a0ffc4c94701",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06d97bf1-abe4-4df5-a08c-94d4f6b5acf1",
              "parent_uuid": "14f7f31b-6866-4136-9429-97a0e96fa4b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13dd112f-d553-4749-a7a8-ebecb4ec392f",
                  "parent_uuid": "06d97bf1-abe4-4df5-a08c-94d4f6b5acf1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1a03f828-55dd-470f-b59d-2f2bed24bfe2",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "24f5796b-4d26-4f4b-a755-ae79a42e5713",
              "parent_uuid": "1a03f828-55dd-470f-b59d-2f2bed24bfe2",
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
              "uuid": "3ae26b4f-50c3-4678-8ed7-71af68bffcb0",
              "parent_uuid": "1a03f828-55dd-470f-b59d-2f2bed24bfe2",
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
              "uuid": "ff145d76-f63e-4311-a80e-1ee27ec05173",
              "parent_uuid": "1a03f828-55dd-470f-b59d-2f2bed24bfe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9be90042-c3e1-4044-a62d-1cb1e6f3f7a3",
                  "parent_uuid": "ff145d76-f63e-4311-a80e-1ee27ec05173",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d1a042ab-66f2-4762-99c9-3bfa29001efc",
              "parent_uuid": "1a03f828-55dd-470f-b59d-2f2bed24bfe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ce8c1e9-e617-4621-b628-cd7e7ec7ad51",
                  "parent_uuid": "d1a042ab-66f2-4762-99c9-3bfa29001efc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4236efb2-6ea0-4744-b3fa-ca7787043db2",
              "parent_uuid": "1a03f828-55dd-470f-b59d-2f2bed24bfe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "895e20ea-076f-443f-a9dc-7d4511635e2d",
                  "parent_uuid": "4236efb2-6ea0-4744-b3fa-ca7787043db2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a69c8fe-70e8-431c-877d-0f79e328a5c4",
              "parent_uuid": "1a03f828-55dd-470f-b59d-2f2bed24bfe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1df4ff1-bd45-4e0b-8b74-f5a7edc355b7",
                  "parent_uuid": "0a69c8fe-70e8-431c-877d-0f79e328a5c4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a0dd33ad-50bc-4158-953b-6834b1acd944",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2eb30d41-5333-4651-8892-4068e4571f50",
              "parent_uuid": "a0dd33ad-50bc-4158-953b-6834b1acd944",
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
              "uuid": "89120f9d-7564-4e59-be12-a47b583638cd",
              "parent_uuid": "a0dd33ad-50bc-4158-953b-6834b1acd944",
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
              "uuid": "9090ba3b-0106-41a8-be71-9a3268a5c098",
              "parent_uuid": "a0dd33ad-50bc-4158-953b-6834b1acd944",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "298c81bb-e69a-4f4d-b86c-b9272cae0e30",
                  "parent_uuid": "9090ba3b-0106-41a8-be71-9a3268a5c098",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8460bc0-f766-4cec-8d32-410fea4fe7ef",
              "parent_uuid": "a0dd33ad-50bc-4158-953b-6834b1acd944",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27ba7426-487d-41e1-8ea4-147d80613474",
                  "parent_uuid": "f8460bc0-f766-4cec-8d32-410fea4fe7ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48266cc7-c037-4041-a4dd-84662e9e864f",
              "parent_uuid": "a0dd33ad-50bc-4158-953b-6834b1acd944",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "93c44e81-89b2-4c96-8576-a67c788b6076",
                  "parent_uuid": "48266cc7-c037-4041-a4dd-84662e9e864f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc820a1d-8f2d-43b4-82de-53d20cdbbc0e",
              "parent_uuid": "a0dd33ad-50bc-4158-953b-6834b1acd944",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be5c6632-97ac-471c-9fc1-fada5e7e4531",
                  "parent_uuid": "cc820a1d-8f2d-43b4-82de-53d20cdbbc0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "263179e1-147b-45b8-9ec8-5d10b40658c3",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b460de57-2f26-4317-841d-7ff1add30134",
              "parent_uuid": "263179e1-147b-45b8-9ec8-5d10b40658c3",
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
              "uuid": "097ebef1-e38d-4399-bc92-eb3adca0ea6b",
              "parent_uuid": "263179e1-147b-45b8-9ec8-5d10b40658c3",
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
              "uuid": "ad9f232d-9596-452e-a1da-59dadb6d7f1f",
              "parent_uuid": "263179e1-147b-45b8-9ec8-5d10b40658c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "527319f7-3ddf-4617-a543-9b39fd4ae00f",
                  "parent_uuid": "ad9f232d-9596-452e-a1da-59dadb6d7f1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a57cfdc7-8993-447b-979e-63ad57fc99ec",
              "parent_uuid": "263179e1-147b-45b8-9ec8-5d10b40658c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e47bf783-8b3a-4405-a753-7533d2bd8f73",
                  "parent_uuid": "a57cfdc7-8993-447b-979e-63ad57fc99ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ae82d6a-582e-44dc-a51b-248c4138d70a",
              "parent_uuid": "263179e1-147b-45b8-9ec8-5d10b40658c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd8d53fa-304f-4f13-a909-b8e0ab2c00b8",
                  "parent_uuid": "2ae82d6a-582e-44dc-a51b-248c4138d70a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a79a02a9-cb35-4e9c-8578-2272a759d3dd",
              "parent_uuid": "263179e1-147b-45b8-9ec8-5d10b40658c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d925001-e6de-4446-93b1-326d5f0941e6",
                  "parent_uuid": "a79a02a9-cb35-4e9c-8578-2272a759d3dd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "289ede9f-4202-47ed-9d11-8db908f976d8",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7357dcd8-57d8-4aa1-85e0-4ac89a1ee467",
              "parent_uuid": "289ede9f-4202-47ed-9d11-8db908f976d8",
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
          "uuid": "5961e8d2-73bb-44df-8894-8ac1d05e1429",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1dd620ab-4a24-4cbc-a594-499cf0ba8186",
              "parent_uuid": "5961e8d2-73bb-44df-8894-8ac1d05e1429",
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
          "uuid": "b4dfa1b2-e5c5-4bce-8820-4af3e5fe126e",
          "parent_uuid": "57f92ba2-3c9c-4110-af63-d54cc7af594e",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d02a8c56-dbed-4a04-b98e-3ed0620080bf",
              "parent_uuid": "b4dfa1b2-e5c5-4bce-8820-4af3e5fe126e",
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
                  "uuid": "7d686741-ddd4-4cfc-9acf-011163a9ef20",
                  "parent_uuid": "d02a8c56-dbed-4a04-b98e-3ed0620080bf",
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

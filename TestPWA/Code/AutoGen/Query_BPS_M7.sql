
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
  "uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "00385c44-bc46-47ab-804c-88609657008b",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "5a8fc8f3-bea7-4df1-9412-2ec75ef81aa0",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "0c42cc65-477a-4813-b3cf-b02b8b74b50e",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "9ace2b19-a95a-4bf5-bfea-2a3cf61e808a",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "224be16c-4651-42c2-91d9-7ccb7145063b",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "afb08a41-6f52-4306-b580-c84bca8316ac",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "def3a1c8-2f42-45f5-a4c7-aa4c7e45d1ee",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
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
      "uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
      "parent_uuid": "725e9c62-f495-4698-8edf-58e90e3476d4",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "0503ea8e-076c-4846-8a70-4ca773cae592",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "ac4c3308-3dd8-4405-b682-3dd8a899ca21",
              "parent_uuid": "0503ea8e-076c-4846-8a70-4ca773cae592",
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
              "uuid": "3be643e7-41e2-4450-8bdd-61e7a10f8209",
              "parent_uuid": "0503ea8e-076c-4846-8a70-4ca773cae592",
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
              "uuid": "4314b8b2-f8f7-4fe2-907e-f131de1f10a3",
              "parent_uuid": "0503ea8e-076c-4846-8a70-4ca773cae592",
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
              "uuid": "307ec6e2-77f7-4203-909c-201ffa9a8a17",
              "parent_uuid": "0503ea8e-076c-4846-8a70-4ca773cae592",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk:     BPS M7 </span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "6f664c79-beef-4525-ba66-0e1c022895ec",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "0e54a8b8-9e6f-4034-9f00-55c1e5de8262",
              "parent_uuid": "6f664c79-beef-4525-ba66-0e1c022895ec",
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
                  "height",
                  "20"
                ]
              ],
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f8f65705-e23d-4fa2-a04b-f3ee5f45f23d",
              "parent_uuid": "6f664c79-beef-4525-ba66-0e1c022895ec",
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
              "uuid": "105dc5a4-f375-41e5-aa2d-548e49853ee8",
              "parent_uuid": "6f664c79-beef-4525-ba66-0e1c022895ec",
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
              "uuid": "b327fa14-c011-43d5-9f29-7ed65b836ab7",
              "parent_uuid": "6f664c79-beef-4525-ba66-0e1c022895ec",
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
          "uuid": "68deadf9-680b-4c62-8447-5c5250b590e7",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "5f1029b3-a5e0-4e25-9378-6a5ef148a22d",
              "parent_uuid": "68deadf9-680b-4c62-8447-5c5250b590e7",
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
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "143"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ee3fdd72-0632-4c28-af7d-bfbdd500aba7",
              "parent_uuid": "68deadf9-680b-4c62-8447-5c5250b590e7",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8217a24a-2b1a-4ba6-8b61-6cda62ec6df9",
              "parent_uuid": "68deadf9-680b-4c62-8447-5c5250b590e7",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9ceda7fb-edbe-4084-89ac-c96b5a6aaa5d",
              "parent_uuid": "68deadf9-680b-4c62-8447-5c5250b590e7",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0c6b49ca-eeba-40c4-8e75-c7ca7fcdaa6b",
              "parent_uuid": "68deadf9-680b-4c62-8447-5c5250b590e7",
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
              "uuid": "1ae75499-db68-42a5-aeb2-906f0c357e4d",
              "parent_uuid": "68deadf9-680b-4c62-8447-5c5250b590e7",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "be6e1025-85d9-4a7f-8630-883bdac8f2bf",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "ca845559-3582-41d4-a575-60aa13099f79",
              "parent_uuid": "be6e1025-85d9-4a7f-8630-883bdac8f2bf",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Bei ausgeschalteter Maschine</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "08d3ed32-b5b5-4f7a-ada5-59de7d9b8950",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e747958-78e5-4405-b27f-8eb21c3007dd",
              "parent_uuid": "08d3ed32-b5b5-4f7a-ada5-59de7d9b8950",
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
              "uuid": "4d03ef65-79da-4965-a55d-2c086f8ae6ea",
              "parent_uuid": "08d3ed32-b5b5-4f7a-ada5-59de7d9b8950",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "df0132b2-d273-415d-b21b-3dbb51e5219c",
              "parent_uuid": "08d3ed32-b5b5-4f7a-ada5-59de7d9b8950",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb882bcc-697a-4bc3-9073-ba759f36e268",
                  "parent_uuid": "df0132b2-d273-415d-b21b-3dbb51e5219c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72e300fd-9a3c-4f85-94b7-440247f8670e",
              "parent_uuid": "08d3ed32-b5b5-4f7a-ada5-59de7d9b8950",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59305f68-7e23-4f0c-a160-36e2ad172d30",
                  "parent_uuid": "72e300fd-9a3c-4f85-94b7-440247f8670e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71b31601-442f-433a-bafd-8a435d68b6b1",
              "parent_uuid": "08d3ed32-b5b5-4f7a-ada5-59de7d9b8950",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e76b039-e939-4f5d-8e31-b6fcd36a71b6",
                  "parent_uuid": "71b31601-442f-433a-bafd-8a435d68b6b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c9573b3-6a59-4d95-8feb-5dfec1bf60d0",
              "parent_uuid": "08d3ed32-b5b5-4f7a-ada5-59de7d9b8950",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e15a9ac-8491-4919-9330-2c48f133be43",
                  "parent_uuid": "0c9573b3-6a59-4d95-8feb-5dfec1bf60d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f8c1984e-7759-4d65-8a0a-08032ea099c3",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d636a08d-b54a-4ef9-b48d-ab9b4247972a",
              "parent_uuid": "f8c1984e-7759-4d65-8a0a-08032ea099c3",
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
              "uuid": "2d57efaf-2474-4797-a6e3-a5ebbcca365f",
              "parent_uuid": "f8c1984e-7759-4d65-8a0a-08032ea099c3",
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
              "innerHtml": "\r\n                    <span>73</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e459aa17-bfca-463e-b077-f55ea0c35b08",
              "parent_uuid": "f8c1984e-7759-4d65-8a0a-08032ea099c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc4a0ba7-8798-4515-b9cc-afe11ee67ffa",
                  "parent_uuid": "e459aa17-bfca-463e-b077-f55ea0c35b08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0cc08c7d-90b2-4cb3-a2a4-7d6cf9aeb74a",
              "parent_uuid": "f8c1984e-7759-4d65-8a0a-08032ea099c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48de9817-98ba-49f3-b804-c7eb8914a6f7",
                  "parent_uuid": "0cc08c7d-90b2-4cb3-a2a4-7d6cf9aeb74a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b055ca95-dcc2-4ba7-aa48-0d74c7bed143",
              "parent_uuid": "f8c1984e-7759-4d65-8a0a-08032ea099c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe5aaf14-9b36-431e-8bb2-ff9af604f674",
                  "parent_uuid": "b055ca95-dcc2-4ba7-aa48-0d74c7bed143",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f34a36fe-44c1-4aac-b843-40fb171324c2",
              "parent_uuid": "f8c1984e-7759-4d65-8a0a-08032ea099c3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52348735-09b3-4511-ab99-207de1bd1b03",
                  "parent_uuid": "f34a36fe-44c1-4aac-b843-40fb171324c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "83bf4c8a-09c7-4c8f-8f26-f459c7c7a366",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ef9e472-8d9e-440e-9f3c-cc0caad9a659",
              "parent_uuid": "83bf4c8a-09c7-4c8f-8f26-f459c7c7a366",
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
              "innerHtml": "\r\n                    <span>Doppelspurbanderolierer reinigen und justieren</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f503fc98-246e-4784-b471-1cfbda3ad89a",
              "parent_uuid": "83bf4c8a-09c7-4c8f-8f26-f459c7c7a366",
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
              "innerHtml": "\r\n                    <span>79</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1847d749-08f0-4b5c-aa33-9786f3225481",
              "parent_uuid": "83bf4c8a-09c7-4c8f-8f26-f459c7c7a366",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cc52b9c0-e11a-4191-b52d-610bdd6ab534",
                  "parent_uuid": "1847d749-08f0-4b5c-aa33-9786f3225481",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aac4754c-e4ea-40b8-bfe1-45867a56636b",
              "parent_uuid": "83bf4c8a-09c7-4c8f-8f26-f459c7c7a366",
              "tagName": "td",
              "properties": [
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
                  "uuid": "15bc382d-0d7d-4742-861f-c17d155e6f5b",
                  "parent_uuid": "aac4754c-e4ea-40b8-bfe1-45867a56636b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1563edce-e209-48fa-8a0c-418f395befe5",
              "parent_uuid": "83bf4c8a-09c7-4c8f-8f26-f459c7c7a366",
              "tagName": "td",
              "properties": [
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
                  "uuid": "410611a9-1964-4e01-bbdc-5afb2e7b74b2",
                  "parent_uuid": "1563edce-e209-48fa-8a0c-418f395befe5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa33c135-a184-4c07-b753-f314154440ec",
              "parent_uuid": "83bf4c8a-09c7-4c8f-8f26-f459c7c7a366",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ee9f641f-2371-4da2-9d97-5396bf6753f0",
                  "parent_uuid": "aa33c135-a184-4c07-b753-f314154440ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0407a62d-71f0-44ea-937a-bb0b8c1f95d7",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f5149ae-c3bf-4a23-91f9-a39b3f2160f5",
              "parent_uuid": "0407a62d-71f0-44ea-937a-bb0b8c1f95d7",
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
              "innerHtml": "\r\n                    <span>Flach- Zahnriemen Hauptantrieb prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d6a4ea4d-89eb-445f-b8e6-f4dbeba6200b",
              "parent_uuid": "0407a62d-71f0-44ea-937a-bb0b8c1f95d7",
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
              "innerHtml": "\r\n                    <span>87</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b36aa102-d950-4d98-807d-bf376838e1e6",
              "parent_uuid": "0407a62d-71f0-44ea-937a-bb0b8c1f95d7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8816eedb-7c3d-42a2-963e-d1070d58e01f",
                  "parent_uuid": "b36aa102-d950-4d98-807d-bf376838e1e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "029e497d-74d1-4607-a317-7b199fdffc9b",
              "parent_uuid": "0407a62d-71f0-44ea-937a-bb0b8c1f95d7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb19f755-7eb9-405d-9130-18e30229ae57",
                  "parent_uuid": "029e497d-74d1-4607-a317-7b199fdffc9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3138fc0-fa2a-4de5-86a1-3911cdbaa9f8",
              "parent_uuid": "0407a62d-71f0-44ea-937a-bb0b8c1f95d7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "216df695-8579-417e-8a09-3562255966cc",
                  "parent_uuid": "a3138fc0-fa2a-4de5-86a1-3911cdbaa9f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5e96f16a-b1b1-470d-96df-8f85d3cf3d25",
              "parent_uuid": "0407a62d-71f0-44ea-937a-bb0b8c1f95d7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b25af470-911b-4e48-9e93-e2fbac1984cc",
                  "parent_uuid": "5e96f16a-b1b1-470d-96df-8f85d3cf3d25",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "98546199-ad7b-4a98-a50c-09860a205579",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84cf16bb-2461-42dd-aaec-401a55f49539",
              "parent_uuid": "98546199-ad7b-4a98-a50c-09860a205579",
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
              "innerHtml": "\r\n                    <span>Rotor und Vereinzlerwalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9c4aa2c1-dc40-41f8-999f-47daba618ba5",
              "parent_uuid": "98546199-ad7b-4a98-a50c-09860a205579",
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
              "uuid": "e7d97a3a-0755-4874-ace5-aada1b1a60f8",
              "parent_uuid": "98546199-ad7b-4a98-a50c-09860a205579",
              "tagName": "td",
              "properties": [
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
                  "uuid": "34f744e8-9d7e-414b-9ab3-7abdfb543da6",
                  "parent_uuid": "e7d97a3a-0755-4874-ace5-aada1b1a60f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a41ff935-2a4b-42ef-bdc8-571562fbc807",
              "parent_uuid": "98546199-ad7b-4a98-a50c-09860a205579",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a98c7dd2-effc-4bca-b92a-548f682eb4fd",
                  "parent_uuid": "a41ff935-2a4b-42ef-bdc8-571562fbc807",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d52be4c-9941-4637-b15d-9eeb0c6092df",
              "parent_uuid": "98546199-ad7b-4a98-a50c-09860a205579",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8bbb9fc3-e4db-470d-9155-c81704f8d850",
                  "parent_uuid": "0d52be4c-9941-4637-b15d-9eeb0c6092df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec83680c-73fd-42e5-a6f8-43dbf9ab3d13",
              "parent_uuid": "98546199-ad7b-4a98-a50c-09860a205579",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9da04872-34b5-45a6-b9e5-c3174209032e",
                  "parent_uuid": "ec83680c-73fd-42e5-a6f8-43dbf9ab3d13",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "92c52cbb-ba91-43f4-8a7e-978681164f73",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af815868-3447-49de-a9ee-734b20445deb",
              "parent_uuid": "92c52cbb-ba91-43f4-8a7e-978681164f73",
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
              "innerHtml": "\r\n                    <span>Rotor und Stator der Rückhaltewalze reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c46f05d6-237d-49b7-9a03-66b3e5f33bcb",
              "parent_uuid": "92c52cbb-ba91-43f4-8a7e-978681164f73",
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
              "uuid": "593b5ebb-116f-4dfd-8363-5b38f5e27e4f",
              "parent_uuid": "92c52cbb-ba91-43f4-8a7e-978681164f73",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2f04d800-eb54-4f08-9f96-c3a6983c1bb0",
                  "parent_uuid": "593b5ebb-116f-4dfd-8363-5b38f5e27e4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b2a61ce-3c1b-4ded-af9d-0a6695f21145",
              "parent_uuid": "92c52cbb-ba91-43f4-8a7e-978681164f73",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1e8e3aed-19ad-4b99-baec-0dc997c813aa",
                  "parent_uuid": "0b2a61ce-3c1b-4ded-af9d-0a6695f21145",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22948a2b-ae69-448e-a5d6-4cd045e93456",
              "parent_uuid": "92c52cbb-ba91-43f4-8a7e-978681164f73",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e6be8cbb-dedf-4780-b737-f86c821a3533",
                  "parent_uuid": "22948a2b-ae69-448e-a5d6-4cd045e93456",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3bd433c-9095-413f-8507-677c0f6a82ce",
              "parent_uuid": "92c52cbb-ba91-43f4-8a7e-978681164f73",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4615c8fb-5b7c-4465-8341-fbc42145e06f",
                  "parent_uuid": "b3bd433c-9095-413f-8507-677c0f6a82ce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5d5a3fe6-3d31-444d-ba80-d4e5eb68b962",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "253ae7dc-9e66-4040-a4c2-901f5104cd06",
              "parent_uuid": "5d5a3fe6-3d31-444d-ba80-d4e5eb68b962",
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
              "uuid": "43ede8bf-829f-4585-9df6-9bb256e4ede8",
              "parent_uuid": "5d5a3fe6-3d31-444d-ba80-d4e5eb68b962",
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
              "uuid": "a344e79b-6ed3-44ca-ae28-b14d2a7efe24",
              "parent_uuid": "5d5a3fe6-3d31-444d-ba80-d4e5eb68b962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "28a3be2c-cc10-4540-ab0a-1fdfdae5ee4c",
                  "parent_uuid": "a344e79b-6ed3-44ca-ae28-b14d2a7efe24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd7700f8-5080-48a5-883e-a08c4b5aa037",
              "parent_uuid": "5d5a3fe6-3d31-444d-ba80-d4e5eb68b962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c0958fc-1f06-46e5-8dc7-cbdfc827aa16",
                  "parent_uuid": "fd7700f8-5080-48a5-883e-a08c4b5aa037",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba1c70e0-5431-47ba-a1b1-3649ad38746f",
              "parent_uuid": "5d5a3fe6-3d31-444d-ba80-d4e5eb68b962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ba9bf1e8-9d46-4451-ad85-9ad8c5e02a18",
                  "parent_uuid": "ba1c70e0-5431-47ba-a1b1-3649ad38746f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00e659df-64ee-4dd0-bc4f-f3524fc38c8f",
              "parent_uuid": "5d5a3fe6-3d31-444d-ba80-d4e5eb68b962",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb0f76f2-cafd-4afb-b2ff-32cb8f726c5e",
                  "parent_uuid": "00e659df-64ee-4dd0-bc4f-f3524fc38c8f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ab91d249-8a73-4c6c-b9c1-0daee3d8d056",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ebd15d63-b556-41fd-97b5-44bd5fb49a47",
              "parent_uuid": "ab91d249-8a73-4c6c-b9c1-0daee3d8d056",
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
              "innerHtml": "\r\n                    <span>Lichtschranken Schiebetürenüberwachung reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0fe299ba-2ecd-414f-ab8c-d9c3bdf9a0fb",
              "parent_uuid": "ab91d249-8a73-4c6c-b9c1-0daee3d8d056",
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
              "uuid": "b71555f4-7c41-4903-b997-6c1da31ab28e",
              "parent_uuid": "ab91d249-8a73-4c6c-b9c1-0daee3d8d056",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0360d457-2038-4c17-860e-5abb6e8f4246",
                  "parent_uuid": "b71555f4-7c41-4903-b997-6c1da31ab28e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2a038d5a-23c9-40ca-a002-f44aa6a8f103",
              "parent_uuid": "ab91d249-8a73-4c6c-b9c1-0daee3d8d056",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1a1f5692-fa9d-4a48-b7f1-fbfc19a88e37",
                  "parent_uuid": "2a038d5a-23c9-40ca-a002-f44aa6a8f103",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d01c4d65-3047-463c-aa0b-743717f96082",
              "parent_uuid": "ab91d249-8a73-4c6c-b9c1-0daee3d8d056",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c96edb9-311b-4579-a299-e23455a2ab21",
                  "parent_uuid": "d01c4d65-3047-463c-aa0b-743717f96082",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "128d109a-9f91-4b3c-b2e2-21b695751737",
              "parent_uuid": "ab91d249-8a73-4c6c-b9c1-0daee3d8d056",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d49235f-1fcd-48df-b397-802a6655585d",
                  "parent_uuid": "128d109a-9f91-4b3c-b2e2-21b695751737",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "584b71a7-a76b-4339-8ee7-f6f5dd2401c2",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3128e793-c8d0-4310-8288-8eba7ac8bfab",
              "parent_uuid": "584b71a7-a76b-4339-8ee7-f6f5dd2401c2",
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
              "innerHtml": "\r\n                    <span>Banknotenweichen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "606352c2-49c9-41a3-9265-ecb68c0200e0",
              "parent_uuid": "584b71a7-a76b-4339-8ee7-f6f5dd2401c2",
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
              "uuid": "5197c090-9fbb-45b5-9a89-3e075aa1eb86",
              "parent_uuid": "584b71a7-a76b-4339-8ee7-f6f5dd2401c2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cb1387a4-c942-4332-be2e-19e3aa44dc91",
                  "parent_uuid": "5197c090-9fbb-45b5-9a89-3e075aa1eb86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "80e99ee7-f513-48f2-a383-e08c86bb75c2",
              "parent_uuid": "584b71a7-a76b-4339-8ee7-f6f5dd2401c2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "edac5dcb-d724-4a5d-b4fc-ce4ba58b9004",
                  "parent_uuid": "80e99ee7-f513-48f2-a383-e08c86bb75c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d0320f3-6c70-4c70-b9dd-d9ba3dcf1da1",
              "parent_uuid": "584b71a7-a76b-4339-8ee7-f6f5dd2401c2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "52c5febc-0377-4393-a047-47b69c57c677",
                  "parent_uuid": "5d0320f3-6c70-4c70-b9dd-d9ba3dcf1da1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7072fe39-97d1-4683-9b75-d946db463368",
              "parent_uuid": "584b71a7-a76b-4339-8ee7-f6f5dd2401c2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bfdc5408-b6a2-4db3-9b6a-f3bacea9e7ba",
                  "parent_uuid": "7072fe39-97d1-4683-9b75-d946db463368",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d8a78619-8dc9-4935-ad77-207a36cecff3",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "25e4dec6-b873-4c93-ba01-c9d928a3c4c3",
              "parent_uuid": "d8a78619-8dc9-4935-ad77-207a36cecff3",
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
              "innerHtml": "\r\n                    <span>Bündler prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b2019da0-81e4-441d-8f4b-04009bbd6bbd",
              "parent_uuid": "d8a78619-8dc9-4935-ad77-207a36cecff3",
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
              "innerHtml": "\r\n                    <span>90</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8c8954fd-c198-4981-862c-af4ba819b52e",
              "parent_uuid": "d8a78619-8dc9-4935-ad77-207a36cecff3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ee43e010-2c81-4664-8012-fd485cb7ccdb",
                  "parent_uuid": "8c8954fd-c198-4981-862c-af4ba819b52e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e73c228a-304a-42c3-a218-1c274ea10803",
              "parent_uuid": "d8a78619-8dc9-4935-ad77-207a36cecff3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b2a334c-9a69-425d-87c6-3230fd7f5710",
                  "parent_uuid": "e73c228a-304a-42c3-a218-1c274ea10803",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9e13c64-94bf-4ed3-a2c2-b143b904728f",
              "parent_uuid": "d8a78619-8dc9-4935-ad77-207a36cecff3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "033479d9-2dc0-48d2-a667-90f76d1a22d2",
                  "parent_uuid": "d9e13c64-94bf-4ed3-a2c2-b143b904728f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37e5d969-f63b-4653-a733-02709752fc33",
              "parent_uuid": "d8a78619-8dc9-4935-ad77-207a36cecff3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "abaab7d7-95eb-4aaa-8bcc-93e153e17443",
                  "parent_uuid": "37e5d969-f63b-4653-a733-02709752fc33",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "42bf0cf4-cf54-4eaf-b140-1cb4aa947123",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "929db890-02b9-4726-a27c-353715b20d1c",
              "parent_uuid": "42bf0cf4-cf54-4eaf-b140-1cb4aa947123",
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
              "uuid": "7b5bb97c-eab9-4604-9e1c-ada1d2e0c5b8",
              "parent_uuid": "42bf0cf4-cf54-4eaf-b140-1cb4aa947123",
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
              "innerHtml": "\r\n                    <span>140</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "c986e40f-3bd1-44d8-861a-4b9df8325d75",
              "parent_uuid": "42bf0cf4-cf54-4eaf-b140-1cb4aa947123",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9e7fdd70-f973-477a-8fe1-5f804d7757ba",
                  "parent_uuid": "c986e40f-3bd1-44d8-861a-4b9df8325d75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f055a06b-cbee-4fbe-a24a-cfd5c170f85b",
              "parent_uuid": "42bf0cf4-cf54-4eaf-b140-1cb4aa947123",
              "tagName": "td",
              "properties": [
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
                  "uuid": "993bc4c0-3919-4842-8318-3d02b695aa86",
                  "parent_uuid": "f055a06b-cbee-4fbe-a24a-cfd5c170f85b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47fb6218-63e2-4b8e-90c8-52fa100e1fcd",
              "parent_uuid": "42bf0cf4-cf54-4eaf-b140-1cb4aa947123",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f680fdc3-2b89-42a2-90ca-25940c9064d0",
                  "parent_uuid": "47fb6218-63e2-4b8e-90c8-52fa100e1fcd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "098d5999-835c-40ba-b2de-a180df110efe",
              "parent_uuid": "42bf0cf4-cf54-4eaf-b140-1cb4aa947123",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea1d1f7e-d459-47a0-bcfc-f33cf5b51ba8",
                  "parent_uuid": "098d5999-835c-40ba-b2de-a180df110efe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "128dffb0-c773-454d-84a7-67041ca421b3",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80d86753-3fda-4e8c-a054-4492ed6f8e48",
              "parent_uuid": "128dffb0-c773-454d-84a7-67041ca421b3",
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
              "uuid": "c04b8c12-ab67-4d15-a703-8234773ab4ee",
              "parent_uuid": "128dffb0-c773-454d-84a7-67041ca421b3",
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
              "uuid": "9aba284a-e659-4197-8dcb-a4a0529944e8",
              "parent_uuid": "128dffb0-c773-454d-84a7-67041ca421b3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4cad4bf3-1625-4630-b809-fefe18aab668",
                  "parent_uuid": "9aba284a-e659-4197-8dcb-a4a0529944e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff15e6c0-b4ee-44d7-8032-c44cf2c3ce7a",
              "parent_uuid": "128dffb0-c773-454d-84a7-67041ca421b3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6789a6e4-70a5-473a-b2b4-e8977abef6d3",
                  "parent_uuid": "ff15e6c0-b4ee-44d7-8032-c44cf2c3ce7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ccb7717-02e4-4701-a254-8f0f26b6b424",
              "parent_uuid": "128dffb0-c773-454d-84a7-67041ca421b3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4331e53e-6628-4be5-89b5-bd429c9fd09a",
                  "parent_uuid": "8ccb7717-02e4-4701-a254-8f0f26b6b424",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "371feedc-728b-4ec1-ac7a-a04db7ab6ca6",
              "parent_uuid": "128dffb0-c773-454d-84a7-67041ca421b3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8f24f9b0-b279-482f-882e-4af8aeefa1de",
                  "parent_uuid": "371feedc-728b-4ec1-ac7a-a04db7ab6ca6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "afabdde7-e137-4a8e-9fd9-9c3caa022cca",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46657686-d63e-4c60-9fc9-8c1b25fa1aa8",
              "parent_uuid": "afabdde7-e137-4a8e-9fd9-9c3caa022cca",
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
              "uuid": "78c8fc49-8224-4b63-bceb-cb3f70ac5698",
              "parent_uuid": "afabdde7-e137-4a8e-9fd9-9c3caa022cca",
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
              "innerHtml": "\r\n                    <span>99</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e3ecbd5b-662a-4591-9770-fe795d3557f7",
              "parent_uuid": "afabdde7-e137-4a8e-9fd9-9c3caa022cca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3f5955ac-50f6-4038-915d-a44528b4da83",
                  "parent_uuid": "e3ecbd5b-662a-4591-9770-fe795d3557f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a22d77ec-1484-46f6-b5eb-08ca915e5b44",
              "parent_uuid": "afabdde7-e137-4a8e-9fd9-9c3caa022cca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "15bf3e07-8697-4f79-96e4-8f04f026fae4",
                  "parent_uuid": "a22d77ec-1484-46f6-b5eb-08ca915e5b44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2c440db-3631-4ecb-a246-e1516b25e8ae",
              "parent_uuid": "afabdde7-e137-4a8e-9fd9-9c3caa022cca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8a17dd8e-8409-4c24-86c2-6c35336c9282",
                  "parent_uuid": "b2c440db-3631-4ecb-a246-e1516b25e8ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a823b1a7-4be6-4aea-bdc2-29f44feebffe",
              "parent_uuid": "afabdde7-e137-4a8e-9fd9-9c3caa022cca",
              "tagName": "td",
              "properties": [
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
                  "uuid": "285da8f8-6cc3-436d-a575-b8dfc0786117",
                  "parent_uuid": "a823b1a7-4be6-4aea-bdc2-29f44feebffe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f3f6f3b-5a8c-4bfd-8f0e-aca6b05f7e35",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42284e34-d752-4c33-943f-f68ab93e2f66",
              "parent_uuid": "0f3f6f3b-5a8c-4bfd-8f0e-aca6b05f7e35",
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
              "uuid": "91f5d6ca-6bf5-4580-9044-e8041653fc9d",
              "parent_uuid": "0f3f6f3b-5a8c-4bfd-8f0e-aca6b05f7e35",
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
              "innerHtml": "\r\n                    <span>94</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "63a2a06c-09fc-4ae9-9cde-f0740b6f9283",
              "parent_uuid": "0f3f6f3b-5a8c-4bfd-8f0e-aca6b05f7e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6775631d-1e9a-4d8a-b55d-8c29e0968066",
                  "parent_uuid": "63a2a06c-09fc-4ae9-9cde-f0740b6f9283",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8efbd4ac-132b-4209-8d5f-49d3519cde6c",
              "parent_uuid": "0f3f6f3b-5a8c-4bfd-8f0e-aca6b05f7e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "69f291a3-25c7-4edc-9d83-dbe4fe6326d4",
                  "parent_uuid": "8efbd4ac-132b-4209-8d5f-49d3519cde6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b26b8927-8b7e-4c50-b7d4-cdc89c282285",
              "parent_uuid": "0f3f6f3b-5a8c-4bfd-8f0e-aca6b05f7e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6f4982ea-3364-4100-abf3-89bd1e843d42",
                  "parent_uuid": "b26b8927-8b7e-4c50-b7d4-cdc89c282285",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39003d0e-5e39-4af8-bd57-aa8d553906a4",
              "parent_uuid": "0f3f6f3b-5a8c-4bfd-8f0e-aca6b05f7e35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "52e935a8-8ac6-47ea-9a51-9d74ff2ae698",
                  "parent_uuid": "39003d0e-5e39-4af8-bd57-aa8d553906a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0fb6cfc2-56b7-4aee-9eb4-d604b397bd9f",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc95f3d3-414c-4f71-82ea-b98482a76cbb",
              "parent_uuid": "0fb6cfc2-56b7-4aee-9eb4-d604b397bd9f",
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
              "uuid": "7eec4260-60f1-4693-a2c4-f4a0faa65026",
              "parent_uuid": "0fb6cfc2-56b7-4aee-9eb4-d604b397bd9f",
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
              "innerHtml": "\r\n                    <span>66</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "acab8e9f-f173-4e39-bfbd-7dac2970c22d",
              "parent_uuid": "0fb6cfc2-56b7-4aee-9eb4-d604b397bd9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f0f9ff74-97ce-4eec-aee8-0a285dd5eac2",
                  "parent_uuid": "acab8e9f-f173-4e39-bfbd-7dac2970c22d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ccc10ce9-2a33-475a-b761-fe3e3f011f36",
              "parent_uuid": "0fb6cfc2-56b7-4aee-9eb4-d604b397bd9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2a123915-afc7-4e93-bb29-1b9d0e7cdccd",
                  "parent_uuid": "ccc10ce9-2a33-475a-b761-fe3e3f011f36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa878d0a-9c26-4fc8-85d2-21a487be85f7",
              "parent_uuid": "0fb6cfc2-56b7-4aee-9eb4-d604b397bd9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9070cebe-3be0-4509-b44e-0338a5cc7e49",
                  "parent_uuid": "aa878d0a-9c26-4fc8-85d2-21a487be85f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c45882f-86ed-4815-b71c-3a87a4c6bd91",
              "parent_uuid": "0fb6cfc2-56b7-4aee-9eb4-d604b397bd9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "74d7c360-9ae6-4f9b-af60-6fb6737d1856",
                  "parent_uuid": "2c45882f-86ed-4815-b71c-3a87a4c6bd91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c459d5a0-5826-4a7c-ba9d-aa30f60d515c",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33365d27-701f-4aba-b0f3-0cb7c65deef5",
              "parent_uuid": "c459d5a0-5826-4a7c-ba9d-aa30f60d515c",
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
              "uuid": "5a6aa838-448d-4f43-9a25-fdc2c0ec53c2",
              "parent_uuid": "c459d5a0-5826-4a7c-ba9d-aa30f60d515c",
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
              "uuid": "4f0669b6-7149-40b9-94e5-8e17ff428508",
              "parent_uuid": "c459d5a0-5826-4a7c-ba9d-aa30f60d515c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "87d5a234-07f1-4ab3-83cc-603cc1effc54",
                  "parent_uuid": "4f0669b6-7149-40b9-94e5-8e17ff428508",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61dadb82-8753-472b-b13d-a927473c59fc",
              "parent_uuid": "c459d5a0-5826-4a7c-ba9d-aa30f60d515c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5e6bc917-7952-46c1-bea0-4b48e96a987d",
                  "parent_uuid": "61dadb82-8753-472b-b13d-a927473c59fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2daeb747-9665-414f-97cc-c497dda670a8",
              "parent_uuid": "c459d5a0-5826-4a7c-ba9d-aa30f60d515c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "efdbc1db-a2e6-4592-8c0e-ef8ea6d86a0a",
                  "parent_uuid": "2daeb747-9665-414f-97cc-c497dda670a8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb259581-d2e9-413e-b095-626a518535d9",
              "parent_uuid": "c459d5a0-5826-4a7c-ba9d-aa30f60d515c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a58f197b-19c5-438a-aa39-522b8bfc872d",
                  "parent_uuid": "bb259581-d2e9-413e-b095-626a518535d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "07791a8f-3e7a-4b75-a87a-366a626e26d9",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c567f0f-f25a-40f9-a3b1-9c0aa8be31e8",
              "parent_uuid": "07791a8f-3e7a-4b75-a87a-366a626e26d9",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "df5baf75-f33d-4040-9efd-554a109eefb3",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de3ca05a-9c34-424b-bbff-a7da06f70a3f",
              "parent_uuid": "df5baf75-f33d-4040-9efd-554a109eefb3",
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "92ed97a5-1dd4-43ad-af5c-e5cf7b160dbb",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fbe633d4-31de-4b05-a023-07eadc9371a6",
              "parent_uuid": "92ed97a5-1dd4-43ad-af5c-e5cf7b160dbb",
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
                  "uuid": "465afe90-ac41-413e-a2bb-baf14c225e62",
                  "parent_uuid": "fbe633d4-31de-4b05-a023-07eadc9371a6",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "9f22cb29-ab0a-4336-9abc-f930c418748a",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "a21cbf2d-86c5-4376-91c6-3064eff9b7dd",
              "parent_uuid": "9f22cb29-ab0a-4336-9abc-f930c418748a",
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "6bbd6ed1-822c-4450-85a1-9174694cc842",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f9b80cd5-c85d-4d02-8478-b4c7c313a2e5",
              "parent_uuid": "6bbd6ed1-822c-4450-85a1-9174694cc842",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "3a106832-e734-4104-a4b5-0f549b15fafe",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efe490d6-8625-4f04-ad96-4372a7a09ee9",
              "parent_uuid": "3a106832-e734-4104-a4b5-0f549b15fafe",
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
              "innerHtml": "<span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b2f717e4-6a68-4273-9971-5d84886c841d",
              "parent_uuid": "3a106832-e734-4104-a4b5-0f549b15fafe",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "58c05279-f939-408c-ac0b-adc68c125547",
              "parent_uuid": "3a106832-e734-4104-a4b5-0f549b15fafe",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "2ecd7c82-4ebc-46fa-bac0-1ef0d5690045",
              "parent_uuid": "3a106832-e734-4104-a4b5-0f549b15fafe",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "c7674354-958f-4d8d-9028-39c29f00e15d",
              "parent_uuid": "3a106832-e734-4104-a4b5-0f549b15fafe",
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
              "uuid": "9e525a4b-270a-47e1-9864-29309bf84448",
              "parent_uuid": "3a106832-e734-4104-a4b5-0f549b15fafe",
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
              "innerHtml": "\r\n                    <span class=\"vert\"><br></span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "03e70d97-3667-460e-9655-90f8a61f4b4b",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "34d10885-40f8-4e1c-b7c3-3844f8911b35",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79ad21a5-1ca2-4e45-89ae-ad763c80fb38",
              "parent_uuid": "34d10885-40f8-4e1c-b7c3-3844f8911b35",
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
              "uuid": "8ceec5d4-7912-4ec6-a0d8-fe0cf395832b",
              "parent_uuid": "34d10885-40f8-4e1c-b7c3-3844f8911b35",
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
              "innerHtml": "\r\n                    <span>148</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "55e1481c-37ee-4df3-b940-432581b2095d",
              "parent_uuid": "34d10885-40f8-4e1c-b7c3-3844f8911b35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8145fd45-d69e-4303-910b-fe213d8043b3",
                  "parent_uuid": "55e1481c-37ee-4df3-b940-432581b2095d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b842faa-b499-47b7-9453-9e9df1b173a6",
              "parent_uuid": "34d10885-40f8-4e1c-b7c3-3844f8911b35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ae1dc68c-125f-452a-9fd6-b453511da5a1",
                  "parent_uuid": "1b842faa-b499-47b7-9453-9e9df1b173a6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10e0c54b-43a6-44f7-842c-2b76d632a7eb",
              "parent_uuid": "34d10885-40f8-4e1c-b7c3-3844f8911b35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e070cf16-e424-42b6-ac1a-0edbd2b7f87d",
                  "parent_uuid": "10e0c54b-43a6-44f7-842c-2b76d632a7eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29736030-59ae-4390-a9d1-e85502faf8f2",
              "parent_uuid": "34d10885-40f8-4e1c-b7c3-3844f8911b35",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3c3eface-d08e-4b95-a1de-ba3e7545d0d7",
                  "parent_uuid": "29736030-59ae-4390-a9d1-e85502faf8f2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0bb6b1fd-0646-4bcd-89cc-2af4c35e1145",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "90eba0bb-7741-431f-83e4-f16f5af877ae",
              "parent_uuid": "0bb6b1fd-0646-4bcd-89cc-2af4c35e1145",
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
              "uuid": "30839d2d-7554-4bcb-8080-0f51acefb9f6",
              "parent_uuid": "0bb6b1fd-0646-4bcd-89cc-2af4c35e1145",
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
              "innerHtml": "\r\n                    <span>103</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "557cb7cc-4447-46b9-906e-6d35d1d12172",
              "parent_uuid": "0bb6b1fd-0646-4bcd-89cc-2af4c35e1145",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a07fb089-2d17-4a3e-a4fd-6de4ec41be4e",
                  "parent_uuid": "557cb7cc-4447-46b9-906e-6d35d1d12172",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ef671da-0125-4aa9-8d03-8bacb90f8a52",
              "parent_uuid": "0bb6b1fd-0646-4bcd-89cc-2af4c35e1145",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8b4e7c1b-dcd3-4a92-a928-7f3ee98c5cbc",
                  "parent_uuid": "1ef671da-0125-4aa9-8d03-8bacb90f8a52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d7f461a-ce59-4253-b051-e884fdf6aa92",
              "parent_uuid": "0bb6b1fd-0646-4bcd-89cc-2af4c35e1145",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6ee4a417-5ae9-4236-8112-ed4c3ac97673",
                  "parent_uuid": "8d7f461a-ce59-4253-b051-e884fdf6aa92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1dedcd4-75cb-4e6f-b33e-f3d115de9c69",
              "parent_uuid": "0bb6b1fd-0646-4bcd-89cc-2af4c35e1145",
              "tagName": "td",
              "properties": [
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
                  "uuid": "965651c3-172c-4477-bda9-9268bb8bf5c0",
                  "parent_uuid": "c1dedcd4-75cb-4e6f-b33e-f3d115de9c69",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c86ad602-5338-412f-9a73-2fcc249c93ec",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1fbc866e-aba6-47fc-88d0-32d2b761a59a",
              "parent_uuid": "c86ad602-5338-412f-9a73-2fcc249c93ec",
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
              "uuid": "d0557595-8176-4f4f-bb0d-f2afb8bb7f24",
              "parent_uuid": "c86ad602-5338-412f-9a73-2fcc249c93ec",
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
              "uuid": "7789986d-e826-4084-b815-432ecf5721fc",
              "parent_uuid": "c86ad602-5338-412f-9a73-2fcc249c93ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "58db4440-2b96-4f25-b605-54d140afea03",
                  "parent_uuid": "7789986d-e826-4084-b815-432ecf5721fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dece1c2-d0cb-4cb9-b4ed-00edae94e9c8",
              "parent_uuid": "c86ad602-5338-412f-9a73-2fcc249c93ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "40d9482d-fe8f-461d-9ded-b2320521d7f8",
                  "parent_uuid": "0dece1c2-d0cb-4cb9-b4ed-00edae94e9c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cb34725c-5bcf-40ff-b191-cc03c7c55efc",
              "parent_uuid": "c86ad602-5338-412f-9a73-2fcc249c93ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1c69ebfe-97ad-408d-b948-8cf114b9c8a7",
                  "parent_uuid": "cb34725c-5bcf-40ff-b191-cc03c7c55efc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9c6b43c-8d81-4ede-ad3a-eac28ddcc7cc",
              "parent_uuid": "c86ad602-5338-412f-9a73-2fcc249c93ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "975864b8-a825-450f-b9bb-27d6955eacd3",
                  "parent_uuid": "e9c6b43c-8d81-4ede-ad3a-eac28ddcc7cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "41cd7758-62a7-4803-83af-9dd9e438e613",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bd266ddd-63fd-4513-b946-47614fd968cb",
              "parent_uuid": "41cd7758-62a7-4803-83af-9dd9e438e613",
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
              "uuid": "e7f8c83a-6556-4008-a846-e9b4d435d586",
              "parent_uuid": "41cd7758-62a7-4803-83af-9dd9e438e613",
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
              "innerHtml": "\r\n                    <span>102</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f2326369-a4fb-4ca9-90e3-ae79394b33b0",
              "parent_uuid": "41cd7758-62a7-4803-83af-9dd9e438e613",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ca3b0f4f-6dd5-4fe5-8ddd-4f11a77625fc",
                  "parent_uuid": "f2326369-a4fb-4ca9-90e3-ae79394b33b0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "519d498e-4610-4593-9f69-7cd5e0b15e2b",
              "parent_uuid": "41cd7758-62a7-4803-83af-9dd9e438e613",
              "tagName": "td",
              "properties": [
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
                  "uuid": "707a2b6d-5dda-4198-88e9-bdaceadcb016",
                  "parent_uuid": "519d498e-4610-4593-9f69-7cd5e0b15e2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "092e7a39-8f70-4383-a504-8c34066d5827",
              "parent_uuid": "41cd7758-62a7-4803-83af-9dd9e438e613",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1eb97f19-7344-4773-9c61-de832955c07a",
                  "parent_uuid": "092e7a39-8f70-4383-a504-8c34066d5827",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4e9911d-401a-4a95-9481-fffc8663421b",
              "parent_uuid": "41cd7758-62a7-4803-83af-9dd9e438e613",
              "tagName": "td",
              "properties": [
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
                  "uuid": "01452500-0f97-4a5f-ad6f-21c59e6a9952",
                  "parent_uuid": "f4e9911d-401a-4a95-9481-fffc8663421b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bd9c5512-6c04-400e-84d5-48a3a5ff9e63",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f0ad268-8953-4cde-b857-5f5978b73b62",
              "parent_uuid": "bd9c5512-6c04-400e-84d5-48a3a5ff9e63",
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
          "uuid": "680a9efc-1e1c-4d05-b62f-388440ed9370",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54e5ab1a-0847-413f-8bcd-71b3941a23b9",
              "parent_uuid": "680a9efc-1e1c-4d05-b62f-388440ed9370",
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
          "uuid": "b8c3ce78-82d4-4751-a402-3d71779ec21c",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5caf92d2-b81f-4e22-9147-78ef9ae8210e",
              "parent_uuid": "b8c3ce78-82d4-4751-a402-3d71779ec21c",
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
                  "uuid": "8b95987b-15d3-444e-9a21-69d0724de52c",
                  "parent_uuid": "5caf92d2-b81f-4e22-9147-78ef9ae8210e",
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
        },
        {
          "uuid": "00b3d623-c6a5-45ba-8861-c7c423d04c6c",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "6db51363-2080-4b56-b5aa-dd2da622c89c",
              "parent_uuid": "00b3d623-c6a5-45ba-8861-c7c423d04c6c",
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
                  "height",
                  "60"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "995c73b4-c12f-4601-8f26-92da6daaa998",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8af8d9cb-ecbe-4660-a0cb-32b49f8e997c",
              "parent_uuid": "995c73b4-c12f-4601-8f26-92da6daaa998",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 2px solid #000000; border-left: 1px solid #000000"
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
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "d0c85697-61a6-4df1-9a8c-8ce66ebb4365",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06702ac2-c2a1-4497-be8d-f27e508cac66",
              "parent_uuid": "d0c85697-61a6-4df1-9a8c-8ce66ebb4365",
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
              "uuid": "ea1958cf-5945-45e7-b94c-cc38f140a88d",
              "parent_uuid": "d0c85697-61a6-4df1-9a8c-8ce66ebb4365",
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
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungshandbuch</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9f79c392-2a8c-4636-a087-22354e4c2bab",
              "parent_uuid": "d0c85697-61a6-4df1-9a8c-8ce66ebb4365",
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
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "4650af7f-1c08-4dc7-8ea3-40cb0303494b",
              "parent_uuid": "d0c85697-61a6-4df1-9a8c-8ce66ebb4365",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "600b8637-bd4e-4ef5-8a52-96fe3534678e",
              "parent_uuid": "d0c85697-61a6-4df1-9a8c-8ce66ebb4365",
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
              "uuid": "4c65fc49-1771-4867-b94c-751a85ef7c55",
              "parent_uuid": "d0c85697-61a6-4df1-9a8c-8ce66ebb4365",
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
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "85a2000c-f931-4c5e-9277-fc05d006dda2",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a6e37d55-5dbb-4e99-ad46-da98b74561da",
              "parent_uuid": "85a2000c-f931-4c5e-9277-fc05d006dda2",
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
              "uuid": "4973edcf-68e5-4854-a3e6-37832b5d35c0",
              "parent_uuid": "85a2000c-f931-4c5e-9277-fc05d006dda2",
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
              "uuid": "76b7bba6-95be-4f87-a779-b6e4aeaa6b87",
              "parent_uuid": "85a2000c-f931-4c5e-9277-fc05d006dda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5221bdaf-d717-4aba-8814-83c160f5d21d",
                  "parent_uuid": "76b7bba6-95be-4f87-a779-b6e4aeaa6b87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b31bb889-0792-463f-bf2d-3884a0d6636b",
              "parent_uuid": "85a2000c-f931-4c5e-9277-fc05d006dda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "04051d1e-1066-4618-b094-22264bed43dd",
                  "parent_uuid": "b31bb889-0792-463f-bf2d-3884a0d6636b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e86583eb-0118-45f0-b8bf-9e7e8875e291",
              "parent_uuid": "85a2000c-f931-4c5e-9277-fc05d006dda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "89f23302-16cf-476f-8ba7-aa398f5386ec",
                  "parent_uuid": "e86583eb-0118-45f0-b8bf-9e7e8875e291",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ea7815f-506f-4d4a-b035-772a969457b5",
              "parent_uuid": "85a2000c-f931-4c5e-9277-fc05d006dda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2db63dc5-e85d-4859-9f14-e03bebca0a8b",
                  "parent_uuid": "1ea7815f-506f-4d4a-b035-772a969457b5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "70f15c81-78a4-483a-b905-9bd0e55c75ec",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57e09823-7886-4c86-9bda-5d8b7ecbd7ae",
              "parent_uuid": "70f15c81-78a4-483a-b905-9bd0e55c75ec",
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
              "uuid": "e5592ee4-a25f-47a5-8266-76821f1c12e9",
              "parent_uuid": "70f15c81-78a4-483a-b905-9bd0e55c75ec",
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
              "innerHtml": "\r\n                    <span>109</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "ff8b23fd-1dfb-44d5-a71c-28e3cf69ddc8",
              "parent_uuid": "70f15c81-78a4-483a-b905-9bd0e55c75ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ce8b9341-5eb8-4dcc-bb83-e783f8cd4307",
                  "parent_uuid": "ff8b23fd-1dfb-44d5-a71c-28e3cf69ddc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8070d689-8e83-4f5b-bffe-fbb707503f9c",
              "parent_uuid": "70f15c81-78a4-483a-b905-9bd0e55c75ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2c9d36b0-3edc-49f8-af7b-1cd99111b281",
                  "parent_uuid": "8070d689-8e83-4f5b-bffe-fbb707503f9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2375b6ff-17c7-454e-b68b-3d782b05d429",
              "parent_uuid": "70f15c81-78a4-483a-b905-9bd0e55c75ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c1e58489-9fb3-4868-b06d-395adf42ce7e",
                  "parent_uuid": "2375b6ff-17c7-454e-b68b-3d782b05d429",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4934aca5-6594-4f75-b2c8-f86ecbba9504",
              "parent_uuid": "70f15c81-78a4-483a-b905-9bd0e55c75ec",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7d2a0638-20c6-431f-a3fe-f07db9a04b34",
                  "parent_uuid": "4934aca5-6594-4f75-b2c8-f86ecbba9504",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "93829191-c5da-41a9-b8c9-f66033e3baf7",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "448d28f1-78a9-46d6-ae26-17ee0cf493bb",
              "parent_uuid": "93829191-c5da-41a9-b8c9-f66033e3baf7",
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
              "uuid": "735c2bf1-023b-4ac8-9cc5-26e7d497842e",
              "parent_uuid": "93829191-c5da-41a9-b8c9-f66033e3baf7",
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
              "innerHtml": "\r\n                    <span>112</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6760b1a8-32f0-4ba7-a306-64fb40db8b59",
              "parent_uuid": "93829191-c5da-41a9-b8c9-f66033e3baf7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "822b629f-7cd1-4fc7-9f05-c8ac8686ea63",
                  "parent_uuid": "6760b1a8-32f0-4ba7-a306-64fb40db8b59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da6986ab-488c-47b8-a532-d3d6cfbdc8d3",
              "parent_uuid": "93829191-c5da-41a9-b8c9-f66033e3baf7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c862a150-3bd8-4785-85f0-7bff968b38e6",
                  "parent_uuid": "da6986ab-488c-47b8-a532-d3d6cfbdc8d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9f8c9f2-57e9-412b-b972-2e42089114de",
              "parent_uuid": "93829191-c5da-41a9-b8c9-f66033e3baf7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0f25e467-33ba-4414-99e4-1c1691676c5b",
                  "parent_uuid": "b9f8c9f2-57e9-412b-b972-2e42089114de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65ef2f65-bc2f-49dc-88d0-e0bc89ab6b9c",
              "parent_uuid": "93829191-c5da-41a9-b8c9-f66033e3baf7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea9fa3d4-bcdb-416b-83c2-9020e0b1c89d",
                  "parent_uuid": "65ef2f65-bc2f-49dc-88d0-e0bc89ab6b9c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "66142f27-98f7-413e-af29-b2ba79c122e6",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e09e0a0-87d5-4b0d-8c2e-32f20c7399d4",
              "parent_uuid": "66142f27-98f7-413e-af29-b2ba79c122e6",
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
              "uuid": "b4904d35-7cb6-484d-9e0f-a10afb7a340b",
              "parent_uuid": "66142f27-98f7-413e-af29-b2ba79c122e6",
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
              "uuid": "30eb5293-6cdb-4e4a-916d-892c1ed2fc47",
              "parent_uuid": "66142f27-98f7-413e-af29-b2ba79c122e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "01595d2a-4cad-49f5-847e-37f7a9161d5d",
                  "parent_uuid": "30eb5293-6cdb-4e4a-916d-892c1ed2fc47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a45dc2e-dfdc-4df1-b8b7-f1679f2f28b5",
              "parent_uuid": "66142f27-98f7-413e-af29-b2ba79c122e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3697b5b1-67c9-4a90-9a6a-8974d5b6180b",
                  "parent_uuid": "7a45dc2e-dfdc-4df1-b8b7-f1679f2f28b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "775985b1-f549-4e6e-8d75-11bb54fdcac4",
              "parent_uuid": "66142f27-98f7-413e-af29-b2ba79c122e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bacce665-1ab9-44d9-8aea-c9142e23491a",
                  "parent_uuid": "775985b1-f549-4e6e-8d75-11bb54fdcac4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f14cac8c-5a25-48e7-a2ba-f2a1623f64a4",
              "parent_uuid": "66142f27-98f7-413e-af29-b2ba79c122e6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e76b4a61-55f4-46e3-8b30-17d86ee4c1f6",
                  "parent_uuid": "f14cac8c-5a25-48e7-a2ba-f2a1623f64a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "1c8fc322-959a-4dba-b55d-9e59df573e24",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc0ddf16-c689-430c-902a-44035f55c71c",
              "parent_uuid": "1c8fc322-959a-4dba-b55d-9e59df573e24",
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
              "uuid": "b56a49a9-3368-4e93-8d7e-85020354314b",
              "parent_uuid": "1c8fc322-959a-4dba-b55d-9e59df573e24",
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
              "innerHtml": "\r\n                    <span>150</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "967a4278-dd0c-4f31-a5e2-a82be243878b",
              "parent_uuid": "1c8fc322-959a-4dba-b55d-9e59df573e24",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a4b67ff0-8bd0-4b88-8ad4-57def15090f2",
                  "parent_uuid": "967a4278-dd0c-4f31-a5e2-a82be243878b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cfe633a-2b78-49fe-821c-3ea0f2b196d1",
              "parent_uuid": "1c8fc322-959a-4dba-b55d-9e59df573e24",
              "tagName": "td",
              "properties": [
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
                  "uuid": "89a8ae5a-ce94-4028-acaa-54473fc9e906",
                  "parent_uuid": "9cfe633a-2b78-49fe-821c-3ea0f2b196d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "524b2b3d-a08b-4474-ad1b-15dcbc1f1bbf",
              "parent_uuid": "1c8fc322-959a-4dba-b55d-9e59df573e24",
              "tagName": "td",
              "properties": [
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
                  "uuid": "31a8861d-3f77-426f-b8ee-302377f7254f",
                  "parent_uuid": "524b2b3d-a08b-4474-ad1b-15dcbc1f1bbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d21c839e-3838-42aa-be61-5a2335e7ecfa",
              "parent_uuid": "1c8fc322-959a-4dba-b55d-9e59df573e24",
              "tagName": "td",
              "properties": [
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
                  "uuid": "99133b36-e890-46a4-93e9-243c325cf6ba",
                  "parent_uuid": "d21c839e-3838-42aa-be61-5a2335e7ecfa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "b15891be-76f1-43ac-829a-700d9f1c463a",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4e2decd-211d-4d61-9156-94adecdfbcd4",
              "parent_uuid": "b15891be-76f1-43ac-829a-700d9f1c463a",
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
              "uuid": "8dd361b7-2ed2-4309-a2d8-1ec8e21279a1",
              "parent_uuid": "b15891be-76f1-43ac-829a-700d9f1c463a",
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
              "innerHtml": "\r\n                    <span>106</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "38d1c6c0-ac91-40db-af0e-07b33b9d0c6c",
              "parent_uuid": "b15891be-76f1-43ac-829a-700d9f1c463a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "50096803-24ac-4720-91d5-bf812e4a6435",
                  "parent_uuid": "38d1c6c0-ac91-40db-af0e-07b33b9d0c6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c59927e8-de7e-41dd-be82-dbeaecfd09d8",
              "parent_uuid": "b15891be-76f1-43ac-829a-700d9f1c463a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3a90a323-a7bb-485b-92f6-cc3854211b1a",
                  "parent_uuid": "c59927e8-de7e-41dd-be82-dbeaecfd09d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34a085d4-5bc3-4e73-ac68-a5581ad8014e",
              "parent_uuid": "b15891be-76f1-43ac-829a-700d9f1c463a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "da323d29-063b-498a-9b93-58f725759787",
                  "parent_uuid": "34a085d4-5bc3-4e73-ac68-a5581ad8014e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0355980b-168a-4c04-a674-c9a0d894e747",
              "parent_uuid": "b15891be-76f1-43ac-829a-700d9f1c463a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c73279f9-344e-4ce5-938d-92bb1b552a1e",
                  "parent_uuid": "0355980b-168a-4c04-a674-c9a0d894e747",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "27402fb3-94fe-4531-b255-1a4eabb7fe9e",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8fecf162-3b76-476d-863b-54c4853a4020",
              "parent_uuid": "27402fb3-94fe-4531-b255-1a4eabb7fe9e",
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
          "sort": 43,
          "lvl": 0
        },
        {
          "uuid": "6b4f5375-a560-4ae2-988d-74990158e5be",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22e77014-8b26-40e8-a085-e34510ca11fa",
              "parent_uuid": "6b4f5375-a560-4ae2-988d-74990158e5be",
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
          "sort": 44,
          "lvl": 0
        },
        {
          "uuid": "300352f9-79b1-45af-809f-9ef3ec67ae6a",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21f3e03c-4370-41bd-bbfb-916deff9d2a2",
              "parent_uuid": "300352f9-79b1-45af-809f-9ef3ec67ae6a",
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
                  "uuid": "ef8e61e4-82b2-4256-ba26-8bbb593575ea",
                  "parent_uuid": "21f3e03c-4370-41bd-bbfb-916deff9d2a2",
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
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "9ea3f0ae-3460-4f41-8bab-8659f52cf81d",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "84a9f16a-6d1b-475a-ab77-e912dac0735e",
              "parent_uuid": "9ea3f0ae-3460-4f41-8bab-8659f52cf81d",
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
          "sort": 46,
          "lvl": 0
        },
        {
          "uuid": "407af436-0cd3-4aab-811d-5581e5ea5882",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "79ddd391-6af7-414c-8dd3-a753961019f0",
              "parent_uuid": "407af436-0cd3-4aab-811d-5581e5ea5882",
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
          "sort": 47,
          "lvl": 0
        },
        {
          "uuid": "a8ee262a-a79d-46d9-9c3b-882f8bbf23f1",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8fe938ca-d620-4157-8f2b-297ecf87563c",
              "parent_uuid": "a8ee262a-a79d-46d9-9c3b-882f8bbf23f1",
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
                  "border-right: none; vertical-align: bottom;"
                ]
              ],
              "innerHtml": "\r\n                    <span>Artikel</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "f90102ea-c65b-4b03-90f6-244268ea86c0",
              "parent_uuid": "a8ee262a-a79d-46d9-9c3b-882f8bbf23f1",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "2"
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
              "uuid": "a95a2c12-e23f-4399-8f1a-dd34972d103f",
              "parent_uuid": "a8ee262a-a79d-46d9-9c3b-882f8bbf23f1",
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
              "uuid": "7b30c668-a8f7-4ddc-a424-e94a6d215132",
              "parent_uuid": "a8ee262a-a79d-46d9-9c3b-882f8bbf23f1",
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
              "uuid": "6dc6c523-ceaa-4c63-9ed6-fdd9b6bc3d3c",
              "parent_uuid": "a8ee262a-a79d-46d9-9c3b-882f8bbf23f1",
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
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "01f85a88-8687-4bd0-a2d2-4ba528630e73",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2200d37d-c48f-4773-83c8-15752e3962e1",
              "parent_uuid": "01f85a88-8687-4bd0-a2d2-4ba528630e73",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 3467 (M415)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "37834e07-5c8e-41e1-adb3-95050795bdb8",
              "parent_uuid": "01f85a88-8687-4bd0-a2d2-4ba528630e73",
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
              "innerHtml": "\r\n                    <span>262 407 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e766ea4a-0b39-4f37-b53a-e5134e21ac12",
              "parent_uuid": "01f85a88-8687-4bd0-a2d2-4ba528630e73",
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
              "uuid": "6ad2bbf9-1938-4ee6-8e9f-64c853724c4e",
              "parent_uuid": "01f85a88-8687-4bd0-a2d2-4ba528630e73",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "e4c0258c-98c0-4135-a6bb-d7039cdb6deb",
              "parent_uuid": "01f85a88-8687-4bd0-a2d2-4ba528630e73",
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
          "uuid": "cbfe15bf-8b99-431b-a03d-0478f0d39258",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5a88e36-e597-45bf-a59f-4919fd778327",
              "parent_uuid": "cbfe15bf-8b99-431b-a03d-0478f0d39258",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2409 (M414)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "524d5f23-b703-4f15-a665-e7edfb8fa540",
              "parent_uuid": "cbfe15bf-8b99-431b-a03d-0478f0d39258",
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
              "innerHtml": "\r\n                    <span>263 536 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f318911c-2c85-43eb-bc52-40381ef2c4c2",
              "parent_uuid": "cbfe15bf-8b99-431b-a03d-0478f0d39258",
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
              "uuid": "307aca2a-6016-45cc-ac75-97a534572381",
              "parent_uuid": "cbfe15bf-8b99-431b-a03d-0478f0d39258",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "33e982aa-36b4-40c6-9491-bb1b5c33ab1c",
              "parent_uuid": "cbfe15bf-8b99-431b-a03d-0478f0d39258",
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
          "uuid": "635a4dcd-b953-4642-a2fc-4f6d4cf4dbd4",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de76db0c-f296-4291-b160-ca022958d737",
              "parent_uuid": "635a4dcd-b953-4642-a2fc-4f6d4cf4dbd4",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 2135 (M402)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "26cff996-a552-4271-9b1e-e70d0907c501",
              "parent_uuid": "635a4dcd-b953-4642-a2fc-4f6d4cf4dbd4",
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
              "innerHtml": "\r\n                    <span>262 507 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "af4e9dcd-6e9a-4cb5-8bfc-3a3467c46836",
              "parent_uuid": "635a4dcd-b953-4642-a2fc-4f6d4cf4dbd4",
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
              "uuid": "33b5a609-bbdc-4580-b5a0-e8dd40bac521",
              "parent_uuid": "635a4dcd-b953-4642-a2fc-4f6d4cf4dbd4",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "7204c06c-bfa6-4e7c-ad73-bbe7ecb8ab81",
              "parent_uuid": "635a4dcd-b953-4642-a2fc-4f6d4cf4dbd4",
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
          "uuid": "37436d41-4c86-4f7d-82d3-f90040da96ac",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c86c0b1b-2a22-428d-9b30-0016ab1d9e7c",
              "parent_uuid": "37436d41-4c86-4f7d-82d3-f90040da96ac",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 1510 (M306)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "680b55f3-8fa9-466b-9353-cdf32d39bd94",
              "parent_uuid": "37436d41-4c86-4f7d-82d3-f90040da96ac",
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
              "innerHtml": "\r\n                    <span>117 363 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "e3a4139f-1a5f-4b01-9379-75d0561aed17",
              "parent_uuid": "37436d41-4c86-4f7d-82d3-f90040da96ac",
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
              "uuid": "c80f3d0f-df8f-43b8-a48e-0b777bb9d289",
              "parent_uuid": "37436d41-4c86-4f7d-82d3-f90040da96ac",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "aa5d0a94-1ce7-4ad8-97c5-b4dfbec9aff8",
              "parent_uuid": "37436d41-4c86-4f7d-82d3-f90040da96ac",
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
          "uuid": "2123e85e-975f-4c76-bdbf-4e7eb4fa18d6",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ab6d61e-dc99-4893-908b-f13f263af10d",
              "parent_uuid": "2123e85e-975f-4c76-bdbf-4e7eb4fa18d6",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 990 (M376)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "19118fea-b3c9-47e3-b742-64acef1b7fc7",
              "parent_uuid": "2123e85e-975f-4c76-bdbf-4e7eb4fa18d6",
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
              "innerHtml": "\r\n                    <span>268 909 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "77f210da-f1ef-4224-85c0-cb4dcc9da23d",
              "parent_uuid": "2123e85e-975f-4c76-bdbf-4e7eb4fa18d6",
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
              "uuid": "8f208c97-a01e-4911-8d1a-d7fe6479c625",
              "parent_uuid": "2123e85e-975f-4c76-bdbf-4e7eb4fa18d6",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "06f0d928-479e-4796-860f-7ff32a9cf1f3",
              "parent_uuid": "2123e85e-975f-4c76-bdbf-4e7eb4fa18d6",
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
          "uuid": "2c21a66e-65b9-4e5f-992c-2217dd72196c",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3b638066-40b0-406c-9200-a8937a92d3e9",
              "parent_uuid": "2c21a66e-65b9-4e5f-992c-2217dd72196c",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 297 (M281)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d4764da2-86a2-4fe3-ab72-dc6e537d237a",
              "parent_uuid": "2c21a66e-65b9-4e5f-992c-2217dd72196c",
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
              "innerHtml": "\r\n                    <span>244 040 001</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "53866b66-5222-4d03-8446-0f41991131ed",
              "parent_uuid": "2c21a66e-65b9-4e5f-992c-2217dd72196c",
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
              "uuid": "b72e0a10-072a-46f8-b2bf-57069484b3fd",
              "parent_uuid": "2c21a66e-65b9-4e5f-992c-2217dd72196c",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "044dcd7d-82e1-4fac-bc6f-517e04e938a7",
              "parent_uuid": "2c21a66e-65b9-4e5f-992c-2217dd72196c",
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
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "152f0654-3b70-4d21-92b9-0a78352d630b",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e45299b-4af3-4a7a-a8c4-3e064d1100ab",
              "parent_uuid": "152f0654-3b70-4d21-92b9-0a78352d630b",
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
              "innerHtml": "\r\n                    <span>Rundriemen L = 248 (M280)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7d990350-2afb-4536-81e2-5d92d471b0ed",
              "parent_uuid": "152f0654-3b70-4d21-92b9-0a78352d630b",
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
              "uuid": "7a7c99df-b568-4846-92dd-221b483c0d34",
              "parent_uuid": "152f0654-3b70-4d21-92b9-0a78352d630b",
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
              "uuid": "5bccdf50-9302-4155-9c60-25388d6e8e35",
              "parent_uuid": "152f0654-3b70-4d21-92b9-0a78352d630b",
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
              "innerHtml": "\r\n                    <span>2I</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "f49aac16-f396-4eb1-b128-7dab9ec0b1ba",
              "parent_uuid": "152f0654-3b70-4d21-92b9-0a78352d630b",
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
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "6cb6b0dc-715a-4568-b791-8184a5cde791",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "959641bd-30ee-40c9-a0c0-ba34eaf84f93",
              "parent_uuid": "6cb6b0dc-715a-4568-b791-8184a5cde791",
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
              "uuid": "0878322c-490b-4dc5-9fa0-e0d80754dd9c",
              "parent_uuid": "6cb6b0dc-715a-4568-b791-8184a5cde791",
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
              "innerHtml": "\r\n                    <span>272 900 011</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7fc45765-9f03-48ca-b8cc-517cd4420a73",
              "parent_uuid": "6cb6b0dc-715a-4568-b791-8184a5cde791",
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
              "uuid": "a3a2064b-e2bd-4b21-9a4c-962729d79804",
              "parent_uuid": "6cb6b0dc-715a-4568-b791-8184a5cde791",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "8e4d95f6-265a-483d-a44c-d19a2df0effb",
              "parent_uuid": "6cb6b0dc-715a-4568-b791-8184a5cde791",
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
          "sort": 56,
          "lvl": 0
        },
        {
          "uuid": "f2669d6a-0899-4cd6-9589-1de169cb04de",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5866725f-a339-46f9-8c78-08ec0b3d7d3a",
              "parent_uuid": "f2669d6a-0899-4cd6-9589-1de169cb04de",
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
              "uuid": "0ddab3c1-db22-4955-a310-31584ab2e3e8",
              "parent_uuid": "f2669d6a-0899-4cd6-9589-1de169cb04de",
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
              "uuid": "11fa1739-13d2-4baa-9697-95a96f934984",
              "parent_uuid": "f2669d6a-0899-4cd6-9589-1de169cb04de",
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
              "uuid": "72271f1b-413b-45c9-8afa-76bf2f0ad71a",
              "parent_uuid": "f2669d6a-0899-4cd6-9589-1de169cb04de",
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
              "innerHtml": "\r\n                    <span>1A</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "df586002-6bd9-4fcb-b365-ff0b80ac7604",
              "parent_uuid": "f2669d6a-0899-4cd6-9589-1de169cb04de",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            }
          ],
          "sort": 57,
          "lvl": 0
        },
        {
          "uuid": "fc7daf9b-10f5-47b1-accf-22ce6f566c41",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f02c5e5-2dfb-4609-ab64-86e9fad6600b",
              "parent_uuid": "fc7daf9b-10f5-47b1-accf-22ce6f566c41",
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
              "innerHtml": "\r\n                    <span>Einlaufblech (M308)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "dd79d2e7-8a2e-4e7f-bc56-79c7063ffb27",
              "parent_uuid": "fc7daf9b-10f5-47b1-accf-22ce6f566c41",
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
              "innerHtml": "\r\n                    <span>155 487 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "994c4d0c-2634-409e-8e40-0e9c694e99b6",
              "parent_uuid": "fc7daf9b-10f5-47b1-accf-22ce6f566c41",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "a50fc3d7-366e-4be1-8b7f-f45bae814c35",
              "parent_uuid": "fc7daf9b-10f5-47b1-accf-22ce6f566c41",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "9c01d1b8-e369-4e32-8f5e-e93129576fbc",
              "parent_uuid": "fc7daf9b-10f5-47b1-accf-22ce6f566c41",
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
          "sort": 58,
          "lvl": 0
        },
        {
          "uuid": "8ce1a5df-7c91-46b2-a7c3-677b6e4c12d6",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87b378c3-6932-4add-87a8-8f4e799afe32",
              "parent_uuid": "8ce1a5df-7c91-46b2-a7c3-677b6e4c12d6",
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
              "innerHtml": "\r\n                    <span>Schieber</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c2a80c9a-1479-4f59-99a4-70283efcf17b",
              "parent_uuid": "8ce1a5df-7c91-46b2-a7c3-677b6e4c12d6",
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
              "innerHtml": "\r\n                    <span>212 408 021</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "08f9414d-23f7-48cb-bd59-20ad778adcd4",
              "parent_uuid": "8ce1a5df-7c91-46b2-a7c3-677b6e4c12d6",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "30c27a7f-a70b-43c7-8464-c1e8fdf078ea",
              "parent_uuid": "8ce1a5df-7c91-46b2-a7c3-677b6e4c12d6",
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
              "innerHtml": "\r\n                    <span>1B</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "01903354-6628-47eb-9744-4b3380bed395",
              "parent_uuid": "8ce1a5df-7c91-46b2-a7c3-677b6e4c12d6",
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
          "sort": 59,
          "lvl": 0
        },
        {
          "uuid": "f81da7d6-74f0-4924-918b-4e1014b3b2a9",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c0af394-5733-4ff0-b4cb-9d7a8c434a1b",
              "parent_uuid": "f81da7d6-74f0-4924-918b-4e1014b3b2a9",
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
              "innerHtml": "\r\n                    <span>Kugellager (6007 LB) Rotor</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "711cca50-713d-47e1-8d9a-d36dedc45eea",
              "parent_uuid": "f81da7d6-74f0-4924-918b-4e1014b3b2a9",
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "056531c6-2717-4bbd-afa3-b7cd4a877168",
              "parent_uuid": "f81da7d6-74f0-4924-918b-4e1014b3b2a9",
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
              "innerHtml": "\r\n                    <span>1</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "7b0fdb53-22b0-423b-8160-e9ec594d7cc3",
              "parent_uuid": "f81da7d6-74f0-4924-918b-4e1014b3b2a9",
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
              "innerHtml": "\r\n                    <span size=\"1\" color=\"#000000\">Werkstatt</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "3e77c01c-6cfa-490c-a47a-84c81346aee4",
              "parent_uuid": "f81da7d6-74f0-4924-918b-4e1014b3b2a9",
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
          "sort": 60,
          "lvl": 0
        },
        {
          "uuid": "edad0990-5305-472b-87dc-ff27ebf60698",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8dd427ec-0787-4fa4-8f57-88c5f3646983",
              "parent_uuid": "edad0990-5305-472b-87dc-ff27ebf60698",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "height",
                  "30"
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
          "sort": 61,
          "lvl": 0
        },
        {
          "uuid": "e30dc8bc-67aa-4596-b61f-3aee4398a3ab",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52574b07-631a-4b0b-ab3d-dbfa168537b7",
              "parent_uuid": "e30dc8bc-67aa-4596-b61f-3aee4398a3ab",
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
              "innerHtml": "\r\n                    <u><span>Zusätzliche Arbeiten:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 62,
          "lvl": 0
        },
        {
          "uuid": "1e59db89-7e65-4fb0-834c-b605eddce3b9",
          "parent_uuid": "3551beaf-56fa-40dc-9cc2-82d6ed715ec7",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "affca8aa-bf3d-4e3f-8988-5700cd8630f4",
              "parent_uuid": "1e59db89-7e65-4fb0-834c-b605eddce3b9",
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
                  "uuid": "4c12af30-74f9-4858-928a-fb43aaa60a03",
                  "parent_uuid": "affca8aa-bf3d-4e3f-8988-5700cd8630f4",
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
          "sort": 63,
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

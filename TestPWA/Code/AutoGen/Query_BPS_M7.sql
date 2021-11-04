
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
  "uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "52577b79-6587-4143-8870-44a01238c9ec",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "f701fcad-702a-4999-a56d-7d9e5b848838",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "e8df7467-3d25-48b4-bf28-3422cbaffeb6",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "63fd3ddd-112f-41b4-a09c-ebc765f03057",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "72c7b44d-b786-4376-9d86-630409e50486",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "1f0d74be-dc88-4429-aed9-498f18c35e3e",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "b00def7f-ab95-4c0c-9fd8-ec710e8bba49",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
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
      "uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
      "parent_uuid": "3b640b53-0c60-4050-9aa0-aadaf754a926",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "0601e98c-6904-4de2-b23f-df9130cbe64f",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "3ccfb938-4a93-4794-a49a-b7db9f22d61a",
              "parent_uuid": "0601e98c-6904-4de2-b23f-df9130cbe64f",
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
              "uuid": "c714e14c-0062-4c36-bd66-bd9422601968",
              "parent_uuid": "0601e98c-6904-4de2-b23f-df9130cbe64f",
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
              "uuid": "5d8ad5a7-00ef-4337-8752-e050e1e63d4a",
              "parent_uuid": "0601e98c-6904-4de2-b23f-df9130cbe64f",
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
              "uuid": "3cc688a0-0a63-4df0-ab76-88feb860e656",
              "parent_uuid": "0601e98c-6904-4de2-b23f-df9130cbe64f",
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
          "uuid": "e151d22a-fb23-4ea2-9d72-b2bcac993b6b",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "4e2f5d0e-6c05-4d91-82a8-3d73fc6ee4ef",
              "parent_uuid": "e151d22a-fb23-4ea2-9d72-b2bcac993b6b",
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
              "uuid": "9d513826-f598-4203-bcbb-82f3c36482ee",
              "parent_uuid": "e151d22a-fb23-4ea2-9d72-b2bcac993b6b",
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
              "uuid": "a0f96e96-da45-480d-b644-0ee3d1f6d567",
              "parent_uuid": "e151d22a-fb23-4ea2-9d72-b2bcac993b6b",
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
              "uuid": "3709fca3-e0fd-47c7-a215-2501fe076d64",
              "parent_uuid": "e151d22a-fb23-4ea2-9d72-b2bcac993b6b",
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
          "uuid": "b0ada439-2562-4c00-99a1-14e32b474b22",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d7eca115-50f5-44e3-ab67-47dc3bffd657",
              "parent_uuid": "b0ada439-2562-4c00-99a1-14e32b474b22",
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
              "uuid": "8d2784a1-3531-4f8f-a774-cd377dc383c1",
              "parent_uuid": "b0ada439-2562-4c00-99a1-14e32b474b22",
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
              "uuid": "df6a95f1-c6b1-45be-aa6f-5df80338e796",
              "parent_uuid": "b0ada439-2562-4c00-99a1-14e32b474b22",
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
              "uuid": "7050ebbb-be58-438b-ab4a-e3679ffb55f8",
              "parent_uuid": "b0ada439-2562-4c00-99a1-14e32b474b22",
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
              "uuid": "2957bd9d-2ab9-47dd-96af-d086c825edd9",
              "parent_uuid": "b0ada439-2562-4c00-99a1-14e32b474b22",
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
              "uuid": "7d2df81a-8947-4c9b-a389-0abd36ddbe07",
              "parent_uuid": "b0ada439-2562-4c00-99a1-14e32b474b22",
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
          "uuid": "02dd1020-09df-4895-bde3-ceab507c5d6e",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9eb92b04-ed1f-4f9e-a87c-835573e09f8d",
              "parent_uuid": "02dd1020-09df-4895-bde3-ceab507c5d6e",
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
          "uuid": "eb33b61d-b489-4a1e-8951-6baacfef6728",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2a828fc2-ae3c-46be-bcc1-0446e49280e0",
              "parent_uuid": "eb33b61d-b489-4a1e-8951-6baacfef6728",
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
              "uuid": "f7e0793e-551a-4fe9-bfd9-3d419c30305a",
              "parent_uuid": "eb33b61d-b489-4a1e-8951-6baacfef6728",
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
              "uuid": "d77dbd52-b5aa-4285-a179-8957aa354f0c",
              "parent_uuid": "eb33b61d-b489-4a1e-8951-6baacfef6728",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0213006c-24e1-419d-9dc6-33bc29dfff26",
                  "parent_uuid": "d77dbd52-b5aa-4285-a179-8957aa354f0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ffe1c15a-aba4-4747-8a2e-9085b9b0c128",
              "parent_uuid": "eb33b61d-b489-4a1e-8951-6baacfef6728",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "482923e5-666a-457f-addd-cd32143d93ce",
                  "parent_uuid": "ffe1c15a-aba4-4747-8a2e-9085b9b0c128",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "353be31b-b5c7-432c-9295-f7246c061016",
              "parent_uuid": "eb33b61d-b489-4a1e-8951-6baacfef6728",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fc797ec-737d-43a4-a9a6-afa3b1338d4b",
                  "parent_uuid": "353be31b-b5c7-432c-9295-f7246c061016",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e7e7af0-8e7c-4e56-b095-038eb7eddf6c",
              "parent_uuid": "eb33b61d-b489-4a1e-8951-6baacfef6728",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "beac33b1-9e90-4856-a862-9ef2a1bf1b99",
                  "parent_uuid": "8e7e7af0-8e7c-4e56-b095-038eb7eddf6c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eede496d-2920-4279-8f6d-3f2a329c36ee",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "702c8e69-f023-4d72-bcc2-47c1bcd2c170",
              "parent_uuid": "eede496d-2920-4279-8f6d-3f2a329c36ee",
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
              "uuid": "11eb998f-6817-48c7-8705-3746ea786e0f",
              "parent_uuid": "eede496d-2920-4279-8f6d-3f2a329c36ee",
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
              "uuid": "3f76758a-32cc-42c6-8d0e-306eab9b4212",
              "parent_uuid": "eede496d-2920-4279-8f6d-3f2a329c36ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "253bcaca-fce6-4e9a-88c5-ac1f12d7ba42",
                  "parent_uuid": "3f76758a-32cc-42c6-8d0e-306eab9b4212",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7a8b085-ab9d-47c3-a2e3-1d7ca2cb5428",
              "parent_uuid": "eede496d-2920-4279-8f6d-3f2a329c36ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f7aafd06-4594-449c-ba8b-f422b98d1e4a",
                  "parent_uuid": "a7a8b085-ab9d-47c3-a2e3-1d7ca2cb5428",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "581c49de-52ed-40d2-8a98-08016c113c01",
              "parent_uuid": "eede496d-2920-4279-8f6d-3f2a329c36ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47ba6efb-39c4-49c2-9c11-b387f2c36565",
                  "parent_uuid": "581c49de-52ed-40d2-8a98-08016c113c01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7733ec22-d157-4d94-9a7f-3e44d8d53e42",
              "parent_uuid": "eede496d-2920-4279-8f6d-3f2a329c36ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "56246966-1456-47f0-9b20-b9341bc34df8",
                  "parent_uuid": "7733ec22-d157-4d94-9a7f-3e44d8d53e42",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fef25c3f-4365-4d00-8400-64d5a398e08f",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "259a3c0e-b4dd-48fd-9b53-541402f5ad27",
              "parent_uuid": "fef25c3f-4365-4d00-8400-64d5a398e08f",
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
              "uuid": "12d362fd-af28-4bc8-84f2-bc91cd5e5292",
              "parent_uuid": "fef25c3f-4365-4d00-8400-64d5a398e08f",
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
              "uuid": "796a8a11-e39a-4c4c-ace1-6b7e135cf697",
              "parent_uuid": "fef25c3f-4365-4d00-8400-64d5a398e08f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1ed33dc1-f7c1-4b94-bad0-95d6861b783b",
                  "parent_uuid": "796a8a11-e39a-4c4c-ace1-6b7e135cf697",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "569bf23b-685f-44f9-9be7-bd64df29a787",
              "parent_uuid": "fef25c3f-4365-4d00-8400-64d5a398e08f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fc035877-edd6-4958-b846-88e6163d2403",
                  "parent_uuid": "569bf23b-685f-44f9-9be7-bd64df29a787",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca214d1e-2060-45f5-a3e6-e5d16fc5e608",
              "parent_uuid": "fef25c3f-4365-4d00-8400-64d5a398e08f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a57b2cf5-9363-4df0-890b-4e6e994c70d9",
                  "parent_uuid": "ca214d1e-2060-45f5-a3e6-e5d16fc5e608",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91054ed4-e76d-4dca-bf55-ee0ce096634f",
              "parent_uuid": "fef25c3f-4365-4d00-8400-64d5a398e08f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dc440330-ac30-4bf0-b4d3-d68b47b40a10",
                  "parent_uuid": "91054ed4-e76d-4dca-bf55-ee0ce096634f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "72f1243c-85b7-4bd2-8a1f-89c51d475488",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f8d4f86-2a32-44e7-aba8-38735579e108",
              "parent_uuid": "72f1243c-85b7-4bd2-8a1f-89c51d475488",
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
              "uuid": "3f6a5991-dba5-464d-8cf7-1da4fede1c9d",
              "parent_uuid": "72f1243c-85b7-4bd2-8a1f-89c51d475488",
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
              "uuid": "07c2bb36-d58e-4d4e-8dc5-9ea4e9302405",
              "parent_uuid": "72f1243c-85b7-4bd2-8a1f-89c51d475488",
              "tagName": "td",
              "properties": [
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
                  "uuid": "75287c29-91aa-4c7c-88fc-1780724b67e8",
                  "parent_uuid": "07c2bb36-d58e-4d4e-8dc5-9ea4e9302405",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a061d07-0545-4c74-be9e-03d8b0692436",
              "parent_uuid": "72f1243c-85b7-4bd2-8a1f-89c51d475488",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b0548d2c-7d6b-49d5-b3da-6d8c62eb9bb0",
                  "parent_uuid": "0a061d07-0545-4c74-be9e-03d8b0692436",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52c3decf-77ef-4d03-873f-a0cd7871a88a",
              "parent_uuid": "72f1243c-85b7-4bd2-8a1f-89c51d475488",
              "tagName": "td",
              "properties": [
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
                  "uuid": "539957e1-b168-4637-aa8e-4e3cf5ac692d",
                  "parent_uuid": "52c3decf-77ef-4d03-873f-a0cd7871a88a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe48d716-0f13-4446-b566-e5030acf56b8",
              "parent_uuid": "72f1243c-85b7-4bd2-8a1f-89c51d475488",
              "tagName": "td",
              "properties": [
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
                  "uuid": "553ee3b6-a62a-4b22-ab2b-0d0af79e860b",
                  "parent_uuid": "fe48d716-0f13-4446-b566-e5030acf56b8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "75c67e86-6349-4772-9b38-ea87000858c8",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eeaae29f-3c27-48c4-979a-0f2bbd3c4be6",
              "parent_uuid": "75c67e86-6349-4772-9b38-ea87000858c8",
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
              "uuid": "f008dc1f-9173-49fe-9c59-69e3a65c3f45",
              "parent_uuid": "75c67e86-6349-4772-9b38-ea87000858c8",
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
              "uuid": "84a4544c-5470-483b-a1fe-4514071391c9",
              "parent_uuid": "75c67e86-6349-4772-9b38-ea87000858c8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8460ea1e-6e73-42d4-aa05-33e365870ce9",
                  "parent_uuid": "84a4544c-5470-483b-a1fe-4514071391c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d113e49-62ba-48da-b487-63c4194cdd50",
              "parent_uuid": "75c67e86-6349-4772-9b38-ea87000858c8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "41333ad8-cb39-4e85-9af3-36c6f690bab2",
                  "parent_uuid": "3d113e49-62ba-48da-b487-63c4194cdd50",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bca48244-db4e-47e9-84e0-dc24e5226609",
              "parent_uuid": "75c67e86-6349-4772-9b38-ea87000858c8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8623ae22-bd0f-4806-9d91-64b119f5d940",
                  "parent_uuid": "bca48244-db4e-47e9-84e0-dc24e5226609",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5f00b03-ecad-41a6-8f40-35fb2493ddc7",
              "parent_uuid": "75c67e86-6349-4772-9b38-ea87000858c8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7a77554a-569d-4e93-8d8e-97cba7b703f3",
                  "parent_uuid": "d5f00b03-ecad-41a6-8f40-35fb2493ddc7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0bb0b7f9-bfea-4df6-b0d4-604792af2778",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3570a6d-e00a-4f31-975d-ca653b4de288",
              "parent_uuid": "0bb0b7f9-bfea-4df6-b0d4-604792af2778",
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
              "uuid": "970f9449-f359-401e-807a-590899823c12",
              "parent_uuid": "0bb0b7f9-bfea-4df6-b0d4-604792af2778",
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
              "uuid": "40bd1cda-a905-44f4-aa07-b74572d61b07",
              "parent_uuid": "0bb0b7f9-bfea-4df6-b0d4-604792af2778",
              "tagName": "td",
              "properties": [
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
                  "uuid": "116d5635-43b5-4250-a8ce-d3b36daf9ffb",
                  "parent_uuid": "40bd1cda-a905-44f4-aa07-b74572d61b07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bad9203-9ab9-490b-af38-ade593a126c7",
              "parent_uuid": "0bb0b7f9-bfea-4df6-b0d4-604792af2778",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c1b48705-9d57-4b45-9e3f-54590cc3e1f3",
                  "parent_uuid": "0bad9203-9ab9-490b-af38-ade593a126c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0899c16-3c23-4787-86a8-16c9ec87b742",
              "parent_uuid": "0bb0b7f9-bfea-4df6-b0d4-604792af2778",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7eac7b35-b076-4166-bc49-0b82de488121",
                  "parent_uuid": "c0899c16-3c23-4787-86a8-16c9ec87b742",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2390af20-6a48-4c2f-b2b7-3066bb669621",
              "parent_uuid": "0bb0b7f9-bfea-4df6-b0d4-604792af2778",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bc748fb3-edbb-4ecd-810f-c70f292274ea",
                  "parent_uuid": "2390af20-6a48-4c2f-b2b7-3066bb669621",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9df973da-6828-43fd-802d-faf60c2e2a3c",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a134b7e-e68f-4b8c-a8fa-47514d985b5c",
              "parent_uuid": "9df973da-6828-43fd-802d-faf60c2e2a3c",
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
              "uuid": "5e723bd3-e09a-49d6-a5de-b62d259d0b4c",
              "parent_uuid": "9df973da-6828-43fd-802d-faf60c2e2a3c",
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
              "uuid": "a485d94b-8fe8-4067-8646-018cd89e3ac8",
              "parent_uuid": "9df973da-6828-43fd-802d-faf60c2e2a3c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "313896a7-8ab2-4a05-81d5-1b54128b9bbb",
                  "parent_uuid": "a485d94b-8fe8-4067-8646-018cd89e3ac8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f332328-fa79-4dcf-bc16-655eb99bc024",
              "parent_uuid": "9df973da-6828-43fd-802d-faf60c2e2a3c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a909bf21-9bc2-4aeb-844f-121582c2a6ed",
                  "parent_uuid": "6f332328-fa79-4dcf-bc16-655eb99bc024",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af67cc75-c5e7-43ac-a861-569eb42c7a1e",
              "parent_uuid": "9df973da-6828-43fd-802d-faf60c2e2a3c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b322bd12-4d29-4197-ac10-9a0abbb182f9",
                  "parent_uuid": "af67cc75-c5e7-43ac-a861-569eb42c7a1e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "932ca5b5-5808-4747-9d57-4d203827070a",
              "parent_uuid": "9df973da-6828-43fd-802d-faf60c2e2a3c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e6a4b6d5-4154-4e66-961f-7da4f6b9c7e7",
                  "parent_uuid": "932ca5b5-5808-4747-9d57-4d203827070a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "27b4fab0-37a9-4851-b900-236df0faf22c",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba013800-d539-44ba-982d-140c38ebc464",
              "parent_uuid": "27b4fab0-37a9-4851-b900-236df0faf22c",
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
              "uuid": "6525df23-99a1-4cac-896c-88639bbb3a47",
              "parent_uuid": "27b4fab0-37a9-4851-b900-236df0faf22c",
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
              "uuid": "7a0a1925-1ab6-4a99-a6cc-b4bb603cd0b2",
              "parent_uuid": "27b4fab0-37a9-4851-b900-236df0faf22c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a66b9099-45bb-444f-a9a9-c90bdd41489f",
                  "parent_uuid": "7a0a1925-1ab6-4a99-a6cc-b4bb603cd0b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe285498-c164-4b21-8e5b-00b120824ef3",
              "parent_uuid": "27b4fab0-37a9-4851-b900-236df0faf22c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5f08ee9a-9231-4c7f-86a6-6e2efac7cfd6",
                  "parent_uuid": "fe285498-c164-4b21-8e5b-00b120824ef3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56804ff0-46b6-413c-8581-7757352ff93c",
              "parent_uuid": "27b4fab0-37a9-4851-b900-236df0faf22c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b31124a4-f11f-4cdb-b012-55400e56d9c2",
                  "parent_uuid": "56804ff0-46b6-413c-8581-7757352ff93c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92da4cd1-713b-4d21-81db-1c1d09bdde5a",
              "parent_uuid": "27b4fab0-37a9-4851-b900-236df0faf22c",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7aab0b6d-76c5-488a-9f39-3b615151e972",
                  "parent_uuid": "92da4cd1-713b-4d21-81db-1c1d09bdde5a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1a6308cf-ced3-46b2-ad5a-213ac9688910",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf677c13-80a6-46f3-8d0a-09f9e76f6a75",
              "parent_uuid": "1a6308cf-ced3-46b2-ad5a-213ac9688910",
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
              "uuid": "62044b0a-cd33-4623-8b72-36d108776f54",
              "parent_uuid": "1a6308cf-ced3-46b2-ad5a-213ac9688910",
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
              "uuid": "0abbdafb-7ba1-4156-bf12-9946ed0490c3",
              "parent_uuid": "1a6308cf-ced3-46b2-ad5a-213ac9688910",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b093cceb-e9f3-4bf0-beaf-4a0faabfcfca",
                  "parent_uuid": "0abbdafb-7ba1-4156-bf12-9946ed0490c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26dd1635-fe1b-44f1-aabe-e6af80786c64",
              "parent_uuid": "1a6308cf-ced3-46b2-ad5a-213ac9688910",
              "tagName": "td",
              "properties": [
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
                  "uuid": "23655f21-5a24-4a20-b47f-25f707d11033",
                  "parent_uuid": "26dd1635-fe1b-44f1-aabe-e6af80786c64",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09ada5f2-130f-48ce-9a40-ee938a3e31c7",
              "parent_uuid": "1a6308cf-ced3-46b2-ad5a-213ac9688910",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7e41ab85-d3c5-413d-8794-ab4c3854302f",
                  "parent_uuid": "09ada5f2-130f-48ce-9a40-ee938a3e31c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b2463f0-f9a8-4d7d-b974-d1e723576f2e",
              "parent_uuid": "1a6308cf-ced3-46b2-ad5a-213ac9688910",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c328aeb-837c-4fca-ac87-8c9de2899308",
                  "parent_uuid": "4b2463f0-f9a8-4d7d-b974-d1e723576f2e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dfb034c9-72bf-4d2e-9871-573998cd4b9a",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3dfa7c9-24a5-46a5-bae7-83d035939e60",
              "parent_uuid": "dfb034c9-72bf-4d2e-9871-573998cd4b9a",
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
              "uuid": "823bbb72-8f0b-4c39-af02-8c927af35686",
              "parent_uuid": "dfb034c9-72bf-4d2e-9871-573998cd4b9a",
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
              "uuid": "21009e6b-d481-49ea-8b32-676f1f3dd4cb",
              "parent_uuid": "dfb034c9-72bf-4d2e-9871-573998cd4b9a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "51b56998-80d7-461f-9866-2a2c7bccbca7",
                  "parent_uuid": "21009e6b-d481-49ea-8b32-676f1f3dd4cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9f42c74-196c-4352-bd3d-a52662dbe802",
              "parent_uuid": "dfb034c9-72bf-4d2e-9871-573998cd4b9a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9ff4395f-5ce1-4b50-97e8-9e74aa9ce995",
                  "parent_uuid": "c9f42c74-196c-4352-bd3d-a52662dbe802",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb9335e7-00d4-4123-af4a-1ab21fefa956",
              "parent_uuid": "dfb034c9-72bf-4d2e-9871-573998cd4b9a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3fd72ee7-7bfe-4af3-b074-2fddb85150b5",
                  "parent_uuid": "bb9335e7-00d4-4123-af4a-1ab21fefa956",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60a4714e-cf2c-4780-ac4a-09aaac80b19a",
              "parent_uuid": "dfb034c9-72bf-4d2e-9871-573998cd4b9a",
              "tagName": "td",
              "properties": [
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
                  "uuid": "53988d03-fca5-45c8-bf10-1ed567ef2ef7",
                  "parent_uuid": "60a4714e-cf2c-4780-ac4a-09aaac80b19a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "00702097-6c01-48ed-b27b-db289b93dbed",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f48ae7c4-3ac3-41c0-bd28-e48952dab7c2",
              "parent_uuid": "00702097-6c01-48ed-b27b-db289b93dbed",
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
              "uuid": "a84215aa-536a-4ae2-bc16-9543a80c5ed2",
              "parent_uuid": "00702097-6c01-48ed-b27b-db289b93dbed",
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
              "uuid": "874fe379-e2c6-4f09-b270-fb4b92ff04c4",
              "parent_uuid": "00702097-6c01-48ed-b27b-db289b93dbed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b25822d6-c525-4e4f-92c7-b3eaa85045e5",
                  "parent_uuid": "874fe379-e2c6-4f09-b270-fb4b92ff04c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d697b17-31f0-487b-8d9c-b9cf6ab596be",
              "parent_uuid": "00702097-6c01-48ed-b27b-db289b93dbed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3087ae01-51c1-4948-a36c-67d5a3401183",
                  "parent_uuid": "0d697b17-31f0-487b-8d9c-b9cf6ab596be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40865a7f-75e0-4e89-831f-40208bbf0aee",
              "parent_uuid": "00702097-6c01-48ed-b27b-db289b93dbed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c95c7b86-9359-4d6b-b189-56c1f4ec62ee",
                  "parent_uuid": "40865a7f-75e0-4e89-831f-40208bbf0aee",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4ba045ed-3b96-45d8-a795-7435f31c0e43",
              "parent_uuid": "00702097-6c01-48ed-b27b-db289b93dbed",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ebbe7f24-15ec-4395-862e-42ea94972549",
                  "parent_uuid": "4ba045ed-3b96-45d8-a795-7435f31c0e43",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fde3cc2e-df5a-4097-80d7-1c7aae682fc6",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d91f5ae2-0032-4d7b-8ec7-63f046374f92",
              "parent_uuid": "fde3cc2e-df5a-4097-80d7-1c7aae682fc6",
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
              "uuid": "936aeec8-815b-4513-b180-9f273ac06db5",
              "parent_uuid": "fde3cc2e-df5a-4097-80d7-1c7aae682fc6",
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
              "uuid": "3e1e0a06-2417-4dd3-9631-39f81728f289",
              "parent_uuid": "fde3cc2e-df5a-4097-80d7-1c7aae682fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8ef65331-f3d6-4c21-9817-870d04303e91",
                  "parent_uuid": "3e1e0a06-2417-4dd3-9631-39f81728f289",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62acd5ae-ccf8-4f3f-a66a-578f0106cd3f",
              "parent_uuid": "fde3cc2e-df5a-4097-80d7-1c7aae682fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f5ebcd57-2bf8-437a-b666-3cf3c5f97e22",
                  "parent_uuid": "62acd5ae-ccf8-4f3f-a66a-578f0106cd3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d865b34-7b1f-442b-ad28-d0b97d11ce75",
              "parent_uuid": "fde3cc2e-df5a-4097-80d7-1c7aae682fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "51855bf9-c108-4daa-b214-9b6df4a49e75",
                  "parent_uuid": "4d865b34-7b1f-442b-ad28-d0b97d11ce75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d070381-c0f7-4057-b234-2ec85146fe61",
              "parent_uuid": "fde3cc2e-df5a-4097-80d7-1c7aae682fc6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6a0f6d7a-0e71-479e-aba9-468a74b4f381",
                  "parent_uuid": "8d070381-c0f7-4057-b234-2ec85146fe61",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f0fe366f-0899-49a4-9328-389bf37f93d9",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5838f760-1300-4254-82ff-cb406db6461c",
              "parent_uuid": "f0fe366f-0899-49a4-9328-389bf37f93d9",
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
              "uuid": "efc08258-1d2c-4383-88eb-28ad443f3427",
              "parent_uuid": "f0fe366f-0899-49a4-9328-389bf37f93d9",
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
              "uuid": "65a46a49-a70c-40e0-93c7-2a0e296a9697",
              "parent_uuid": "f0fe366f-0899-49a4-9328-389bf37f93d9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ae25fbb5-d393-4616-9025-09a7522e7312",
                  "parent_uuid": "65a46a49-a70c-40e0-93c7-2a0e296a9697",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "611317ba-76f5-4b14-8369-384b17a2b5c8",
              "parent_uuid": "f0fe366f-0899-49a4-9328-389bf37f93d9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "28f80907-bd03-4270-92cc-269e9cf8d5a5",
                  "parent_uuid": "611317ba-76f5-4b14-8369-384b17a2b5c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f886845d-ed02-45a2-9c37-3a716a9a86fe",
              "parent_uuid": "f0fe366f-0899-49a4-9328-389bf37f93d9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "74de3073-dbc9-4931-9905-7c8d509848c3",
                  "parent_uuid": "f886845d-ed02-45a2-9c37-3a716a9a86fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ff7aac7-7c54-4e19-9847-d12f2f917b19",
              "parent_uuid": "f0fe366f-0899-49a4-9328-389bf37f93d9",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c82152dc-2458-404f-b424-2f8186c1da70",
                  "parent_uuid": "9ff7aac7-7c54-4e19-9847-d12f2f917b19",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "464f079b-3efe-45de-8d08-26d66569c53e",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27711755-3a57-48bd-aad6-06217fb66e01",
              "parent_uuid": "464f079b-3efe-45de-8d08-26d66569c53e",
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
              "uuid": "fb6d1901-8324-41e9-9a75-d13a06ca43b0",
              "parent_uuid": "464f079b-3efe-45de-8d08-26d66569c53e",
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
              "uuid": "c190bb2f-cba9-4b14-afe5-cb2764193931",
              "parent_uuid": "464f079b-3efe-45de-8d08-26d66569c53e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0a7cc2a3-4b27-4119-9fac-723baab131b9",
                  "parent_uuid": "c190bb2f-cba9-4b14-afe5-cb2764193931",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "478a950c-70c7-4664-86b2-44d6d088d25d",
              "parent_uuid": "464f079b-3efe-45de-8d08-26d66569c53e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b5419ebc-2921-4918-9174-0a760abdb4d8",
                  "parent_uuid": "478a950c-70c7-4664-86b2-44d6d088d25d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb43cabc-4a68-4859-b7ac-2d55976f2628",
              "parent_uuid": "464f079b-3efe-45de-8d08-26d66569c53e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aed4c34f-f9d7-45b7-9bc5-ac7578edcf3d",
                  "parent_uuid": "eb43cabc-4a68-4859-b7ac-2d55976f2628",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1b85d4a-514c-4205-bba2-a63a688bdd14",
              "parent_uuid": "464f079b-3efe-45de-8d08-26d66569c53e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dcab68b1-40ad-4b3a-81d3-0be622264753",
                  "parent_uuid": "f1b85d4a-514c-4205-bba2-a63a688bdd14",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aa2851c1-734a-4dc1-8017-89cdc152e11f",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cb94892-f262-48e2-ba87-3e3e397329a0",
              "parent_uuid": "aa2851c1-734a-4dc1-8017-89cdc152e11f",
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
              "uuid": "bac4b038-6787-466b-acba-6b43df274329",
              "parent_uuid": "aa2851c1-734a-4dc1-8017-89cdc152e11f",
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
              "uuid": "3de8fd87-8819-4086-acff-d7d7b094ed86",
              "parent_uuid": "aa2851c1-734a-4dc1-8017-89cdc152e11f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8787edc0-31cd-4ded-838d-883d9293e66f",
                  "parent_uuid": "3de8fd87-8819-4086-acff-d7d7b094ed86",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1e1d439-c142-4cc3-a4ee-a97eda4b382c",
              "parent_uuid": "aa2851c1-734a-4dc1-8017-89cdc152e11f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6e3fbe59-b176-4773-90db-e12a8afe7d34",
                  "parent_uuid": "f1e1d439-c142-4cc3-a4ee-a97eda4b382c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cae7b22f-38ae-4af0-b1f9-44adce121bd0",
              "parent_uuid": "aa2851c1-734a-4dc1-8017-89cdc152e11f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "69a872a9-ca19-4510-891f-d04c8ccd632e",
                  "parent_uuid": "cae7b22f-38ae-4af0-b1f9-44adce121bd0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49320179-fc97-434d-947c-f76faa261ee2",
              "parent_uuid": "aa2851c1-734a-4dc1-8017-89cdc152e11f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f5fcdad6-cee2-4e78-b1ad-cd843f5c4bc9",
                  "parent_uuid": "49320179-fc97-434d-947c-f76faa261ee2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a10315f-3178-417f-9d5e-a5e5dff12b48",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22b73ee6-ae6e-4ea4-bbe7-88f63c0f815b",
              "parent_uuid": "9a10315f-3178-417f-9d5e-a5e5dff12b48",
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
              "uuid": "63621f93-45ba-4c71-8cf0-da131314e465",
              "parent_uuid": "9a10315f-3178-417f-9d5e-a5e5dff12b48",
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
              "uuid": "bf88a234-0b5f-4b5a-a757-b0c685791bdc",
              "parent_uuid": "9a10315f-3178-417f-9d5e-a5e5dff12b48",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f84d7d70-0605-4184-8172-1ec358d38537",
                  "parent_uuid": "bf88a234-0b5f-4b5a-a757-b0c685791bdc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f266269b-f24b-4b8a-9f19-fd20b5c6a223",
              "parent_uuid": "9a10315f-3178-417f-9d5e-a5e5dff12b48",
              "tagName": "td",
              "properties": [
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
                  "uuid": "41b21cd2-17d0-45e2-9d33-c1ce3fb18721",
                  "parent_uuid": "f266269b-f24b-4b8a-9f19-fd20b5c6a223",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14bd82bf-4fe5-4f5d-b974-3382ad57e664",
              "parent_uuid": "9a10315f-3178-417f-9d5e-a5e5dff12b48",
              "tagName": "td",
              "properties": [
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
                  "uuid": "60b897db-b218-4966-b525-1bc530e569ca",
                  "parent_uuid": "14bd82bf-4fe5-4f5d-b974-3382ad57e664",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a017c7b8-3e5a-440f-8588-09f699389baa",
              "parent_uuid": "9a10315f-3178-417f-9d5e-a5e5dff12b48",
              "tagName": "td",
              "properties": [
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
                  "uuid": "43c5d53b-13f6-4039-9114-f408be0d0e1d",
                  "parent_uuid": "a017c7b8-3e5a-440f-8588-09f699389baa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e5e2d0b-6308-43ec-b51d-555fef457ce9",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ba9b592-4a42-4718-85c0-96f20e92a706",
              "parent_uuid": "7e5e2d0b-6308-43ec-b51d-555fef457ce9",
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
          "uuid": "eebaf294-838e-4dcc-990d-d06f14b8164a",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d29cbbf-526c-41cc-a9a1-f6cae4b34101",
              "parent_uuid": "eebaf294-838e-4dcc-990d-d06f14b8164a",
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
          "uuid": "d90d7d2a-f29c-439e-a87a-f37d1959aeba",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df989f82-8c1e-4fff-bdb7-20172ec54cd3",
              "parent_uuid": "d90d7d2a-f29c-439e-a87a-f37d1959aeba",
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
                  "uuid": "78ab8d85-2e2e-4a96-9bcd-91d105165248",
                  "parent_uuid": "df989f82-8c1e-4fff-bdb7-20172ec54cd3",
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
          "uuid": "46ed6f69-396d-42ed-9ce9-aa31429f5a0e",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "33d2928a-134f-465a-86ef-b25fd6326c43",
              "parent_uuid": "46ed6f69-396d-42ed-9ce9-aa31429f5a0e",
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
          "uuid": "b186dabe-27eb-475b-9ae1-a660cc05032a",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a7956e71-d335-4bdb-b374-7778d988c95f",
              "parent_uuid": "b186dabe-27eb-475b-9ae1-a660cc05032a",
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
          "uuid": "434b3be7-0424-40df-8d01-cd04e96df678",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e747e98-faac-4cad-8f01-b0af0423f546",
              "parent_uuid": "434b3be7-0424-40df-8d01-cd04e96df678",
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
              "uuid": "74248b69-e962-4cd8-aa7a-b44eea6d419d",
              "parent_uuid": "434b3be7-0424-40df-8d01-cd04e96df678",
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
              "uuid": "49124f58-2986-4c95-b17d-dbe32273c1a0",
              "parent_uuid": "434b3be7-0424-40df-8d01-cd04e96df678",
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
              "uuid": "5f3fad94-d6d5-4692-a7d5-4394177bf09f",
              "parent_uuid": "434b3be7-0424-40df-8d01-cd04e96df678",
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
              "uuid": "40c362ca-b0a8-41c7-a8f0-1257ad2e3f80",
              "parent_uuid": "434b3be7-0424-40df-8d01-cd04e96df678",
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
              "uuid": "7c2e8af4-242a-43a6-a8df-5c6e46771ce1",
              "parent_uuid": "434b3be7-0424-40df-8d01-cd04e96df678",
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
          "uuid": "b1351619-dc09-4328-a4e8-934bfb11a9d7",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "25292412-16cc-44f9-896f-29dbe0034df3",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d84e7f9a-6f1c-4958-ad33-761706034d89",
              "parent_uuid": "25292412-16cc-44f9-896f-29dbe0034df3",
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
              "uuid": "c384125a-62bc-48da-98d3-40d9f7566560",
              "parent_uuid": "25292412-16cc-44f9-896f-29dbe0034df3",
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
              "uuid": "e089f8c5-049b-4c1f-8f62-5354327e5d66",
              "parent_uuid": "25292412-16cc-44f9-896f-29dbe0034df3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3d6ac3e5-3eae-4c56-a94c-6b1ec0c98926",
                  "parent_uuid": "e089f8c5-049b-4c1f-8f62-5354327e5d66",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "505eb557-1237-4b34-a7e2-ffd0a3bb162b",
              "parent_uuid": "25292412-16cc-44f9-896f-29dbe0034df3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2595043a-99ac-42d1-8984-3e8b2e227014",
                  "parent_uuid": "505eb557-1237-4b34-a7e2-ffd0a3bb162b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f06403ec-f053-4880-958e-f60ebd975a48",
              "parent_uuid": "25292412-16cc-44f9-896f-29dbe0034df3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d9851cd6-8f35-455d-8c16-fc2e0afef8ba",
                  "parent_uuid": "f06403ec-f053-4880-958e-f60ebd975a48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f69d3a60-d318-47f6-b88d-9b7d78a240de",
              "parent_uuid": "25292412-16cc-44f9-896f-29dbe0034df3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b0964055-d334-44ae-aead-0822ee70d185",
                  "parent_uuid": "f69d3a60-d318-47f6-b88d-9b7d78a240de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f911469d-f8ac-4b34-b205-ac4edecf6afb",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de2715d3-8822-4474-a115-5dccef9f2aad",
              "parent_uuid": "f911469d-f8ac-4b34-b205-ac4edecf6afb",
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
              "uuid": "cdcfaf58-5016-4d97-a53e-266fcfe470a7",
              "parent_uuid": "f911469d-f8ac-4b34-b205-ac4edecf6afb",
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
              "uuid": "d8e69d64-bad6-49b5-9dfb-127fe418bdbe",
              "parent_uuid": "f911469d-f8ac-4b34-b205-ac4edecf6afb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "14aeb7d5-44e1-4d40-b08e-1539da165422",
                  "parent_uuid": "d8e69d64-bad6-49b5-9dfb-127fe418bdbe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "97338d51-40a6-49fa-9346-521928738b06",
              "parent_uuid": "f911469d-f8ac-4b34-b205-ac4edecf6afb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1243d1c3-53e9-4758-80a3-cd6036624fa3",
                  "parent_uuid": "97338d51-40a6-49fa-9346-521928738b06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f61ae12b-3320-4d2b-9221-a0e297a11acf",
              "parent_uuid": "f911469d-f8ac-4b34-b205-ac4edecf6afb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0599620c-f6dc-4096-8460-537c11a22fc2",
                  "parent_uuid": "f61ae12b-3320-4d2b-9221-a0e297a11acf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb1996d7-4bd9-406c-9d97-c1884cc41c64",
              "parent_uuid": "f911469d-f8ac-4b34-b205-ac4edecf6afb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "baa7fb33-0f6d-4ca9-8f57-bc0ccb51847f",
                  "parent_uuid": "eb1996d7-4bd9-406c-9d97-c1884cc41c64",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "883ea420-43a8-4e0c-9bf6-a07360bea555",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a053e591-4074-41ff-a709-2ae529e8325d",
              "parent_uuid": "883ea420-43a8-4e0c-9bf6-a07360bea555",
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
              "uuid": "db6e26ed-69ee-4648-8d09-a8e57089ce1a",
              "parent_uuid": "883ea420-43a8-4e0c-9bf6-a07360bea555",
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
              "uuid": "739cc31b-73ee-4c53-a489-7ac80f7aa44f",
              "parent_uuid": "883ea420-43a8-4e0c-9bf6-a07360bea555",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fd4fb0d7-8d78-4158-a869-367fe25ed23a",
                  "parent_uuid": "739cc31b-73ee-4c53-a489-7ac80f7aa44f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72b56d8e-0d38-4ca2-a882-a448c90baa4c",
              "parent_uuid": "883ea420-43a8-4e0c-9bf6-a07360bea555",
              "tagName": "td",
              "properties": [
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
                  "uuid": "763a11c2-cb6f-4f6a-b6e1-b26a5002fbfe",
                  "parent_uuid": "72b56d8e-0d38-4ca2-a882-a448c90baa4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a3b088c-dae7-4c52-a7ef-ed841f144fe6",
              "parent_uuid": "883ea420-43a8-4e0c-9bf6-a07360bea555",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a4d74ff4-bb61-43af-9e77-37083b55018b",
                  "parent_uuid": "3a3b088c-dae7-4c52-a7ef-ed841f144fe6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2384c70-e4cb-4f48-87fa-b4a7b90c0060",
              "parent_uuid": "883ea420-43a8-4e0c-9bf6-a07360bea555",
              "tagName": "td",
              "properties": [
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
                  "uuid": "67e00959-1026-4d63-8425-529762024700",
                  "parent_uuid": "f2384c70-e4cb-4f48-87fa-b4a7b90c0060",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f6dc4541-b5e4-4f99-a899-8e932e840594",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "427966db-692e-4e70-90c3-00e7b484a5ed",
              "parent_uuid": "f6dc4541-b5e4-4f99-a899-8e932e840594",
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
              "uuid": "9514a00c-103e-4c50-a268-4e311899e99e",
              "parent_uuid": "f6dc4541-b5e4-4f99-a899-8e932e840594",
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
              "uuid": "573d6eec-ecae-4bef-b6df-6789122b18d1",
              "parent_uuid": "f6dc4541-b5e4-4f99-a899-8e932e840594",
              "tagName": "td",
              "properties": [
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
                  "uuid": "562b543d-176c-4dba-a0be-cb71e4c88529",
                  "parent_uuid": "573d6eec-ecae-4bef-b6df-6789122b18d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f837db1c-9ffa-4b6e-883e-8f72d936377f",
              "parent_uuid": "f6dc4541-b5e4-4f99-a899-8e932e840594",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2c3d528a-4901-42a4-99c6-9cc40f2e36a0",
                  "parent_uuid": "f837db1c-9ffa-4b6e-883e-8f72d936377f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15546bef-4636-4a2e-962f-89e222917afc",
              "parent_uuid": "f6dc4541-b5e4-4f99-a899-8e932e840594",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4a9ae92a-78d7-4c75-839a-32597e458749",
                  "parent_uuid": "15546bef-4636-4a2e-962f-89e222917afc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f99cbec-46ac-4ad1-b2dc-36fba4c72531",
              "parent_uuid": "f6dc4541-b5e4-4f99-a899-8e932e840594",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6baf3831-45ee-4c9f-82e0-67cabb5b7041",
                  "parent_uuid": "6f99cbec-46ac-4ad1-b2dc-36fba4c72531",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f8785ebf-fee4-48ee-a33b-dbc73596d76e",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cdc66ba8-688a-46a5-bf09-49dd94877dbf",
              "parent_uuid": "f8785ebf-fee4-48ee-a33b-dbc73596d76e",
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
          "uuid": "93a3802b-15ff-42bb-afb9-ad8e62e1d15e",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d90a4ab8-8f5f-4535-b47b-38ba6e47ecfe",
              "parent_uuid": "93a3802b-15ff-42bb-afb9-ad8e62e1d15e",
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
          "uuid": "0b38526d-1bb3-4614-805d-f92ab28c021b",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "85ef57c2-ba9b-4504-a890-82670ce115bb",
              "parent_uuid": "0b38526d-1bb3-4614-805d-f92ab28c021b",
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
                  "uuid": "63c9279b-f6fe-4033-b095-c2b1aa3a7bc7",
                  "parent_uuid": "85ef57c2-ba9b-4504-a890-82670ce115bb",
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
          "uuid": "76f15720-1d99-418b-af44-39e4a5d8bd10",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "3446ebf1-ebb8-46c9-ab6c-4046b348302b",
              "parent_uuid": "76f15720-1d99-418b-af44-39e4a5d8bd10",
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
          "uuid": "3715421b-2158-4bb3-9e9c-3d0d34887c4f",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8c61f97e-2d3f-4dc4-b42d-3b8ca2683441",
              "parent_uuid": "3715421b-2158-4bb3-9e9c-3d0d34887c4f",
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
          "uuid": "a0dc3679-9d9b-4cca-ad1a-488364a85195",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c021033e-f6ff-4789-9284-0f8ca942e14a",
              "parent_uuid": "a0dc3679-9d9b-4cca-ad1a-488364a85195",
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
              "uuid": "3ed35896-f121-46d3-a580-5bc608ddfa5d",
              "parent_uuid": "a0dc3679-9d9b-4cca-ad1a-488364a85195",
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
              "uuid": "c1002699-53fb-4c73-a543-a170d7a4b8b1",
              "parent_uuid": "a0dc3679-9d9b-4cca-ad1a-488364a85195",
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
              "uuid": "eab54f34-f51c-4709-b460-942cb43a9fe2",
              "parent_uuid": "a0dc3679-9d9b-4cca-ad1a-488364a85195",
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
              "uuid": "6b3f7927-c647-428a-b29e-c0592994f5ab",
              "parent_uuid": "a0dc3679-9d9b-4cca-ad1a-488364a85195",
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
              "uuid": "2eb94e33-752d-401d-8339-00f31a3efaf8",
              "parent_uuid": "a0dc3679-9d9b-4cca-ad1a-488364a85195",
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
          "uuid": "4d9bc596-5e44-489b-ace1-4d915fd24a98",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6bb3e7da-d9d5-4cd6-a013-d87a06fb589b",
              "parent_uuid": "4d9bc596-5e44-489b-ace1-4d915fd24a98",
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
              "uuid": "404f9e5f-d1ba-4b7b-b8e9-ef06eb6109ab",
              "parent_uuid": "4d9bc596-5e44-489b-ace1-4d915fd24a98",
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
              "uuid": "6c7f0b3b-beb3-4e02-9a26-7d145b5ddc65",
              "parent_uuid": "4d9bc596-5e44-489b-ace1-4d915fd24a98",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a438199e-51cd-4c0d-a2ea-82da8faa21d4",
                  "parent_uuid": "6c7f0b3b-beb3-4e02-9a26-7d145b5ddc65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b26777cc-d5bd-4c4e-a2da-48201e8b6662",
              "parent_uuid": "4d9bc596-5e44-489b-ace1-4d915fd24a98",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b62e25c1-3d6f-494b-973f-b1cb6eb29a6b",
                  "parent_uuid": "b26777cc-d5bd-4c4e-a2da-48201e8b6662",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb6f9e64-17d7-43f4-9641-cefe05d2c546",
              "parent_uuid": "4d9bc596-5e44-489b-ace1-4d915fd24a98",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0e29fb67-339f-4068-96c5-6f1a7d63dcb9",
                  "parent_uuid": "bb6f9e64-17d7-43f4-9641-cefe05d2c546",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4da67b8-263a-494f-8398-55d6a3903715",
              "parent_uuid": "4d9bc596-5e44-489b-ace1-4d915fd24a98",
              "tagName": "td",
              "properties": [
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
                  "uuid": "944abe11-eaa9-412c-a60d-0c2df14bee16",
                  "parent_uuid": "d4da67b8-263a-494f-8398-55d6a3903715",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc5650a3-d77a-4e3d-ae25-722e83fd1521",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9130159a-659c-4f31-a6d8-e49b46e6434d",
              "parent_uuid": "bc5650a3-d77a-4e3d-ae25-722e83fd1521",
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
              "uuid": "b5042eb7-694f-4101-b173-c05c97d87da2",
              "parent_uuid": "bc5650a3-d77a-4e3d-ae25-722e83fd1521",
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
              "uuid": "fbbfb65c-3c53-46f1-99c8-0f90f3d32646",
              "parent_uuid": "bc5650a3-d77a-4e3d-ae25-722e83fd1521",
              "tagName": "td",
              "properties": [
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
                  "uuid": "438291af-bb1a-464c-a2b9-0fadc1678144",
                  "parent_uuid": "fbbfb65c-3c53-46f1-99c8-0f90f3d32646",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5975dc1a-bd27-4a70-990b-baad461ca117",
              "parent_uuid": "bc5650a3-d77a-4e3d-ae25-722e83fd1521",
              "tagName": "td",
              "properties": [
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
                  "uuid": "83e0622c-b775-460f-bf88-0edbd3686ffd",
                  "parent_uuid": "5975dc1a-bd27-4a70-990b-baad461ca117",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04f23611-6d95-41bb-89ad-0e529f9b7b20",
              "parent_uuid": "bc5650a3-d77a-4e3d-ae25-722e83fd1521",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bb6ae78a-7633-487a-8ff8-507f29f58e51",
                  "parent_uuid": "04f23611-6d95-41bb-89ad-0e529f9b7b20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d19f7d75-71a5-467e-9682-65fcf78ee9c3",
              "parent_uuid": "bc5650a3-d77a-4e3d-ae25-722e83fd1521",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2d68b093-6b94-491b-8820-9c3fea0c1003",
                  "parent_uuid": "d19f7d75-71a5-467e-9682-65fcf78ee9c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bab5a913-d584-49af-b62a-7c45c427f681",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2bbcc1a-b5e4-46b6-aabf-36116f7e741b",
              "parent_uuid": "bab5a913-d584-49af-b62a-7c45c427f681",
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
              "uuid": "4450267a-8da6-4861-9511-e16b01efd1c6",
              "parent_uuid": "bab5a913-d584-49af-b62a-7c45c427f681",
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
              "uuid": "4d34466b-d13d-4d39-af83-837040423fbf",
              "parent_uuid": "bab5a913-d584-49af-b62a-7c45c427f681",
              "tagName": "td",
              "properties": [
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
                  "uuid": "51450509-f776-4e47-afd6-fd7d1649ed75",
                  "parent_uuid": "4d34466b-d13d-4d39-af83-837040423fbf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3f1b401-e708-4c10-9c20-583eee93d66a",
              "parent_uuid": "bab5a913-d584-49af-b62a-7c45c427f681",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ce76f688-45f2-4a93-bd4c-0e9ecb1ce84b",
                  "parent_uuid": "a3f1b401-e708-4c10-9c20-583eee93d66a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b61ecb85-c6ce-458e-a29a-2b8a1ef5cf55",
              "parent_uuid": "bab5a913-d584-49af-b62a-7c45c427f681",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7119d5be-3322-4329-b842-245d2bf684df",
                  "parent_uuid": "b61ecb85-c6ce-458e-a29a-2b8a1ef5cf55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33f7b4a0-04bf-4e1d-a701-7461bfe9b7d1",
              "parent_uuid": "bab5a913-d584-49af-b62a-7c45c427f681",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c31acf92-04e7-4667-942b-50bde464dda8",
                  "parent_uuid": "33f7b4a0-04bf-4e1d-a701-7461bfe9b7d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "726b49bc-7c27-4dde-b480-d0f691473856",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fac43ed8-d377-452e-a5b9-adac09cae110",
              "parent_uuid": "726b49bc-7c27-4dde-b480-d0f691473856",
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
              "uuid": "f3fa0cad-19dd-4435-b950-a019aa3a5e0c",
              "parent_uuid": "726b49bc-7c27-4dde-b480-d0f691473856",
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
              "uuid": "be786b7e-75b7-4d9b-9baa-82643c3c90d2",
              "parent_uuid": "726b49bc-7c27-4dde-b480-d0f691473856",
              "tagName": "td",
              "properties": [
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
                  "uuid": "98278565-8cfa-4782-9803-ea38b2b771fd",
                  "parent_uuid": "be786b7e-75b7-4d9b-9baa-82643c3c90d2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76c706a7-a429-4cd8-b7f6-8421de195869",
              "parent_uuid": "726b49bc-7c27-4dde-b480-d0f691473856",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4fe31c86-500f-4c66-89b4-d8e4bd109eb5",
                  "parent_uuid": "76c706a7-a429-4cd8-b7f6-8421de195869",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0773d967-dc2c-4aae-9a1c-9f9fb8d6cbcb",
              "parent_uuid": "726b49bc-7c27-4dde-b480-d0f691473856",
              "tagName": "td",
              "properties": [
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
                  "uuid": "170687f9-5130-4b76-89af-86ce026898fb",
                  "parent_uuid": "0773d967-dc2c-4aae-9a1c-9f9fb8d6cbcb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47897ee7-fb15-46ca-8f1b-d3c7603cf9f7",
              "parent_uuid": "726b49bc-7c27-4dde-b480-d0f691473856",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a0164884-f2e1-45ef-a4ae-078a68558a18",
                  "parent_uuid": "47897ee7-fb15-46ca-8f1b-d3c7603cf9f7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a3da8163-86c1-4f4e-8536-0882ef3b4c81",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7de69265-2d7b-4977-bca0-5d250a23f6c8",
              "parent_uuid": "a3da8163-86c1-4f4e-8536-0882ef3b4c81",
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
              "uuid": "349efc40-f577-4638-bf17-50f2c0c4cc3a",
              "parent_uuid": "a3da8163-86c1-4f4e-8536-0882ef3b4c81",
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
              "uuid": "8494a895-37c1-4015-ac81-2f58e011ee8f",
              "parent_uuid": "a3da8163-86c1-4f4e-8536-0882ef3b4c81",
              "tagName": "td",
              "properties": [
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
                  "uuid": "663d149e-a052-4a22-a271-cd256fabe41d",
                  "parent_uuid": "8494a895-37c1-4015-ac81-2f58e011ee8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "23eda145-4793-4193-99a1-562f6fea2bba",
              "parent_uuid": "a3da8163-86c1-4f4e-8536-0882ef3b4c81",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c1091ae9-d2b3-44e7-8d75-22d410f9387f",
                  "parent_uuid": "23eda145-4793-4193-99a1-562f6fea2bba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac8b5606-b7cf-4e20-93aa-ee9400536bdd",
              "parent_uuid": "a3da8163-86c1-4f4e-8536-0882ef3b4c81",
              "tagName": "td",
              "properties": [
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
                  "uuid": "29d08aeb-87a0-48c1-96b3-2dcdc041cf09",
                  "parent_uuid": "ac8b5606-b7cf-4e20-93aa-ee9400536bdd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd6068b4-5187-4d78-84d4-2801d140261f",
              "parent_uuid": "a3da8163-86c1-4f4e-8536-0882ef3b4c81",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fd6cef9b-10ed-4bc5-869b-c1410dcbfcd3",
                  "parent_uuid": "cd6068b4-5187-4d78-84d4-2801d140261f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cd9afbac-5b64-484c-a826-c4bb8dc2edd2",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be2bd0ce-7849-465d-93bc-d0bf37891a59",
              "parent_uuid": "cd9afbac-5b64-484c-a826-c4bb8dc2edd2",
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
              "uuid": "0e603c8c-01a1-4de7-829e-1c474da67e7f",
              "parent_uuid": "cd9afbac-5b64-484c-a826-c4bb8dc2edd2",
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
              "uuid": "1951320e-0733-4d82-8a87-bc2f75185714",
              "parent_uuid": "cd9afbac-5b64-484c-a826-c4bb8dc2edd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b587d92-4bf0-4170-812b-51e096172942",
                  "parent_uuid": "1951320e-0733-4d82-8a87-bc2f75185714",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fdd6d1e4-619e-4122-9ec6-201dc5ecb412",
              "parent_uuid": "cd9afbac-5b64-484c-a826-c4bb8dc2edd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c467350e-8639-449f-95fc-40baa830e66e",
                  "parent_uuid": "fdd6d1e4-619e-4122-9ec6-201dc5ecb412",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ace6cfc1-1b26-4894-8063-a9de3356e5f4",
              "parent_uuid": "cd9afbac-5b64-484c-a826-c4bb8dc2edd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c1cee450-f03a-4554-856e-385d00cc57b1",
                  "parent_uuid": "ace6cfc1-1b26-4894-8063-a9de3356e5f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b46b41bb-6f28-488e-aefc-f389ca250bd7",
              "parent_uuid": "cd9afbac-5b64-484c-a826-c4bb8dc2edd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b86a982e-d7b5-4fa4-9e2c-bd92f30b2d3a",
                  "parent_uuid": "b46b41bb-6f28-488e-aefc-f389ca250bd7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7400759f-cf72-41e9-bbcc-5d88fca39379",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea22257c-3b71-4b4d-a7b1-8eae989e5137",
              "parent_uuid": "7400759f-cf72-41e9-bbcc-5d88fca39379",
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
          "uuid": "0c2ff1e5-99ec-4833-b2f9-aec3b9cc94a6",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d3b1b4f9-e537-44cb-a8b0-0ddf5d312473",
              "parent_uuid": "0c2ff1e5-99ec-4833-b2f9-aec3b9cc94a6",
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
          "uuid": "31624632-35b0-4805-9c4b-4b76b02d5309",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "715f8dba-69ac-40c0-8be3-0e8eec9c395a",
              "parent_uuid": "31624632-35b0-4805-9c4b-4b76b02d5309",
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
                  "uuid": "ddd1c373-e742-4eef-8485-9fa98f3ac65c",
                  "parent_uuid": "715f8dba-69ac-40c0-8be3-0e8eec9c395a",
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
          "uuid": "f7d318a3-e622-4f4a-a403-d12c331ace32",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b799bcc-e691-427a-8077-b7345f3c839c",
              "parent_uuid": "f7d318a3-e622-4f4a-a403-d12c331ace32",
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
          "uuid": "4d7318f7-fc59-4980-a454-e164bb9ba169",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b1dc9544-1111-418a-bb37-02e5a9c05074",
              "parent_uuid": "4d7318f7-fc59-4980-a454-e164bb9ba169",
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
          "uuid": "099afcc9-dded-496c-8a06-431f24a13787",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59985cb6-110a-4710-a095-eadf6793348b",
              "parent_uuid": "099afcc9-dded-496c-8a06-431f24a13787",
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
              "uuid": "1b48364e-e1f6-4ef9-9307-f549e4fc7d3c",
              "parent_uuid": "099afcc9-dded-496c-8a06-431f24a13787",
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
              "uuid": "f8e8c778-e906-4f14-b2a2-7a045183880e",
              "parent_uuid": "099afcc9-dded-496c-8a06-431f24a13787",
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
              "uuid": "da002116-9504-46d4-8a75-1ccc2b77eb39",
              "parent_uuid": "099afcc9-dded-496c-8a06-431f24a13787",
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
              "uuid": "9a7780f7-a3af-499d-879e-21b4fc85e8d1",
              "parent_uuid": "099afcc9-dded-496c-8a06-431f24a13787",
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
          "uuid": "d0e62e7f-3c91-4b3d-b2d3-8c5775d1573e",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2a95d24-36c2-4e17-9ebb-d4c7e5f0d56b",
              "parent_uuid": "d0e62e7f-3c91-4b3d-b2d3-8c5775d1573e",
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
              "uuid": "569da9fe-0c65-4208-97aa-9b7e59abff03",
              "parent_uuid": "d0e62e7f-3c91-4b3d-b2d3-8c5775d1573e",
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
              "uuid": "948a24ac-ee8c-4d88-a65d-58f4b3936319",
              "parent_uuid": "d0e62e7f-3c91-4b3d-b2d3-8c5775d1573e",
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
              "uuid": "b4ea19b8-7eb7-4b4b-811b-aa7a887e1b3a",
              "parent_uuid": "d0e62e7f-3c91-4b3d-b2d3-8c5775d1573e",
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
              "uuid": "55b24775-cefc-41b8-b4b9-4dd99b9c33fa",
              "parent_uuid": "d0e62e7f-3c91-4b3d-b2d3-8c5775d1573e",
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
          "uuid": "aad78e91-bd86-4485-9492-7b7d1984ce12",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65492eb3-cb2c-4144-aa04-8a777e578666",
              "parent_uuid": "aad78e91-bd86-4485-9492-7b7d1984ce12",
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
              "uuid": "13f9d92e-333f-425f-acca-dee04b43bdcd",
              "parent_uuid": "aad78e91-bd86-4485-9492-7b7d1984ce12",
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
              "uuid": "ce52102c-68c3-42a1-b39b-60edf91258c1",
              "parent_uuid": "aad78e91-bd86-4485-9492-7b7d1984ce12",
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
              "uuid": "8b2387f4-9b94-4b0e-8883-0e4a6fe956b3",
              "parent_uuid": "aad78e91-bd86-4485-9492-7b7d1984ce12",
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
              "uuid": "295985b0-0173-471c-a028-d6cd4f091f36",
              "parent_uuid": "aad78e91-bd86-4485-9492-7b7d1984ce12",
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
          "uuid": "97df103f-357c-4090-8fb9-b11416df18a8",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7c384fe-593d-4a80-a9ea-277e6c1da69c",
              "parent_uuid": "97df103f-357c-4090-8fb9-b11416df18a8",
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
              "uuid": "8bf48547-c76f-4d1f-a306-2583828a15a6",
              "parent_uuid": "97df103f-357c-4090-8fb9-b11416df18a8",
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
              "uuid": "ea762f97-f7db-4283-9274-10426fddef95",
              "parent_uuid": "97df103f-357c-4090-8fb9-b11416df18a8",
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
              "uuid": "bcd782cc-451a-4001-9e1f-9e16c0cd592c",
              "parent_uuid": "97df103f-357c-4090-8fb9-b11416df18a8",
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
              "uuid": "be320810-eaf8-4b76-9b5f-62fb21f04eea",
              "parent_uuid": "97df103f-357c-4090-8fb9-b11416df18a8",
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
          "uuid": "3bfd7a48-4dea-4280-9828-cbf7c37481f4",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "909612c3-ef31-470a-9cac-76a1cc6eca8a",
              "parent_uuid": "3bfd7a48-4dea-4280-9828-cbf7c37481f4",
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
              "uuid": "91df0552-89fe-4957-badd-4651fa9a182c",
              "parent_uuid": "3bfd7a48-4dea-4280-9828-cbf7c37481f4",
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
              "uuid": "e7c2a8eb-21d0-48ef-b48f-67a6ff7f6f35",
              "parent_uuid": "3bfd7a48-4dea-4280-9828-cbf7c37481f4",
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
              "uuid": "b632e0a8-bf07-4238-9595-0cc899f50b93",
              "parent_uuid": "3bfd7a48-4dea-4280-9828-cbf7c37481f4",
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
              "uuid": "929f90db-0efe-4fd6-9d16-c3467d953948",
              "parent_uuid": "3bfd7a48-4dea-4280-9828-cbf7c37481f4",
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
          "uuid": "c3ceff38-df89-40f0-b36f-5c8eaa6cb392",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "42a11c93-8315-460f-84bd-bc8d384b3d91",
              "parent_uuid": "c3ceff38-df89-40f0-b36f-5c8eaa6cb392",
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
              "uuid": "5ad87294-5551-4421-80b5-95106c9088cc",
              "parent_uuid": "c3ceff38-df89-40f0-b36f-5c8eaa6cb392",
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
              "uuid": "5932be37-34d5-4352-94dc-124380b706c9",
              "parent_uuid": "c3ceff38-df89-40f0-b36f-5c8eaa6cb392",
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
              "uuid": "d9bd94c3-ef55-4989-a600-7bf1d77147d1",
              "parent_uuid": "c3ceff38-df89-40f0-b36f-5c8eaa6cb392",
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
              "uuid": "aa28976e-93d0-4e31-80e9-f66fb9bf671e",
              "parent_uuid": "c3ceff38-df89-40f0-b36f-5c8eaa6cb392",
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
          "uuid": "4a1cdf93-c72e-4451-88df-65db6962108e",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00a5835e-dc75-4cdd-af56-e64b0bb0e59b",
              "parent_uuid": "4a1cdf93-c72e-4451-88df-65db6962108e",
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
              "uuid": "16f1e394-2305-4597-a573-1ce289263d58",
              "parent_uuid": "4a1cdf93-c72e-4451-88df-65db6962108e",
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
              "uuid": "2fa03f56-f3a0-4888-ad1e-ac83aa4cdd89",
              "parent_uuid": "4a1cdf93-c72e-4451-88df-65db6962108e",
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
              "uuid": "d2ec4ef0-21c2-414b-92cf-17307d5d06f0",
              "parent_uuid": "4a1cdf93-c72e-4451-88df-65db6962108e",
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
              "uuid": "287b4810-91cb-44bd-b2aa-91bda2e73b23",
              "parent_uuid": "4a1cdf93-c72e-4451-88df-65db6962108e",
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
          "uuid": "eb8c447a-c7a5-4da8-b6ba-34465f3a731f",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9bf73a2c-7268-42aa-853e-7c88df01850f",
              "parent_uuid": "eb8c447a-c7a5-4da8-b6ba-34465f3a731f",
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
              "uuid": "215609d7-662f-4368-b814-cbc45ed9c633",
              "parent_uuid": "eb8c447a-c7a5-4da8-b6ba-34465f3a731f",
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
              "uuid": "6dc119cb-aabf-4a4f-9466-907f85edf033",
              "parent_uuid": "eb8c447a-c7a5-4da8-b6ba-34465f3a731f",
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
              "uuid": "86ebc80a-85a5-4ef6-bcae-d1093c36bb4e",
              "parent_uuid": "eb8c447a-c7a5-4da8-b6ba-34465f3a731f",
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
              "uuid": "f2737684-daac-4ec6-9eb7-d97de33e8f34",
              "parent_uuid": "eb8c447a-c7a5-4da8-b6ba-34465f3a731f",
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
          "uuid": "202b031e-7a19-4eed-a2d6-f787d8398902",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4199df9-387e-4e8c-ae70-eb8ecab8529c",
              "parent_uuid": "202b031e-7a19-4eed-a2d6-f787d8398902",
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
              "uuid": "21dcd413-6bad-4820-b542-2639eed7ace1",
              "parent_uuid": "202b031e-7a19-4eed-a2d6-f787d8398902",
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
              "uuid": "dd093319-9d4f-42dc-8548-73791dcda7ae",
              "parent_uuid": "202b031e-7a19-4eed-a2d6-f787d8398902",
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
              "uuid": "be7f96a4-6cb2-48c9-889f-62e2340fa6aa",
              "parent_uuid": "202b031e-7a19-4eed-a2d6-f787d8398902",
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
              "uuid": "4ca7d440-a1ed-4da6-af75-f5f48006d44f",
              "parent_uuid": "202b031e-7a19-4eed-a2d6-f787d8398902",
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
          "uuid": "b197e3a4-6507-4a49-8fed-632c44cdab0c",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c2ea9c53-5894-4e15-9c66-6b40208305a4",
              "parent_uuid": "b197e3a4-6507-4a49-8fed-632c44cdab0c",
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
              "uuid": "4a8b4006-eda8-475a-8984-1921464a7b7a",
              "parent_uuid": "b197e3a4-6507-4a49-8fed-632c44cdab0c",
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
              "uuid": "b51950e6-a0b0-48d7-ad13-d8d2bae3ae8b",
              "parent_uuid": "b197e3a4-6507-4a49-8fed-632c44cdab0c",
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
              "uuid": "f1bd9f9c-a965-4ac0-a6ff-8428ea0df52f",
              "parent_uuid": "b197e3a4-6507-4a49-8fed-632c44cdab0c",
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
              "uuid": "8c9cb71b-eed3-4bef-8b3f-279f466488a5",
              "parent_uuid": "b197e3a4-6507-4a49-8fed-632c44cdab0c",
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
          "uuid": "ac0374aa-d4aa-4acf-bf78-1d00c8bd7308",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9cb9616a-711f-469d-9fba-b38453d7a5e8",
              "parent_uuid": "ac0374aa-d4aa-4acf-bf78-1d00c8bd7308",
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
              "uuid": "bfcf1771-7e93-421d-a763-65a1fc402cf0",
              "parent_uuid": "ac0374aa-d4aa-4acf-bf78-1d00c8bd7308",
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
              "uuid": "e68d7674-4a31-42ce-ac0c-c490431f5e30",
              "parent_uuid": "ac0374aa-d4aa-4acf-bf78-1d00c8bd7308",
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
              "uuid": "1fcbc5c7-5277-456a-a094-b534eb99e535",
              "parent_uuid": "ac0374aa-d4aa-4acf-bf78-1d00c8bd7308",
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
              "uuid": "7f30fe85-0588-4c03-be59-8d16bfcd8e3a",
              "parent_uuid": "ac0374aa-d4aa-4acf-bf78-1d00c8bd7308",
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
          "uuid": "79103080-12a9-4e4e-acbe-f7c911321f61",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d4c652e-1eb6-4ef0-847c-c3b2ebe5a262",
              "parent_uuid": "79103080-12a9-4e4e-acbe-f7c911321f61",
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
              "uuid": "513302a1-86f4-4734-ab22-b8ba8163abe3",
              "parent_uuid": "79103080-12a9-4e4e-acbe-f7c911321f61",
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
              "uuid": "9f7722a2-d16d-409a-a804-2c61839759f4",
              "parent_uuid": "79103080-12a9-4e4e-acbe-f7c911321f61",
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
              "uuid": "57e7ed20-e4eb-488b-942e-f7a669e13b64",
              "parent_uuid": "79103080-12a9-4e4e-acbe-f7c911321f61",
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
              "uuid": "3113c510-4601-460d-bd0a-f71309473783",
              "parent_uuid": "79103080-12a9-4e4e-acbe-f7c911321f61",
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
          "uuid": "d3bf1e0a-2a33-42c6-926a-9bfbdc6211a9",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2100425b-7629-44fc-9727-541a82de9e76",
              "parent_uuid": "d3bf1e0a-2a33-42c6-926a-9bfbdc6211a9",
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
              "uuid": "ea1a1abb-fd52-4679-83c1-118462d07a58",
              "parent_uuid": "d3bf1e0a-2a33-42c6-926a-9bfbdc6211a9",
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
              "uuid": "f4e17107-dfac-48e9-b004-e987faa21e3a",
              "parent_uuid": "d3bf1e0a-2a33-42c6-926a-9bfbdc6211a9",
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
              "uuid": "69f17390-56f3-4ea1-b351-158c0b375340",
              "parent_uuid": "d3bf1e0a-2a33-42c6-926a-9bfbdc6211a9",
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
              "uuid": "5e78d164-9bd8-412d-a31b-645c98979617",
              "parent_uuid": "d3bf1e0a-2a33-42c6-926a-9bfbdc6211a9",
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
          "uuid": "5fdb3caf-b4e9-4fc0-8f6a-8fdadbb34ae0",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1671e30e-d3ef-4dab-9712-4f7045f1b6a6",
              "parent_uuid": "5fdb3caf-b4e9-4fc0-8f6a-8fdadbb34ae0",
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
          "uuid": "d2f260b7-bccc-44af-b103-9da58d0bc868",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2544e0af-05aa-4af9-987b-51b58d19ef05",
              "parent_uuid": "d2f260b7-bccc-44af-b103-9da58d0bc868",
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
          "uuid": "f5b22bd8-be22-45a4-aa67-d4bea7d7d06c",
          "parent_uuid": "c79a6065-619e-42bd-96d3-7cc961677f6b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16742965-a3b2-4ca9-a86e-80e3818581ed",
              "parent_uuid": "f5b22bd8-be22-45a4-aa67-d4bea7d7d06c",
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
                  "uuid": "c1299cca-59ba-4a9a-9860-f1080bc3e472",
                  "parent_uuid": "16742965-a3b2-4ca9-a86e-80e3818581ed",
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

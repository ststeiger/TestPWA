
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
  "uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
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
      "uuid": "e1d0a6b2-808a-4570-abd8-d27421e9946a",
      "parent_uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
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
      "uuid": "5585fff9-5158-4adf-97dc-70ae6bb78430",
      "parent_uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
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
      "uuid": "61421fc8-fad4-46c0-bfc8-43cefbb9a8f6",
      "parent_uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
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
      "uuid": "ed669baf-015c-4a28-83a4-dcdb0c786718",
      "parent_uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
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
      "uuid": "7df7ab38-e2a1-436e-b0f1-4a6e1887699f",
      "parent_uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
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
      "uuid": "3ce0eaaf-d351-4ef7-b637-4bef06ab0bb1",
      "parent_uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
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
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "d8cf4054-e833-4282-9481-815703bdb243",
      "parent_uuid": "df763021-116f-4ddf-a1c9-5d4f743bb86b",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "8e83b4e2-ed04-4a98-84cb-3945d1f1fa77",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "978c8c08-c4c4-475f-881e-61a67ac9833d",
              "parent_uuid": "8e83b4e2-ed04-4a98-84cb-3945d1f1fa77",
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
              "uuid": "eb1074ec-0bc4-4ee1-a8c6-528751c2727c",
              "parent_uuid": "8e83b4e2-ed04-4a98-84cb-3945d1f1fa77",
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
              "uuid": "66dfcbc9-f3e7-4e57-9cc8-2e847e376433",
              "parent_uuid": "8e83b4e2-ed04-4a98-84cb-3945d1f1fa77",
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
              "uuid": "15265bf6-9cc3-4caf-8b04-88742b0529cf",
              "parent_uuid": "8e83b4e2-ed04-4a98-84cb-3945d1f1fa77",
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
                  "7"
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
          "uuid": "ecd17f37-8704-4bc0-b866-cbef78d3279c",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "da4737e2-ceda-4c86-9920-09df7df01db7",
              "parent_uuid": "ecd17f37-8704-4bc0-b866-cbef78d3279c",
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
              "uuid": "fa1a03a2-bb70-40e9-8b93-02f1cd5226a9",
              "parent_uuid": "ecd17f37-8704-4bc0-b866-cbef78d3279c",
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
              "uuid": "7953175a-5b71-4d85-a3ad-185068adca96",
              "parent_uuid": "ecd17f37-8704-4bc0-b866-cbef78d3279c",
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
              "uuid": "edd38abd-21b4-4025-9e87-3e8a35b31efb",
              "parent_uuid": "ecd17f37-8704-4bc0-b866-cbef78d3279c",
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
          "uuid": "3cc26f4d-36c0-40b1-a38f-13e2a3742301",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c6c8476a-60da-4caa-8d35-c4de4f6ca0e3",
              "parent_uuid": "3cc26f4d-36c0-40b1-a38f-13e2a3742301",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.<br><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "63da4e50-e902-4c34-8ea3-acef5424a012",
              "parent_uuid": "3cc26f4d-36c0-40b1-a38f-13e2a3742301",
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
              "uuid": "7f42a79c-af6f-4611-ba99-59b04c1d4534",
              "parent_uuid": "3cc26f4d-36c0-40b1-a38f-13e2a3742301",
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
              "uuid": "b5168bb9-dd7b-4d7c-8860-dfee0eb1b7a2",
              "parent_uuid": "3cc26f4d-36c0-40b1-a38f-13e2a3742301",
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
              "uuid": "94bcc4b2-4718-4206-af6a-80bc9b9a8560",
              "parent_uuid": "3cc26f4d-36c0-40b1-a38f-13e2a3742301",
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
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "b2c43ee7-fc74-4fb7-8a97-2b098b293e2b",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4057a963-85d5-411e-9522-328802574d58",
              "parent_uuid": "b2c43ee7-fc74-4fb7-8a97-2b098b293e2b",
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
                  "10"
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
          "uuid": "2a45c2b7-9034-4cdb-8ee5-13208042d0e0",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01f6ba97-8afb-4499-a75e-7739d66c6ad7",
              "parent_uuid": "2a45c2b7-9034-4cdb-8ee5-13208042d0e0",
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
              "uuid": "ec31f927-a58f-42f1-a0aa-096e6241020b",
              "parent_uuid": "2a45c2b7-9034-4cdb-8ee5-13208042d0e0",
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
              "uuid": "07a20bb5-9a96-44be-b888-0ae29fdf57f5",
              "parent_uuid": "2a45c2b7-9034-4cdb-8ee5-13208042d0e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5779ed39-d8de-4601-8fd9-9833aa624a34",
                  "parent_uuid": "07a20bb5-9a96-44be-b888-0ae29fdf57f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cdaac7b1-9a1f-4cfa-8707-2ceac8f1c022",
              "parent_uuid": "2a45c2b7-9034-4cdb-8ee5-13208042d0e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abd79610-31d0-4bff-bca7-b98c644fdd4d",
                  "parent_uuid": "cdaac7b1-9a1f-4cfa-8707-2ceac8f1c022",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8b118a8-bd58-4e8e-8573-932fe579062a",
              "parent_uuid": "2a45c2b7-9034-4cdb-8ee5-13208042d0e0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8df49cfa-efdb-47a2-8102-1d7d22f3de81",
                  "parent_uuid": "b8b118a8-bd58-4e8e-8573-932fe579062a",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "0e3a09dd-139f-496c-80f4-dd6805e78612",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "632b70e8-f011-4cbd-8ffb-a966450dc102",
              "parent_uuid": "0e3a09dd-139f-496c-80f4-dd6805e78612",
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
              "uuid": "8f330e05-51ee-4b24-9c81-8ce790dfa523",
              "parent_uuid": "0e3a09dd-139f-496c-80f4-dd6805e78612",
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
              "uuid": "2d5451f9-0993-40f8-8f53-73fd9c20817f",
              "parent_uuid": "0e3a09dd-139f-496c-80f4-dd6805e78612",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c839962c-469f-4790-89e4-4f4e9b431064",
                  "parent_uuid": "2d5451f9-0993-40f8-8f53-73fd9c20817f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6d18d3f-3208-4b13-b547-c97e38b88440",
              "parent_uuid": "0e3a09dd-139f-496c-80f4-dd6805e78612",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7ae97a69-d1c2-4df3-962f-d658f4411dc2",
                  "parent_uuid": "f6d18d3f-3208-4b13-b547-c97e38b88440",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b56196b-db15-4e9e-bf85-7c66a63e2667",
              "parent_uuid": "0e3a09dd-139f-496c-80f4-dd6805e78612",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "32876666-5be7-4025-a8f1-008c6fd1b811",
                  "parent_uuid": "1b56196b-db15-4e9e-bf85-7c66a63e2667",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "b7c48f46-971d-4b85-aead-a676f0494ccb",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f0c5dd93-828c-4427-9a31-f8429143e502",
              "parent_uuid": "b7c48f46-971d-4b85-aead-a676f0494ccb",
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
              "uuid": "d9d1ea2e-f099-4893-b7db-b4d3c44db502",
              "parent_uuid": "b7c48f46-971d-4b85-aead-a676f0494ccb",
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
              "uuid": "7c56bc66-7c9d-449f-b219-540c4c82902d",
              "parent_uuid": "b7c48f46-971d-4b85-aead-a676f0494ccb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34079560-b4a2-4630-b6fd-232b0f70825f",
                  "parent_uuid": "7c56bc66-7c9d-449f-b219-540c4c82902d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "113f493b-2974-4db7-97a9-0dc30109df26",
              "parent_uuid": "b7c48f46-971d-4b85-aead-a676f0494ccb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a197f3e5-e71d-493d-bcb5-80a102e9ba95",
                  "parent_uuid": "113f493b-2974-4db7-97a9-0dc30109df26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b9a5d298-3b76-4d01-999c-24efb76cbd7c",
              "parent_uuid": "b7c48f46-971d-4b85-aead-a676f0494ccb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dea915ab-f642-4864-acb2-a64d6dc733eb",
                  "parent_uuid": "b9a5d298-3b76-4d01-999c-24efb76cbd7c",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "97b3cd86-9063-4f1b-aba7-aa423027254b",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f67cdf6-1bf5-4e1d-a33e-5ee91549c4d1",
              "parent_uuid": "97b3cd86-9063-4f1b-aba7-aa423027254b",
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
              "uuid": "fec585bc-464f-4402-bc82-1c5c2558367b",
              "parent_uuid": "97b3cd86-9063-4f1b-aba7-aa423027254b",
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
              "uuid": "9528da1b-44ef-4181-a852-3572928b8556",
              "parent_uuid": "97b3cd86-9063-4f1b-aba7-aa423027254b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de21f0da-2a4a-4776-9666-6e98e271dd2c",
                  "parent_uuid": "9528da1b-44ef-4181-a852-3572928b8556",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0f6edf7-9320-4eee-9db1-96c39d136830",
              "parent_uuid": "97b3cd86-9063-4f1b-aba7-aa423027254b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75a99dcb-5ece-42ab-aba2-de401d16ed08",
                  "parent_uuid": "f0f6edf7-9320-4eee-9db1-96c39d136830",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10de5748-732b-4e0c-a95e-979f6f44e4cd",
              "parent_uuid": "97b3cd86-9063-4f1b-aba7-aa423027254b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73fd9454-5c99-4ef9-be4b-40b4ede2a548",
                  "parent_uuid": "10de5748-732b-4e0c-a95e-979f6f44e4cd",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "9bf85207-963b-4309-a8ec-0dc12de73198",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7829a38-abc2-493d-aa50-8f524ccf96e4",
              "parent_uuid": "9bf85207-963b-4309-a8ec-0dc12de73198",
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
              "uuid": "0da280fe-7406-4867-98e4-21d8318ed748",
              "parent_uuid": "9bf85207-963b-4309-a8ec-0dc12de73198",
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
              "uuid": "55232553-b0a7-4a3b-afd4-d826b96c20d5",
              "parent_uuid": "9bf85207-963b-4309-a8ec-0dc12de73198",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "235c25ef-12b5-4d8b-83f4-d87e9cead6bf",
                  "parent_uuid": "55232553-b0a7-4a3b-afd4-d826b96c20d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d092ee8f-d51b-4194-8689-54c76e927875",
              "parent_uuid": "9bf85207-963b-4309-a8ec-0dc12de73198",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0753cc54-9dc3-4986-93fc-8c8d13e6667c",
                  "parent_uuid": "d092ee8f-d51b-4194-8689-54c76e927875",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf44d958-bcd0-4281-8a12-d0b965686789",
              "parent_uuid": "9bf85207-963b-4309-a8ec-0dc12de73198",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f5b52cc-9904-4ef7-9572-cc874a0627f2",
                  "parent_uuid": "bf44d958-bcd0-4281-8a12-d0b965686789",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "93f3c225-3cb2-4ba3-a47d-ea29ac0bf79a",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "88d0babe-8979-44fe-a0a9-39f5ff5023ce",
              "parent_uuid": "93f3c225-3cb2-4ba3-a47d-ea29ac0bf79a",
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
              "uuid": "7a19166d-3873-43d8-86bb-2c64cbbfcd5d",
              "parent_uuid": "93f3c225-3cb2-4ba3-a47d-ea29ac0bf79a",
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
              "uuid": "37bf0452-4bb9-4fc9-94d9-d7597f3d6286",
              "parent_uuid": "93f3c225-3cb2-4ba3-a47d-ea29ac0bf79a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3020fa09-efca-4d6f-8a81-ea7bffa71398",
                  "parent_uuid": "37bf0452-4bb9-4fc9-94d9-d7597f3d6286",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9e15bad-e932-48c6-9481-4ebc713c1530",
              "parent_uuid": "93f3c225-3cb2-4ba3-a47d-ea29ac0bf79a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1fbe8a57-4336-4577-94b9-adebe8d87c00",
                  "parent_uuid": "f9e15bad-e932-48c6-9481-4ebc713c1530",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b877b9b-d94f-4c95-8fbc-64e3e160e772",
              "parent_uuid": "93f3c225-3cb2-4ba3-a47d-ea29ac0bf79a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d52a75b9-6807-461b-910e-6e7e7539a30a",
                  "parent_uuid": "8b877b9b-d94f-4c95-8fbc-64e3e160e772",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "accd296b-5ffc-4e7e-b735-1666ffb01206",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5187a181-a52f-4966-b11c-c44c22603d91",
              "parent_uuid": "accd296b-5ffc-4e7e-b735-1666ffb01206",
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
              "uuid": "3934098d-c645-4842-8780-b6399949d932",
              "parent_uuid": "accd296b-5ffc-4e7e-b735-1666ffb01206",
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
              "uuid": "5b13dd22-810a-44b8-adde-3ab84cd739d7",
              "parent_uuid": "accd296b-5ffc-4e7e-b735-1666ffb01206",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abd5d84d-9953-4c69-a668-3aad33d88acc",
                  "parent_uuid": "5b13dd22-810a-44b8-adde-3ab84cd739d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d13f5491-2e22-446d-b7bf-c5d8eb55daae",
              "parent_uuid": "accd296b-5ffc-4e7e-b735-1666ffb01206",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d8757c58-a415-471f-ba10-522c1320123e",
                  "parent_uuid": "d13f5491-2e22-446d-b7bf-c5d8eb55daae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8562c39e-c80f-4265-8456-757e1bdf70ef",
              "parent_uuid": "accd296b-5ffc-4e7e-b735-1666ffb01206",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c91df780-1be0-47d9-a3c2-cda3fd119242",
                  "parent_uuid": "8562c39e-c80f-4265-8456-757e1bdf70ef",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "7cb2946c-2728-412a-9bda-4d4ce5b85828",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc5e3bc4-839c-43a8-8b9a-7e429f57ca8a",
              "parent_uuid": "7cb2946c-2728-412a-9bda-4d4ce5b85828",
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
              "uuid": "c049434a-9d24-4811-910a-48c9e440f515",
              "parent_uuid": "7cb2946c-2728-412a-9bda-4d4ce5b85828",
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
              "uuid": "06151199-a136-4534-9c80-fa72499856c2",
              "parent_uuid": "7cb2946c-2728-412a-9bda-4d4ce5b85828",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "043879c7-1015-4222-9f19-1b5a75e6a1f7",
                  "parent_uuid": "06151199-a136-4534-9c80-fa72499856c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "75a8a986-2d3c-4ec5-be54-363224dbf973",
              "parent_uuid": "7cb2946c-2728-412a-9bda-4d4ce5b85828",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "499ddf93-5060-4f7d-bf2d-a68aea49ebd9",
                  "parent_uuid": "75a8a986-2d3c-4ec5-be54-363224dbf973",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1333fb3f-0266-481d-a6b6-072711e53af1",
              "parent_uuid": "7cb2946c-2728-412a-9bda-4d4ce5b85828",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85a4386e-fc47-4980-81bc-5f9a0a5847a1",
                  "parent_uuid": "1333fb3f-0266-481d-a6b6-072711e53af1",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "8265dd2b-f234-46ee-a5bc-fcacb4ffed9a",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c4c91ce-70b1-48e0-87d6-cf948040c647",
              "parent_uuid": "8265dd2b-f234-46ee-a5bc-fcacb4ffed9a",
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
              "uuid": "5e9328a4-9be5-4dfa-ac5a-200b0bd5c0ed",
              "parent_uuid": "8265dd2b-f234-46ee-a5bc-fcacb4ffed9a",
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
              "uuid": "b3a7a6dd-5958-4721-802e-c5844eb851cd",
              "parent_uuid": "8265dd2b-f234-46ee-a5bc-fcacb4ffed9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad22dfb3-c6c6-4f1b-aa2a-1401ca712898",
                  "parent_uuid": "b3a7a6dd-5958-4721-802e-c5844eb851cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2936361f-b018-4605-98f5-f77a690091b6",
              "parent_uuid": "8265dd2b-f234-46ee-a5bc-fcacb4ffed9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f1f2434-0501-4f5f-9209-58bd628679f4",
                  "parent_uuid": "2936361f-b018-4605-98f5-f77a690091b6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73812bf5-a0dc-480f-8340-29b822244f58",
              "parent_uuid": "8265dd2b-f234-46ee-a5bc-fcacb4ffed9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f448e76-0a33-4246-907f-68def72e4590",
                  "parent_uuid": "73812bf5-a0dc-480f-8340-29b822244f58",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "80ec5336-a2fa-42b3-813e-514d88b9cb1f",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "462451a4-416a-4cd5-a22c-75a45fa04941",
              "parent_uuid": "80ec5336-a2fa-42b3-813e-514d88b9cb1f",
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
              "uuid": "387ca25d-f9a9-4bc7-bc6d-5ca80e47dde9",
              "parent_uuid": "80ec5336-a2fa-42b3-813e-514d88b9cb1f",
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
              "uuid": "93f8b844-cdf9-4492-8c39-dd412c5d12c9",
              "parent_uuid": "80ec5336-a2fa-42b3-813e-514d88b9cb1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8516eb76-603c-4705-803f-f4c5f865b88b",
                  "parent_uuid": "93f8b844-cdf9-4492-8c39-dd412c5d12c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a7dd4e8-84d2-434e-b6ac-8e3298fbed09",
              "parent_uuid": "80ec5336-a2fa-42b3-813e-514d88b9cb1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a0b467b8-4b1c-468e-801f-42daca2e08be",
                  "parent_uuid": "1a7dd4e8-84d2-434e-b6ac-8e3298fbed09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ba29a156-9601-4378-a90e-7f3e1ddd191c",
              "parent_uuid": "80ec5336-a2fa-42b3-813e-514d88b9cb1f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e25ae9cf-5fb7-413a-8126-c5ef4fc91353",
                  "parent_uuid": "ba29a156-9601-4378-a90e-7f3e1ddd191c",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "63d3e3ed-eaaa-4a7d-85b7-5788d8badb69",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f0315bc-1fc3-4a10-a06d-059320248efb",
              "parent_uuid": "63d3e3ed-eaaa-4a7d-85b7-5788d8badb69",
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
              "uuid": "625088ec-7dc3-464e-b8e8-59206ce73842",
              "parent_uuid": "63d3e3ed-eaaa-4a7d-85b7-5788d8badb69",
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
              "uuid": "f3122ee9-7029-4e6e-b8d0-0960cb027f0a",
              "parent_uuid": "63d3e3ed-eaaa-4a7d-85b7-5788d8badb69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a6bc1082-4b1c-4236-b750-2db42fe8d306",
                  "parent_uuid": "f3122ee9-7029-4e6e-b8d0-0960cb027f0a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62206e9f-1c9d-4119-ba77-e9fab2acdffa",
              "parent_uuid": "63d3e3ed-eaaa-4a7d-85b7-5788d8badb69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2fc7d4d-b5f7-46fd-b366-548bdd16ed2f",
                  "parent_uuid": "62206e9f-1c9d-4119-ba77-e9fab2acdffa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3bf36dbf-0832-4ca8-9782-7c8c423cf3dc",
              "parent_uuid": "63d3e3ed-eaaa-4a7d-85b7-5788d8badb69",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3d82661-ba8a-48e5-a579-a995a10d9840",
                  "parent_uuid": "3bf36dbf-0832-4ca8-9782-7c8c423cf3dc",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "4aa1c9e3-44ee-4ac7-8d77-90a0e44e6e76",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e80d98c-9357-4f21-842d-9745a48986cd",
              "parent_uuid": "4aa1c9e3-44ee-4ac7-8d77-90a0e44e6e76",
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
              "uuid": "87318469-e373-4f9b-a264-f6127ec3c554",
              "parent_uuid": "4aa1c9e3-44ee-4ac7-8d77-90a0e44e6e76",
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
              "uuid": "8d845d5d-4de5-4f5e-8e0d-944a3afc28a5",
              "parent_uuid": "4aa1c9e3-44ee-4ac7-8d77-90a0e44e6e76",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc429af3-61a7-4502-93cd-a6b0ac4e825a",
                  "parent_uuid": "8d845d5d-4de5-4f5e-8e0d-944a3afc28a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7ab5e820-19cc-4c80-8473-bd8668b586ae",
              "parent_uuid": "4aa1c9e3-44ee-4ac7-8d77-90a0e44e6e76",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "763cf1fc-ee46-450a-9ba5-e407d906c96b",
                  "parent_uuid": "7ab5e820-19cc-4c80-8473-bd8668b586ae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "06ef0c25-8c42-4446-9b8b-e06781e792a5",
              "parent_uuid": "4aa1c9e3-44ee-4ac7-8d77-90a0e44e6e76",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad45b431-f921-43fb-bd8a-072bf887975c",
                  "parent_uuid": "06ef0c25-8c42-4446-9b8b-e06781e792a5",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "e6a90bfa-1752-4b62-8bba-6cdf75a8b2e3",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9afc90eb-b086-4061-b9ab-0a2dd870fd68",
              "parent_uuid": "e6a90bfa-1752-4b62-8bba-6cdf75a8b2e3",
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
              "uuid": "b44a2012-da8e-4c8a-b71f-b4957d0cde88",
              "parent_uuid": "e6a90bfa-1752-4b62-8bba-6cdf75a8b2e3",
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
              "uuid": "dfbba64f-4f23-4681-a239-4ee04a1167f0",
              "parent_uuid": "e6a90bfa-1752-4b62-8bba-6cdf75a8b2e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e8ef671-bb09-403f-86df-ffb02d022b5d",
                  "parent_uuid": "dfbba64f-4f23-4681-a239-4ee04a1167f0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fffbd208-8414-4a33-ad3b-214db5745fe2",
              "parent_uuid": "e6a90bfa-1752-4b62-8bba-6cdf75a8b2e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ad8f0e4-76de-4a3f-b850-2bede9229bb0",
                  "parent_uuid": "fffbd208-8414-4a33-ad3b-214db5745fe2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05012606-4677-4d09-91b7-f3c0ea41517c",
              "parent_uuid": "e6a90bfa-1752-4b62-8bba-6cdf75a8b2e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86cd9206-cbe2-4550-bde6-ec926b1f7da3",
                  "parent_uuid": "05012606-4677-4d09-91b7-f3c0ea41517c",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "dc81ede6-f433-4f68-b325-69558f2770bc",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "491c8e20-001d-4552-a1f9-8e47949bbe06",
              "parent_uuid": "dc81ede6-f433-4f68-b325-69558f2770bc",
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
              "uuid": "169df555-8696-42b5-adde-acbcf544551d",
              "parent_uuid": "dc81ede6-f433-4f68-b325-69558f2770bc",
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
              "uuid": "246fe2ee-5676-4b96-afd5-4abbb9bf1ae5",
              "parent_uuid": "dc81ede6-f433-4f68-b325-69558f2770bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "724e48ca-0fbd-4ce3-8f81-8895a4cfe465",
                  "parent_uuid": "246fe2ee-5676-4b96-afd5-4abbb9bf1ae5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3e0dad32-c5d6-4614-8515-b9f59a935123",
              "parent_uuid": "dc81ede6-f433-4f68-b325-69558f2770bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f1599f62-c1ec-4859-89a4-dd710f6015c3",
                  "parent_uuid": "3e0dad32-c5d6-4614-8515-b9f59a935123",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "269feb72-3442-4a19-b1b4-c3d6aa863772",
              "parent_uuid": "dc81ede6-f433-4f68-b325-69558f2770bc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "692e4231-90df-4b92-a1bc-ec50a1a34179",
                  "parent_uuid": "269feb72-3442-4a19-b1b4-c3d6aa863772",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "a906665a-f89a-4514-b73f-620c0babbd91",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66897b55-31b2-4363-8d0a-fab727095232",
              "parent_uuid": "a906665a-f89a-4514-b73f-620c0babbd91",
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
              "uuid": "565ac27f-d510-46f3-a9d2-a7231f8a68d6",
              "parent_uuid": "a906665a-f89a-4514-b73f-620c0babbd91",
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
              "uuid": "253c458f-2bd4-4573-a665-6f93a79193ff",
              "parent_uuid": "a906665a-f89a-4514-b73f-620c0babbd91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e2ae9c8-0fe3-416e-ac2a-7d6ed073bf58",
                  "parent_uuid": "253c458f-2bd4-4573-a665-6f93a79193ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e49573c7-874a-4645-9fa4-c222c7ec9bd2",
              "parent_uuid": "a906665a-f89a-4514-b73f-620c0babbd91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e78a9e66-605b-4655-87df-cda7b6d36d73",
                  "parent_uuid": "e49573c7-874a-4645-9fa4-c222c7ec9bd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "348ffcc8-8a11-479e-88e4-666c069ca7a3",
              "parent_uuid": "a906665a-f89a-4514-b73f-620c0babbd91",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e5eb1adb-df8b-41bd-9c77-f249ce4fdb83",
                  "parent_uuid": "348ffcc8-8a11-479e-88e4-666c069ca7a3",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "c96f098e-df20-45e7-9d01-beea8b844a17",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f93a81da-cdd0-43bd-a29f-c285b1b86a7b",
              "parent_uuid": "c96f098e-df20-45e7-9d01-beea8b844a17",
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
              "uuid": "53a8249f-2b1f-4efc-8d04-06a3fc4ceb7f",
              "parent_uuid": "c96f098e-df20-45e7-9d01-beea8b844a17",
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
              "uuid": "9418f2f6-d906-4e3d-b565-1f07c15b0291",
              "parent_uuid": "c96f098e-df20-45e7-9d01-beea8b844a17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1ef76af2-c12b-4883-bd7c-4fe44997f179",
                  "parent_uuid": "9418f2f6-d906-4e3d-b565-1f07c15b0291",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c6f0a43-9be8-40e7-8a0b-0cd9cc90f0b4",
              "parent_uuid": "c96f098e-df20-45e7-9d01-beea8b844a17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73a31576-d28d-46ca-98dd-8fbdb94e1418",
                  "parent_uuid": "3c6f0a43-9be8-40e7-8a0b-0cd9cc90f0b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "594f0b18-5420-4568-a478-583e6a7fabd1",
              "parent_uuid": "c96f098e-df20-45e7-9d01-beea8b844a17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a35b8b1-fffb-4f39-b23d-be86c5e0cf79",
                  "parent_uuid": "594f0b18-5420-4568-a478-583e6a7fabd1",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "84ce6e7e-7699-49dc-8d56-f15786e83a8d",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "556b00b1-f891-4d34-b6cf-95fc1d0d7c4e",
              "parent_uuid": "84ce6e7e-7699-49dc-8d56-f15786e83a8d",
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
                  "10"
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
          "uuid": "560c9016-2dc7-4409-93a9-70f0649e7f74",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d4e2aef-b32c-4f59-a4d8-490456fc2587",
              "parent_uuid": "560c9016-2dc7-4409-93a9-70f0649e7f74",
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
                  "10"
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
          "uuid": "93018ede-a301-4b82-85ea-9d7b391abb07",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aac90224-e3dd-41ae-995e-38490ecedca1",
              "parent_uuid": "93018ede-a301-4b82-85ea-9d7b391abb07",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "54b28cf7-6276-4d07-9e23-18b2a37e9b74",
                  "parent_uuid": "aac90224-e3dd-41ae-995e-38490ecedca1",
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
          "uuid": "45e16642-7bfd-48b6-bd3c-03b883098aa0",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "8e68edce-4f5d-44f4-ba68-631ad4ebef44",
              "parent_uuid": "45e16642-7bfd-48b6-bd3c-03b883098aa0",
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
                  "10"
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
          "uuid": "a5337dda-bc0a-4a3f-a293-304f59177e70",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "02532c1b-0d6a-4d35-b3f8-af821826f0b3",
              "parent_uuid": "a5337dda-bc0a-4a3f-a293-304f59177e70",
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
                  "10"
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
          "uuid": "5fa167e6-837d-45a7-8426-bcf08d813ed9",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "76005398-4e40-4afe-a50a-492da610892a",
              "parent_uuid": "5fa167e6-837d-45a7-8426-bcf08d813ed9",
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
              "uuid": "3c34911d-7041-4199-9657-0c0d4391af72",
              "parent_uuid": "5fa167e6-837d-45a7-8426-bcf08d813ed9",
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
              "uuid": "73e75ae2-52a5-462a-a5f9-086fb8ad492c",
              "parent_uuid": "5fa167e6-837d-45a7-8426-bcf08d813ed9",
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
              "uuid": "6d1cca2a-9254-4e5b-bcff-f953de52d730",
              "parent_uuid": "5fa167e6-837d-45a7-8426-bcf08d813ed9",
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
              "uuid": "7cebd577-043c-4f76-ba94-47e1acc47d8d",
              "parent_uuid": "5fa167e6-837d-45a7-8426-bcf08d813ed9",
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
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "f443135c-a868-48e4-9698-08adff2bb09a",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "450b0f36-8680-43ca-9065-d45c0a459293",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6752b81c-69a6-4ad9-b2e1-3d1246ea98a4",
              "parent_uuid": "450b0f36-8680-43ca-9065-d45c0a459293",
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
              "uuid": "af67f860-a44f-4d16-89ea-885733960083",
              "parent_uuid": "450b0f36-8680-43ca-9065-d45c0a459293",
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
              "uuid": "72ca7745-e02c-4e2a-84fa-3a6743783cd2",
              "parent_uuid": "450b0f36-8680-43ca-9065-d45c0a459293",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1d8c0b3-86a9-469b-be55-2a2ee8b078ba",
                  "parent_uuid": "72ca7745-e02c-4e2a-84fa-3a6743783cd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd04151c-bc3c-4b27-91ee-9fe7cc962771",
              "parent_uuid": "450b0f36-8680-43ca-9065-d45c0a459293",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f43a0f9-b684-4699-a990-051fa376cc10",
                  "parent_uuid": "cd04151c-bc3c-4b27-91ee-9fe7cc962771",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b942a2bf-5c2d-4547-ae95-67f05e0f97d8",
              "parent_uuid": "450b0f36-8680-43ca-9065-d45c0a459293",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1137756b-71f1-498a-9e8e-df0ab930ecfa",
                  "parent_uuid": "b942a2bf-5c2d-4547-ae95-67f05e0f97d8",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "030ba275-cbd5-4807-a1ad-6eaf113b1a42",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "032df5f7-5b89-491d-bbd1-dbe8f1a42a2a",
              "parent_uuid": "030ba275-cbd5-4807-a1ad-6eaf113b1a42",
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
              "uuid": "c8e32f32-6186-4ee1-9312-c6a4827ecdc9",
              "parent_uuid": "030ba275-cbd5-4807-a1ad-6eaf113b1a42",
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
              "uuid": "e902edaa-4264-4e97-a723-c76cfc52998b",
              "parent_uuid": "030ba275-cbd5-4807-a1ad-6eaf113b1a42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8be8bf97-4155-47ff-9b1b-700b1ad5ccd5",
                  "parent_uuid": "e902edaa-4264-4e97-a723-c76cfc52998b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8c69be3-eb5b-4ed7-9372-8b11707d6f61",
              "parent_uuid": "030ba275-cbd5-4807-a1ad-6eaf113b1a42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1af54783-924a-469c-9fc1-554637221d2e",
                  "parent_uuid": "c8c69be3-eb5b-4ed7-9372-8b11707d6f61",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d1f348e-96a5-48b4-a9d1-570e327d3aaa",
              "parent_uuid": "030ba275-cbd5-4807-a1ad-6eaf113b1a42",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "da3a759c-347f-471b-9b2d-e929eb2b0b3a",
                  "parent_uuid": "4d1f348e-96a5-48b4-a9d1-570e327d3aaa",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "c6df8ff2-c352-4d90-9811-c0062d93d187",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49d5943b-d60a-4341-84de-055216fc6661",
              "parent_uuid": "c6df8ff2-c352-4d90-9811-c0062d93d187",
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
              "uuid": "3a11d0e9-dc5b-43f7-b609-cc394d6fb8cd",
              "parent_uuid": "c6df8ff2-c352-4d90-9811-c0062d93d187",
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
              "uuid": "63b7ee65-a068-41b5-8a49-056a79621ab9",
              "parent_uuid": "c6df8ff2-c352-4d90-9811-c0062d93d187",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0469c8c8-fbc5-4b35-8ba8-aae12e1a0da0",
                  "parent_uuid": "63b7ee65-a068-41b5-8a49-056a79621ab9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1e14c6d-d1fc-4ead-bfc7-61fdf6092a5c",
              "parent_uuid": "c6df8ff2-c352-4d90-9811-c0062d93d187",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c84f4549-a628-49f5-bc29-ec62ea1f9995",
                  "parent_uuid": "f1e14c6d-d1fc-4ead-bfc7-61fdf6092a5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77a7343e-264e-4c91-86db-999f843baaad",
              "parent_uuid": "c6df8ff2-c352-4d90-9811-c0062d93d187",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8370e28-5e20-4a2c-8163-2d4ffbb78a52",
                  "parent_uuid": "77a7343e-264e-4c91-86db-999f843baaad",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "641e4d11-1a69-46a7-ab14-cda94e1a0bb6",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1e1ac0fb-dee7-4c4a-b668-0b52c78c4884",
              "parent_uuid": "641e4d11-1a69-46a7-ab14-cda94e1a0bb6",
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
              "uuid": "46dbfcc4-86db-41af-918f-5bcaf95db51c",
              "parent_uuid": "641e4d11-1a69-46a7-ab14-cda94e1a0bb6",
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
              "uuid": "2b202842-c160-4c3f-9b0c-53611a0a47c4",
              "parent_uuid": "641e4d11-1a69-46a7-ab14-cda94e1a0bb6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "106f0e20-0494-49ba-80d7-b2bead582132",
                  "parent_uuid": "2b202842-c160-4c3f-9b0c-53611a0a47c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4c56874-42c5-411f-8ed5-e828928ac736",
              "parent_uuid": "641e4d11-1a69-46a7-ab14-cda94e1a0bb6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e76d54fc-95e6-4658-8e53-290b0f0e7c6a",
                  "parent_uuid": "f4c56874-42c5-411f-8ed5-e828928ac736",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9715daf-8874-4cd7-87de-90f685f249f1",
              "parent_uuid": "641e4d11-1a69-46a7-ab14-cda94e1a0bb6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adf281ff-575f-49c2-93b3-44b408e999cc",
                  "parent_uuid": "f9715daf-8874-4cd7-87de-90f685f249f1",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "af31eac1-13f9-4320-941f-f8f36d1edcd8",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5321bd0f-8cd7-4fc8-9c03-9d6484d6e81c",
              "parent_uuid": "af31eac1-13f9-4320-941f-f8f36d1edcd8",
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
                  "10"
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
          "uuid": "a71f139f-6505-43d0-8324-e4da34bfbe7e",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "902403b3-e0df-439c-9128-621fcb78f298",
              "parent_uuid": "a71f139f-6505-43d0-8324-e4da34bfbe7e",
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
                  "10"
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
          "uuid": "768620c7-bda8-41ef-8237-f0c0e6203f08",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d83dad5-b6d9-44fd-871d-badfadd692c0",
              "parent_uuid": "768620c7-bda8-41ef-8237-f0c0e6203f08",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "9e055734-9f4e-4275-a419-9eafb45cd7ad",
                  "parent_uuid": "7d83dad5-b6d9-44fd-871d-badfadd692c0",
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
          "uuid": "e343ce56-c068-4ab3-9120-67c60cdda5fd",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "cb946c92-f2d0-4527-954b-d0584e41b182",
              "parent_uuid": "e343ce56-c068-4ab3-9120-67c60cdda5fd",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "10"
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
          "uuid": "43bd70ab-76b2-46ae-8aa2-f77ade8f0931",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e87f8df2-38e8-4e20-8de7-6c3b5d14fed9",
              "parent_uuid": "43bd70ab-76b2-46ae-8aa2-f77ade8f0931",
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
                  "10"
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
          "uuid": "68a565d5-ae97-4c3e-b086-a7a02fd39c6f",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d6276159-2f64-4a3b-821b-fc1b78f33e18",
              "parent_uuid": "68a565d5-ae97-4c3e-b086-a7a02fd39c6f",
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
              "uuid": "a13dede2-e254-4daf-8b7b-b449e4990df3",
              "parent_uuid": "68a565d5-ae97-4c3e-b086-a7a02fd39c6f",
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
              "uuid": "efeda130-d2a5-4298-b952-9d3ff3be6293",
              "parent_uuid": "68a565d5-ae97-4c3e-b086-a7a02fd39c6f",
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
              "uuid": "0ad3eb93-6286-48f4-807f-7b2f8c4ba716",
              "parent_uuid": "68a565d5-ae97-4c3e-b086-a7a02fd39c6f",
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
              "uuid": "f1c88a6c-8c62-438b-bd79-2a771990bc06",
              "parent_uuid": "68a565d5-ae97-4c3e-b086-a7a02fd39c6f",
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
            }
          ],
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "2b16ae12-7894-4956-8d87-21c231d806b3",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "276d248c-4055-44e0-8cee-4358404ffd9f",
              "parent_uuid": "2b16ae12-7894-4956-8d87-21c231d806b3",
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
              "uuid": "38e6f4f1-2382-484a-b2b6-5d9ec893ca17",
              "parent_uuid": "2b16ae12-7894-4956-8d87-21c231d806b3",
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
              "uuid": "49003e18-0e91-4b16-bc6f-b55ca540a611",
              "parent_uuid": "2b16ae12-7894-4956-8d87-21c231d806b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20aef3f8-1dbc-418d-962b-ba3746445549",
                  "parent_uuid": "49003e18-0e91-4b16-bc6f-b55ca540a611",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4b2794d-ff77-415e-8c85-eebf3cd2b26b",
              "parent_uuid": "2b16ae12-7894-4956-8d87-21c231d806b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3543b6fb-d709-4c90-b518-07844347b58e",
                  "parent_uuid": "d4b2794d-ff77-415e-8c85-eebf3cd2b26b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a858f1be-03e7-4898-a410-0f97a8c1131c",
              "parent_uuid": "2b16ae12-7894-4956-8d87-21c231d806b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47ec6649-e465-4689-9c18-cc3961a2d022",
                  "parent_uuid": "a858f1be-03e7-4898-a410-0f97a8c1131c",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "a2fea8fa-b373-4c8d-9cd1-e148193a67b8",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8a01138-14db-43b6-b9f8-cb43855c7940",
              "parent_uuid": "a2fea8fa-b373-4c8d-9cd1-e148193a67b8",
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
              "uuid": "1fdd0192-45f2-4ae2-be75-9e7b96cf77ad",
              "parent_uuid": "a2fea8fa-b373-4c8d-9cd1-e148193a67b8",
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
              "uuid": "d4062be1-fbba-4b3d-8127-75f9f4e85b59",
              "parent_uuid": "a2fea8fa-b373-4c8d-9cd1-e148193a67b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff47833f-f60e-4671-87c1-01f07d27ce2c",
                  "parent_uuid": "d4062be1-fbba-4b3d-8127-75f9f4e85b59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3789fd19-323f-41b9-8c25-dc22700c8f55",
              "parent_uuid": "a2fea8fa-b373-4c8d-9cd1-e148193a67b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "326505c6-1455-47b3-8b55-0eec28b1b602",
                  "parent_uuid": "3789fd19-323f-41b9-8c25-dc22700c8f55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d860c942-19bf-430b-9b69-cc8b2e8cfc02",
              "parent_uuid": "a2fea8fa-b373-4c8d-9cd1-e148193a67b8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7e3851c1-8506-45ae-9e33-ba124a117129",
                  "parent_uuid": "d860c942-19bf-430b-9b69-cc8b2e8cfc02",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "2379f215-a5b4-48d0-aecb-c1f3af4c4ea1",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6573fee2-d602-41e8-8553-cfe1875cf1e3",
              "parent_uuid": "2379f215-a5b4-48d0-aecb-c1f3af4c4ea1",
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
              "uuid": "a20728a0-42b6-4b83-a8ec-bd45d0a37018",
              "parent_uuid": "2379f215-a5b4-48d0-aecb-c1f3af4c4ea1",
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
              "uuid": "58bf1b1b-c00f-4690-bca2-ebef74bf9797",
              "parent_uuid": "2379f215-a5b4-48d0-aecb-c1f3af4c4ea1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6458324-c20b-414e-9404-26fbe3fbd80a",
                  "parent_uuid": "58bf1b1b-c00f-4690-bca2-ebef74bf9797",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2503b0f6-6c0a-49d6-a3cc-facb1ac41521",
              "parent_uuid": "2379f215-a5b4-48d0-aecb-c1f3af4c4ea1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63eb0dca-afc7-40c5-bcfe-777e7a210f58",
                  "parent_uuid": "2503b0f6-6c0a-49d6-a3cc-facb1ac41521",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9eba5cc1-4f15-4ea6-9d4f-51e84a230bf8",
              "parent_uuid": "2379f215-a5b4-48d0-aecb-c1f3af4c4ea1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "802f6cb3-bd03-4892-885d-ea7481e22935",
                  "parent_uuid": "9eba5cc1-4f15-4ea6-9d4f-51e84a230bf8",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "31d2d441-7168-402a-b575-8f97538136b3",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e66dae98-5134-4578-9b19-b2f428d1c710",
              "parent_uuid": "31d2d441-7168-402a-b575-8f97538136b3",
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
              "uuid": "9be9950b-88bd-417c-8ac0-fe88299bbf0d",
              "parent_uuid": "31d2d441-7168-402a-b575-8f97538136b3",
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
              "uuid": "20f76134-aace-4aa6-ab62-37e3d58af492",
              "parent_uuid": "31d2d441-7168-402a-b575-8f97538136b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "342ada1b-d3b0-4573-aac9-ea57a993cb1d",
                  "parent_uuid": "20f76134-aace-4aa6-ab62-37e3d58af492",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d870e20-4210-4748-9223-896845039a96",
              "parent_uuid": "31d2d441-7168-402a-b575-8f97538136b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87bf8398-2513-4803-9559-321b70ebf1b8",
                  "parent_uuid": "3d870e20-4210-4748-9223-896845039a96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5536a9f3-a058-49bb-b9b7-c18452ce4e32",
              "parent_uuid": "31d2d441-7168-402a-b575-8f97538136b3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "864ac4b3-8626-4af8-99f6-216a27d7cae8",
                  "parent_uuid": "5536a9f3-a058-49bb-b9b7-c18452ce4e32",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "5cc1d286-3684-4c1f-b835-ebbea8163e82",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e979ac13-2d4f-4f7d-88e0-f4c07032a8b4",
              "parent_uuid": "5cc1d286-3684-4c1f-b835-ebbea8163e82",
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
              "uuid": "202761a2-8776-4097-a42f-58e0f658c5fa",
              "parent_uuid": "5cc1d286-3684-4c1f-b835-ebbea8163e82",
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
              "uuid": "20a17f6a-825d-449e-94d6-50b39ddce143",
              "parent_uuid": "5cc1d286-3684-4c1f-b835-ebbea8163e82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd5afe15-2620-4206-8295-28f09e0906b7",
                  "parent_uuid": "20a17f6a-825d-449e-94d6-50b39ddce143",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a0fda0c-2315-402c-85fc-8f581541d40b",
              "parent_uuid": "5cc1d286-3684-4c1f-b835-ebbea8163e82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f08ec199-dea0-4cb4-8e96-873396bba674",
                  "parent_uuid": "4a0fda0c-2315-402c-85fc-8f581541d40b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35c96b61-c758-49ab-8a3e-8073d8f7ba68",
              "parent_uuid": "5cc1d286-3684-4c1f-b835-ebbea8163e82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2796bb45-35c7-445e-a19d-1b5eb62d5b00",
                  "parent_uuid": "35c96b61-c758-49ab-8a3e-8073d8f7ba68",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "62ca3016-5c2c-4843-95c9-756e0052a71c",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ecb935d9-5849-4c34-8bc7-bdf4e5624b1c",
              "parent_uuid": "62ca3016-5c2c-4843-95c9-756e0052a71c",
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
              "uuid": "ebe9c31b-43e2-4d77-9ab4-67931bac1a8d",
              "parent_uuid": "62ca3016-5c2c-4843-95c9-756e0052a71c",
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
              "uuid": "12afd4d7-a67e-43ff-aa0f-d999d924770d",
              "parent_uuid": "62ca3016-5c2c-4843-95c9-756e0052a71c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b83bd232-4e79-4cff-ac77-5d963097a45d",
                  "parent_uuid": "12afd4d7-a67e-43ff-aa0f-d999d924770d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61b68a4d-d9c5-46ee-a097-117f9544b41b",
              "parent_uuid": "62ca3016-5c2c-4843-95c9-756e0052a71c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b78bf0b1-f647-4de7-b3e7-899a8550070f",
                  "parent_uuid": "61b68a4d-d9c5-46ee-a097-117f9544b41b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "13c5211b-bdcf-4c57-b976-01aa54ca27d3",
              "parent_uuid": "62ca3016-5c2c-4843-95c9-756e0052a71c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76155d9d-a6d6-4e9c-94af-89765904da47",
                  "parent_uuid": "13c5211b-bdcf-4c57-b976-01aa54ca27d3",
                  "tagName": "input",
                  "properties": [
                    [
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
            }
          ],
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "edd838ef-ceb2-4d5a-923b-28da1cfc8eb7",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c884873a-1fa9-4c5b-b09d-aab14e58f2f0",
              "parent_uuid": "edd838ef-ceb2-4d5a-923b-28da1cfc8eb7",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "10"
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
          "uuid": "171300f6-01ee-4279-97ce-a7e98074b252",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be5a1094-f4c2-4a1a-9e6b-f8976ec11381",
              "parent_uuid": "171300f6-01ee-4279-97ce-a7e98074b252",
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
                  "10"
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
          "uuid": "64055d02-91ba-4304-9ef4-05d689702f51",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "126c7d9c-7d50-4dba-8bed-7b96ae6c78e4",
              "parent_uuid": "64055d02-91ba-4304-9ef4-05d689702f51",
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
                  "10"
                ],
                [
                  "style",
                  "margin: 0; padding: 0;"
                ]
              ],
              "children": [
                {
                  "uuid": "78ebee74-b13b-48f8-9e26-892c29c021cd",
                  "parent_uuid": "126c7d9c-7d50-4dba-8bed-7b96ae6c78e4",
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
          "uuid": "2e9bedf7-e670-472f-8a46-fd44a682779a",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e352a48b-038c-4199-990d-15677b8932d0",
              "parent_uuid": "2e9bedf7-e670-472f-8a46-fd44a682779a",
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
                  "10"
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
          "uuid": "019f244b-665f-4e87-ab0e-a3e633886740",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "6c5aa1fb-ac20-47aa-9d6d-b8770b66daab",
              "parent_uuid": "019f244b-665f-4e87-ab0e-a3e633886740",
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
                  "10"
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
          "uuid": "18ee8617-fec8-4653-9d80-f691480896b5",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "246b78c2-69e5-45bb-bcc4-14291aaa683c",
              "parent_uuid": "18ee8617-fec8-4653-9d80-f691480896b5",
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
              "uuid": "01ab4851-7bf2-4a09-a919-cb8933464cfe",
              "parent_uuid": "18ee8617-fec8-4653-9d80-f691480896b5",
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
              "uuid": "5ab1a10b-d1d5-4a08-a237-e23462db8b91",
              "parent_uuid": "18ee8617-fec8-4653-9d80-f691480896b5",
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
              "uuid": "4a984a29-1f0f-45b3-9e89-ac987ada0394",
              "parent_uuid": "18ee8617-fec8-4653-9d80-f691480896b5",
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
            }
          ],
          "sort": 48,
          "lvl": 0
        },
        {
          "uuid": "52488bfe-d40d-4245-820e-6c374cd7224a",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efe707fe-d480-4a86-98f5-b47089b4a4d7",
              "parent_uuid": "52488bfe-d40d-4245-820e-6c374cd7224a",
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
              "uuid": "c5814362-7458-4ea9-86b0-617682375abb",
              "parent_uuid": "52488bfe-d40d-4245-820e-6c374cd7224a",
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
              "uuid": "00b72c4f-2800-4e16-ab62-7d3aac5ade28",
              "parent_uuid": "52488bfe-d40d-4245-820e-6c374cd7224a",
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
              "uuid": "58c56114-80f9-4c7f-888d-24d495f407d5",
              "parent_uuid": "52488bfe-d40d-4245-820e-6c374cd7224a",
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
            }
          ],
          "sort": 49,
          "lvl": 0
        },
        {
          "uuid": "3d4639bc-0765-46dd-bf1a-8b776382e3ce",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00694fb6-464e-4cc9-9ed1-098547327647",
              "parent_uuid": "3d4639bc-0765-46dd-bf1a-8b776382e3ce",
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
              "uuid": "3a1f68a4-cbaf-4fba-b10e-f221fe4ee6f5",
              "parent_uuid": "3d4639bc-0765-46dd-bf1a-8b776382e3ce",
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
              "uuid": "bd00584f-8a3b-44cc-a804-cf0892877160",
              "parent_uuid": "3d4639bc-0765-46dd-bf1a-8b776382e3ce",
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
              "uuid": "5e4faf71-f3f3-4ed5-8fe6-91d1eaedf864",
              "parent_uuid": "3d4639bc-0765-46dd-bf1a-8b776382e3ce",
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
            }
          ],
          "sort": 50,
          "lvl": 0
        },
        {
          "uuid": "b4093503-b73f-46ef-8ce7-d8714f8d8d2b",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d375ee3-8bb8-4b2b-aeee-b67c4510f31a",
              "parent_uuid": "b4093503-b73f-46ef-8ce7-d8714f8d8d2b",
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
              "uuid": "09589916-f2b0-4be8-a80e-2fc24bd3d3ab",
              "parent_uuid": "b4093503-b73f-46ef-8ce7-d8714f8d8d2b",
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
              "uuid": "890722e3-13ff-44cc-b4ca-f1700089c60a",
              "parent_uuid": "b4093503-b73f-46ef-8ce7-d8714f8d8d2b",
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
              "uuid": "2d843ff7-d9cf-4c6d-b088-f26bc633cd75",
              "parent_uuid": "b4093503-b73f-46ef-8ce7-d8714f8d8d2b",
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
            }
          ],
          "sort": 51,
          "lvl": 0
        },
        {
          "uuid": "ed496d1e-81ec-43db-8075-d1a1d979e2b9",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5fce37c4-4722-46cd-852b-c67b29da10b2",
              "parent_uuid": "ed496d1e-81ec-43db-8075-d1a1d979e2b9",
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
              "uuid": "e8d4a1ff-51a2-414c-8ecd-be3e7974b243",
              "parent_uuid": "ed496d1e-81ec-43db-8075-d1a1d979e2b9",
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
              "uuid": "99539352-2f5b-4393-862b-1820c22a3c2d",
              "parent_uuid": "ed496d1e-81ec-43db-8075-d1a1d979e2b9",
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
              "uuid": "9bc92069-36aa-4395-9602-c15dcd0b6369",
              "parent_uuid": "ed496d1e-81ec-43db-8075-d1a1d979e2b9",
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
            }
          ],
          "sort": 52,
          "lvl": 0
        },
        {
          "uuid": "d047df7c-d0c9-4269-832f-110d4968dc51",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "44f3b543-8c86-4779-99cc-da6447d6d06f",
              "parent_uuid": "d047df7c-d0c9-4269-832f-110d4968dc51",
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
              "uuid": "342bea66-f6a6-4ae2-bff6-ca635aaf0930",
              "parent_uuid": "d047df7c-d0c9-4269-832f-110d4968dc51",
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
              "uuid": "fbf1012e-8890-4346-9b97-1c6ba1e7836c",
              "parent_uuid": "d047df7c-d0c9-4269-832f-110d4968dc51",
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
              "uuid": "63603ec1-d359-4fb8-934c-f4c3e326e207",
              "parent_uuid": "d047df7c-d0c9-4269-832f-110d4968dc51",
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
            }
          ],
          "sort": 53,
          "lvl": 0
        },
        {
          "uuid": "b307a92e-25ad-41f0-a26f-54b72ea14e88",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb142be0-d5ee-4314-87a4-ffc1f6cd00bc",
              "parent_uuid": "b307a92e-25ad-41f0-a26f-54b72ea14e88",
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
              "uuid": "ca961ea5-609d-488a-adc1-e6150e7f50e0",
              "parent_uuid": "b307a92e-25ad-41f0-a26f-54b72ea14e88",
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
              "uuid": "30b2f129-1f55-40da-9aa6-f6723594c68c",
              "parent_uuid": "b307a92e-25ad-41f0-a26f-54b72ea14e88",
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
              "uuid": "dbdc2640-6ded-49be-97da-24397afb2213",
              "parent_uuid": "b307a92e-25ad-41f0-a26f-54b72ea14e88",
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
            }
          ],
          "sort": 54,
          "lvl": 0
        },
        {
          "uuid": "6436ad09-f7eb-4b47-a3e1-86d949d799c1",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "132c63f5-29ae-4ae8-a76a-1c58d111da2d",
              "parent_uuid": "6436ad09-f7eb-4b47-a3e1-86d949d799c1",
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
              "uuid": "b8b0f0e1-6ed4-4d7b-8fef-f9410dbf638b",
              "parent_uuid": "6436ad09-f7eb-4b47-a3e1-86d949d799c1",
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
              "uuid": "7cbe06f5-e407-4421-a011-336f79691ce1",
              "parent_uuid": "6436ad09-f7eb-4b47-a3e1-86d949d799c1",
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
              "uuid": "99903720-cb1b-4ea3-ac17-2b9acf7276da",
              "parent_uuid": "6436ad09-f7eb-4b47-a3e1-86d949d799c1",
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
            }
          ],
          "sort": 55,
          "lvl": 0
        },
        {
          "uuid": "5002472d-544f-4432-8466-b04c1ffa2b89",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55d28e2c-3f18-4904-b9c7-d05886bb6ecd",
              "parent_uuid": "5002472d-544f-4432-8466-b04c1ffa2b89",
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
              "uuid": "065fb021-cde4-44f9-8d66-4b8bd0de1513",
              "parent_uuid": "5002472d-544f-4432-8466-b04c1ffa2b89",
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
              "uuid": "b839d071-b7c2-4a9f-bc7b-b40f0cd61b5f",
              "parent_uuid": "5002472d-544f-4432-8466-b04c1ffa2b89",
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
              "uuid": "55b3a432-76d1-44d8-a397-0da276ec4869",
              "parent_uuid": "5002472d-544f-4432-8466-b04c1ffa2b89",
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
            }
          ],
          "sort": 56,
          "lvl": 0
        },
        {
          "uuid": "4293c72c-e326-420a-83f9-29c30cfebda6",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "66d51e10-4046-4aa6-adf8-8125dfd3b3d9",
              "parent_uuid": "4293c72c-e326-420a-83f9-29c30cfebda6",
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
              "uuid": "db71892b-ecbb-45f5-93be-a1445fbf07b7",
              "parent_uuid": "4293c72c-e326-420a-83f9-29c30cfebda6",
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
              "uuid": "66d9c02f-e275-4f6f-a5ed-0dcf19d4302c",
              "parent_uuid": "4293c72c-e326-420a-83f9-29c30cfebda6",
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
              "uuid": "378bf78a-951e-4907-8a21-c1a382a63174",
              "parent_uuid": "4293c72c-e326-420a-83f9-29c30cfebda6",
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
            }
          ],
          "sort": 57,
          "lvl": 0
        },
        {
          "uuid": "18dbea23-f529-4133-9873-e47952ec6e7c",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c85d46e-ded4-4b7a-8bf7-c1d3676e3080",
              "parent_uuid": "18dbea23-f529-4133-9873-e47952ec6e7c",
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
              "uuid": "998c8a46-f432-4dd6-8101-95105ac88641",
              "parent_uuid": "18dbea23-f529-4133-9873-e47952ec6e7c",
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
              "uuid": "8ef1de03-6e9f-4786-80e0-91992433d0bf",
              "parent_uuid": "18dbea23-f529-4133-9873-e47952ec6e7c",
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
              "uuid": "d0c8fe1e-02ff-4bec-958d-b802a41e2d75",
              "parent_uuid": "18dbea23-f529-4133-9873-e47952ec6e7c",
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
            }
          ],
          "sort": 58,
          "lvl": 0
        },
        {
          "uuid": "04a546ab-b868-496f-acc7-ca03f2bca32e",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b341376-17ec-4973-87e3-c774580f458e",
              "parent_uuid": "04a546ab-b868-496f-acc7-ca03f2bca32e",
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
              "uuid": "e3e8212c-f332-4c94-8898-6b997b8f6461",
              "parent_uuid": "04a546ab-b868-496f-acc7-ca03f2bca32e",
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
              "uuid": "61f494b6-010b-4701-8a87-14fb8fad4614",
              "parent_uuid": "04a546ab-b868-496f-acc7-ca03f2bca32e",
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
              "uuid": "c539f098-3646-4310-9c17-9715a5651b80",
              "parent_uuid": "04a546ab-b868-496f-acc7-ca03f2bca32e",
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
            }
          ],
          "sort": 59,
          "lvl": 0
        },
        {
          "uuid": "cff142a0-c242-4c5b-880d-247986337322",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "906ff250-7a3b-48c8-a245-e2e412b4313e",
              "parent_uuid": "cff142a0-c242-4c5b-880d-247986337322",
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
              "uuid": "913d4fce-4136-4377-8b40-3aa8ef6ed8db",
              "parent_uuid": "cff142a0-c242-4c5b-880d-247986337322",
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
              "uuid": "6761da73-6e8b-46e2-9629-988c4ebbfa67",
              "parent_uuid": "cff142a0-c242-4c5b-880d-247986337322",
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
              "uuid": "d6fc4ff9-2120-47a8-815f-fdd5e6e1b92a",
              "parent_uuid": "cff142a0-c242-4c5b-880d-247986337322",
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
            }
          ],
          "sort": 60,
          "lvl": 0
        },
        {
          "uuid": "554fa610-a459-4014-a294-a121308c7774",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d065120-a970-4ea7-950d-7a1987bbd9b9",
              "parent_uuid": "554fa610-a459-4014-a294-a121308c7774",
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
          "uuid": "641a7eb9-a80c-48dd-9679-0b3cbb5ec66b",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "113501df-3a96-4aca-93de-cadc52a0311a",
              "parent_uuid": "641a7eb9-a80c-48dd-9679-0b3cbb5ec66b",
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
          "uuid": "5a1231cb-beee-45a6-b37e-21f7ef01e24b",
          "parent_uuid": "d8cf4054-e833-4282-9481-815703bdb243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb01b6ab-1bea-4979-a083-4d4deb18dbb7",
              "parent_uuid": "5a1231cb-beee-45a6-b37e-21f7ef01e24b",
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
                  "uuid": "ebd52732-dbb2-48ac-af7d-b5df582d0c86",
                  "parent_uuid": "cb01b6ab-1bea-4979-a083-4d4deb18dbb7",
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
      "sort": 6,
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
    ,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS cl_uid 
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
		,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'F1A2DD8A-2D11-496E-9B14-13559405089F'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

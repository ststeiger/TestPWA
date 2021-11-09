
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
  "uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
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
      "uuid": "d38452a8-5a92-4e8a-aba2-1385545c4dfa",
      "parent_uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
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
      "uuid": "a3e6532b-2e26-4e1b-99f4-64f4f3815455",
      "parent_uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
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
      "uuid": "6daa8b50-d36e-4be2-959a-4069e820514e",
      "parent_uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
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
      "uuid": "840eb0e4-9474-45bb-a9a7-8bd89949a1f1",
      "parent_uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
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
      "uuid": "34fa57e3-9670-44d8-a68d-2eadf2d59b90",
      "parent_uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
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
      "uuid": "812e4852-88b0-4c41-81d7-50d5be850ed6",
      "parent_uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
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
      "uuid": "4f383a52-a595-4233-a32d-80674eb19143",
      "parent_uuid": "5873278d-dbd0-40a4-bef4-e79394732413",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "50df0f8c-8865-4e9d-9531-b595fd8fc8a5",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "4f327658-5292-4eb3-9ae5-f77136e4b0f1",
              "parent_uuid": "50df0f8c-8865-4e9d-9531-b595fd8fc8a5",
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
              "uuid": "9ba0da8c-0c6e-4480-bcf8-8f8fe567f082",
              "parent_uuid": "50df0f8c-8865-4e9d-9531-b595fd8fc8a5",
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
              "uuid": "aa54e1d0-5bcb-4bae-9371-b770cf6b5aeb",
              "parent_uuid": "50df0f8c-8865-4e9d-9531-b595fd8fc8a5",
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
              "uuid": "304cb8a5-0f90-45fa-bae3-2b5016336cf9",
              "parent_uuid": "50df0f8c-8865-4e9d-9531-b595fd8fc8a5",
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
          "uuid": "528c50ae-1875-4f27-abfc-49905cfa049f",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "68018ef9-d3f5-46ae-ab67-f3f35781195b",
              "parent_uuid": "528c50ae-1875-4f27-abfc-49905cfa049f",
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
              "uuid": "2eb5aa71-c5ac-4779-bad5-644c7feb4d23",
              "parent_uuid": "528c50ae-1875-4f27-abfc-49905cfa049f",
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
              "uuid": "b8df9c38-d789-4781-8b44-76ce15b909c6",
              "parent_uuid": "528c50ae-1875-4f27-abfc-49905cfa049f",
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
              "uuid": "53c010a3-5581-4ddc-a1bd-f644428693fc",
              "parent_uuid": "528c50ae-1875-4f27-abfc-49905cfa049f",
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
          "uuid": "7b8abf41-c24b-4ccb-9a45-6298ba74e9cb",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "109b4428-2948-4b61-80cb-cca6b9872114",
              "parent_uuid": "7b8abf41-c24b-4ccb-9a45-6298ba74e9cb",
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
              "uuid": "bc4e3f8a-1504-4d3e-92fe-72478c7a61bd",
              "parent_uuid": "7b8abf41-c24b-4ccb-9a45-6298ba74e9cb",
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
              "uuid": "d1cd7019-9d29-449e-9c0f-c3ea477ee774",
              "parent_uuid": "7b8abf41-c24b-4ccb-9a45-6298ba74e9cb",
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
              "uuid": "77e07e40-3b40-4707-8aa0-f432db611100",
              "parent_uuid": "7b8abf41-c24b-4ccb-9a45-6298ba74e9cb",
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
              "uuid": "2ec836e4-1bca-4993-8f5d-818b691e537e",
              "parent_uuid": "7b8abf41-c24b-4ccb-9a45-6298ba74e9cb",
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
          "uuid": "169e77fc-ce93-4778-9509-7c1fe44cf372",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b1cd2102-4738-40d6-a318-cb26bbb10dcb",
              "parent_uuid": "169e77fc-ce93-4778-9509-7c1fe44cf372",
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
          "uuid": "0d90cce1-8546-432d-a846-c9ddecbe144b",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cff3ca36-ca4b-4200-b824-d6c2524b1dad",
              "parent_uuid": "0d90cce1-8546-432d-a846-c9ddecbe144b",
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
              "uuid": "2bc86741-69de-4bd7-a578-6fb5c4c31f01",
              "parent_uuid": "0d90cce1-8546-432d-a846-c9ddecbe144b",
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
              "uuid": "3ed99a62-5c6e-45db-8aea-7148fe533d71",
              "parent_uuid": "0d90cce1-8546-432d-a846-c9ddecbe144b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc82a4fc-1573-46f3-88d6-a419c4bb7251",
                  "parent_uuid": "3ed99a62-5c6e-45db-8aea-7148fe533d71",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "908db992-9c39-4d08-938b-a4543279a1e6",
              "parent_uuid": "0d90cce1-8546-432d-a846-c9ddecbe144b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c206a4a8-f4f6-49b3-a28f-b3a9fdbc631c",
                  "parent_uuid": "908db992-9c39-4d08-938b-a4543279a1e6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9f8c008-fed6-4bc8-8f58-d1455accec77",
              "parent_uuid": "0d90cce1-8546-432d-a846-c9ddecbe144b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d9a1c244-45d4-449e-ab5d-748ef6b95b5c",
                  "parent_uuid": "d9f8c008-fed6-4bc8-8f58-d1455accec77",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b78caf5-44db-471c-89f7-ce31dd4e8b18",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6803c0ca-e899-48ee-8c2f-8a7ed08033d4",
              "parent_uuid": "7b78caf5-44db-471c-89f7-ce31dd4e8b18",
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
              "uuid": "b189ce5b-4c68-4c45-87ed-95857e94d163",
              "parent_uuid": "7b78caf5-44db-471c-89f7-ce31dd4e8b18",
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
              "uuid": "1baf12ff-c399-46d2-8e95-6f1ae03fbed0",
              "parent_uuid": "7b78caf5-44db-471c-89f7-ce31dd4e8b18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4f099dc-2fd8-4583-9d80-89ab5598b11e",
                  "parent_uuid": "1baf12ff-c399-46d2-8e95-6f1ae03fbed0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c3e0c28e-867a-4859-8f18-dc742f681b1d",
              "parent_uuid": "7b78caf5-44db-471c-89f7-ce31dd4e8b18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55cd4997-1dc7-4e3e-9b52-597ba06e2a89",
                  "parent_uuid": "c3e0c28e-867a-4859-8f18-dc742f681b1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7695c7cd-0fe6-4abd-90f6-9fb0d1a727cc",
              "parent_uuid": "7b78caf5-44db-471c-89f7-ce31dd4e8b18",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96868176-007c-4495-ba90-5fc1d6c11ebf",
                  "parent_uuid": "7695c7cd-0fe6-4abd-90f6-9fb0d1a727cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7afb69f5-213c-408f-8899-b910b7f63ba9",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3b8cfce-a636-41d7-8d34-065d75c13259",
              "parent_uuid": "7afb69f5-213c-408f-8899-b910b7f63ba9",
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
              "uuid": "1bf513ef-7d7a-4dcb-aa11-fcba15d4f9eb",
              "parent_uuid": "7afb69f5-213c-408f-8899-b910b7f63ba9",
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
              "uuid": "bb08f203-85be-406f-b9f6-0a03371069c8",
              "parent_uuid": "7afb69f5-213c-408f-8899-b910b7f63ba9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc8d986a-ce9b-4c00-9bff-ff3796af448a",
                  "parent_uuid": "bb08f203-85be-406f-b9f6-0a03371069c8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2afb863-0ce2-4ccb-8567-47e420c952e9",
              "parent_uuid": "7afb69f5-213c-408f-8899-b910b7f63ba9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a00da318-f627-4218-af49-0617e059ca67",
                  "parent_uuid": "f2afb863-0ce2-4ccb-8567-47e420c952e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e7c7e3f-e3e5-4665-8ede-33d0aec9927d",
              "parent_uuid": "7afb69f5-213c-408f-8899-b910b7f63ba9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2211bc27-8e50-47b8-b526-8726d853ddd1",
                  "parent_uuid": "2e7c7e3f-e3e5-4665-8ede-33d0aec9927d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "163c37b2-32d0-4a93-b71c-96f3969d19d1",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72d79f99-57f8-45b9-9c2e-513b456b6464",
              "parent_uuid": "163c37b2-32d0-4a93-b71c-96f3969d19d1",
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
              "uuid": "a5c03f1d-5aa8-4dd2-8cae-e5d53c7c2f46",
              "parent_uuid": "163c37b2-32d0-4a93-b71c-96f3969d19d1",
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
              "uuid": "e657c921-e0b9-4333-b653-692a0fedea4f",
              "parent_uuid": "163c37b2-32d0-4a93-b71c-96f3969d19d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8fc10d19-0a5f-4b6e-857f-0ce137fb1898",
                  "parent_uuid": "e657c921-e0b9-4333-b653-692a0fedea4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2aa28628-4a76-446e-9dbc-f0c7716ddeb4",
              "parent_uuid": "163c37b2-32d0-4a93-b71c-96f3969d19d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f130f1e-892a-4055-a9f7-770d34a3a92c",
                  "parent_uuid": "2aa28628-4a76-446e-9dbc-f0c7716ddeb4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "baf1692f-1baa-41cc-8553-de583f44195e",
              "parent_uuid": "163c37b2-32d0-4a93-b71c-96f3969d19d1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cbe9a32b-d07d-476c-a843-9d7ee8cf5205",
                  "parent_uuid": "baf1692f-1baa-41cc-8553-de583f44195e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23a5fa4a-93ae-490f-841e-3e2df8be4d75",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c54a9b7-387d-4be1-815d-cbe7e776f7b0",
              "parent_uuid": "23a5fa4a-93ae-490f-841e-3e2df8be4d75",
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
              "uuid": "15a100ce-61c9-4d3a-82f4-af9f0cf220ce",
              "parent_uuid": "23a5fa4a-93ae-490f-841e-3e2df8be4d75",
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
              "uuid": "94d7e3d7-4eb6-43f7-a3f7-63e8d7eb5374",
              "parent_uuid": "23a5fa4a-93ae-490f-841e-3e2df8be4d75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea5e9c69-86e2-4d74-a5a7-ba2e806dfb30",
                  "parent_uuid": "94d7e3d7-4eb6-43f7-a3f7-63e8d7eb5374",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "38b63059-99ef-4fb9-9d99-c7264afd1b30",
              "parent_uuid": "23a5fa4a-93ae-490f-841e-3e2df8be4d75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aee43b2e-b65f-40ef-bf77-d7e6513dab94",
                  "parent_uuid": "38b63059-99ef-4fb9-9d99-c7264afd1b30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b0a8d88-44ac-49b8-a1ed-607ee5a358f0",
              "parent_uuid": "23a5fa4a-93ae-490f-841e-3e2df8be4d75",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fdc78fe1-66c8-4c8a-9884-dc7293508b80",
                  "parent_uuid": "7b0a8d88-44ac-49b8-a1ed-607ee5a358f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e8fc8af6-ae44-4bf6-bb35-1f68ef84e08a",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "152ecf98-0544-405f-a09b-11185a495a2d",
              "parent_uuid": "e8fc8af6-ae44-4bf6-bb35-1f68ef84e08a",
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
              "uuid": "08e7831e-fc65-4dd9-9108-79c41396c979",
              "parent_uuid": "e8fc8af6-ae44-4bf6-bb35-1f68ef84e08a",
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
              "uuid": "d2a061f1-011a-4114-adf0-53e2b36cec2a",
              "parent_uuid": "e8fc8af6-ae44-4bf6-bb35-1f68ef84e08a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "214b2e69-71a6-42a4-8619-0b3b2fd7621e",
                  "parent_uuid": "d2a061f1-011a-4114-adf0-53e2b36cec2a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e97e4ee-7521-4974-b8af-ed2522df888a",
              "parent_uuid": "e8fc8af6-ae44-4bf6-bb35-1f68ef84e08a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad340ea4-75ce-48c2-a8c6-7af6484c42cb",
                  "parent_uuid": "1e97e4ee-7521-4974-b8af-ed2522df888a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "828a4864-52b6-455c-b768-dc0735db3c44",
              "parent_uuid": "e8fc8af6-ae44-4bf6-bb35-1f68ef84e08a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "27b70ac6-a142-41d7-99e2-10e10dfbcb39",
                  "parent_uuid": "828a4864-52b6-455c-b768-dc0735db3c44",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09e695f5-0ed2-473a-b6ad-a6dda5f0872f",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20cf6882-00fe-4ee0-b8f9-144adb9062c8",
              "parent_uuid": "09e695f5-0ed2-473a-b6ad-a6dda5f0872f",
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
              "uuid": "69b1cb01-6f77-47fc-b9a4-e08cf0e0b01e",
              "parent_uuid": "09e695f5-0ed2-473a-b6ad-a6dda5f0872f",
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
              "uuid": "50eee30b-ff4d-4ef6-b5f4-5cbd07727d30",
              "parent_uuid": "09e695f5-0ed2-473a-b6ad-a6dda5f0872f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48df5dfb-6cff-4d10-b4e1-26ace0888503",
                  "parent_uuid": "50eee30b-ff4d-4ef6-b5f4-5cbd07727d30",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "42178b3b-4390-45bf-9ebd-b35634dc7ab8",
              "parent_uuid": "09e695f5-0ed2-473a-b6ad-a6dda5f0872f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8582a7b7-864d-468d-8104-a32df3515287",
                  "parent_uuid": "42178b3b-4390-45bf-9ebd-b35634dc7ab8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "efe21c4b-2c14-4235-86fd-7bb665c3dfec",
              "parent_uuid": "09e695f5-0ed2-473a-b6ad-a6dda5f0872f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fa97d8b-6e1c-419e-b13f-7103f4ee182f",
                  "parent_uuid": "efe21c4b-2c14-4235-86fd-7bb665c3dfec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4db86420-bba8-4e9c-b8c7-dfd618bf6a3d",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b0eb9cf-7518-4bb0-97f7-facea599487d",
              "parent_uuid": "4db86420-bba8-4e9c-b8c7-dfd618bf6a3d",
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
              "uuid": "2116680b-19d9-4f1a-9df9-c80ddc6feb2d",
              "parent_uuid": "4db86420-bba8-4e9c-b8c7-dfd618bf6a3d",
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
              "uuid": "203b91da-cb49-41b8-b16f-cb5ac798d11c",
              "parent_uuid": "4db86420-bba8-4e9c-b8c7-dfd618bf6a3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d92be029-cc28-4b88-8efb-179cfc02bf6a",
                  "parent_uuid": "203b91da-cb49-41b8-b16f-cb5ac798d11c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd867120-3fb8-4774-8103-73b8d242732d",
              "parent_uuid": "4db86420-bba8-4e9c-b8c7-dfd618bf6a3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9317dea0-2731-4be4-8e71-d2fe1cd7994c",
                  "parent_uuid": "cd867120-3fb8-4774-8103-73b8d242732d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "125ba767-44fc-4ed5-a5b7-e5b157fcf59c",
              "parent_uuid": "4db86420-bba8-4e9c-b8c7-dfd618bf6a3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca16c74d-4f3a-4d00-ae30-2053f24afdae",
                  "parent_uuid": "125ba767-44fc-4ed5-a5b7-e5b157fcf59c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8410f9ad-2181-4abd-9682-499e35014996",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb0a68ea-3169-4ce7-ad30-4e5b4492cc15",
              "parent_uuid": "8410f9ad-2181-4abd-9682-499e35014996",
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
              "uuid": "7d89fe89-fce3-47cc-81dd-3e33fa2e794c",
              "parent_uuid": "8410f9ad-2181-4abd-9682-499e35014996",
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
              "uuid": "011b6dee-0902-4f34-aa20-9ce610212d9f",
              "parent_uuid": "8410f9ad-2181-4abd-9682-499e35014996",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d674c51f-b68e-4c47-97b5-3a9065e8aaaf",
                  "parent_uuid": "011b6dee-0902-4f34-aa20-9ce610212d9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9afa551a-67cc-4591-ab47-471b6d683d4f",
              "parent_uuid": "8410f9ad-2181-4abd-9682-499e35014996",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18329765-5740-4b3d-875d-bfc0ec72deb4",
                  "parent_uuid": "9afa551a-67cc-4591-ab47-471b6d683d4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "90a8ac60-a5e5-4e91-bdf5-99730861515b",
              "parent_uuid": "8410f9ad-2181-4abd-9682-499e35014996",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ffe0991-6428-4b46-b148-12d8f55215fc",
                  "parent_uuid": "90a8ac60-a5e5-4e91-bdf5-99730861515b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4b9e4c1a-1e98-433d-8eca-484c94e4158e",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "edc59c50-6b8a-4b17-9f04-1d95ed09c166",
              "parent_uuid": "4b9e4c1a-1e98-433d-8eca-484c94e4158e",
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
              "uuid": "e44e9789-d445-4d1b-b485-1e32df555696",
              "parent_uuid": "4b9e4c1a-1e98-433d-8eca-484c94e4158e",
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
              "uuid": "81cdb7ed-51bf-48e1-8181-cc3dbd370c7a",
              "parent_uuid": "4b9e4c1a-1e98-433d-8eca-484c94e4158e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f76c3185-458e-459d-8454-4e2ba3b08261",
                  "parent_uuid": "81cdb7ed-51bf-48e1-8181-cc3dbd370c7a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "607043f2-ef2b-4d68-a31b-8b8f50364d5d",
              "parent_uuid": "4b9e4c1a-1e98-433d-8eca-484c94e4158e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7810efe-015e-4b1d-a270-9df937e6805b",
                  "parent_uuid": "607043f2-ef2b-4d68-a31b-8b8f50364d5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0426df7-c517-4c51-9895-a42adb6c051b",
              "parent_uuid": "4b9e4c1a-1e98-433d-8eca-484c94e4158e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca2b3bb1-2eaf-4f35-ad6f-e5f22abec27a",
                  "parent_uuid": "e0426df7-c517-4c51-9895-a42adb6c051b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "09e0aa14-7112-4b1e-a43e-42fac0597fa8",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "975e6c03-6704-4574-920c-fc12f24ec575",
              "parent_uuid": "09e0aa14-7112-4b1e-a43e-42fac0597fa8",
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
              "uuid": "413f7f23-1aeb-4995-97fe-53d89d4a5fe0",
              "parent_uuid": "09e0aa14-7112-4b1e-a43e-42fac0597fa8",
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
              "uuid": "87d6f74e-293c-41b9-a4aa-78cf31ec9a20",
              "parent_uuid": "09e0aa14-7112-4b1e-a43e-42fac0597fa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cdd3613-bb48-4152-a280-7a04653350bf",
                  "parent_uuid": "87d6f74e-293c-41b9-a4aa-78cf31ec9a20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8ec29b2-498c-4f9b-b894-ee0b4c43d180",
              "parent_uuid": "09e0aa14-7112-4b1e-a43e-42fac0597fa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1b87b1db-3ec2-4203-abf2-77410e2ca063",
                  "parent_uuid": "f8ec29b2-498c-4f9b-b894-ee0b4c43d180",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ee8bcf6-7749-407a-adc2-77f08c19dfa0",
              "parent_uuid": "09e0aa14-7112-4b1e-a43e-42fac0597fa8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca392a0e-c0f8-4205-8e93-5376fd2e7347",
                  "parent_uuid": "9ee8bcf6-7749-407a-adc2-77f08c19dfa0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aae48f91-b3f8-4604-86ed-612d915d1675",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b2513e8-ca32-4668-b585-9d80ab818f0e",
              "parent_uuid": "aae48f91-b3f8-4604-86ed-612d915d1675",
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
              "uuid": "e7618ad1-36bd-4e11-99ba-89c10f79ae31",
              "parent_uuid": "aae48f91-b3f8-4604-86ed-612d915d1675",
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
              "uuid": "60848c0a-9e03-400c-bf44-e1c4135f1cfb",
              "parent_uuid": "aae48f91-b3f8-4604-86ed-612d915d1675",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b564c081-2092-4f74-a6eb-d79b1204d4d0",
                  "parent_uuid": "60848c0a-9e03-400c-bf44-e1c4135f1cfb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c946432-47cb-43ec-bde6-341d83d81356",
              "parent_uuid": "aae48f91-b3f8-4604-86ed-612d915d1675",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cd16172-cdeb-49d0-a823-c29c68a34eec",
                  "parent_uuid": "4c946432-47cb-43ec-bde6-341d83d81356",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa708441-c92a-478d-b883-4dbba57c120d",
              "parent_uuid": "aae48f91-b3f8-4604-86ed-612d915d1675",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "db81a65d-e556-4e17-9221-422724b05d29",
                  "parent_uuid": "fa708441-c92a-478d-b883-4dbba57c120d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6b00eb16-c9d4-4eab-9a9f-e4e2c7695e80",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19ca590e-5108-43cd-9720-d6a1d7f60b26",
              "parent_uuid": "6b00eb16-c9d4-4eab-9a9f-e4e2c7695e80",
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
              "uuid": "62c67879-8049-4b73-88a5-1ebe548c5840",
              "parent_uuid": "6b00eb16-c9d4-4eab-9a9f-e4e2c7695e80",
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
              "uuid": "ea632ded-4bb2-4203-8fc9-9840cce96361",
              "parent_uuid": "6b00eb16-c9d4-4eab-9a9f-e4e2c7695e80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "820c9cbe-bffd-44e8-aea4-2f3e3e825f17",
                  "parent_uuid": "ea632ded-4bb2-4203-8fc9-9840cce96361",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4edef99f-01ce-446d-b042-56cd8257ca32",
              "parent_uuid": "6b00eb16-c9d4-4eab-9a9f-e4e2c7695e80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "106a730e-52a0-4a00-bbdc-407a5cbb60e4",
                  "parent_uuid": "4edef99f-01ce-446d-b042-56cd8257ca32",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1301899-7477-469e-81b3-e772db887a13",
              "parent_uuid": "6b00eb16-c9d4-4eab-9a9f-e4e2c7695e80",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02d1da85-82a4-4f96-bfdb-1daa9ee3a953",
                  "parent_uuid": "e1301899-7477-469e-81b3-e772db887a13",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6569e053-56aa-441e-a236-12d303f7558f",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98ae2da7-51ec-4d51-ab3e-d687215773f2",
              "parent_uuid": "6569e053-56aa-441e-a236-12d303f7558f",
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
              "uuid": "5b6b76c5-bdf7-4f33-ae9d-5f2fa85bee28",
              "parent_uuid": "6569e053-56aa-441e-a236-12d303f7558f",
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
              "uuid": "5a69bff3-dd2d-47d6-9807-ebf10fa6b734",
              "parent_uuid": "6569e053-56aa-441e-a236-12d303f7558f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17162769-fd7e-45ca-acfc-7fcc697fc2ff",
                  "parent_uuid": "5a69bff3-dd2d-47d6-9807-ebf10fa6b734",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bedeb3c3-ee7e-4bcc-a68f-2122c6b92578",
              "parent_uuid": "6569e053-56aa-441e-a236-12d303f7558f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b24dd1e-c322-41de-b7b4-03dd9d1a8466",
                  "parent_uuid": "bedeb3c3-ee7e-4bcc-a68f-2122c6b92578",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "34c15d1b-ffda-4645-8e20-835cace5a0a2",
              "parent_uuid": "6569e053-56aa-441e-a236-12d303f7558f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71b96112-828b-45a0-9d57-c5b4754c3c25",
                  "parent_uuid": "34c15d1b-ffda-4645-8e20-835cace5a0a2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "23766c5f-63e0-4aec-8257-57f395c58856",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fb2f2f9-5f31-47ef-9d8a-324fa61f8dfc",
              "parent_uuid": "23766c5f-63e0-4aec-8257-57f395c58856",
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
              "uuid": "1230f265-dda5-431d-8373-dd6cee8fae0a",
              "parent_uuid": "23766c5f-63e0-4aec-8257-57f395c58856",
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
              "uuid": "60e4a4d9-b17d-44d1-b282-bc5e4de63e5d",
              "parent_uuid": "23766c5f-63e0-4aec-8257-57f395c58856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1450e7f-7b82-4b68-9baa-63df3a4c265f",
                  "parent_uuid": "60e4a4d9-b17d-44d1-b282-bc5e4de63e5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d82f0fbf-c89c-461f-a904-b71bc9da480f",
              "parent_uuid": "23766c5f-63e0-4aec-8257-57f395c58856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a530f921-1a45-4ee0-ade7-09c75215ff7b",
                  "parent_uuid": "d82f0fbf-c89c-461f-a904-b71bc9da480f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "05587c0f-86f8-43af-a0bb-b66423414e98",
              "parent_uuid": "23766c5f-63e0-4aec-8257-57f395c58856",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73425cc0-007a-4628-88ad-0b631c53810e",
                  "parent_uuid": "05587c0f-86f8-43af-a0bb-b66423414e98",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7dbaa050-c5bd-4ad2-938c-536e12071a05",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "15767e6f-2935-4ff8-9c03-892e6aba9b13",
              "parent_uuid": "7dbaa050-c5bd-4ad2-938c-536e12071a05",
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
              "uuid": "c026a75f-a2e8-4bcc-9732-428a66f9c3db",
              "parent_uuid": "7dbaa050-c5bd-4ad2-938c-536e12071a05",
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
              "uuid": "9c47b730-3c38-430a-b422-408bc1c0ff4f",
              "parent_uuid": "7dbaa050-c5bd-4ad2-938c-536e12071a05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75fe181f-2365-4430-a7d2-4d25971d92c5",
                  "parent_uuid": "9c47b730-3c38-430a-b422-408bc1c0ff4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c6b2c60-ec3d-4fb0-b4cd-07b07828bfe6",
              "parent_uuid": "7dbaa050-c5bd-4ad2-938c-536e12071a05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc777b56-0bb9-4b71-b4c3-91e6bea32146",
                  "parent_uuid": "2c6b2c60-ec3d-4fb0-b4cd-07b07828bfe6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9622edd0-f07c-489d-8a1d-07697264903a",
              "parent_uuid": "7dbaa050-c5bd-4ad2-938c-536e12071a05",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b796792-9101-4fab-bf06-d10b4d9ba76e",
                  "parent_uuid": "9622edd0-f07c-489d-8a1d-07697264903a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "27a2585e-104c-45f9-8a32-9bf1510eb5f9",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d11d92bc-e1bd-4b66-a248-5c2258f9bc5b",
              "parent_uuid": "27a2585e-104c-45f9-8a32-9bf1510eb5f9",
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
          "uuid": "24ee39cb-58b7-4a32-a5d7-e87233296256",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cf189ab-397c-4467-b720-319064a3d475",
              "parent_uuid": "24ee39cb-58b7-4a32-a5d7-e87233296256",
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
          "uuid": "27bb3b7b-2ed3-4a6c-b112-baea563d6109",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc4da61c-7827-4401-9a4f-64e0386e3353",
              "parent_uuid": "27bb3b7b-2ed3-4a6c-b112-baea563d6109",
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
                  "uuid": "1cbdad2f-d9ff-449f-9f6c-ab7c1321cd74",
                  "parent_uuid": "cc4da61c-7827-4401-9a4f-64e0386e3353",
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
          "uuid": "1ba22b7c-31d1-42b2-a18c-0e7350070f86",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "13d6c406-8d1c-465e-bf0f-616cc64bc18e",
              "parent_uuid": "1ba22b7c-31d1-42b2-a18c-0e7350070f86",
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
          "uuid": "362cee41-6ebc-4326-8306-0f7bb66d869a",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b25734e9-96e0-4910-bc81-401cd77adbed",
              "parent_uuid": "362cee41-6ebc-4326-8306-0f7bb66d869a",
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
          "uuid": "de8d5dd2-2775-4eb2-9e6e-b79b444dc53c",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5fa424ac-6e95-46af-8984-154a9fd78b24",
              "parent_uuid": "de8d5dd2-2775-4eb2-9e6e-b79b444dc53c",
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
              "uuid": "6e6961e5-e6b3-4bdf-b400-b10bceb410c8",
              "parent_uuid": "de8d5dd2-2775-4eb2-9e6e-b79b444dc53c",
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
              "uuid": "a658df96-8044-47a4-be76-448ddc508408",
              "parent_uuid": "de8d5dd2-2775-4eb2-9e6e-b79b444dc53c",
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
              "uuid": "2c25b093-9de6-4d62-9d2d-7e0bd98b4846",
              "parent_uuid": "de8d5dd2-2775-4eb2-9e6e-b79b444dc53c",
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
              "uuid": "b239a067-db1f-405b-886e-0ae5496fa789",
              "parent_uuid": "de8d5dd2-2775-4eb2-9e6e-b79b444dc53c",
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
          "uuid": "f6b3d260-e7b3-49f4-a179-743ec299bbba",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "1d0472b3-cb5d-431a-9810-cbe19577a9d7",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dec1a283-8c6c-48ac-9c10-0c8e28a2c719",
              "parent_uuid": "1d0472b3-cb5d-431a-9810-cbe19577a9d7",
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
              "uuid": "d3b119da-ec99-42ac-b1d6-874ffe07923c",
              "parent_uuid": "1d0472b3-cb5d-431a-9810-cbe19577a9d7",
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
              "uuid": "8845b5b0-0495-492b-b4a1-5f0298e500dc",
              "parent_uuid": "1d0472b3-cb5d-431a-9810-cbe19577a9d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41051cc9-60d1-4d94-a70c-8d5d1c099447",
                  "parent_uuid": "8845b5b0-0495-492b-b4a1-5f0298e500dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aa4dfbec-a313-4b93-8902-74831925a0e9",
              "parent_uuid": "1d0472b3-cb5d-431a-9810-cbe19577a9d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4672485c-9931-4fba-8f26-2e34170be9bd",
                  "parent_uuid": "aa4dfbec-a313-4b93-8902-74831925a0e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b618aa9-b088-443d-b9aa-dfce69cac4a5",
              "parent_uuid": "1d0472b3-cb5d-431a-9810-cbe19577a9d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39896da3-9a40-48a4-99da-25ae607f5a89",
                  "parent_uuid": "8b618aa9-b088-443d-b9aa-dfce69cac4a5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3f7908f-63e1-41f1-b6a9-5a6a3f1d50f8",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6633ab40-ba04-4ecc-8ccd-df84520b8089",
              "parent_uuid": "b3f7908f-63e1-41f1-b6a9-5a6a3f1d50f8",
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
              "uuid": "d0d22c5d-ce50-49a2-8c1f-adb68440a144",
              "parent_uuid": "b3f7908f-63e1-41f1-b6a9-5a6a3f1d50f8",
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
              "uuid": "5dd9c059-be3f-4cc5-9023-3e8952700899",
              "parent_uuid": "b3f7908f-63e1-41f1-b6a9-5a6a3f1d50f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "994c2e90-e7e0-4e49-b865-1e7d9d3e5b0f",
                  "parent_uuid": "5dd9c059-be3f-4cc5-9023-3e8952700899",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39605998-aaf0-4fb6-8c66-be77cf3dd7c0",
              "parent_uuid": "b3f7908f-63e1-41f1-b6a9-5a6a3f1d50f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ec8a229-9e2c-4135-8f65-001d0eeb729e",
                  "parent_uuid": "39605998-aaf0-4fb6-8c66-be77cf3dd7c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f73b5433-ecb8-460d-8149-fe6c57116350",
              "parent_uuid": "b3f7908f-63e1-41f1-b6a9-5a6a3f1d50f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5586507-7209-4ff6-b60f-1e9b105174bd",
                  "parent_uuid": "f73b5433-ecb8-460d-8149-fe6c57116350",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4877b862-508d-4698-8fe6-d27b5943ef85",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "553a81bf-b95d-461c-b3ca-dc83f2278aec",
              "parent_uuid": "4877b862-508d-4698-8fe6-d27b5943ef85",
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
              "uuid": "9ba4c584-a5c5-40b6-9f41-acb9d23917a3",
              "parent_uuid": "4877b862-508d-4698-8fe6-d27b5943ef85",
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
              "uuid": "93b7c027-b206-44e1-a048-267fdc886d0b",
              "parent_uuid": "4877b862-508d-4698-8fe6-d27b5943ef85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66276d93-0615-4afb-9425-3c7dac226bb6",
                  "parent_uuid": "93b7c027-b206-44e1-a048-267fdc886d0b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3cba77be-a97f-43d3-bf06-af59918ed877",
              "parent_uuid": "4877b862-508d-4698-8fe6-d27b5943ef85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "943a589d-3ded-4994-be91-8c7e3d64cdd6",
                  "parent_uuid": "3cba77be-a97f-43d3-bf06-af59918ed877",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e6b8c51-7dc6-4956-a1d0-fa4fb9bcc9dc",
              "parent_uuid": "4877b862-508d-4698-8fe6-d27b5943ef85",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e7a1ee1-d7a0-4410-88a0-3b1d5a989cfd",
                  "parent_uuid": "7e6b8c51-7dc6-4956-a1d0-fa4fb9bcc9dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "802f2158-959c-4401-a01b-dc5aeebf0f32",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fab9e5a5-1b20-498d-b998-8bd19be3bda0",
              "parent_uuid": "802f2158-959c-4401-a01b-dc5aeebf0f32",
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
              "uuid": "9dfa310b-2da5-4f56-8c1a-b574105ae6d7",
              "parent_uuid": "802f2158-959c-4401-a01b-dc5aeebf0f32",
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
              "uuid": "fa01475a-fba8-4d59-87ef-a1e877721324",
              "parent_uuid": "802f2158-959c-4401-a01b-dc5aeebf0f32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "556ec38d-13f8-4f64-bf12-4d12a0c6c73a",
                  "parent_uuid": "fa01475a-fba8-4d59-87ef-a1e877721324",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6eaf9c0b-1a0b-461a-bb44-7d4a04bda228",
              "parent_uuid": "802f2158-959c-4401-a01b-dc5aeebf0f32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6694f8f8-8a57-4fc4-9b54-56ec17c2d397",
                  "parent_uuid": "6eaf9c0b-1a0b-461a-bb44-7d4a04bda228",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35b537cc-e69a-4e3c-a7bb-99494ddb200c",
              "parent_uuid": "802f2158-959c-4401-a01b-dc5aeebf0f32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3ba21b5-e0b6-44c5-a860-3b211273d2b0",
                  "parent_uuid": "35b537cc-e69a-4e3c-a7bb-99494ddb200c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "94d24929-d146-48d5-a1f5-a16c26b2f701",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc62fc0a-db20-4f3b-aec6-e17b7efe9b9b",
              "parent_uuid": "94d24929-d146-48d5-a1f5-a16c26b2f701",
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
          "uuid": "567a873d-641d-44ee-854b-259712ee72d7",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "191d2842-8c43-4781-988e-5dd0ec924c58",
              "parent_uuid": "567a873d-641d-44ee-854b-259712ee72d7",
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
          "uuid": "d99029ca-7ff9-4a21-b931-896492b79913",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79a2731b-9e84-48a6-b860-df3e47a5ad0d",
              "parent_uuid": "d99029ca-7ff9-4a21-b931-896492b79913",
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
                  "uuid": "4cbeb7e9-7f67-4d6a-a8c2-6df0b2f10381",
                  "parent_uuid": "79a2731b-9e84-48a6-b860-df3e47a5ad0d",
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
          "uuid": "a8682921-6409-4a98-ae9c-644690e9dd03",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "ea22b061-f8d2-42ca-bc94-188cf1471ff9",
              "parent_uuid": "a8682921-6409-4a98-ae9c-644690e9dd03",
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
          "uuid": "a625f504-63c2-4445-859a-292cbb14ac99",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "457f9fd9-050f-41a7-9504-ea7646f8ae8e",
              "parent_uuid": "a625f504-63c2-4445-859a-292cbb14ac99",
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
          "uuid": "55e3ed59-c0fe-44ef-b89f-ce749a107182",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad9ad304-fef2-4398-bb27-0b5b585d08ba",
              "parent_uuid": "55e3ed59-c0fe-44ef-b89f-ce749a107182",
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
              "uuid": "992643ae-ec04-42d7-bdda-86adff7b7e42",
              "parent_uuid": "55e3ed59-c0fe-44ef-b89f-ce749a107182",
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
              "uuid": "9d7f7490-1c89-40ab-a32d-a2d382225087",
              "parent_uuid": "55e3ed59-c0fe-44ef-b89f-ce749a107182",
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
              "uuid": "68fc3fcd-e0fb-4598-8d72-67672af42c06",
              "parent_uuid": "55e3ed59-c0fe-44ef-b89f-ce749a107182",
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
              "uuid": "922cfb58-3ff5-4ad8-9e01-7d166c21f39d",
              "parent_uuid": "55e3ed59-c0fe-44ef-b89f-ce749a107182",
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
          "uuid": "fd738a81-7587-4b7a-ac7b-ab16fde0ef21",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e3fbe060-3c99-4a8d-a5f2-1f13e5a739f2",
              "parent_uuid": "fd738a81-7587-4b7a-ac7b-ab16fde0ef21",
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
              "uuid": "8bcbe602-0428-438b-86c1-ccc939c634a8",
              "parent_uuid": "fd738a81-7587-4b7a-ac7b-ab16fde0ef21",
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
              "uuid": "e710040e-e162-48cb-bcc0-b2e748460fc6",
              "parent_uuid": "fd738a81-7587-4b7a-ac7b-ab16fde0ef21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fdfd9818-d0ae-4864-a6ee-9d8b5feb44c6",
                  "parent_uuid": "e710040e-e162-48cb-bcc0-b2e748460fc6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "93bcaac3-7f93-45fc-a1de-879efbaf442d",
              "parent_uuid": "fd738a81-7587-4b7a-ac7b-ab16fde0ef21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2d91c58-cea5-4b31-8c7c-1bdd0ee73745",
                  "parent_uuid": "93bcaac3-7f93-45fc-a1de-879efbaf442d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5d45def-0272-40d0-aef8-1e1f47622877",
              "parent_uuid": "fd738a81-7587-4b7a-ac7b-ab16fde0ef21",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "560d3da8-01b5-46ab-a923-223b6ca11989",
                  "parent_uuid": "c5d45def-0272-40d0-aef8-1e1f47622877",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e2ec09fb-39ef-40b7-a5ce-01e21a430f0a",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f49ac5c6-66fd-4728-9918-9780f9db09cc",
              "parent_uuid": "e2ec09fb-39ef-40b7-a5ce-01e21a430f0a",
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
              "uuid": "4c22b291-ebc2-4f09-a8a2-554f6ee08532",
              "parent_uuid": "e2ec09fb-39ef-40b7-a5ce-01e21a430f0a",
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
              "uuid": "654e35f8-7a2c-4932-b1e4-16eda69ab45b",
              "parent_uuid": "e2ec09fb-39ef-40b7-a5ce-01e21a430f0a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83ebdd5c-e2d6-49ba-9ae3-799da2d6141c",
                  "parent_uuid": "654e35f8-7a2c-4932-b1e4-16eda69ab45b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a3270c44-66be-468e-aa35-da98218fe3ec",
              "parent_uuid": "e2ec09fb-39ef-40b7-a5ce-01e21a430f0a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "409b057d-1426-4625-bcb3-c27e63f04900",
                  "parent_uuid": "a3270c44-66be-468e-aa35-da98218fe3ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66bfeb32-8e71-4481-bb1d-207cf880d9d9",
              "parent_uuid": "e2ec09fb-39ef-40b7-a5ce-01e21a430f0a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eab87ff3-1a40-4562-843f-7d70a706cc68",
                  "parent_uuid": "66bfeb32-8e71-4481-bb1d-207cf880d9d9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "91a7ea03-3a61-4a80-b8f4-ac460178f49b",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4cb2b630-e565-45b6-9d58-fd7063478c14",
              "parent_uuid": "91a7ea03-3a61-4a80-b8f4-ac460178f49b",
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
              "uuid": "eeaeb31c-77c0-4456-9e37-8c82ae636df3",
              "parent_uuid": "91a7ea03-3a61-4a80-b8f4-ac460178f49b",
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
              "uuid": "bdc0089a-4fd6-431c-9ad9-d848351dee11",
              "parent_uuid": "91a7ea03-3a61-4a80-b8f4-ac460178f49b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2703ac2f-cf82-4cba-81e1-023e7f332712",
                  "parent_uuid": "bdc0089a-4fd6-431c-9ad9-d848351dee11",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ed14ab2-5f6b-4dcf-bdea-12e0342feeb7",
              "parent_uuid": "91a7ea03-3a61-4a80-b8f4-ac460178f49b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d8ffedc-d1a1-404b-9ba3-c45ada0af9dd",
                  "parent_uuid": "2ed14ab2-5f6b-4dcf-bdea-12e0342feeb7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "330401ca-4dcf-41d8-a30b-6ad7ce0cfc29",
              "parent_uuid": "91a7ea03-3a61-4a80-b8f4-ac460178f49b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cc55302-466d-405c-a07e-e7dfa223bc74",
                  "parent_uuid": "330401ca-4dcf-41d8-a30b-6ad7ce0cfc29",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d9d7e3c-b5a6-4134-9a99-3b025500a0ec",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49b75ac6-71ee-4004-bdb7-4d17041c852a",
              "parent_uuid": "7d9d7e3c-b5a6-4134-9a99-3b025500a0ec",
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
              "uuid": "b1e6ad26-e87e-48b8-8706-773d40e048c5",
              "parent_uuid": "7d9d7e3c-b5a6-4134-9a99-3b025500a0ec",
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
              "uuid": "e8084cbc-e936-44d9-9d9a-663595dfac9f",
              "parent_uuid": "7d9d7e3c-b5a6-4134-9a99-3b025500a0ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "246e4b2a-6116-4484-81a2-a50a03623a12",
                  "parent_uuid": "e8084cbc-e936-44d9-9d9a-663595dfac9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7986337d-7d07-4e9e-922e-40c5ad497cf2",
              "parent_uuid": "7d9d7e3c-b5a6-4134-9a99-3b025500a0ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcc2c1e5-74b0-4e04-bd0b-6817cd58b206",
                  "parent_uuid": "7986337d-7d07-4e9e-922e-40c5ad497cf2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "659f6666-f7d4-4041-a02b-bdbeb6f0f6b6",
              "parent_uuid": "7d9d7e3c-b5a6-4134-9a99-3b025500a0ec",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b625b228-b85c-43e4-b3f3-dbee1c0f7cef",
                  "parent_uuid": "659f6666-f7d4-4041-a02b-bdbeb6f0f6b6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "015add83-43a9-4260-8832-66ab97aeaaae",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c9a64bb-49fb-4e65-b99d-4ef7240b443c",
              "parent_uuid": "015add83-43a9-4260-8832-66ab97aeaaae",
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
              "uuid": "60825e3f-5aca-45be-9b61-aac5165f9f41",
              "parent_uuid": "015add83-43a9-4260-8832-66ab97aeaaae",
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
              "uuid": "6363bbcb-7034-4ec1-bf9d-e82fb21579bc",
              "parent_uuid": "015add83-43a9-4260-8832-66ab97aeaaae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae1c7a6b-8cf4-448c-87e3-0f2bcac9c2eb",
                  "parent_uuid": "6363bbcb-7034-4ec1-bf9d-e82fb21579bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "37b6e2e0-1b65-4f0e-a82d-5173f9df48d0",
              "parent_uuid": "015add83-43a9-4260-8832-66ab97aeaaae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f93dd7cb-afb7-47f7-a941-08757c02c243",
                  "parent_uuid": "37b6e2e0-1b65-4f0e-a82d-5173f9df48d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03db8d5a-9907-41a6-9077-16ff89903789",
              "parent_uuid": "015add83-43a9-4260-8832-66ab97aeaaae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f053bce9-4bde-4d51-abd1-e57a4b82103e",
                  "parent_uuid": "03db8d5a-9907-41a6-9077-16ff89903789",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6ae8ff02-75a4-4809-8cb2-6452970151cf",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e573d50-ab8c-4841-8caa-2373c8e4eef9",
              "parent_uuid": "6ae8ff02-75a4-4809-8cb2-6452970151cf",
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
              "uuid": "74670c52-d3b1-421b-b757-4a2b178c5da0",
              "parent_uuid": "6ae8ff02-75a4-4809-8cb2-6452970151cf",
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
              "uuid": "b1911f80-800a-42f2-863c-23e32c6764e1",
              "parent_uuid": "6ae8ff02-75a4-4809-8cb2-6452970151cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac9461d8-5b6e-4392-adc0-42bc011fad53",
                  "parent_uuid": "b1911f80-800a-42f2-863c-23e32c6764e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b82d63a6-29e8-49de-b587-e6ee5887a1ec",
              "parent_uuid": "6ae8ff02-75a4-4809-8cb2-6452970151cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddeb0919-2b6d-4355-b074-7be057d3f581",
                  "parent_uuid": "b82d63a6-29e8-49de-b587-e6ee5887a1ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7436f21-a975-4027-8f62-46fb70b97db0",
              "parent_uuid": "6ae8ff02-75a4-4809-8cb2-6452970151cf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "adf14c17-44a4-45ec-beae-f155d946a449",
                  "parent_uuid": "e7436f21-a975-4027-8f62-46fb70b97db0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2dea87e6-2f41-4989-a522-b41d4b803bdb",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e9860e38-799e-43e0-bed4-dfb8d2a6a9d9",
              "parent_uuid": "2dea87e6-2f41-4989-a522-b41d4b803bdb",
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
          "uuid": "a38ed48b-ebbc-4910-97ba-e4f62bcb15f9",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "863a7dea-b67c-480b-a3e5-3c2ee681f780",
              "parent_uuid": "a38ed48b-ebbc-4910-97ba-e4f62bcb15f9",
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
          "uuid": "74f7451f-618e-4729-a224-173078bf130a",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "81868988-4f78-4bef-8b32-8aa2b0727fd6",
              "parent_uuid": "74f7451f-618e-4729-a224-173078bf130a",
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
                  "uuid": "82184f88-7281-4a60-b022-361207a3d74e",
                  "parent_uuid": "81868988-4f78-4bef-8b32-8aa2b0727fd6",
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
          "uuid": "0e06f67c-6a35-4925-b16a-e225c7c25413",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f19cfa7e-c239-47dd-93ae-72065d337183",
              "parent_uuid": "0e06f67c-6a35-4925-b16a-e225c7c25413",
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
          "uuid": "489fc6fb-59c2-49f8-85a7-256f01a5a63b",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "ca10908f-91de-4403-b8bb-7b8fd20d08b8",
              "parent_uuid": "489fc6fb-59c2-49f8-85a7-256f01a5a63b",
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
          "uuid": "e7a5dcf5-f1b4-458a-aabe-1ab422a88489",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "582ce058-1fab-4ab4-99a6-f85646cbead4",
              "parent_uuid": "e7a5dcf5-f1b4-458a-aabe-1ab422a88489",
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
              "uuid": "c2956133-7711-4465-8c9f-16f0442c0725",
              "parent_uuid": "e7a5dcf5-f1b4-458a-aabe-1ab422a88489",
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
              "uuid": "c07f2183-26ec-4fde-b3ef-579ebc989985",
              "parent_uuid": "e7a5dcf5-f1b4-458a-aabe-1ab422a88489",
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
              "uuid": "da5d4dae-164c-4fcb-8833-db51c653bfb0",
              "parent_uuid": "e7a5dcf5-f1b4-458a-aabe-1ab422a88489",
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
          "uuid": "35afe332-d532-4623-a05d-da881c5992f7",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d8aefde-a2ac-4b23-9645-c7d2ef276d53",
              "parent_uuid": "35afe332-d532-4623-a05d-da881c5992f7",
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
              "uuid": "a787db2f-3119-4761-9b0d-cd7ddb83200e",
              "parent_uuid": "35afe332-d532-4623-a05d-da881c5992f7",
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
              "uuid": "c4cd454a-1d7d-4120-99f0-985bc6fb00f5",
              "parent_uuid": "35afe332-d532-4623-a05d-da881c5992f7",
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
              "uuid": "40387008-8103-4262-a26c-0cb1330721f3",
              "parent_uuid": "35afe332-d532-4623-a05d-da881c5992f7",
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
          "uuid": "6a3e8daf-f763-495e-b36f-6cf832c07de4",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "01010e73-2de4-4c7f-856b-8a2d23bde47b",
              "parent_uuid": "6a3e8daf-f763-495e-b36f-6cf832c07de4",
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
              "uuid": "49af313c-9d1a-4e48-8cee-aa1192a0f011",
              "parent_uuid": "6a3e8daf-f763-495e-b36f-6cf832c07de4",
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
              "uuid": "96f7c427-f05b-4a7c-a373-4c08543aac8b",
              "parent_uuid": "6a3e8daf-f763-495e-b36f-6cf832c07de4",
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
              "uuid": "02bcbc99-d35a-4865-b854-f2eaae15782b",
              "parent_uuid": "6a3e8daf-f763-495e-b36f-6cf832c07de4",
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
          "uuid": "2fdaba1e-e6ad-4b86-bfaf-a6be8f78a7b2",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f0f17a7-f06b-4542-9da0-c679b2ff9b1a",
              "parent_uuid": "2fdaba1e-e6ad-4b86-bfaf-a6be8f78a7b2",
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
              "uuid": "775cccfc-c647-4fa0-9266-e9e31f2aab89",
              "parent_uuid": "2fdaba1e-e6ad-4b86-bfaf-a6be8f78a7b2",
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
              "uuid": "27f4ffc0-9a86-4afa-bddb-97a0117c8f9a",
              "parent_uuid": "2fdaba1e-e6ad-4b86-bfaf-a6be8f78a7b2",
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
              "uuid": "22bdbf8b-d12e-42a5-97ce-f451a94b21c5",
              "parent_uuid": "2fdaba1e-e6ad-4b86-bfaf-a6be8f78a7b2",
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
          "uuid": "c6890432-5867-4c00-89ed-d208f7060a0e",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d81bfec7-e222-4ce9-a221-c337aadf3403",
              "parent_uuid": "c6890432-5867-4c00-89ed-d208f7060a0e",
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
              "uuid": "a61f69e8-814f-4bb8-b997-fdc5aa1f781e",
              "parent_uuid": "c6890432-5867-4c00-89ed-d208f7060a0e",
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
              "uuid": "f3a2b57f-7ce0-44cd-a137-b9fa1ee918ab",
              "parent_uuid": "c6890432-5867-4c00-89ed-d208f7060a0e",
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
              "uuid": "27aa8c85-df1d-4f78-ba2d-f2cdc5c4ab4e",
              "parent_uuid": "c6890432-5867-4c00-89ed-d208f7060a0e",
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
          "uuid": "2516e2f9-408b-4db9-a1ae-1daddc1123dd",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f80b956-646f-4056-9d70-05d25d3f3841",
              "parent_uuid": "2516e2f9-408b-4db9-a1ae-1daddc1123dd",
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
              "uuid": "edc48d6a-0787-45e5-9a23-b86823675895",
              "parent_uuid": "2516e2f9-408b-4db9-a1ae-1daddc1123dd",
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
              "uuid": "5312a123-142b-467a-864a-adb97e7593fb",
              "parent_uuid": "2516e2f9-408b-4db9-a1ae-1daddc1123dd",
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
              "uuid": "8094fa76-e32d-4b74-b2e4-c5e821db6dcb",
              "parent_uuid": "2516e2f9-408b-4db9-a1ae-1daddc1123dd",
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
          "uuid": "85205817-3e85-414f-bdba-f07107427e3c",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efa76eff-8e5d-426f-8da7-bbc9bb608d01",
              "parent_uuid": "85205817-3e85-414f-bdba-f07107427e3c",
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
              "uuid": "0513915f-02e4-4acb-83a8-6f9cd530f933",
              "parent_uuid": "85205817-3e85-414f-bdba-f07107427e3c",
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
              "uuid": "bcbd7e65-9265-4761-9881-a948f69bdfa2",
              "parent_uuid": "85205817-3e85-414f-bdba-f07107427e3c",
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
              "uuid": "bda37a95-60f9-4d48-9794-adeaab0a6954",
              "parent_uuid": "85205817-3e85-414f-bdba-f07107427e3c",
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
          "uuid": "39f44505-7024-472c-86ce-ebc4366dd197",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "371bbd5b-d529-43d6-a4ed-01fa76545cc8",
              "parent_uuid": "39f44505-7024-472c-86ce-ebc4366dd197",
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
              "uuid": "a5d6b66c-29f8-4c95-84db-9deb1039c5e2",
              "parent_uuid": "39f44505-7024-472c-86ce-ebc4366dd197",
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
              "uuid": "b2d72129-ef47-430e-8b87-5bfe49c6c006",
              "parent_uuid": "39f44505-7024-472c-86ce-ebc4366dd197",
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
              "uuid": "d045473f-5730-4db4-8534-468f5b1f2b66",
              "parent_uuid": "39f44505-7024-472c-86ce-ebc4366dd197",
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
          "uuid": "f72b8f9f-5c6b-46d5-bebf-9789f11d3871",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "93f5d06e-5fb9-4a68-ad02-ecbe10336e5f",
              "parent_uuid": "f72b8f9f-5c6b-46d5-bebf-9789f11d3871",
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
              "uuid": "d4b12800-e549-4789-a4cc-3edf101ee47d",
              "parent_uuid": "f72b8f9f-5c6b-46d5-bebf-9789f11d3871",
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
              "uuid": "e49953d2-dfac-4857-b6f6-ef142d619182",
              "parent_uuid": "f72b8f9f-5c6b-46d5-bebf-9789f11d3871",
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
              "uuid": "db320fad-7ccf-46dc-aeb2-76b7b8a372d5",
              "parent_uuid": "f72b8f9f-5c6b-46d5-bebf-9789f11d3871",
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
          "uuid": "728faf71-1573-4eef-ae4f-ebb056f8d7a4",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de982f3f-a334-4ac3-a843-92ac45c1ca8e",
              "parent_uuid": "728faf71-1573-4eef-ae4f-ebb056f8d7a4",
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
              "uuid": "985cb5cf-2cee-4401-bb60-afead6513fba",
              "parent_uuid": "728faf71-1573-4eef-ae4f-ebb056f8d7a4",
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
              "uuid": "334adad6-22eb-4b84-9531-de8758c3cc65",
              "parent_uuid": "728faf71-1573-4eef-ae4f-ebb056f8d7a4",
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
              "uuid": "58514182-6db6-4d78-9506-cf44f2a972ea",
              "parent_uuid": "728faf71-1573-4eef-ae4f-ebb056f8d7a4",
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
          "uuid": "da6acad6-5f14-4786-8a39-49982704dd34",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "34c7a31c-289c-48c4-9cef-f2a6b710de61",
              "parent_uuid": "da6acad6-5f14-4786-8a39-49982704dd34",
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
              "uuid": "512c1ca6-8dba-4a0e-b246-c43ad5bad91b",
              "parent_uuid": "da6acad6-5f14-4786-8a39-49982704dd34",
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
              "uuid": "266fae23-be5c-4c46-a0e5-2a3b9f736528",
              "parent_uuid": "da6acad6-5f14-4786-8a39-49982704dd34",
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
              "uuid": "d38cb7a3-358f-4508-99ac-7958aa12c095",
              "parent_uuid": "da6acad6-5f14-4786-8a39-49982704dd34",
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
          "uuid": "aa80f68a-71f2-4a54-b348-ef5436f46145",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e07e0a1b-e255-4528-83af-e6d9069d6f97",
              "parent_uuid": "aa80f68a-71f2-4a54-b348-ef5436f46145",
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
              "uuid": "c83d56ef-0019-4f81-b54b-1249b71e6ae6",
              "parent_uuid": "aa80f68a-71f2-4a54-b348-ef5436f46145",
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
              "uuid": "aec116b6-f0f5-4ea9-bf39-48f317a97b4b",
              "parent_uuid": "aa80f68a-71f2-4a54-b348-ef5436f46145",
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
              "uuid": "03631384-c88a-4f64-897c-74149a014c12",
              "parent_uuid": "aa80f68a-71f2-4a54-b348-ef5436f46145",
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
          "uuid": "b24c200b-8924-4bf8-bc35-f9d035b8b676",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71c85715-0a84-4584-b58e-f2e5593de3b5",
              "parent_uuid": "b24c200b-8924-4bf8-bc35-f9d035b8b676",
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
              "uuid": "217c7a93-e89e-43bb-8c6d-bb5a196fba77",
              "parent_uuid": "b24c200b-8924-4bf8-bc35-f9d035b8b676",
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
              "uuid": "aa47a466-8cca-4d25-8f94-f4e13a70cf17",
              "parent_uuid": "b24c200b-8924-4bf8-bc35-f9d035b8b676",
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
              "uuid": "4b686259-3b4d-4317-aa61-9572a615166c",
              "parent_uuid": "b24c200b-8924-4bf8-bc35-f9d035b8b676",
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
          "uuid": "1d1e2c8d-2f7b-4c9d-a200-97551af02e99",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc289b0f-e51b-4444-bbc6-cc850448460e",
              "parent_uuid": "1d1e2c8d-2f7b-4c9d-a200-97551af02e99",
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
          "uuid": "0a426c18-4905-4307-a0db-61963eafb5ae",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c697db40-3a0e-4b0b-809e-fdcd3834b6e6",
              "parent_uuid": "0a426c18-4905-4307-a0db-61963eafb5ae",
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
          "uuid": "70b10fa8-07ad-4600-b04b-27cbac6c35a6",
          "parent_uuid": "4f383a52-a595-4233-a32d-80674eb19143",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3ae8866c-242f-4c95-ab69-4bdf9de1257f",
              "parent_uuid": "70b10fa8-07ad-4600-b04b-27cbac6c35a6",
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
                  "uuid": "851ef477-0e03-4970-a77d-e9842b3f0b83",
                  "parent_uuid": "3ae8866c-242f-4c95-ab69-4bdf9de1257f",
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

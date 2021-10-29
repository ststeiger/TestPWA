
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
  "uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "cee1b932-ab59-4217-82d7-4e216ebb97a5",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "66ed9fd3-3fca-4ff5-848b-2057316a26ef",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "2ecfa770-4d93-409a-b894-01eb58285430",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "f5b3fd80-5782-4fb2-b711-8e393e55e150",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "f9c01ba2-e61d-4608-bde3-5aac5486cf8a",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "ce4cb0d5-7899-4c49-9c9f-9be6e967a879",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "5b601d73-ed4c-4500-8a62-10e1ebf1ce12",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
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
      "uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
      "parent_uuid": "d8f4f51a-0132-4db4-af74-ce6aea8101d4",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "cb802e1a-e0d7-4c43-a244-43ef309309fa",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "3c9a6886-7718-43fe-85b7-39c3c8b753c2",
              "parent_uuid": "cb802e1a-e0d7-4c43-a244-43ef309309fa",
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
              "uuid": "0f4ad2ee-a965-48c1-9506-f704f687f3d4",
              "parent_uuid": "cb802e1a-e0d7-4c43-a244-43ef309309fa",
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
              "uuid": "2d8e1d11-3e3f-47f4-bb77-86188f471231",
              "parent_uuid": "cb802e1a-e0d7-4c43-a244-43ef309309fa",
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
              "uuid": "e89e7de5-030b-4a30-99d7-ab2bf56405c7",
              "parent_uuid": "cb802e1a-e0d7-4c43-a244-43ef309309fa",
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
          "uuid": "3641b661-aa63-4893-ad2a-192dc4fa263e",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "fd01e507-dcfd-4bce-a500-e7e68ae0f35a",
              "parent_uuid": "3641b661-aa63-4893-ad2a-192dc4fa263e",
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
              "uuid": "727a43bd-23f8-413d-b961-f8b014ed62c6",
              "parent_uuid": "3641b661-aa63-4893-ad2a-192dc4fa263e",
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
              "uuid": "fca95a81-db38-468e-bca5-f4bea0c040cc",
              "parent_uuid": "3641b661-aa63-4893-ad2a-192dc4fa263e",
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
              "uuid": "c6934159-2da2-45b5-9d7b-e2d188b24966",
              "parent_uuid": "3641b661-aa63-4893-ad2a-192dc4fa263e",
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
          "uuid": "84984e3f-d753-4c8f-a25e-32c78f93fcb7",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "045b6e64-9ad6-4fe8-8750-e69c13e59cd8",
              "parent_uuid": "84984e3f-d753-4c8f-a25e-32c78f93fcb7",
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
              "uuid": "aa5e617e-9c35-435a-838e-47df069d8608",
              "parent_uuid": "84984e3f-d753-4c8f-a25e-32c78f93fcb7",
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
              "uuid": "f56dafeb-086f-49c3-a301-146ed6c2c27d",
              "parent_uuid": "84984e3f-d753-4c8f-a25e-32c78f93fcb7",
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
              "uuid": "44bde1ab-4a00-43a4-a70a-5b8cc5822acb",
              "parent_uuid": "84984e3f-d753-4c8f-a25e-32c78f93fcb7",
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
          "uuid": "2382cba0-f9c0-43e6-acd0-f0781207f993",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5ff3825-fecb-4c81-a3b7-372b8931b9d9",
              "parent_uuid": "2382cba0-f9c0-43e6-acd0-f0781207f993",
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
              "uuid": "08847e10-0951-4082-83c6-522e6079f42a",
              "parent_uuid": "2382cba0-f9c0-43e6-acd0-f0781207f993",
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
              "uuid": "e15fedcf-d904-41f7-bc20-7575a2262e87",
              "parent_uuid": "2382cba0-f9c0-43e6-acd0-f0781207f993",
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
              "uuid": "d77121cc-95da-4e4d-93f4-9ce19b280008",
              "parent_uuid": "2382cba0-f9c0-43e6-acd0-f0781207f993",
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
              "uuid": "0a07daca-a244-45d5-babe-6d0ff576690a",
              "parent_uuid": "2382cba0-f9c0-43e6-acd0-f0781207f993",
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
              "uuid": "a1af9893-bdea-4e9a-9b9e-39bb90ed800c",
              "parent_uuid": "2382cba0-f9c0-43e6-acd0-f0781207f993",
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
          "uuid": "8b235a7f-660c-43e6-b56b-5edc07dd1c4f",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d247ff5b-cfee-4536-b245-2388e7cb4a5e",
              "parent_uuid": "8b235a7f-660c-43e6-b56b-5edc07dd1c4f",
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
          "uuid": "c505577e-e56a-4d37-bf11-cf35949c09c7",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48342a38-e438-4b40-b01e-3e2760089ba3",
              "parent_uuid": "c505577e-e56a-4d37-bf11-cf35949c09c7",
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
              "uuid": "ca13c5ac-ed28-4090-98d3-450ef8fa80bc",
              "parent_uuid": "c505577e-e56a-4d37-bf11-cf35949c09c7",
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
              "uuid": "a08609fb-2d90-49b1-a48f-43a82cc240d7",
              "parent_uuid": "c505577e-e56a-4d37-bf11-cf35949c09c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "85967f66-84ec-48ee-b1e4-e6e4918b5979",
                  "parent_uuid": "a08609fb-2d90-49b1-a48f-43a82cc240d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b64e95cf-8ea8-4803-9f74-df99745603f7",
              "parent_uuid": "c505577e-e56a-4d37-bf11-cf35949c09c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "489badc1-0ad5-46f1-99c8-7d464bcc5dfb",
                  "parent_uuid": "b64e95cf-8ea8-4803-9f74-df99745603f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "119d2db3-8c7d-41ed-8e8b-f8f6dc9dbb9d",
              "parent_uuid": "c505577e-e56a-4d37-bf11-cf35949c09c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6aaf4b5-b663-4e87-9bb1-03943977eb8c",
                  "parent_uuid": "119d2db3-8c7d-41ed-8e8b-f8f6dc9dbb9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d377108-c61e-483d-82f3-5d21da90d664",
              "parent_uuid": "c505577e-e56a-4d37-bf11-cf35949c09c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "193b2960-58bf-442d-ad2c-50f8df3e705d",
                  "parent_uuid": "2d377108-c61e-483d-82f3-5d21da90d664",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d19d88bd-1170-4232-ac37-ae1daa078a94",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "abe6ad93-86ee-484b-998d-9a3e13c65708",
              "parent_uuid": "d19d88bd-1170-4232-ac37-ae1daa078a94",
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
              "uuid": "eeca9ea3-43b5-41bc-b49f-d676a2e2c793",
              "parent_uuid": "d19d88bd-1170-4232-ac37-ae1daa078a94",
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
              "uuid": "ba99218a-61ef-4a5b-9bde-de9caae158cf",
              "parent_uuid": "d19d88bd-1170-4232-ac37-ae1daa078a94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4824695-d489-4794-8486-35c03e874a5b",
                  "parent_uuid": "ba99218a-61ef-4a5b-9bde-de9caae158cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41b3c970-a179-46a7-840a-a897d77a69bf",
              "parent_uuid": "d19d88bd-1170-4232-ac37-ae1daa078a94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "852dadfe-e409-4425-895b-00591dd5300d",
                  "parent_uuid": "41b3c970-a179-46a7-840a-a897d77a69bf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5ecb510a-d49d-4ea3-af65-0984e9626a0f",
              "parent_uuid": "d19d88bd-1170-4232-ac37-ae1daa078a94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4feff52-a2ed-4b88-a78b-31fcd0f93303",
                  "parent_uuid": "5ecb510a-d49d-4ea3-af65-0984e9626a0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1cb6f93b-5b08-4052-9adc-3f8d6bf08088",
              "parent_uuid": "d19d88bd-1170-4232-ac37-ae1daa078a94",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a66aecb8-9ddc-4287-bf29-28550c9bfe27",
                  "parent_uuid": "1cb6f93b-5b08-4052-9adc-3f8d6bf08088",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c79ccfd4-ad64-4961-a861-aa138aec6a9d",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68573e4b-a079-49a9-8a65-c2545ff1931a",
              "parent_uuid": "c79ccfd4-ad64-4961-a861-aa138aec6a9d",
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
              "uuid": "4a965a87-56d7-42b7-839c-92f8c9c50d46",
              "parent_uuid": "c79ccfd4-ad64-4961-a861-aa138aec6a9d",
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
              "uuid": "ed905b31-965b-4f7e-ba78-f5ffb9c64dc1",
              "parent_uuid": "c79ccfd4-ad64-4961-a861-aa138aec6a9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4898e83d-a2de-48dd-9a62-ed890c6f4cd1",
                  "parent_uuid": "ed905b31-965b-4f7e-ba78-f5ffb9c64dc1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef4c6bd1-9657-4155-aa2b-b61f3e161225",
              "parent_uuid": "c79ccfd4-ad64-4961-a861-aa138aec6a9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab39db95-7120-4f4c-9fe4-dd4336fae596",
                  "parent_uuid": "ef4c6bd1-9657-4155-aa2b-b61f3e161225",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4ea7d6f-a225-4be5-b232-ac8f544c61ec",
              "parent_uuid": "c79ccfd4-ad64-4961-a861-aa138aec6a9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a21a5f0-ec19-4abc-a9e4-41cc2d0112f1",
                  "parent_uuid": "e4ea7d6f-a225-4be5-b232-ac8f544c61ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "60ec0e35-4159-45e1-9ad2-5decde2dc285",
              "parent_uuid": "c79ccfd4-ad64-4961-a861-aa138aec6a9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe79a203-1ef8-4a7d-972e-6aaff159802b",
                  "parent_uuid": "60ec0e35-4159-45e1-9ad2-5decde2dc285",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0bd5fe36-2d4e-457f-9157-52b3123287d7",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4bcb1b0c-c2eb-4420-917c-5fb15f03509c",
              "parent_uuid": "0bd5fe36-2d4e-457f-9157-52b3123287d7",
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
              "uuid": "cc33c303-6c61-46e2-b58f-380ae14faa76",
              "parent_uuid": "0bd5fe36-2d4e-457f-9157-52b3123287d7",
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
              "uuid": "e85bcbc5-b276-45da-8b92-2eabbc3325f3",
              "parent_uuid": "0bd5fe36-2d4e-457f-9157-52b3123287d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "576ad3dd-3086-4d66-9771-e300b28c22e4",
                  "parent_uuid": "e85bcbc5-b276-45da-8b92-2eabbc3325f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "765bc1a0-0102-4edf-940d-0cc4d54c2c16",
              "parent_uuid": "0bd5fe36-2d4e-457f-9157-52b3123287d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b25c843-9e72-411a-a9fc-18a71dec76dd",
                  "parent_uuid": "765bc1a0-0102-4edf-940d-0cc4d54c2c16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db4d0c51-4c7b-4275-b7af-6ff009428953",
              "parent_uuid": "0bd5fe36-2d4e-457f-9157-52b3123287d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f66854b2-c7ed-4006-95af-41b40adffd9a",
                  "parent_uuid": "db4d0c51-4c7b-4275-b7af-6ff009428953",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "479632f5-de9b-458e-85c8-50d146316677",
              "parent_uuid": "0bd5fe36-2d4e-457f-9157-52b3123287d7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eff5bba2-d6c4-4fc2-b2cb-9535f33db73d",
                  "parent_uuid": "479632f5-de9b-458e-85c8-50d146316677",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "89feb8b0-6889-4ee4-aca1-4d6f09f6dd1b",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb56eca4-1e32-43bd-a68d-df3cc874cccb",
              "parent_uuid": "89feb8b0-6889-4ee4-aca1-4d6f09f6dd1b",
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
              "uuid": "afbcdea3-4813-465d-9f57-baf8278bd20e",
              "parent_uuid": "89feb8b0-6889-4ee4-aca1-4d6f09f6dd1b",
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
              "uuid": "ecbddc96-0c4c-496c-ab68-744bf28684e7",
              "parent_uuid": "89feb8b0-6889-4ee4-aca1-4d6f09f6dd1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7af2a039-534f-452f-aa84-4bca73a7277f",
                  "parent_uuid": "ecbddc96-0c4c-496c-ab68-744bf28684e7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a0c40cd-cbcf-40bb-909d-2a975b14534f",
              "parent_uuid": "89feb8b0-6889-4ee4-aca1-4d6f09f6dd1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9cea54f-094d-4e0c-b022-fa743f493473",
                  "parent_uuid": "1a0c40cd-cbcf-40bb-909d-2a975b14534f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "774272b3-31db-451b-9155-d5bf5e345a03",
              "parent_uuid": "89feb8b0-6889-4ee4-aca1-4d6f09f6dd1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98886422-d43f-4a28-a890-dbf2a72da9c7",
                  "parent_uuid": "774272b3-31db-451b-9155-d5bf5e345a03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c78c0f0-cdf6-4b9e-b234-eb21a2b4c910",
              "parent_uuid": "89feb8b0-6889-4ee4-aca1-4d6f09f6dd1b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dab69cb3-03dd-4c11-b623-71baee18b578",
                  "parent_uuid": "4c78c0f0-cdf6-4b9e-b234-eb21a2b4c910",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c7d54206-e4e7-4903-bc6a-eff5d8e3650e",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3674d24-2e51-4500-b371-a895844682bb",
              "parent_uuid": "c7d54206-e4e7-4903-bc6a-eff5d8e3650e",
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
              "uuid": "62dc4fc5-9c1b-40e9-b8c9-62223aa6cd98",
              "parent_uuid": "c7d54206-e4e7-4903-bc6a-eff5d8e3650e",
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
              "uuid": "23803e70-17af-4744-b647-5d36cfe45b85",
              "parent_uuid": "c7d54206-e4e7-4903-bc6a-eff5d8e3650e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "065581c3-208b-4850-ad2d-3a740133d28a",
                  "parent_uuid": "23803e70-17af-4744-b647-5d36cfe45b85",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d20b7baa-ab9e-4894-a124-601d41103ac9",
              "parent_uuid": "c7d54206-e4e7-4903-bc6a-eff5d8e3650e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4c4ca67-245c-4d50-99ad-4a906cb04e36",
                  "parent_uuid": "d20b7baa-ab9e-4894-a124-601d41103ac9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8657a20-743d-4df3-9274-5498b823de33",
              "parent_uuid": "c7d54206-e4e7-4903-bc6a-eff5d8e3650e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5649dc71-2cfa-456e-88ec-f7ef04e66123",
                  "parent_uuid": "e8657a20-743d-4df3-9274-5498b823de33",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b76fc922-657b-416d-b49b-576d493f2a81",
              "parent_uuid": "c7d54206-e4e7-4903-bc6a-eff5d8e3650e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09e79a5a-e415-466c-afd6-3de6da46e178",
                  "parent_uuid": "b76fc922-657b-416d-b49b-576d493f2a81",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "960a8f37-be08-48c4-bb80-ab03bc4b31d8",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60525f69-777e-4474-827f-c11be5b0d9de",
              "parent_uuid": "960a8f37-be08-48c4-bb80-ab03bc4b31d8",
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
              "uuid": "707addbc-7993-43ed-bef1-db6bc2638c2b",
              "parent_uuid": "960a8f37-be08-48c4-bb80-ab03bc4b31d8",
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
              "uuid": "7a8781bb-4e60-4431-8133-ee45b7888ffc",
              "parent_uuid": "960a8f37-be08-48c4-bb80-ab03bc4b31d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a4f505d-c957-429a-9607-293087757da5",
                  "parent_uuid": "7a8781bb-4e60-4431-8133-ee45b7888ffc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b7a7283-6645-4e6f-86e2-1c310aed8e52",
              "parent_uuid": "960a8f37-be08-48c4-bb80-ab03bc4b31d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25b21536-2879-4ffb-95c8-438e4d455286",
                  "parent_uuid": "4b7a7283-6645-4e6f-86e2-1c310aed8e52",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4c8aafb4-9ef8-441f-a8a1-9fc5fbf4725c",
              "parent_uuid": "960a8f37-be08-48c4-bb80-ab03bc4b31d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d4ef19e-b2e5-4829-a484-274cd64229d0",
                  "parent_uuid": "4c8aafb4-9ef8-441f-a8a1-9fc5fbf4725c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a17ad79-8f27-4b34-a8cd-fb9d8d882437",
              "parent_uuid": "960a8f37-be08-48c4-bb80-ab03bc4b31d8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15d552a0-17e8-48f2-ab98-d1bb4abedbc3",
                  "parent_uuid": "1a17ad79-8f27-4b34-a8cd-fb9d8d882437",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4cef266f-47d6-4fbf-8066-3e241ac0a6e3",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5951f581-bebd-488f-8b64-ff9518d50159",
              "parent_uuid": "4cef266f-47d6-4fbf-8066-3e241ac0a6e3",
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
              "uuid": "12cc9fa1-7bf4-4927-9231-514416bbd6fc",
              "parent_uuid": "4cef266f-47d6-4fbf-8066-3e241ac0a6e3",
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
              "uuid": "751d4219-ac87-46e2-8eec-030fbe8dbfa1",
              "parent_uuid": "4cef266f-47d6-4fbf-8066-3e241ac0a6e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d158c1f8-0397-42a7-8a69-c4c686a1cb70",
                  "parent_uuid": "751d4219-ac87-46e2-8eec-030fbe8dbfa1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95417336-ceac-42f1-85ee-05a741ae6a10",
              "parent_uuid": "4cef266f-47d6-4fbf-8066-3e241ac0a6e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5243393d-828b-4930-a159-5edca5d84b62",
                  "parent_uuid": "95417336-ceac-42f1-85ee-05a741ae6a10",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8406c8cd-d41e-41e5-95e0-c2ee6eabd8c4",
              "parent_uuid": "4cef266f-47d6-4fbf-8066-3e241ac0a6e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05c7b659-3f94-4777-8fc2-5a409954ff51",
                  "parent_uuid": "8406c8cd-d41e-41e5-95e0-c2ee6eabd8c4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9408362f-8169-4499-b8ba-b3a3258d39ce",
              "parent_uuid": "4cef266f-47d6-4fbf-8066-3e241ac0a6e3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "425a25d3-11c1-42ff-b096-3ccf4f624a3e",
                  "parent_uuid": "9408362f-8169-4499-b8ba-b3a3258d39ce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fdb02f2b-3424-425d-ab38-e52d60c5bfb9",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce41a984-cf93-4e66-abf2-77053c7bc3ce",
              "parent_uuid": "fdb02f2b-3424-425d-ab38-e52d60c5bfb9",
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
              "uuid": "f05ebf0e-7acf-4658-9418-f43a0f24f3ec",
              "parent_uuid": "fdb02f2b-3424-425d-ab38-e52d60c5bfb9",
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
              "uuid": "2aceb496-be1a-4b40-91d4-7105c4191586",
              "parent_uuid": "fdb02f2b-3424-425d-ab38-e52d60c5bfb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02b859df-0085-4d40-93a9-c2195ae9f1b4",
                  "parent_uuid": "2aceb496-be1a-4b40-91d4-7105c4191586",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "faa68048-7ce6-4fb0-b594-d5f6957b2c37",
              "parent_uuid": "fdb02f2b-3424-425d-ab38-e52d60c5bfb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15684e74-4f9c-44b1-8908-479faa752915",
                  "parent_uuid": "faa68048-7ce6-4fb0-b594-d5f6957b2c37",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15ac223d-ded1-46ed-9956-b4f72d1acf8b",
              "parent_uuid": "fdb02f2b-3424-425d-ab38-e52d60c5bfb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "28220b9d-3d34-4e44-8b95-827d53168a9f",
                  "parent_uuid": "15ac223d-ded1-46ed-9956-b4f72d1acf8b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5ba964a-0800-41a2-8a42-9792d4ecb3be",
              "parent_uuid": "fdb02f2b-3424-425d-ab38-e52d60c5bfb9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee31f258-694a-44c7-a0b9-5f5bde921dba",
                  "parent_uuid": "c5ba964a-0800-41a2-8a42-9792d4ecb3be",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "26b51911-0e22-4a5f-a29b-90f6e7886c48",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d1bcc13-468b-489f-b678-87396d046c5c",
              "parent_uuid": "26b51911-0e22-4a5f-a29b-90f6e7886c48",
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
              "uuid": "7fd32392-d891-4071-bb6d-6d437dc3a313",
              "parent_uuid": "26b51911-0e22-4a5f-a29b-90f6e7886c48",
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
              "uuid": "e7c30058-678d-44fc-9d62-85cea1bf52e8",
              "parent_uuid": "26b51911-0e22-4a5f-a29b-90f6e7886c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f10936b-a401-4170-88be-4b66a5db54a9",
                  "parent_uuid": "e7c30058-678d-44fc-9d62-85cea1bf52e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "061a75fa-84e8-4a52-b557-ccb4dbf96cb6",
              "parent_uuid": "26b51911-0e22-4a5f-a29b-90f6e7886c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bee2e2f7-97e7-4bb6-9787-0bfc94b4a5a5",
                  "parent_uuid": "061a75fa-84e8-4a52-b557-ccb4dbf96cb6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65745fd1-f278-4080-9131-aa5294ca3d99",
              "parent_uuid": "26b51911-0e22-4a5f-a29b-90f6e7886c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39fa5d09-fafa-4f38-a82d-7bf694da2d66",
                  "parent_uuid": "65745fd1-f278-4080-9131-aa5294ca3d99",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "680a5cf9-a9f0-49d6-817d-4e8156f6c5df",
              "parent_uuid": "26b51911-0e22-4a5f-a29b-90f6e7886c48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58804237-4264-45c5-a27d-c48b96f510e5",
                  "parent_uuid": "680a5cf9-a9f0-49d6-817d-4e8156f6c5df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a5954d81-6b0a-48cc-a3f3-b2f5a1022540",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "edf2fe6f-0cc7-4c43-9ee8-0310c3341470",
              "parent_uuid": "a5954d81-6b0a-48cc-a3f3-b2f5a1022540",
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
              "uuid": "2d6a81ef-0c36-4253-b325-cb753826a9e5",
              "parent_uuid": "a5954d81-6b0a-48cc-a3f3-b2f5a1022540",
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
              "uuid": "1ec3f25a-f14b-4821-baec-06e252a24dfe",
              "parent_uuid": "a5954d81-6b0a-48cc-a3f3-b2f5a1022540",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccd5bb8a-6c62-4992-bdfa-91175acaa14e",
                  "parent_uuid": "1ec3f25a-f14b-4821-baec-06e252a24dfe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63003c8f-31e9-4a51-8f59-4bfe1343015f",
              "parent_uuid": "a5954d81-6b0a-48cc-a3f3-b2f5a1022540",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab0057a2-055c-4867-9b4a-f9b7e4bb23bb",
                  "parent_uuid": "63003c8f-31e9-4a51-8f59-4bfe1343015f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2c60a95-0a43-4a94-ae52-3f3a38d2900e",
              "parent_uuid": "a5954d81-6b0a-48cc-a3f3-b2f5a1022540",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc836705-670b-4dc8-952b-2619152563af",
                  "parent_uuid": "c2c60a95-0a43-4a94-ae52-3f3a38d2900e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d70f4b14-2432-4383-adb3-bdbd393aca48",
              "parent_uuid": "a5954d81-6b0a-48cc-a3f3-b2f5a1022540",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "30271a03-f405-4633-acfc-34c6a7599527",
                  "parent_uuid": "d70f4b14-2432-4383-adb3-bdbd393aca48",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a2f9d35-eee3-4dc0-a3ef-c3948d2f99ae",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e40fccb-8fb1-4c2d-ad0d-ecb4e8313619",
              "parent_uuid": "9a2f9d35-eee3-4dc0-a3ef-c3948d2f99ae",
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
              "uuid": "0c274ecf-136f-42a1-8943-3e67edd89bcf",
              "parent_uuid": "9a2f9d35-eee3-4dc0-a3ef-c3948d2f99ae",
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
              "uuid": "27134d49-2605-4ba6-9d61-ec6392c22b3d",
              "parent_uuid": "9a2f9d35-eee3-4dc0-a3ef-c3948d2f99ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b40aaf17-8891-42d2-a4df-f15caf4bd954",
                  "parent_uuid": "27134d49-2605-4ba6-9d61-ec6392c22b3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f40122a-3ccf-4876-880d-227034ebb40b",
              "parent_uuid": "9a2f9d35-eee3-4dc0-a3ef-c3948d2f99ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78de2309-7f72-4b42-b7d5-f2a9af57aea1",
                  "parent_uuid": "2f40122a-3ccf-4876-880d-227034ebb40b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9259b07f-e0bf-4251-b534-d589ff14bc76",
              "parent_uuid": "9a2f9d35-eee3-4dc0-a3ef-c3948d2f99ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5a8909a-332e-4cd7-8e56-8510ec61eac1",
                  "parent_uuid": "9259b07f-e0bf-4251-b534-d589ff14bc76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1ff8d45-77f3-427a-947f-6cf59d1525d4",
              "parent_uuid": "9a2f9d35-eee3-4dc0-a3ef-c3948d2f99ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "243f31c4-35a1-48d2-932a-dc8bf8e2a3a0",
                  "parent_uuid": "f1ff8d45-77f3-427a-947f-6cf59d1525d4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "255edc3f-1af2-4264-8abd-5b57c9fefdac",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcbcfd3f-b369-48d7-ae82-56f6d1d954df",
              "parent_uuid": "255edc3f-1af2-4264-8abd-5b57c9fefdac",
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
          "uuid": "12f10ad8-9535-41d0-a8b7-b69576d435b4",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "afb3b77e-0259-490b-97fb-769e935bd2d5",
              "parent_uuid": "12f10ad8-9535-41d0-a8b7-b69576d435b4",
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
          "uuid": "2eecc755-d628-4fba-89dd-4b297792deb2",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68fd799a-4f1f-4d99-9ec1-9f77691f7784",
              "parent_uuid": "2eecc755-d628-4fba-89dd-4b297792deb2",
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
                  "uuid": "7c924453-baf1-4d4d-9658-471810768881",
                  "parent_uuid": "68fd799a-4f1f-4d99-9ec1-9f77691f7784",
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
          "uuid": "80a22f9e-b6cd-49f2-a9a9-78a5d21c43ba",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80bb992d-9dda-4595-8296-b207a5a3d300",
              "parent_uuid": "80a22f9e-b6cd-49f2-a9a9-78a5d21c43ba",
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
          "uuid": "d7dab446-fa09-41a9-ac9a-b223d5150608",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "033cdd73-6c0b-451e-b0af-162aeac7b263",
              "parent_uuid": "d7dab446-fa09-41a9-ac9a-b223d5150608",
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
          "uuid": "f2f6f8a4-ff48-4205-bb1d-bf49ce42aacf",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dba960b1-aed3-46bb-b0c1-ed3fb79f4283",
              "parent_uuid": "f2f6f8a4-ff48-4205-bb1d-bf49ce42aacf",
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
              "uuid": "da67e488-9e23-4195-9433-4a86559c4e0f",
              "parent_uuid": "f2f6f8a4-ff48-4205-bb1d-bf49ce42aacf",
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
              "uuid": "9d26b950-1ab4-4f64-8355-f24447b24c74",
              "parent_uuid": "f2f6f8a4-ff48-4205-bb1d-bf49ce42aacf",
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
              "uuid": "fe216d96-73fd-445f-9fdc-0e2e72f326fb",
              "parent_uuid": "f2f6f8a4-ff48-4205-bb1d-bf49ce42aacf",
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
              "uuid": "94a653bf-9d14-4e09-b200-92bfac394844",
              "parent_uuid": "f2f6f8a4-ff48-4205-bb1d-bf49ce42aacf",
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
              "uuid": "9d1121c6-b3bd-4dab-b5b7-0134f4bd3999",
              "parent_uuid": "f2f6f8a4-ff48-4205-bb1d-bf49ce42aacf",
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
          "uuid": "138b8e2f-4171-45ce-b940-932165ef30e5",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a189dc65-b0b1-4473-9357-748491447f1e",
              "parent_uuid": "138b8e2f-4171-45ce-b940-932165ef30e5",
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
              "uuid": "fcfe087b-ed07-46c2-af79-c8f360bd0791",
              "parent_uuid": "138b8e2f-4171-45ce-b940-932165ef30e5",
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
              "uuid": "df1435b1-30d2-4bac-b7e5-cbdd907fb81b",
              "parent_uuid": "138b8e2f-4171-45ce-b940-932165ef30e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eac68b85-f4c8-4f31-8762-0facbcc9e039",
                  "parent_uuid": "df1435b1-30d2-4bac-b7e5-cbdd907fb81b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e7fdc0cc-0dfd-4d98-8569-bb42dd568354",
              "parent_uuid": "138b8e2f-4171-45ce-b940-932165ef30e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2e1d6dff-2279-4d80-b5b8-321af21992bf",
                  "parent_uuid": "e7fdc0cc-0dfd-4d98-8569-bb42dd568354",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e4b23527-7409-40ba-927d-0a7aa050c46c",
              "parent_uuid": "138b8e2f-4171-45ce-b940-932165ef30e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d273895-bd99-4227-adee-a1d20f79e5c6",
                  "parent_uuid": "e4b23527-7409-40ba-927d-0a7aa050c46c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce6c57ca-31e9-40e4-8430-f9b2ab94dde6",
              "parent_uuid": "138b8e2f-4171-45ce-b940-932165ef30e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2199de0-86c0-4fb6-8865-9dbe902d5e92",
                  "parent_uuid": "ce6c57ca-31e9-40e4-8430-f9b2ab94dde6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b78720da-e9c7-49c0-8914-82c26f115251",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fb8db7df-663a-43eb-8645-1ac7e61e2557",
              "parent_uuid": "b78720da-e9c7-49c0-8914-82c26f115251",
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
              "uuid": "8c899180-8fa4-4a08-985d-b4778bb902b3",
              "parent_uuid": "b78720da-e9c7-49c0-8914-82c26f115251",
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
              "uuid": "36286662-dce3-487a-b70b-dc5feeb46957",
              "parent_uuid": "b78720da-e9c7-49c0-8914-82c26f115251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "265a5fbf-81b1-46f6-9a85-a7edbc9a5792",
                  "parent_uuid": "36286662-dce3-487a-b70b-dc5feeb46957",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3afc9873-b0a1-456f-b7b1-89decc82c189",
              "parent_uuid": "b78720da-e9c7-49c0-8914-82c26f115251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b9e2a63-6232-4c6f-8882-ba63b6b1c7f9",
                  "parent_uuid": "3afc9873-b0a1-456f-b7b1-89decc82c189",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47b6e7c9-aa3b-4fe3-9077-0ac48b72cd21",
              "parent_uuid": "b78720da-e9c7-49c0-8914-82c26f115251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3c839697-8541-48c1-8fe8-166ec87bd8ac",
                  "parent_uuid": "47b6e7c9-aa3b-4fe3-9077-0ac48b72cd21",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03493321-b6d1-44fa-964c-4435735c73e9",
              "parent_uuid": "b78720da-e9c7-49c0-8914-82c26f115251",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47f296f7-1bad-443c-b1b1-a9600c6191d3",
                  "parent_uuid": "03493321-b6d1-44fa-964c-4435735c73e9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1404dbbd-3934-48c6-8e7f-2a6770409d47",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "12ebd0e2-9106-4328-b6cb-086803388e8b",
              "parent_uuid": "1404dbbd-3934-48c6-8e7f-2a6770409d47",
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
              "uuid": "e46356fa-c1f1-4cfa-8a9f-072ee35479c9",
              "parent_uuid": "1404dbbd-3934-48c6-8e7f-2a6770409d47",
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
              "uuid": "6f193b3b-80c3-47ab-a643-4f137b95298a",
              "parent_uuid": "1404dbbd-3934-48c6-8e7f-2a6770409d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7de79cfc-fb45-421d-a575-fe1a1c045f02",
                  "parent_uuid": "6f193b3b-80c3-47ab-a643-4f137b95298a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5dcb9582-a7d6-4174-bcd7-ffd638e19e70",
              "parent_uuid": "1404dbbd-3934-48c6-8e7f-2a6770409d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24fd4f1a-7c6a-45d4-9ae7-16d9f67ff3c7",
                  "parent_uuid": "5dcb9582-a7d6-4174-bcd7-ffd638e19e70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c588e2f-48d1-4d22-bcbb-9fe60ced41eb",
              "parent_uuid": "1404dbbd-3934-48c6-8e7f-2a6770409d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6124a033-b438-48fa-a346-d9e142ec7751",
                  "parent_uuid": "2c588e2f-48d1-4d22-bcbb-9fe60ced41eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e47ee059-7067-4402-bcb3-a06a01629cba",
              "parent_uuid": "1404dbbd-3934-48c6-8e7f-2a6770409d47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24129d4c-31b7-4aff-af0c-d1fed88922d1",
                  "parent_uuid": "e47ee059-7067-4402-bcb3-a06a01629cba",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4a9a3d73-bcef-49b3-b411-d8908c59027e",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e994b47-5633-4f74-9c4a-8821199ff14f",
              "parent_uuid": "4a9a3d73-bcef-49b3-b411-d8908c59027e",
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
              "uuid": "26613cf3-0ec6-4052-8a77-6ad4567aec56",
              "parent_uuid": "4a9a3d73-bcef-49b3-b411-d8908c59027e",
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
              "uuid": "e894c6f5-68f7-4c8f-91c1-3109a263df05",
              "parent_uuid": "4a9a3d73-bcef-49b3-b411-d8908c59027e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc78ab0f-9fc6-4d19-994c-39c92ed20123",
                  "parent_uuid": "e894c6f5-68f7-4c8f-91c1-3109a263df05",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dbcbec31-18cb-4bdf-8560-963c2d9e0560",
              "parent_uuid": "4a9a3d73-bcef-49b3-b411-d8908c59027e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8de7306a-c121-47bd-988e-eeb4555448ef",
                  "parent_uuid": "dbcbec31-18cb-4bdf-8560-963c2d9e0560",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d63c5b4b-ccd0-4fd2-8e88-b504154a917a",
              "parent_uuid": "4a9a3d73-bcef-49b3-b411-d8908c59027e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9619183c-f5be-444b-a59b-82a3f381be63",
                  "parent_uuid": "d63c5b4b-ccd0-4fd2-8e88-b504154a917a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f50aa10a-bbae-412f-9efd-dae4954e4028",
              "parent_uuid": "4a9a3d73-bcef-49b3-b411-d8908c59027e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f396f306-88b8-4a44-a509-b0582b63fb57",
                  "parent_uuid": "f50aa10a-bbae-412f-9efd-dae4954e4028",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d1a8a88a-88d6-422a-8e0d-c4bf7c870b4a",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee7a206f-f6b7-44b1-b117-a1a861286f46",
              "parent_uuid": "d1a8a88a-88d6-422a-8e0d-c4bf7c870b4a",
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
          "uuid": "766395bd-8075-4981-98af-43a3f0871a16",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca904dec-6e70-446b-a74d-70c21cf1e5cd",
              "parent_uuid": "766395bd-8075-4981-98af-43a3f0871a16",
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
          "uuid": "3bffaca6-9415-4d1a-9c35-91276bcddf06",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "959db281-f05d-4ca5-834e-d8b2777f0350",
              "parent_uuid": "3bffaca6-9415-4d1a-9c35-91276bcddf06",
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
                  "uuid": "0ee1191b-881c-4e8a-aa0e-3175c0a869cb",
                  "parent_uuid": "959db281-f05d-4ca5-834e-d8b2777f0350",
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
          "uuid": "b1d8b86a-4f0d-40ec-85eb-8dc60e004919",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c2cbfba-bfa2-4cd5-9603-bf9b549757ec",
              "parent_uuid": "b1d8b86a-4f0d-40ec-85eb-8dc60e004919",
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
          "uuid": "4536108e-b2d3-4440-a9b6-e54613471b80",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4290caab-52c3-47a9-ad51-e94acecd915b",
              "parent_uuid": "4536108e-b2d3-4440-a9b6-e54613471b80",
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
          "uuid": "31bbb146-5927-432f-956f-ec260dd2646a",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51e95b13-4aa3-4328-b960-000524f82068",
              "parent_uuid": "31bbb146-5927-432f-956f-ec260dd2646a",
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
              "uuid": "d552c41c-7cce-4a47-a6ec-460ed4195bc6",
              "parent_uuid": "31bbb146-5927-432f-956f-ec260dd2646a",
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
              "uuid": "5026a22a-f1d6-4372-a67d-2f5f5ba004b9",
              "parent_uuid": "31bbb146-5927-432f-956f-ec260dd2646a",
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
              "uuid": "e6080834-c65e-4ed6-9999-00d35a56b910",
              "parent_uuid": "31bbb146-5927-432f-956f-ec260dd2646a",
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
              "uuid": "72fea82f-3630-40bc-92a1-2da10ef5daac",
              "parent_uuid": "31bbb146-5927-432f-956f-ec260dd2646a",
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
              "uuid": "c905b191-3846-47dd-aa96-7d7ccae6fd18",
              "parent_uuid": "31bbb146-5927-432f-956f-ec260dd2646a",
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
          "uuid": "bc4572e7-1798-47f3-918a-1bc5131c2c3c",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "e802b055-07f0-4430-88d8-9930bc049cfb",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fc73e36c-2d39-4096-bd2d-b8d563fe30df",
              "parent_uuid": "e802b055-07f0-4430-88d8-9930bc049cfb",
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
              "uuid": "ec20ee79-e883-4f8d-a04a-68eeede879bd",
              "parent_uuid": "e802b055-07f0-4430-88d8-9930bc049cfb",
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
              "uuid": "4f1bb973-8785-4a5f-a0b3-e458f04158f6",
              "parent_uuid": "e802b055-07f0-4430-88d8-9930bc049cfb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e61c33ca-c856-4319-9f97-7a5fd84908a4",
                  "parent_uuid": "4f1bb973-8785-4a5f-a0b3-e458f04158f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "265d17aa-bf73-49f1-8429-50259f4ff982",
              "parent_uuid": "e802b055-07f0-4430-88d8-9930bc049cfb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d628b227-9df7-49fd-bd4e-6c86d593f2ab",
                  "parent_uuid": "265d17aa-bf73-49f1-8429-50259f4ff982",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45a5e9e2-1e94-4f22-a1b1-52bbf3b1b2c7",
              "parent_uuid": "e802b055-07f0-4430-88d8-9930bc049cfb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81b55a4a-f4ad-43df-9ed6-308d70c8465b",
                  "parent_uuid": "45a5e9e2-1e94-4f22-a1b1-52bbf3b1b2c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73aaa0aa-1748-489c-b532-ca7093ab76c2",
              "parent_uuid": "e802b055-07f0-4430-88d8-9930bc049cfb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "edb2de29-b37d-4475-bc6c-5106b721bfa0",
                  "parent_uuid": "73aaa0aa-1748-489c-b532-ca7093ab76c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a3f82176-f49d-4a4c-9130-b389730ceae5",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19b0fd13-1538-423e-9bb9-4bc17c1f7ac7",
              "parent_uuid": "a3f82176-f49d-4a4c-9130-b389730ceae5",
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
              "uuid": "45b29129-bdf9-43e9-99ff-9e0b8504b5bd",
              "parent_uuid": "a3f82176-f49d-4a4c-9130-b389730ceae5",
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
              "uuid": "24fc3cc3-9a6d-4898-b590-be627f829aa0",
              "parent_uuid": "a3f82176-f49d-4a4c-9130-b389730ceae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b402673f-f98d-49e0-8a91-68b4aabbf0f0",
                  "parent_uuid": "24fc3cc3-9a6d-4898-b590-be627f829aa0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e489c88-47ed-4554-8330-32beb4517098",
              "parent_uuid": "a3f82176-f49d-4a4c-9130-b389730ceae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf719246-f454-49ee-888c-118ed0002d34",
                  "parent_uuid": "2e489c88-47ed-4554-8330-32beb4517098",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44adbafc-ff24-48c2-82f2-9e3ea09a1e59",
              "parent_uuid": "a3f82176-f49d-4a4c-9130-b389730ceae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed3c4c5e-1ef4-43c6-8614-f56575f0180d",
                  "parent_uuid": "44adbafc-ff24-48c2-82f2-9e3ea09a1e59",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e8bea100-5e1e-4044-94d9-337395f8cef5",
              "parent_uuid": "a3f82176-f49d-4a4c-9130-b389730ceae5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6101e5f0-bc22-4f16-adba-786113147ae6",
                  "parent_uuid": "e8bea100-5e1e-4044-94d9-337395f8cef5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5d8fa9ad-caf3-4109-88c4-c98857ddb556",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d719113c-fc22-456a-8d6e-5e10276e484d",
              "parent_uuid": "5d8fa9ad-caf3-4109-88c4-c98857ddb556",
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
              "uuid": "9d37da64-f1a9-41b8-afe4-61222d0ad0eb",
              "parent_uuid": "5d8fa9ad-caf3-4109-88c4-c98857ddb556",
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
              "uuid": "ff78b37d-0d8a-4592-bb1c-ce3106802ed2",
              "parent_uuid": "5d8fa9ad-caf3-4109-88c4-c98857ddb556",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2983fe11-eaa8-4bba-af6a-b533f89f344b",
                  "parent_uuid": "ff78b37d-0d8a-4592-bb1c-ce3106802ed2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7ad3718-cc3b-4675-86c5-35c050b5fcae",
              "parent_uuid": "5d8fa9ad-caf3-4109-88c4-c98857ddb556",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3bb789ae-a9fd-485b-89a9-1b5048e0f1cb",
                  "parent_uuid": "f7ad3718-cc3b-4675-86c5-35c050b5fcae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "348e6e88-4673-44b9-8e4d-b51aa81d4bc3",
              "parent_uuid": "5d8fa9ad-caf3-4109-88c4-c98857ddb556",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a231c817-6c4d-4368-9e91-449f7d3fe422",
                  "parent_uuid": "348e6e88-4673-44b9-8e4d-b51aa81d4bc3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d748bd09-a6e5-4077-9587-4b2f78114476",
              "parent_uuid": "5d8fa9ad-caf3-4109-88c4-c98857ddb556",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57766bf4-76ff-4a26-aec8-de0eb50af73d",
                  "parent_uuid": "d748bd09-a6e5-4077-9587-4b2f78114476",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "39468362-aaa9-4294-a179-5872a0b49306",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ede20ed-10b1-4ace-a947-539b04521bf3",
              "parent_uuid": "39468362-aaa9-4294-a179-5872a0b49306",
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
              "uuid": "2b967dbb-4989-4a37-adf0-2d6d50c5388f",
              "parent_uuid": "39468362-aaa9-4294-a179-5872a0b49306",
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
              "uuid": "f79afecc-e3b3-4e94-9ba2-6f5a47359dff",
              "parent_uuid": "39468362-aaa9-4294-a179-5872a0b49306",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bfc66617-aa2c-4d3d-be0c-c391e9cffac5",
                  "parent_uuid": "f79afecc-e3b3-4e94-9ba2-6f5a47359dff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "79b6b009-c7dd-4082-ada1-4a4a2f5fee3c",
              "parent_uuid": "39468362-aaa9-4294-a179-5872a0b49306",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60cc1f1d-b661-415b-8288-be04e0b214c5",
                  "parent_uuid": "79b6b009-c7dd-4082-ada1-4a4a2f5fee3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "832193d9-c341-4e0d-8fc3-2b3a7e5fa43a",
              "parent_uuid": "39468362-aaa9-4294-a179-5872a0b49306",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "177cdf65-0ad7-48f6-a1f1-1c4810c593e5",
                  "parent_uuid": "832193d9-c341-4e0d-8fc3-2b3a7e5fa43a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d466e4cc-6920-465b-ad62-730d4b27f6bf",
              "parent_uuid": "39468362-aaa9-4294-a179-5872a0b49306",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca5e4943-1d50-4f4b-bfd6-c630bb1d2a0b",
                  "parent_uuid": "d466e4cc-6920-465b-ad62-730d4b27f6bf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "22081bd2-0935-43c4-b0c9-d627198e0e60",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3939cc64-f1be-4dd0-9fd9-80249edeed0b",
              "parent_uuid": "22081bd2-0935-43c4-b0c9-d627198e0e60",
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
              "uuid": "79dacd09-ae14-4f51-8a1b-d2e70d4cc30c",
              "parent_uuid": "22081bd2-0935-43c4-b0c9-d627198e0e60",
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
              "uuid": "0f5d847b-6a76-4cf9-99b5-f04402c07404",
              "parent_uuid": "22081bd2-0935-43c4-b0c9-d627198e0e60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c46209cc-a8d1-471d-b999-30f64bd7533f",
                  "parent_uuid": "0f5d847b-6a76-4cf9-99b5-f04402c07404",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "96bfd3c3-2d48-42d8-9194-a4396c3ca44c",
              "parent_uuid": "22081bd2-0935-43c4-b0c9-d627198e0e60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bb1a37b-d9c1-4bcb-9f9c-bb7c41899447",
                  "parent_uuid": "96bfd3c3-2d48-42d8-9194-a4396c3ca44c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91635ff9-0ed4-4347-81bf-8b4f204ccb75",
              "parent_uuid": "22081bd2-0935-43c4-b0c9-d627198e0e60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e4a70a18-3a15-4ccb-8f50-455eaa1f0043",
                  "parent_uuid": "91635ff9-0ed4-4347-81bf-8b4f204ccb75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7d67e4ec-88d5-4fed-93cd-ee7937d9d8c2",
              "parent_uuid": "22081bd2-0935-43c4-b0c9-d627198e0e60",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b5bd08a-d3be-4278-9bc7-35964ca92120",
                  "parent_uuid": "7d67e4ec-88d5-4fed-93cd-ee7937d9d8c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2b2b6762-57b6-4e7c-ac2e-1334dd0d3f6d",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5d74267-c870-44fb-8d20-608e999c8521",
              "parent_uuid": "2b2b6762-57b6-4e7c-ac2e-1334dd0d3f6d",
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
              "uuid": "aa5e047b-08a0-4816-a756-51f059794410",
              "parent_uuid": "2b2b6762-57b6-4e7c-ac2e-1334dd0d3f6d",
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
              "uuid": "5a5a28e4-f1cc-45de-97ad-446ff52b3ab6",
              "parent_uuid": "2b2b6762-57b6-4e7c-ac2e-1334dd0d3f6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e1d5d7c-0537-4386-a186-6ef958614a94",
                  "parent_uuid": "5a5a28e4-f1cc-45de-97ad-446ff52b3ab6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d2b91f67-e3a6-4107-b1da-6715bf8fc07a",
              "parent_uuid": "2b2b6762-57b6-4e7c-ac2e-1334dd0d3f6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47179d93-12c9-49ec-a929-d4088c73f0d4",
                  "parent_uuid": "d2b91f67-e3a6-4107-b1da-6715bf8fc07a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2753326e-f46c-4432-b249-a11051b1240f",
              "parent_uuid": "2b2b6762-57b6-4e7c-ac2e-1334dd0d3f6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "66a28181-8df0-4fae-b347-dbfe1cf7071c",
                  "parent_uuid": "2753326e-f46c-4432-b249-a11051b1240f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5583e73-a5fa-41d5-a0e7-07bdb5883639",
              "parent_uuid": "2b2b6762-57b6-4e7c-ac2e-1334dd0d3f6d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9dd18439-79a5-40d5-99dc-955a75e7c6e2",
                  "parent_uuid": "f5583e73-a5fa-41d5-a0e7-07bdb5883639",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dd4d8703-50e3-4820-ac0c-426705c17e7a",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7cd2df9c-5fa0-4d43-b95a-ab86f6f49e67",
              "parent_uuid": "dd4d8703-50e3-4820-ac0c-426705c17e7a",
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
          "uuid": "2f7557b2-80b2-4369-bfa1-daef6f3e1529",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e1e86c6-51cc-4bab-8dd3-cdf943f93cd4",
              "parent_uuid": "2f7557b2-80b2-4369-bfa1-daef6f3e1529",
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
          "uuid": "0038041d-b067-468b-8643-b5d71dfdb5d2",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc4fdeae-8532-423d-bdd8-fc7bdc196528",
              "parent_uuid": "0038041d-b067-468b-8643-b5d71dfdb5d2",
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
                  "uuid": "f1c6f134-ea95-413d-b630-67a95df946f1",
                  "parent_uuid": "dc4fdeae-8532-423d-bdd8-fc7bdc196528",
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
          "uuid": "e0a2e2c0-cb48-4d17-86e3-8bfda13e7af8",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e30fc57e-e956-4555-a78a-3050838768d9",
              "parent_uuid": "e0a2e2c0-cb48-4d17-86e3-8bfda13e7af8",
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
          "uuid": "9f1931e4-f514-4cda-a5be-04cc00de09dc",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4d537ac0-2cd7-4fa8-abb1-94f4027f6cc0",
              "parent_uuid": "9f1931e4-f514-4cda-a5be-04cc00de09dc",
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
          "uuid": "7e8df89b-8486-4add-a399-e248952a2411",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0fab91e6-e7bc-4ee8-b71b-027952f4820a",
              "parent_uuid": "7e8df89b-8486-4add-a399-e248952a2411",
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
              "uuid": "a2307e9c-3e14-4ec9-93f6-da79ca535d1c",
              "parent_uuid": "7e8df89b-8486-4add-a399-e248952a2411",
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
              "uuid": "1f929e3e-966c-4cbb-93b3-53c4b08c0e06",
              "parent_uuid": "7e8df89b-8486-4add-a399-e248952a2411",
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
              "uuid": "2255c13b-fce1-4d34-ba8e-c7c4d7d1c64a",
              "parent_uuid": "7e8df89b-8486-4add-a399-e248952a2411",
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
              "uuid": "23ed9f65-9311-4826-9a0c-67541ef49481",
              "parent_uuid": "7e8df89b-8486-4add-a399-e248952a2411",
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
          "uuid": "47e743e2-f01d-4a84-af75-7c5a7d9a518c",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b25f5c1c-95bc-486b-b7d8-79aea94571c5",
              "parent_uuid": "47e743e2-f01d-4a84-af75-7c5a7d9a518c",
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
              "uuid": "ceef008e-bb9e-4692-9e01-3bf4c829c94e",
              "parent_uuid": "47e743e2-f01d-4a84-af75-7c5a7d9a518c",
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
              "uuid": "2fcd98d2-45cf-4448-a1fe-7e673a8bbc62",
              "parent_uuid": "47e743e2-f01d-4a84-af75-7c5a7d9a518c",
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
              "uuid": "5f792507-ca9b-495a-991d-13b792080385",
              "parent_uuid": "47e743e2-f01d-4a84-af75-7c5a7d9a518c",
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
              "uuid": "d54e056d-4175-4aaa-982c-ace32b440be4",
              "parent_uuid": "47e743e2-f01d-4a84-af75-7c5a7d9a518c",
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
          "uuid": "35613b53-aef9-483f-8f95-04c54378a580",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bdbc8cc2-c3b9-40a8-bd9f-ac4de31b8b1b",
              "parent_uuid": "35613b53-aef9-483f-8f95-04c54378a580",
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
              "uuid": "3a63f73b-0793-44cc-a070-a7c3b1bc1ea0",
              "parent_uuid": "35613b53-aef9-483f-8f95-04c54378a580",
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
              "uuid": "593456a6-f821-4121-a3ec-07334d08809c",
              "parent_uuid": "35613b53-aef9-483f-8f95-04c54378a580",
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
              "uuid": "502e5177-0317-48e9-98d3-4248f8119a56",
              "parent_uuid": "35613b53-aef9-483f-8f95-04c54378a580",
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
              "uuid": "9301b414-5015-496b-9587-89932a1c2ab1",
              "parent_uuid": "35613b53-aef9-483f-8f95-04c54378a580",
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
          "uuid": "cb0a7aaa-c62d-497c-af07-d92bb05a01e5",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "352f3b5a-a112-4df7-9ddf-7f7487eaeb77",
              "parent_uuid": "cb0a7aaa-c62d-497c-af07-d92bb05a01e5",
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
              "uuid": "7783e443-82d2-4e6c-b397-211e415cc389",
              "parent_uuid": "cb0a7aaa-c62d-497c-af07-d92bb05a01e5",
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
              "uuid": "72aa2027-cd93-40e1-8360-4797e1f624ab",
              "parent_uuid": "cb0a7aaa-c62d-497c-af07-d92bb05a01e5",
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
              "uuid": "183dfe89-1299-48b6-8192-5d4d29756cba",
              "parent_uuid": "cb0a7aaa-c62d-497c-af07-d92bb05a01e5",
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
              "uuid": "4229125b-d902-4941-9e59-94be8a5579ee",
              "parent_uuid": "cb0a7aaa-c62d-497c-af07-d92bb05a01e5",
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
          "uuid": "706ef080-ce46-4a96-8a96-7f7319916905",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f35c3f0-af5c-48bb-b711-06364b1aefb7",
              "parent_uuid": "706ef080-ce46-4a96-8a96-7f7319916905",
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
              "uuid": "2ca3379c-d79e-419c-90a9-dae222b6c0f4",
              "parent_uuid": "706ef080-ce46-4a96-8a96-7f7319916905",
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
              "uuid": "3a0918d5-d21f-439c-af2a-b63b67114fdd",
              "parent_uuid": "706ef080-ce46-4a96-8a96-7f7319916905",
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
              "uuid": "2179d42a-5305-4a28-bdde-9c24d28955f5",
              "parent_uuid": "706ef080-ce46-4a96-8a96-7f7319916905",
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
              "uuid": "3cc41854-91c8-4e29-b1d0-466aa8a481f3",
              "parent_uuid": "706ef080-ce46-4a96-8a96-7f7319916905",
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
          "uuid": "42ebb5b0-4be7-4cbf-b8a3-4ee66ffb63d1",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7bfe8ff8-ce76-4522-acab-973f63c235e0",
              "parent_uuid": "42ebb5b0-4be7-4cbf-b8a3-4ee66ffb63d1",
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
              "uuid": "5ee42ff6-7d85-4c05-b429-decb2d2e344a",
              "parent_uuid": "42ebb5b0-4be7-4cbf-b8a3-4ee66ffb63d1",
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
              "uuid": "423c1eac-ffc1-41d8-9405-b25a871a320c",
              "parent_uuid": "42ebb5b0-4be7-4cbf-b8a3-4ee66ffb63d1",
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
              "uuid": "0729190d-a6f1-4fd1-85dc-af6bc13f792b",
              "parent_uuid": "42ebb5b0-4be7-4cbf-b8a3-4ee66ffb63d1",
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
              "uuid": "6aa376bb-8b09-42a9-b982-02ab2b9ade44",
              "parent_uuid": "42ebb5b0-4be7-4cbf-b8a3-4ee66ffb63d1",
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
          "uuid": "641072a0-67f8-49e8-8e4c-cda6867579c8",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e5374e7-1fa3-4b87-866e-600f1d4ed838",
              "parent_uuid": "641072a0-67f8-49e8-8e4c-cda6867579c8",
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
              "uuid": "3f8a47f5-9a3e-480a-a982-adac2af11227",
              "parent_uuid": "641072a0-67f8-49e8-8e4c-cda6867579c8",
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
              "uuid": "057ee58a-6471-48b4-8188-53fd2714729a",
              "parent_uuid": "641072a0-67f8-49e8-8e4c-cda6867579c8",
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
              "uuid": "5d007a00-ed23-4d5c-bce5-8235572d779a",
              "parent_uuid": "641072a0-67f8-49e8-8e4c-cda6867579c8",
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
              "uuid": "5bd1f227-7f79-4432-b2bc-e0401a4f8268",
              "parent_uuid": "641072a0-67f8-49e8-8e4c-cda6867579c8",
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
          "uuid": "22d3793e-e674-4d3f-9bb6-699038031e79",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b101cff9-fbee-47f4-9eb1-c378ced73555",
              "parent_uuid": "22d3793e-e674-4d3f-9bb6-699038031e79",
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
              "uuid": "a1046814-21ff-4fcf-993d-2214d59a9ea5",
              "parent_uuid": "22d3793e-e674-4d3f-9bb6-699038031e79",
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
              "uuid": "35ec0954-a76a-44af-8a5a-fce870db63b4",
              "parent_uuid": "22d3793e-e674-4d3f-9bb6-699038031e79",
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
              "uuid": "d4ef7060-1425-4a71-99ca-3e053c65a1ba",
              "parent_uuid": "22d3793e-e674-4d3f-9bb6-699038031e79",
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
              "uuid": "666c1c40-a8cb-4de2-9c74-5d801e6b959e",
              "parent_uuid": "22d3793e-e674-4d3f-9bb6-699038031e79",
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
          "uuid": "966f6a66-03fc-4cf0-a7c9-dc983e1fb713",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d12b5dc-3cc2-4e11-a562-ea0e3e270865",
              "parent_uuid": "966f6a66-03fc-4cf0-a7c9-dc983e1fb713",
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
              "uuid": "ba2cc782-56bc-46ff-a1dd-53abf1a8faaa",
              "parent_uuid": "966f6a66-03fc-4cf0-a7c9-dc983e1fb713",
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
              "uuid": "fe856aba-3350-43a1-8bf4-96c283132d06",
              "parent_uuid": "966f6a66-03fc-4cf0-a7c9-dc983e1fb713",
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
              "uuid": "600031c6-4ee6-4c5b-9313-3068507f6ff3",
              "parent_uuid": "966f6a66-03fc-4cf0-a7c9-dc983e1fb713",
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
              "uuid": "29009eb6-7819-450d-9c15-849e3b071c7c",
              "parent_uuid": "966f6a66-03fc-4cf0-a7c9-dc983e1fb713",
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
          "uuid": "891902d5-b18c-4f0b-8e00-aaebe38f24d6",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "629e3c61-7147-4c13-bd1d-a81dc075b60b",
              "parent_uuid": "891902d5-b18c-4f0b-8e00-aaebe38f24d6",
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
          "uuid": "5ff0fbf8-aa7c-4b3e-b9df-7f6006fa883f",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "174997b2-6dee-4350-af2d-a197df3f4b84",
              "parent_uuid": "5ff0fbf8-aa7c-4b3e-b9df-7f6006fa883f",
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
          "uuid": "435af810-e2b5-4e7b-9a73-2c064cb3d8f0",
          "parent_uuid": "26a5817f-2647-4571-b328-d19f4a91b7e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1fa618ec-3467-4c37-8133-897bb385be9c",
              "parent_uuid": "435af810-e2b5-4e7b-9a73-2c064cb3d8f0",
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
                  "uuid": "54147ab9-c2e8-4c46-808d-27bc0933957d",
                  "parent_uuid": "1fa618ec-3467-4c37-8133-897bb385be9c",
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
	,dbo.fu_Basic_LTRIM(dbo.fu_Basic_RTRIM(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
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

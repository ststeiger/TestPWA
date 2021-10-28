
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
  "uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "d1f2c1cb-6f0d-45f0-b992-a19a09aa7d29",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "87752781-27c9-4cfa-bba3-5652d5a1ee24",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "017534b9-70a3-453c-be51-b5de94caf86e",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "28fc23c0-09d3-415a-94af-23c7d90fd6b1",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "6a768783-754e-4df8-bee9-e99b77e99da3",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "93cddda4-f547-4a4e-8e68-e588ed2d8cb5",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "9393d345-99e0-4e86-93cf-19b3cc367692",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
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
      "uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
      "parent_uuid": "e0ba9a47-7e5b-47f1-b548-0be14412bcc8",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "7c49a91f-f5df-4554-966c-1c9ce9824f92",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "5acc459b-30d1-486a-8562-b274aa9b7620",
              "parent_uuid": "7c49a91f-f5df-4554-966c-1c9ce9824f92",
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
              "uuid": "e7f9e9e1-6102-4fcb-a67a-202c6be9e3e7",
              "parent_uuid": "7c49a91f-f5df-4554-966c-1c9ce9824f92",
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
              "uuid": "d9bb0849-667a-4049-9594-ed205f6e9ff7",
              "parent_uuid": "7c49a91f-f5df-4554-966c-1c9ce9824f92",
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
              "uuid": "9c7c934b-3079-4321-89ac-5a84e30e3f03",
              "parent_uuid": "7c49a91f-f5df-4554-966c-1c9ce9824f92",
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
          "uuid": "2d1058a7-5c49-499a-b59b-f710e11c48d6",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "d47a97bd-c595-4997-8670-6eeb56eaac6b",
              "parent_uuid": "2d1058a7-5c49-499a-b59b-f710e11c48d6",
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
              "uuid": "66a7fd5f-9a53-4d43-8e79-cea0694c59b6",
              "parent_uuid": "2d1058a7-5c49-499a-b59b-f710e11c48d6",
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
              "uuid": "bea8478d-fd51-482e-abe4-d887ec99a238",
              "parent_uuid": "2d1058a7-5c49-499a-b59b-f710e11c48d6",
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
              "uuid": "f6130d6b-ec28-4b0b-b19d-db27730320c8",
              "parent_uuid": "2d1058a7-5c49-499a-b59b-f710e11c48d6",
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
          "uuid": "c71234b7-da3f-47ab-bcbf-9a48598d1102",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "cfd0770e-a46e-402b-8492-fef54f1dd0f9",
              "parent_uuid": "c71234b7-da3f-47ab-bcbf-9a48598d1102",
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
              "uuid": "cdbf9e12-2a04-4f22-a763-52a17e468ee0",
              "parent_uuid": "c71234b7-da3f-47ab-bcbf-9a48598d1102",
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
              "uuid": "6ef72286-1b89-4a09-86cb-4f3c9448e0d3",
              "parent_uuid": "c71234b7-da3f-47ab-bcbf-9a48598d1102",
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
              "uuid": "78fd751a-39b5-4f63-b185-a891de436317",
              "parent_uuid": "c71234b7-da3f-47ab-bcbf-9a48598d1102",
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
              "uuid": "14cc94c8-2986-44ff-80b0-70ff6fd2e19a",
              "parent_uuid": "c71234b7-da3f-47ab-bcbf-9a48598d1102",
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
              "uuid": "88b5fcd3-8b2e-4644-b2e1-11467ba3ff92",
              "parent_uuid": "c71234b7-da3f-47ab-bcbf-9a48598d1102",
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
          "uuid": "87a8d291-9de7-4484-abe7-319527c63de9",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c1f6c766-c157-4c9b-8b4e-9d516681841e",
              "parent_uuid": "87a8d291-9de7-4484-abe7-319527c63de9",
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
          "uuid": "1ca82224-501e-45e2-8a17-0b7bbdda6160",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c9b1d006-98c7-493d-8fd8-9cb4bba4af9f",
              "parent_uuid": "1ca82224-501e-45e2-8a17-0b7bbdda6160",
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
              "uuid": "d209025c-96a9-4043-833b-1453f1118613",
              "parent_uuid": "1ca82224-501e-45e2-8a17-0b7bbdda6160",
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
              "uuid": "c06b36c9-2fb8-44cc-959c-ebfc8e2bc190",
              "parent_uuid": "1ca82224-501e-45e2-8a17-0b7bbdda6160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34e8fea4-eeea-42ee-825f-3bbc177197ec",
                  "parent_uuid": "c06b36c9-2fb8-44cc-959c-ebfc8e2bc190",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a9322f3c-e862-436f-b449-b6c9d629254a",
              "parent_uuid": "1ca82224-501e-45e2-8a17-0b7bbdda6160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9abbc82f-6aba-4715-ae5c-a03724d94508",
                  "parent_uuid": "a9322f3c-e862-436f-b449-b6c9d629254a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41af2756-eea6-4045-8992-5463fbb98c69",
              "parent_uuid": "1ca82224-501e-45e2-8a17-0b7bbdda6160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7e7ec06-9527-40d4-8970-0f3dadea620c",
                  "parent_uuid": "41af2756-eea6-4045-8992-5463fbb98c69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "818d4499-6515-4639-bd99-615fedac505b",
              "parent_uuid": "1ca82224-501e-45e2-8a17-0b7bbdda6160",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "030bbd56-da8a-497d-baea-55b33c21182e",
                  "parent_uuid": "818d4499-6515-4639-bd99-615fedac505b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2ecc6e14-da74-4ed3-ac67-a94c5b11cf39",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ef20932-2bea-412d-9ec8-13b5f445e5e4",
              "parent_uuid": "2ecc6e14-da74-4ed3-ac67-a94c5b11cf39",
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
              "uuid": "00897deb-7bfb-45ba-b21e-4f1c7f9392f9",
              "parent_uuid": "2ecc6e14-da74-4ed3-ac67-a94c5b11cf39",
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
              "uuid": "5947b473-a4ff-46d9-bc85-008bac7f5695",
              "parent_uuid": "2ecc6e14-da74-4ed3-ac67-a94c5b11cf39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0084b446-c0e2-4ad4-9c41-730940a18160",
                  "parent_uuid": "5947b473-a4ff-46d9-bc85-008bac7f5695",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b1f9cda-cabe-4238-8116-3d2b7aba2b56",
              "parent_uuid": "2ecc6e14-da74-4ed3-ac67-a94c5b11cf39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b31c6dc4-18dd-45c0-a47b-04620a6d28ec",
                  "parent_uuid": "3b1f9cda-cabe-4238-8116-3d2b7aba2b56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cad7150e-1a07-4d86-9936-23760f8a9f9d",
              "parent_uuid": "2ecc6e14-da74-4ed3-ac67-a94c5b11cf39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "787a2984-17e2-464a-bd08-795252a79357",
                  "parent_uuid": "cad7150e-1a07-4d86-9936-23760f8a9f9d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e68ac4ec-f78d-4a0a-80af-86d87c9c5d16",
              "parent_uuid": "2ecc6e14-da74-4ed3-ac67-a94c5b11cf39",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9dc0078b-85da-46bf-be11-222f3510f4c6",
                  "parent_uuid": "e68ac4ec-f78d-4a0a-80af-86d87c9c5d16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ed8f836-4c23-462d-bcd4-fd87b1ef0dcd",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07f8c6ef-95fa-4180-a907-f4c5280b1328",
              "parent_uuid": "1ed8f836-4c23-462d-bcd4-fd87b1ef0dcd",
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
              "uuid": "d3cdc575-2f65-4eb9-9b0d-98751d9bf914",
              "parent_uuid": "1ed8f836-4c23-462d-bcd4-fd87b1ef0dcd",
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
              "uuid": "00d6ff88-152b-4567-8217-6c4eea84c54a",
              "parent_uuid": "1ed8f836-4c23-462d-bcd4-fd87b1ef0dcd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ed39173-02a6-448b-a356-13f1048c659a",
                  "parent_uuid": "00d6ff88-152b-4567-8217-6c4eea84c54a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6443025-2f24-4730-b843-ba22adb10567",
              "parent_uuid": "1ed8f836-4c23-462d-bcd4-fd87b1ef0dcd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02085466-8316-4ace-bffb-3f2fc747f77b",
                  "parent_uuid": "f6443025-2f24-4730-b843-ba22adb10567",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35e35e1d-4f0e-4733-bc39-8c39365f8083",
              "parent_uuid": "1ed8f836-4c23-462d-bcd4-fd87b1ef0dcd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01bc67b0-f14d-4c7c-87d2-23ca385f7b6e",
                  "parent_uuid": "35e35e1d-4f0e-4733-bc39-8c39365f8083",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "64355729-5843-4e33-a15f-0ada6e597a01",
              "parent_uuid": "1ed8f836-4c23-462d-bcd4-fd87b1ef0dcd",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6222355b-3a83-422a-be2a-e8c13ca63546",
                  "parent_uuid": "64355729-5843-4e33-a15f-0ada6e597a01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9478d4dc-99a1-4fc0-aabd-4d6c662a7c2d",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7645134-ec11-4b1b-924b-a01b5cbda74b",
              "parent_uuid": "9478d4dc-99a1-4fc0-aabd-4d6c662a7c2d",
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
              "uuid": "647f0cd3-78a3-4b21-920f-c19c25fb740c",
              "parent_uuid": "9478d4dc-99a1-4fc0-aabd-4d6c662a7c2d",
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
              "uuid": "6d9f72f6-335b-4180-9b1d-ef3d32b97f1d",
              "parent_uuid": "9478d4dc-99a1-4fc0-aabd-4d6c662a7c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70ea562c-084a-486e-abc9-f7afaef53b5f",
                  "parent_uuid": "6d9f72f6-335b-4180-9b1d-ef3d32b97f1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33097287-904f-489f-922c-7714142f23e0",
              "parent_uuid": "9478d4dc-99a1-4fc0-aabd-4d6c662a7c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ceae0a6c-79a7-4cbd-869c-781a5be03f0d",
                  "parent_uuid": "33097287-904f-489f-922c-7714142f23e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94371b0b-c0d9-4ece-9013-ac5a8047cf7c",
              "parent_uuid": "9478d4dc-99a1-4fc0-aabd-4d6c662a7c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "384753a6-1454-440e-bf6c-5234de75a71c",
                  "parent_uuid": "94371b0b-c0d9-4ece-9013-ac5a8047cf7c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01c4bbf1-944b-453e-ba00-b772f98f72e5",
              "parent_uuid": "9478d4dc-99a1-4fc0-aabd-4d6c662a7c2d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "095cc95a-b8f5-4af1-a5a3-ccdfa246c9ca",
                  "parent_uuid": "01c4bbf1-944b-453e-ba00-b772f98f72e5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1924ffaa-c7d3-43ab-b62c-79dee873a39e",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4677405-0fe7-4211-a318-5d8ecb2d7785",
              "parent_uuid": "1924ffaa-c7d3-43ab-b62c-79dee873a39e",
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
              "uuid": "244785b5-a012-49ec-bb4f-752e6f0e22c1",
              "parent_uuid": "1924ffaa-c7d3-43ab-b62c-79dee873a39e",
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
              "uuid": "4c9fbe72-994d-4ce5-9b44-de99cae6c9b2",
              "parent_uuid": "1924ffaa-c7d3-43ab-b62c-79dee873a39e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "204db0e7-1280-4826-8595-b3774da8c504",
                  "parent_uuid": "4c9fbe72-994d-4ce5-9b44-de99cae6c9b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "236cc5f2-1aed-4e2b-967a-e751f8e54dc8",
              "parent_uuid": "1924ffaa-c7d3-43ab-b62c-79dee873a39e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60acc224-6faa-499e-a981-d8ea70eb7f7f",
                  "parent_uuid": "236cc5f2-1aed-4e2b-967a-e751f8e54dc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6391839a-0024-47be-81ac-e3158d58c739",
              "parent_uuid": "1924ffaa-c7d3-43ab-b62c-79dee873a39e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e17c9145-f9de-4ed7-b49a-c8de5d19961d",
                  "parent_uuid": "6391839a-0024-47be-81ac-e3158d58c739",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "955fb3a4-2343-440b-808a-afc7435ec8de",
              "parent_uuid": "1924ffaa-c7d3-43ab-b62c-79dee873a39e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1950c227-9e17-4525-ab4d-a5795f4e96d6",
                  "parent_uuid": "955fb3a4-2343-440b-808a-afc7435ec8de",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4f9855f0-cecb-4660-9828-37cb1e414c09",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "612d9383-7b4a-46c5-9efe-b9e0569d1b1b",
              "parent_uuid": "4f9855f0-cecb-4660-9828-37cb1e414c09",
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
              "uuid": "31651406-c679-4ef0-b5a6-f292f6bcf76c",
              "parent_uuid": "4f9855f0-cecb-4660-9828-37cb1e414c09",
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
              "uuid": "61783206-16f4-48ac-a941-64b97f3bd391",
              "parent_uuid": "4f9855f0-cecb-4660-9828-37cb1e414c09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04523ff0-4d63-4193-9599-8122f1cf0e61",
                  "parent_uuid": "61783206-16f4-48ac-a941-64b97f3bd391",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1530fa49-3633-4678-b281-412bc19c2685",
              "parent_uuid": "4f9855f0-cecb-4660-9828-37cb1e414c09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f11587e-6ffe-4c40-9de1-0b0c11a0fc9d",
                  "parent_uuid": "1530fa49-3633-4678-b281-412bc19c2685",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9a77eb0-1817-4740-88c0-1066282cea44",
              "parent_uuid": "4f9855f0-cecb-4660-9828-37cb1e414c09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6934b975-db31-4830-96a9-88c9729e91a8",
                  "parent_uuid": "d9a77eb0-1817-4740-88c0-1066282cea44",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bbf23663-428b-4a82-a246-85cf95157a44",
              "parent_uuid": "4f9855f0-cecb-4660-9828-37cb1e414c09",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03d62367-507b-44da-b6cc-413392313e9e",
                  "parent_uuid": "bbf23663-428b-4a82-a246-85cf95157a44",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7789dd34-8a2e-444d-87ef-17b452775b61",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa58f1a2-400d-4d21-a2f9-96cbc7d0dac7",
              "parent_uuid": "7789dd34-8a2e-444d-87ef-17b452775b61",
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
              "uuid": "22f097ee-2f26-4062-956f-d3e8ebb9f3a9",
              "parent_uuid": "7789dd34-8a2e-444d-87ef-17b452775b61",
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
              "uuid": "5141f802-3205-4740-94f5-8baea144da72",
              "parent_uuid": "7789dd34-8a2e-444d-87ef-17b452775b61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09bfb64e-654f-49df-b2f5-561e60321c2c",
                  "parent_uuid": "5141f802-3205-4740-94f5-8baea144da72",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51b8a0d0-ee9a-4ed8-894b-efa7cf77390f",
              "parent_uuid": "7789dd34-8a2e-444d-87ef-17b452775b61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a05b3cb1-5216-4c00-82b7-531eba27d1dc",
                  "parent_uuid": "51b8a0d0-ee9a-4ed8-894b-efa7cf77390f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8d2646e-6121-4735-b1e6-bba8231b58de",
              "parent_uuid": "7789dd34-8a2e-444d-87ef-17b452775b61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70c10175-56c2-4041-bcd3-0c8877e896ec",
                  "parent_uuid": "c8d2646e-6121-4735-b1e6-bba8231b58de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83ab891e-d221-4ac4-8ec6-0ae958231f60",
              "parent_uuid": "7789dd34-8a2e-444d-87ef-17b452775b61",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2e0cee5-1171-440c-95ae-75b655df8fdc",
                  "parent_uuid": "83ab891e-d221-4ac4-8ec6-0ae958231f60",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84311a32-f867-4a53-ada1-a3beb9e5c44e",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f107a3c-57f4-47b7-bd5f-73aedd59f558",
              "parent_uuid": "84311a32-f867-4a53-ada1-a3beb9e5c44e",
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
              "uuid": "284167ab-241e-49d2-90db-43fcc7dfbb76",
              "parent_uuid": "84311a32-f867-4a53-ada1-a3beb9e5c44e",
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
              "uuid": "698a323f-9844-4f89-8101-6b2dfde8c118",
              "parent_uuid": "84311a32-f867-4a53-ada1-a3beb9e5c44e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "989ef99f-abac-426c-a341-b3794dfa79aa",
                  "parent_uuid": "698a323f-9844-4f89-8101-6b2dfde8c118",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd380f90-5889-4587-a41b-9b5c6d7fb181",
              "parent_uuid": "84311a32-f867-4a53-ada1-a3beb9e5c44e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "feef5c2c-381f-4e0e-b3fb-a469ec339f9d",
                  "parent_uuid": "dd380f90-5889-4587-a41b-9b5c6d7fb181",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "288fee7b-ee09-4953-80e0-dcbcb311f1f1",
              "parent_uuid": "84311a32-f867-4a53-ada1-a3beb9e5c44e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0114cdcd-1b39-4187-9690-8389f9d99312",
                  "parent_uuid": "288fee7b-ee09-4953-80e0-dcbcb311f1f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09f60309-5a36-4341-a7f2-440526635faf",
              "parent_uuid": "84311a32-f867-4a53-ada1-a3beb9e5c44e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1c8bc84-cf8b-4e48-9901-e71d6e47feff",
                  "parent_uuid": "09f60309-5a36-4341-a7f2-440526635faf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e6070a9-2703-46bf-aae0-7d09e47eb11f",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00b338ec-6c14-44bb-bd87-12aa6fead9cd",
              "parent_uuid": "2e6070a9-2703-46bf-aae0-7d09e47eb11f",
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
              "uuid": "9450377a-a222-4535-94e8-8e286e23b58f",
              "parent_uuid": "2e6070a9-2703-46bf-aae0-7d09e47eb11f",
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
              "uuid": "492acda9-50d0-4eec-bba1-7e134fd4eefc",
              "parent_uuid": "2e6070a9-2703-46bf-aae0-7d09e47eb11f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dd3c1b42-a3d5-4713-b743-979fdd0fe8e9",
                  "parent_uuid": "492acda9-50d0-4eec-bba1-7e134fd4eefc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e4532a4-963e-4ffc-aba8-ed3028d8315c",
              "parent_uuid": "2e6070a9-2703-46bf-aae0-7d09e47eb11f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de1ad507-1bb7-4b0d-8447-3459d56a0450",
                  "parent_uuid": "6e4532a4-963e-4ffc-aba8-ed3028d8315c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5ce8aa3-f0ae-4299-8801-5bad6d55f295",
              "parent_uuid": "2e6070a9-2703-46bf-aae0-7d09e47eb11f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f42e9b9-bec7-4eb7-90ed-11697eb3cd62",
                  "parent_uuid": "d5ce8aa3-f0ae-4299-8801-5bad6d55f295",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a7bba75c-c832-42c1-809f-447d6bd1ba61",
              "parent_uuid": "2e6070a9-2703-46bf-aae0-7d09e47eb11f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81f8d1f4-e858-4341-bd11-6a1d72302f1a",
                  "parent_uuid": "a7bba75c-c832-42c1-809f-447d6bd1ba61",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bfb2fe49-97f5-4497-b684-24f7eae202ac",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b18052c2-0e57-4ea9-a6b8-18e7e4a9e337",
              "parent_uuid": "bfb2fe49-97f5-4497-b684-24f7eae202ac",
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
              "uuid": "11b78af4-596b-4218-ba4b-942d8d6eaef4",
              "parent_uuid": "bfb2fe49-97f5-4497-b684-24f7eae202ac",
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
              "uuid": "6b9304e6-978d-46f1-87b3-0d8519b29b75",
              "parent_uuid": "bfb2fe49-97f5-4497-b684-24f7eae202ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ee32aff-d61b-48c2-8868-b56649d7a73a",
                  "parent_uuid": "6b9304e6-978d-46f1-87b3-0d8519b29b75",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "73f6f384-0c12-4585-9dc8-7b9c5d01e7d6",
              "parent_uuid": "bfb2fe49-97f5-4497-b684-24f7eae202ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37369d6b-980b-4d44-b52c-a9e49b059550",
                  "parent_uuid": "73f6f384-0c12-4585-9dc8-7b9c5d01e7d6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c47276cc-9203-4755-8e6f-27d3b798b1ff",
              "parent_uuid": "bfb2fe49-97f5-4497-b684-24f7eae202ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e711e5c-d53a-4955-98b0-ff92f4324cef",
                  "parent_uuid": "c47276cc-9203-4755-8e6f-27d3b798b1ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f6efbba-cf0b-4ea8-8cf2-b517c12eb1ea",
              "parent_uuid": "bfb2fe49-97f5-4497-b684-24f7eae202ac",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d5025cd-f946-4830-9f43-23671ea51aef",
                  "parent_uuid": "7f6efbba-cf0b-4ea8-8cf2-b517c12eb1ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "03189251-ade8-4310-b7e3-13dfd667a6e4",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68993f2a-da11-48a0-b876-223639e7136e",
              "parent_uuid": "03189251-ade8-4310-b7e3-13dfd667a6e4",
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
              "uuid": "dc412192-491e-4f8e-8d2e-4f6c8cb0e86f",
              "parent_uuid": "03189251-ade8-4310-b7e3-13dfd667a6e4",
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
              "uuid": "52e66890-1417-4b2b-87c5-29aeb63c8f24",
              "parent_uuid": "03189251-ade8-4310-b7e3-13dfd667a6e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d9ee60b-31dc-4044-be2f-ebedfa64bc77",
                  "parent_uuid": "52e66890-1417-4b2b-87c5-29aeb63c8f24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58cd6e56-46ca-4192-9917-9e81204432a1",
              "parent_uuid": "03189251-ade8-4310-b7e3-13dfd667a6e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1bc12e09-d898-48be-9702-2b83f821066d",
                  "parent_uuid": "58cd6e56-46ca-4192-9917-9e81204432a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b67f45f-5240-41dd-815e-c94148c1a3ea",
              "parent_uuid": "03189251-ade8-4310-b7e3-13dfd667a6e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4c9a23a-6604-4a6f-8361-8588977be121",
                  "parent_uuid": "4b67f45f-5240-41dd-815e-c94148c1a3ea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5b413f3-8dd7-4324-b858-58d9b15a2ec9",
              "parent_uuid": "03189251-ade8-4310-b7e3-13dfd667a6e4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "669f5d47-426d-45db-885a-e3676ac4b837",
                  "parent_uuid": "d5b413f3-8dd7-4324-b858-58d9b15a2ec9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c354f25-f6a6-4778-81c1-e0cd3dda8bae",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f385118-16cb-431c-9940-781456383027",
              "parent_uuid": "0c354f25-f6a6-4778-81c1-e0cd3dda8bae",
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
              "uuid": "f8824850-3666-44ae-81e6-9257f75a11d4",
              "parent_uuid": "0c354f25-f6a6-4778-81c1-e0cd3dda8bae",
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
              "uuid": "6949420b-5bc8-41f6-99a7-ed4b9a38cb82",
              "parent_uuid": "0c354f25-f6a6-4778-81c1-e0cd3dda8bae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5eb62aa-b5b7-4358-b623-74d4fcd709fe",
                  "parent_uuid": "6949420b-5bc8-41f6-99a7-ed4b9a38cb82",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b6466c5-fa40-4812-834d-fb1997cfc0d0",
              "parent_uuid": "0c354f25-f6a6-4778-81c1-e0cd3dda8bae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b24a3ab2-10db-4e92-837c-e8c9541e58d6",
                  "parent_uuid": "0b6466c5-fa40-4812-834d-fb1997cfc0d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00e67836-a181-4491-bb64-acfe25373bdf",
              "parent_uuid": "0c354f25-f6a6-4778-81c1-e0cd3dda8bae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81aa48ce-f9f5-43a3-a6b2-94d8cc66dc93",
                  "parent_uuid": "00e67836-a181-4491-bb64-acfe25373bdf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c7908e2-492f-4e7f-9897-41bb33f1b54f",
              "parent_uuid": "0c354f25-f6a6-4778-81c1-e0cd3dda8bae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57512cbd-daeb-45b6-aa1e-7d990b53eb88",
                  "parent_uuid": "9c7908e2-492f-4e7f-9897-41bb33f1b54f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8e767924-16d3-4bc2-8d5c-8006c9b48e36",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7656b08f-e4e6-4fc7-b76c-19c446920b07",
              "parent_uuid": "8e767924-16d3-4bc2-8d5c-8006c9b48e36",
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
              "uuid": "29eb8854-a01f-453f-8de0-62888c11fe5f",
              "parent_uuid": "8e767924-16d3-4bc2-8d5c-8006c9b48e36",
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
              "uuid": "363f2072-8e4d-4ed3-9538-083ee2e6388f",
              "parent_uuid": "8e767924-16d3-4bc2-8d5c-8006c9b48e36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd7b1e7f-ca09-4092-be00-8601064b5cc5",
                  "parent_uuid": "363f2072-8e4d-4ed3-9538-083ee2e6388f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa8b0862-683f-40f1-bd8a-3d6bc9222f22",
              "parent_uuid": "8e767924-16d3-4bc2-8d5c-8006c9b48e36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4826c7d5-8467-413f-963c-f78b87580b13",
                  "parent_uuid": "fa8b0862-683f-40f1-bd8a-3d6bc9222f22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2255f284-405b-4548-8900-ee827d1c5321",
              "parent_uuid": "8e767924-16d3-4bc2-8d5c-8006c9b48e36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e636d878-48ae-42b0-8c7d-d646502e9e64",
                  "parent_uuid": "2255f284-405b-4548-8900-ee827d1c5321",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7bc1a47-2b76-439c-9160-778608cafd86",
              "parent_uuid": "8e767924-16d3-4bc2-8d5c-8006c9b48e36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d62559ae-3140-45b3-bb64-19a3322e35dc",
                  "parent_uuid": "f7bc1a47-2b76-439c-9160-778608cafd86",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7e95f636-4642-47b8-ac72-c53e3452d502",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "36959e16-8dac-4904-8700-623d5dff0de8",
              "parent_uuid": "7e95f636-4642-47b8-ac72-c53e3452d502",
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
              "uuid": "d4c52632-d40b-45a0-b13e-8a1ff8fa9226",
              "parent_uuid": "7e95f636-4642-47b8-ac72-c53e3452d502",
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
              "uuid": "08f88862-b113-4a7a-926c-0c38232edfb5",
              "parent_uuid": "7e95f636-4642-47b8-ac72-c53e3452d502",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d8b76c8-e498-40fe-8117-df3c94f4ad65",
                  "parent_uuid": "08f88862-b113-4a7a-926c-0c38232edfb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb1c7d8e-e59a-4522-998f-8dd01df5e20c",
              "parent_uuid": "7e95f636-4642-47b8-ac72-c53e3452d502",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffb75a16-3117-43d7-a9e1-f6f11ceac56c",
                  "parent_uuid": "bb1c7d8e-e59a-4522-998f-8dd01df5e20c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1bc2edc8-c67d-42d1-b0c5-992b44d10f36",
              "parent_uuid": "7e95f636-4642-47b8-ac72-c53e3452d502",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c55ad1a6-d164-442e-91e6-254225f2ed53",
                  "parent_uuid": "1bc2edc8-c67d-42d1-b0c5-992b44d10f36",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72855afd-dbad-44f4-b3d2-a8d8ebe59bce",
              "parent_uuid": "7e95f636-4642-47b8-ac72-c53e3452d502",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "47eb4b18-8358-4c31-8de8-765f63669051",
                  "parent_uuid": "72855afd-dbad-44f4-b3d2-a8d8ebe59bce",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4605ca2b-0c14-468f-b27c-8052e5400bfe",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b71557db-bb2b-4a5b-aa34-fb2488b78a90",
              "parent_uuid": "4605ca2b-0c14-468f-b27c-8052e5400bfe",
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
              "uuid": "0efa840b-5402-4072-aa24-43c502615dd9",
              "parent_uuid": "4605ca2b-0c14-468f-b27c-8052e5400bfe",
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
              "uuid": "b7068998-5551-4edf-99e8-dd24da9124cb",
              "parent_uuid": "4605ca2b-0c14-468f-b27c-8052e5400bfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5e1c843-eced-43cc-8e5e-692404ae046d",
                  "parent_uuid": "b7068998-5551-4edf-99e8-dd24da9124cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9030ca0b-2d96-4073-a7b7-9a47c1b9e117",
              "parent_uuid": "4605ca2b-0c14-468f-b27c-8052e5400bfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23fc07dd-1212-427c-a418-1cc8bd921ef7",
                  "parent_uuid": "9030ca0b-2d96-4073-a7b7-9a47c1b9e117",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "013a4ef4-5ac5-4327-9442-211aa86042c3",
              "parent_uuid": "4605ca2b-0c14-468f-b27c-8052e5400bfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f8d07f71-0c82-4082-89bd-257b846ddbc6",
                  "parent_uuid": "013a4ef4-5ac5-4327-9442-211aa86042c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ffd074d-4eb4-42f7-84a1-bb26baffb722",
              "parent_uuid": "4605ca2b-0c14-468f-b27c-8052e5400bfe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6463ff72-c8e3-4734-8f4c-b2b7eac80d79",
                  "parent_uuid": "9ffd074d-4eb4-42f7-84a1-bb26baffb722",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e116d01-f00b-4ede-881a-2b6653a3c379",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59c7ca57-c389-4b5f-a303-fbe3f08a0982",
              "parent_uuid": "2e116d01-f00b-4ede-881a-2b6653a3c379",
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
              "uuid": "a77f6bbb-9951-46a3-95c9-860739fac592",
              "parent_uuid": "2e116d01-f00b-4ede-881a-2b6653a3c379",
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
              "uuid": "57f010e1-0031-42b9-a922-f94d5f433980",
              "parent_uuid": "2e116d01-f00b-4ede-881a-2b6653a3c379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "15a79874-3719-428c-b864-f2fc756e6eaf",
                  "parent_uuid": "57f010e1-0031-42b9-a922-f94d5f433980",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a680dac-1382-4035-ab65-caa16afc00f6",
              "parent_uuid": "2e116d01-f00b-4ede-881a-2b6653a3c379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4b285cf-a2d5-4108-b3b3-1bee98e0d624",
                  "parent_uuid": "1a680dac-1382-4035-ab65-caa16afc00f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f065102c-7744-449b-8231-2e7b36f6028e",
              "parent_uuid": "2e116d01-f00b-4ede-881a-2b6653a3c379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "517af19e-fd03-4111-b4ff-c5043bf7af75",
                  "parent_uuid": "f065102c-7744-449b-8231-2e7b36f6028e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09990376-fbe2-40ed-8057-f3ce3f1a0291",
              "parent_uuid": "2e116d01-f00b-4ede-881a-2b6653a3c379",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d330543-7093-4c7f-828a-4f699e60e66f",
                  "parent_uuid": "09990376-fbe2-40ed-8057-f3ce3f1a0291",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e30fc770-434c-4c67-b981-dcb4843aac99",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e4c6d3dd-653b-4a0f-b02a-e25b5fbca355",
              "parent_uuid": "e30fc770-434c-4c67-b981-dcb4843aac99",
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
          "uuid": "acb0fa1a-87a2-4821-bb00-91b4e8f21a5c",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b18a86a4-d4ea-4163-ab9f-d2468f939e08",
              "parent_uuid": "acb0fa1a-87a2-4821-bb00-91b4e8f21a5c",
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
          "uuid": "5444cf1d-087b-4adc-8425-2ecb572b5ea6",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0147b6bd-79ed-4f7d-b31d-a424ad0182c7",
              "parent_uuid": "5444cf1d-087b-4adc-8425-2ecb572b5ea6",
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
                  "uuid": "2e7d8b50-e0e0-459d-b93c-cc0f11922387",
                  "parent_uuid": "0147b6bd-79ed-4f7d-b31d-a424ad0182c7",
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
          "uuid": "d05472a9-f875-4ed4-8e80-8cc6d2e0d3f0",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "28760217-b6a3-45e4-9f52-e07c209712c8",
              "parent_uuid": "d05472a9-f875-4ed4-8e80-8cc6d2e0d3f0",
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
          "uuid": "fefd6b09-e68b-44ac-a6c9-6f6a36e4ed2e",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "27e1c870-119a-4cdc-a48a-63c688b3740d",
              "parent_uuid": "fefd6b09-e68b-44ac-a6c9-6f6a36e4ed2e",
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
          "uuid": "4c6c4033-a865-4020-9fa3-c910fa20af46",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53de274d-5d15-4848-b27a-3423e35503d2",
              "parent_uuid": "4c6c4033-a865-4020-9fa3-c910fa20af46",
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
              "uuid": "d4bb10de-984c-42d8-95b7-292f7b381a1c",
              "parent_uuid": "4c6c4033-a865-4020-9fa3-c910fa20af46",
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
              "uuid": "1cfb0a19-afdc-45b1-8a32-bdaa0f4f4607",
              "parent_uuid": "4c6c4033-a865-4020-9fa3-c910fa20af46",
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
              "uuid": "718013cc-485e-44ee-9b9e-411fdef2a089",
              "parent_uuid": "4c6c4033-a865-4020-9fa3-c910fa20af46",
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
              "uuid": "2864a98f-890e-4f12-9ca9-b72597cc0937",
              "parent_uuid": "4c6c4033-a865-4020-9fa3-c910fa20af46",
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
              "uuid": "1afe547f-be7d-4909-baee-201732e58402",
              "parent_uuid": "4c6c4033-a865-4020-9fa3-c910fa20af46",
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
          "uuid": "cee07857-e5c9-47f7-be3c-be609fcc0acd",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "ff27d325-042d-4137-ab53-c8e14e750532",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "055fbbc5-ecc4-4694-952a-79c6a83f92f7",
              "parent_uuid": "ff27d325-042d-4137-ab53-c8e14e750532",
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
              "uuid": "9409ae24-d115-4833-a9fb-b32cabb2113a",
              "parent_uuid": "ff27d325-042d-4137-ab53-c8e14e750532",
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
              "uuid": "a1032dde-abf6-4bba-a088-d4189a3f99b7",
              "parent_uuid": "ff27d325-042d-4137-ab53-c8e14e750532",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b785acfc-79a8-4b1d-b7fe-ddb9e136b523",
                  "parent_uuid": "a1032dde-abf6-4bba-a088-d4189a3f99b7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bb8777a-1269-438e-b961-c5d879a67813",
              "parent_uuid": "ff27d325-042d-4137-ab53-c8e14e750532",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f5235999-aa11-4f91-be41-bd5ebbafdf1b",
                  "parent_uuid": "2bb8777a-1269-438e-b961-c5d879a67813",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bed5873-3b55-4597-bcfc-c5c7d09d0cea",
              "parent_uuid": "ff27d325-042d-4137-ab53-c8e14e750532",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49aa1e3a-fe1d-4231-97fb-382b135fc1d3",
                  "parent_uuid": "6bed5873-3b55-4597-bcfc-c5c7d09d0cea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f89eb34b-617e-4599-b974-645f25daae2b",
              "parent_uuid": "ff27d325-042d-4137-ab53-c8e14e750532",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7329b139-036b-4d68-90ca-a0527ff6dec6",
                  "parent_uuid": "f89eb34b-617e-4599-b974-645f25daae2b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2e80042f-913a-40f8-83f7-5ef4675bb178",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af2c9ac0-7eed-4d1b-95a5-33afcdf82957",
              "parent_uuid": "2e80042f-913a-40f8-83f7-5ef4675bb178",
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
              "uuid": "cd59c53d-f520-433a-8e58-c6643529b060",
              "parent_uuid": "2e80042f-913a-40f8-83f7-5ef4675bb178",
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
              "uuid": "5a5f8503-348c-45f4-8e0e-fae0361ee5ac",
              "parent_uuid": "2e80042f-913a-40f8-83f7-5ef4675bb178",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06120819-5820-4f7a-8005-b26b331c36f5",
                  "parent_uuid": "5a5f8503-348c-45f4-8e0e-fae0361ee5ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "068cada8-cda5-4525-b906-3ef0285b7187",
              "parent_uuid": "2e80042f-913a-40f8-83f7-5ef4675bb178",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "76dc3742-4c41-4937-97d6-717ea8ffb88c",
                  "parent_uuid": "068cada8-cda5-4525-b906-3ef0285b7187",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b323703b-b6e7-4ff1-a9fa-ab320771a729",
              "parent_uuid": "2e80042f-913a-40f8-83f7-5ef4675bb178",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e986489-8194-41f6-8450-180dc936f1e9",
                  "parent_uuid": "b323703b-b6e7-4ff1-a9fa-ab320771a729",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcccb825-1f62-4b68-9441-a39e657fc7c9",
              "parent_uuid": "2e80042f-913a-40f8-83f7-5ef4675bb178",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "189ec3bd-1b7d-4dbc-a287-fa27df997cfe",
                  "parent_uuid": "fcccb825-1f62-4b68-9441-a39e657fc7c9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8bed65d0-7f59-45bc-976c-8f8a659d7f36",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "316c2f91-8da7-4b9c-9e45-ca736556e618",
              "parent_uuid": "8bed65d0-7f59-45bc-976c-8f8a659d7f36",
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
              "uuid": "8fce688d-d070-47ab-b755-beb3c3e6255f",
              "parent_uuid": "8bed65d0-7f59-45bc-976c-8f8a659d7f36",
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
              "uuid": "0d49bba0-6d41-4454-a643-8c22751a461f",
              "parent_uuid": "8bed65d0-7f59-45bc-976c-8f8a659d7f36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be16832d-10ac-467e-a461-697bceba2603",
                  "parent_uuid": "0d49bba0-6d41-4454-a643-8c22751a461f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e119df1d-d205-450d-b903-f1ecee141e1a",
              "parent_uuid": "8bed65d0-7f59-45bc-976c-8f8a659d7f36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9783d81c-b293-4a1a-85ec-3f31745710ac",
                  "parent_uuid": "e119df1d-d205-450d-b903-f1ecee141e1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef155cfe-9b7e-4e0d-87c6-b75243fdaa2b",
              "parent_uuid": "8bed65d0-7f59-45bc-976c-8f8a659d7f36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6d24d44a-a847-4421-bad7-629b22b8f00e",
                  "parent_uuid": "ef155cfe-9b7e-4e0d-87c6-b75243fdaa2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "63c3b727-9c5b-4241-a266-9edf37f4a386",
              "parent_uuid": "8bed65d0-7f59-45bc-976c-8f8a659d7f36",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "499bbf6e-bf75-495c-ad84-133d3b059507",
                  "parent_uuid": "63c3b727-9c5b-4241-a266-9edf37f4a386",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "512c6416-c6c4-46fc-9d45-084ce8e36ca2",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec0344ae-221b-412f-9760-812185dc2474",
              "parent_uuid": "512c6416-c6c4-46fc-9d45-084ce8e36ca2",
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
              "uuid": "a1df52a1-1206-4e07-9d96-0e2e91403721",
              "parent_uuid": "512c6416-c6c4-46fc-9d45-084ce8e36ca2",
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
              "uuid": "761a90aa-4ad7-4bf6-b13a-dfdfb097cf03",
              "parent_uuid": "512c6416-c6c4-46fc-9d45-084ce8e36ca2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49fb8b13-50fc-4849-9370-90603ddb7438",
                  "parent_uuid": "761a90aa-4ad7-4bf6-b13a-dfdfb097cf03",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "510b6596-9b8e-4ae0-9a53-9ddb756cc0ff",
              "parent_uuid": "512c6416-c6c4-46fc-9d45-084ce8e36ca2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abda3ce5-61f2-4455-934a-93cb3329a16f",
                  "parent_uuid": "510b6596-9b8e-4ae0-9a53-9ddb756cc0ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bb1088ef-598e-41db-bf16-fc27362d1436",
              "parent_uuid": "512c6416-c6c4-46fc-9d45-084ce8e36ca2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bcf1160d-b6ab-476d-90cb-8964961c6058",
                  "parent_uuid": "bb1088ef-598e-41db-bf16-fc27362d1436",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cd85be5-db79-4ada-86f8-1b74d7948b4b",
              "parent_uuid": "512c6416-c6c4-46fc-9d45-084ce8e36ca2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3c21da6-ff63-4745-91a7-e909243c8c5b",
                  "parent_uuid": "9cd85be5-db79-4ada-86f8-1b74d7948b4b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6b93b4a8-4782-4d5a-b5a3-b3d4f9daed29",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "47a46f46-4d1e-4187-a356-e972ab3404ca",
              "parent_uuid": "6b93b4a8-4782-4d5a-b5a3-b3d4f9daed29",
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
          "uuid": "5570c6bb-c1ad-4b73-8e64-e429426619cd",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e7e51e3-f2be-4b07-b508-e6c88c38961d",
              "parent_uuid": "5570c6bb-c1ad-4b73-8e64-e429426619cd",
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
          "uuid": "e831da4b-150a-441a-b418-2f2d5acd398e",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4026f66f-af3a-49be-a5bb-81ab078e45dd",
              "parent_uuid": "e831da4b-150a-441a-b418-2f2d5acd398e",
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
                  "uuid": "5535e34a-1cb0-46f2-a126-670e950171c1",
                  "parent_uuid": "4026f66f-af3a-49be-a5bb-81ab078e45dd",
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
          "uuid": "ee3260af-c07e-4eff-a664-0431ad10d6d9",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "0898a458-bb2a-4c87-82d5-d0620f715966",
              "parent_uuid": "ee3260af-c07e-4eff-a664-0431ad10d6d9",
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
          "uuid": "2342ab5d-1203-451e-9a2e-443cd77e553b",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "eba27581-c848-478d-93fc-b99936760d29",
              "parent_uuid": "2342ab5d-1203-451e-9a2e-443cd77e553b",
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
          "uuid": "a62f62f0-5ef8-4929-ba94-f3aa1be16251",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9136aa1f-98c0-42f3-9204-57c4966d42a6",
              "parent_uuid": "a62f62f0-5ef8-4929-ba94-f3aa1be16251",
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
              "uuid": "88c773d0-b0f8-4c19-bfc0-e667fa172659",
              "parent_uuid": "a62f62f0-5ef8-4929-ba94-f3aa1be16251",
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
              "uuid": "cd69f434-4410-4158-bb58-437df80818a0",
              "parent_uuid": "a62f62f0-5ef8-4929-ba94-f3aa1be16251",
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
              "uuid": "30f11262-0508-4709-b7b3-155bcd71721d",
              "parent_uuid": "a62f62f0-5ef8-4929-ba94-f3aa1be16251",
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
              "uuid": "970ee0a1-691f-41c2-a6cd-95578d99048a",
              "parent_uuid": "a62f62f0-5ef8-4929-ba94-f3aa1be16251",
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
              "uuid": "712fcd8f-ce39-4214-9cbc-be6714bccbe9",
              "parent_uuid": "a62f62f0-5ef8-4929-ba94-f3aa1be16251",
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
          "uuid": "f47c1c1c-5f16-4a63-bfb9-e0f8b10f849e",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b766de56-d329-41e1-a22e-8b76325a1b1f",
              "parent_uuid": "f47c1c1c-5f16-4a63-bfb9-e0f8b10f849e",
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
              "uuid": "0fae3578-7380-48ba-9df9-6e2c12d54ba5",
              "parent_uuid": "f47c1c1c-5f16-4a63-bfb9-e0f8b10f849e",
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
              "uuid": "a1eb8a6c-4c9b-4005-84cd-567de0d0ee74",
              "parent_uuid": "f47c1c1c-5f16-4a63-bfb9-e0f8b10f849e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ed054a5d-06ba-4b53-8b2b-b989c24dad91",
                  "parent_uuid": "a1eb8a6c-4c9b-4005-84cd-567de0d0ee74",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f92b1622-a195-41ac-9b58-5d033166e32c",
              "parent_uuid": "f47c1c1c-5f16-4a63-bfb9-e0f8b10f849e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9b040e08-14b8-4482-a7b4-25bbf6c88beb",
                  "parent_uuid": "f92b1622-a195-41ac-9b58-5d033166e32c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e15269bb-5f30-47fa-901f-131d288ace3b",
              "parent_uuid": "f47c1c1c-5f16-4a63-bfb9-e0f8b10f849e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3156892-df30-4fbb-be29-5224aca7d058",
                  "parent_uuid": "e15269bb-5f30-47fa-901f-131d288ace3b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f61219ec-7e69-4b2f-b91e-a091f4fe03c8",
              "parent_uuid": "f47c1c1c-5f16-4a63-bfb9-e0f8b10f849e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb943e9a-66df-4b87-95a7-f9b715704312",
                  "parent_uuid": "f61219ec-7e69-4b2f-b91e-a091f4fe03c8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e89af04f-b81a-4712-8aed-c7a63ddc901b",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fb1b8b2-e2b2-4116-9388-4da168ad2a5f",
              "parent_uuid": "e89af04f-b81a-4712-8aed-c7a63ddc901b",
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
              "uuid": "f207ac3b-759a-4224-993e-0d641068f192",
              "parent_uuid": "e89af04f-b81a-4712-8aed-c7a63ddc901b",
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
              "uuid": "d4e77e4d-d0f6-420e-bf8d-fff5ede5e4ec",
              "parent_uuid": "e89af04f-b81a-4712-8aed-c7a63ddc901b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2c0e7002-ab9b-4381-83e8-0b738a383801",
                  "parent_uuid": "d4e77e4d-d0f6-420e-bf8d-fff5ede5e4ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c80668d8-e1b3-43b9-849a-73449cc6536d",
              "parent_uuid": "e89af04f-b81a-4712-8aed-c7a63ddc901b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6f50638-98f2-4c52-8bc7-4ab7a5759b09",
                  "parent_uuid": "c80668d8-e1b3-43b9-849a-73449cc6536d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ee5b515e-9e09-4adc-bb12-42d188929b67",
              "parent_uuid": "e89af04f-b81a-4712-8aed-c7a63ddc901b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0a30bd3a-b305-460b-824b-5516e82c181c",
                  "parent_uuid": "ee5b515e-9e09-4adc-bb12-42d188929b67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "17868397-68e9-4fc6-86c9-f55e6169f133",
              "parent_uuid": "e89af04f-b81a-4712-8aed-c7a63ddc901b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eeeafb9f-c2fd-40e4-9f18-776d653f9af6",
                  "parent_uuid": "17868397-68e9-4fc6-86c9-f55e6169f133",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0d63809c-daa9-46f7-b50a-23d06a77133a",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "70adcd92-bf92-4621-9fdd-a8bf8614dc90",
              "parent_uuid": "0d63809c-daa9-46f7-b50a-23d06a77133a",
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
              "uuid": "4e732867-78d2-4a70-91ef-24b85b414c59",
              "parent_uuid": "0d63809c-daa9-46f7-b50a-23d06a77133a",
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
              "uuid": "c629ecd7-15f1-426e-bbdd-bd59c229a394",
              "parent_uuid": "0d63809c-daa9-46f7-b50a-23d06a77133a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d647356-969c-4b57-8dc7-2907ca7ebc5e",
                  "parent_uuid": "c629ecd7-15f1-426e-bbdd-bd59c229a394",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "903dcc0e-32ea-4b18-881f-00bddeb1fd9f",
              "parent_uuid": "0d63809c-daa9-46f7-b50a-23d06a77133a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2fc68191-1d54-4460-9f50-5e94895c6268",
                  "parent_uuid": "903dcc0e-32ea-4b18-881f-00bddeb1fd9f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b9f19da-b17d-49ff-bfec-b20f0f7f920b",
              "parent_uuid": "0d63809c-daa9-46f7-b50a-23d06a77133a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5188e257-1a3b-4b4e-a3b6-8868a66f034a",
                  "parent_uuid": "1b9f19da-b17d-49ff-bfec-b20f0f7f920b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b709dc77-fda2-4faa-bc33-c338c408f960",
              "parent_uuid": "0d63809c-daa9-46f7-b50a-23d06a77133a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "98ec5d8b-e6c5-415b-a643-a976a8615b1a",
                  "parent_uuid": "b709dc77-fda2-4faa-bc33-c338c408f960",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9c10797e-d289-4f7e-bd90-83fe73ec5a51",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4d651f4b-4834-400c-bda9-5761ea0cbb12",
              "parent_uuid": "9c10797e-d289-4f7e-bd90-83fe73ec5a51",
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
              "uuid": "c63031e3-9fe1-4f1b-b1ea-bad09e573844",
              "parent_uuid": "9c10797e-d289-4f7e-bd90-83fe73ec5a51",
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
              "uuid": "6aa914bf-1f37-4e45-898e-33af6ec9e08a",
              "parent_uuid": "9c10797e-d289-4f7e-bd90-83fe73ec5a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d1c3c842-2fc2-4d39-abae-f9ed8a9c7547",
                  "parent_uuid": "6aa914bf-1f37-4e45-898e-33af6ec9e08a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd480851-fa95-4fd1-b6b4-73e056f34500",
              "parent_uuid": "9c10797e-d289-4f7e-bd90-83fe73ec5a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3940ed7-c0ee-4397-802b-e1f923cbfbcf",
                  "parent_uuid": "dd480851-fa95-4fd1-b6b4-73e056f34500",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0dcb0db0-fe85-4b07-be87-b98a0d8bd0ab",
              "parent_uuid": "9c10797e-d289-4f7e-bd90-83fe73ec5a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f6f6bdc-cb91-4d77-ac33-ffa86db8c8b8",
                  "parent_uuid": "0dcb0db0-fe85-4b07-be87-b98a0d8bd0ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "59a7e46d-ca95-4e12-98da-28264f38f44d",
              "parent_uuid": "9c10797e-d289-4f7e-bd90-83fe73ec5a51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ade3d87-eeb8-4c5f-affe-01b55915caff",
                  "parent_uuid": "59a7e46d-ca95-4e12-98da-28264f38f44d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37b96a9e-287a-440a-8f30-b3ff47ac46c4",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ca80547-61c7-47d7-bf75-5bf4695b133e",
              "parent_uuid": "37b96a9e-287a-440a-8f30-b3ff47ac46c4",
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
              "uuid": "36dd3bde-dd6e-4940-8277-135a8637be8a",
              "parent_uuid": "37b96a9e-287a-440a-8f30-b3ff47ac46c4",
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
              "uuid": "6f24a7e5-4503-459e-9934-4af23ea5d0b2",
              "parent_uuid": "37b96a9e-287a-440a-8f30-b3ff47ac46c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "43ddad85-6a2d-4f69-b02f-fbc07d965c68",
                  "parent_uuid": "6f24a7e5-4503-459e-9934-4af23ea5d0b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de5bf4e3-70cb-482a-bf68-a2e814742748",
              "parent_uuid": "37b96a9e-287a-440a-8f30-b3ff47ac46c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "519b08e0-b3fa-4c8e-878c-e58293540eb9",
                  "parent_uuid": "de5bf4e3-70cb-482a-bf68-a2e814742748",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44ea9821-e82e-4621-9c50-ccfc869a2842",
              "parent_uuid": "37b96a9e-287a-440a-8f30-b3ff47ac46c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54185c85-7592-4d2b-ac3c-e3b47d405154",
                  "parent_uuid": "44ea9821-e82e-4621-9c50-ccfc869a2842",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "edba84c0-005c-41fb-afff-8266b4a0477f",
              "parent_uuid": "37b96a9e-287a-440a-8f30-b3ff47ac46c4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe9479f0-afbd-41a9-b193-1e4d51e4e5ec",
                  "parent_uuid": "edba84c0-005c-41fb-afff-8266b4a0477f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0f3820a6-9964-4765-be25-aa304b46a4ff",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff32bd75-048c-44bc-a784-2b8d2a3824a7",
              "parent_uuid": "0f3820a6-9964-4765-be25-aa304b46a4ff",
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
              "uuid": "a9251c96-cd77-4783-9da0-a58628ef9a98",
              "parent_uuid": "0f3820a6-9964-4765-be25-aa304b46a4ff",
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
              "uuid": "cde10932-946a-4d44-97c1-5d179186e96c",
              "parent_uuid": "0f3820a6-9964-4765-be25-aa304b46a4ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f014596-99be-4360-a19d-391453968f62",
                  "parent_uuid": "cde10932-946a-4d44-97c1-5d179186e96c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "770a9f59-203a-47d3-8a84-110f3dd2b209",
              "parent_uuid": "0f3820a6-9964-4765-be25-aa304b46a4ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4a2a8f8-54ab-4939-9b2c-e038863c1a44",
                  "parent_uuid": "770a9f59-203a-47d3-8a84-110f3dd2b209",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d54fc17b-de39-4298-9ce4-157356a44585",
              "parent_uuid": "0f3820a6-9964-4765-be25-aa304b46a4ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99682983-923c-489c-bc3c-b27ed5e221f9",
                  "parent_uuid": "d54fc17b-de39-4298-9ce4-157356a44585",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9fc108ae-c2fa-4cd1-9d88-9fcd3303c727",
              "parent_uuid": "0f3820a6-9964-4765-be25-aa304b46a4ff",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99ccd673-1261-473d-b1e9-db9ccd083c1a",
                  "parent_uuid": "9fc108ae-c2fa-4cd1-9d88-9fcd3303c727",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a0b8afbb-73a3-4366-80b1-d5c36f4aa495",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c3bd424-dd6b-4e55-bc0b-310be4285f35",
              "parent_uuid": "a0b8afbb-73a3-4366-80b1-d5c36f4aa495",
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
          "uuid": "9dd42aa2-22ae-49e9-87b0-2ad4887ff800",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "67e13388-ea55-45ca-8dcd-e5f85ab724a7",
              "parent_uuid": "9dd42aa2-22ae-49e9-87b0-2ad4887ff800",
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
          "uuid": "7bf20f31-d71a-4e5c-a5b0-501979df1623",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de3660f5-6025-4501-9f11-41d604deb5ae",
              "parent_uuid": "7bf20f31-d71a-4e5c-a5b0-501979df1623",
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
                  "uuid": "5c9b91bc-9a26-4933-90f7-93cc7e651607",
                  "parent_uuid": "de3660f5-6025-4501-9f11-41d604deb5ae",
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
          "uuid": "9daa49c9-7c99-4821-a881-f0561dca9d61",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08db46f7-8dfa-4fb4-94e5-9c24fda5e14f",
              "parent_uuid": "9daa49c9-7c99-4821-a881-f0561dca9d61",
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
          "uuid": "d03f3c59-fc39-47ba-8e27-fde65157e3f1",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "1db3488b-eec7-4c4e-a9aa-228f67f32d49",
              "parent_uuid": "d03f3c59-fc39-47ba-8e27-fde65157e3f1",
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
          "uuid": "93d0609f-d6c4-412f-b8dc-f00372252717",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6108c4fe-86a2-467a-a7eb-720af90f7bef",
              "parent_uuid": "93d0609f-d6c4-412f-b8dc-f00372252717",
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
              "uuid": "ec67bed7-655b-4374-a3ba-4c399ce83eb7",
              "parent_uuid": "93d0609f-d6c4-412f-b8dc-f00372252717",
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
              "uuid": "c069b86c-400a-4c61-8188-df4555cad300",
              "parent_uuid": "93d0609f-d6c4-412f-b8dc-f00372252717",
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
              "uuid": "6282ec06-9f86-43ff-9de7-e46c88d15b9e",
              "parent_uuid": "93d0609f-d6c4-412f-b8dc-f00372252717",
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
              "uuid": "912aa193-74a1-4187-baf5-1f5f75cbbaff",
              "parent_uuid": "93d0609f-d6c4-412f-b8dc-f00372252717",
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
          "uuid": "abe27d93-1d18-4916-980c-5683ab7b187a",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1bbd2381-a148-4e37-ad0b-80e52be2b61c",
              "parent_uuid": "abe27d93-1d18-4916-980c-5683ab7b187a",
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
              "uuid": "1e3f67bd-4514-43af-ae2b-e5db4b5447e1",
              "parent_uuid": "abe27d93-1d18-4916-980c-5683ab7b187a",
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
              "uuid": "0e6f00bf-6565-4cdf-afeb-2f27743472bb",
              "parent_uuid": "abe27d93-1d18-4916-980c-5683ab7b187a",
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
              "uuid": "3ffe5e19-a380-4d85-a254-974eb160b8d0",
              "parent_uuid": "abe27d93-1d18-4916-980c-5683ab7b187a",
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
              "uuid": "ac9dfab6-9f85-466c-b406-9dbe0fc2b214",
              "parent_uuid": "abe27d93-1d18-4916-980c-5683ab7b187a",
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
          "uuid": "ab7386bf-3eaf-418a-ac3f-a8178e16d64d",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a191e847-d238-4672-9b93-f7492d5822af",
              "parent_uuid": "ab7386bf-3eaf-418a-ac3f-a8178e16d64d",
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
              "uuid": "f5dbdfee-2d10-4a1e-9fcd-f19a99ee6072",
              "parent_uuid": "ab7386bf-3eaf-418a-ac3f-a8178e16d64d",
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
              "uuid": "59655bd2-7515-4bf6-9421-310db2945875",
              "parent_uuid": "ab7386bf-3eaf-418a-ac3f-a8178e16d64d",
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
              "uuid": "d9b021f2-fa4e-40b6-8a14-bcf9157f19ac",
              "parent_uuid": "ab7386bf-3eaf-418a-ac3f-a8178e16d64d",
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
              "uuid": "72ad0e7a-2138-4ab0-94ee-e072fb3043f3",
              "parent_uuid": "ab7386bf-3eaf-418a-ac3f-a8178e16d64d",
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
          "uuid": "590c5fdb-e4d0-40b8-9976-8419bdb69e04",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "74660381-cdb0-4643-bdcf-84b195013211",
              "parent_uuid": "590c5fdb-e4d0-40b8-9976-8419bdb69e04",
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
              "uuid": "9f96a6cc-c2c0-4842-81e5-7c3c97aff73d",
              "parent_uuid": "590c5fdb-e4d0-40b8-9976-8419bdb69e04",
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
              "uuid": "3be6ded6-a8af-4a30-bcba-c0b75ebc281f",
              "parent_uuid": "590c5fdb-e4d0-40b8-9976-8419bdb69e04",
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
              "uuid": "fb0b9a56-1408-4394-9d2b-485dec266461",
              "parent_uuid": "590c5fdb-e4d0-40b8-9976-8419bdb69e04",
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
              "uuid": "d82d62ff-c8ae-4a42-b48d-95ebaa3e335a",
              "parent_uuid": "590c5fdb-e4d0-40b8-9976-8419bdb69e04",
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
          "uuid": "460c1082-d092-470e-a774-0664d248c66a",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef666f14-8a3e-4421-adee-4de17dbb5bde",
              "parent_uuid": "460c1082-d092-470e-a774-0664d248c66a",
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
              "uuid": "511c10df-393e-423e-9dfc-ff41859df707",
              "parent_uuid": "460c1082-d092-470e-a774-0664d248c66a",
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
              "uuid": "b5b0c82d-f014-4840-86a0-2eafb250194a",
              "parent_uuid": "460c1082-d092-470e-a774-0664d248c66a",
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
              "uuid": "0e173856-44b4-4714-b0bc-132123ecc4b3",
              "parent_uuid": "460c1082-d092-470e-a774-0664d248c66a",
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
              "uuid": "5e2389c0-8db9-48ce-a990-3037a4bb0014",
              "parent_uuid": "460c1082-d092-470e-a774-0664d248c66a",
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
          "uuid": "975a4756-ad76-4842-a726-072a91a90d59",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "074ee9b6-e05e-42a8-89e4-2c7f6fef90b2",
              "parent_uuid": "975a4756-ad76-4842-a726-072a91a90d59",
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
              "uuid": "c0cad2fa-8398-47d5-8a59-d68d38646463",
              "parent_uuid": "975a4756-ad76-4842-a726-072a91a90d59",
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
              "uuid": "06ac9a03-71b4-4c75-9fe3-474a59d99c20",
              "parent_uuid": "975a4756-ad76-4842-a726-072a91a90d59",
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
              "uuid": "091f8ba9-eed9-4d76-8edc-de9a6469285e",
              "parent_uuid": "975a4756-ad76-4842-a726-072a91a90d59",
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
              "uuid": "d641b509-9132-40ad-8b90-aa32c106a69a",
              "parent_uuid": "975a4756-ad76-4842-a726-072a91a90d59",
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
          "uuid": "8b37e075-1e1e-4d14-ac7c-1754bbfd60d2",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0aee240f-58f5-4625-8b5a-a4e0103c29d3",
              "parent_uuid": "8b37e075-1e1e-4d14-ac7c-1754bbfd60d2",
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
              "uuid": "ab49ba38-6c75-459c-82a4-6d16afa40a75",
              "parent_uuid": "8b37e075-1e1e-4d14-ac7c-1754bbfd60d2",
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
              "uuid": "396e5992-9ff7-4eff-8870-b35feeaa384e",
              "parent_uuid": "8b37e075-1e1e-4d14-ac7c-1754bbfd60d2",
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
              "uuid": "c9948731-1f48-4552-aa44-e47e52c25946",
              "parent_uuid": "8b37e075-1e1e-4d14-ac7c-1754bbfd60d2",
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
              "uuid": "ad7c855b-ee2f-439f-9ac5-200c44eec9fc",
              "parent_uuid": "8b37e075-1e1e-4d14-ac7c-1754bbfd60d2",
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
          "uuid": "0c1df9d7-9af7-4034-84f4-89e6df922f51",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "65596abd-ad55-4323-90dd-53e36ecb918a",
              "parent_uuid": "0c1df9d7-9af7-4034-84f4-89e6df922f51",
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
              "uuid": "05137700-3632-46c0-9da3-67ec9abd4c1c",
              "parent_uuid": "0c1df9d7-9af7-4034-84f4-89e6df922f51",
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
              "uuid": "cb41e6c6-a64b-46e1-a667-ae7c75a386ca",
              "parent_uuid": "0c1df9d7-9af7-4034-84f4-89e6df922f51",
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
              "uuid": "72c2f2d0-78a8-4cfe-8f93-8584fddafae7",
              "parent_uuid": "0c1df9d7-9af7-4034-84f4-89e6df922f51",
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
              "uuid": "dd488f33-375e-443f-ade7-3bfc39a4caab",
              "parent_uuid": "0c1df9d7-9af7-4034-84f4-89e6df922f51",
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
          "uuid": "27235abd-a92e-4bc7-88f0-c90cfe6044ef",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b7eb04e4-6d27-4e3f-9801-1e332d6e856c",
              "parent_uuid": "27235abd-a92e-4bc7-88f0-c90cfe6044ef",
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
              "uuid": "521d2263-6109-4f8b-be5e-e16552dcc619",
              "parent_uuid": "27235abd-a92e-4bc7-88f0-c90cfe6044ef",
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
              "uuid": "d6bd10d7-1c5d-47de-a6c9-a413f2bd3573",
              "parent_uuid": "27235abd-a92e-4bc7-88f0-c90cfe6044ef",
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
              "uuid": "a23f6a8f-f3d5-4a47-b3e4-2d802b22286b",
              "parent_uuid": "27235abd-a92e-4bc7-88f0-c90cfe6044ef",
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
              "uuid": "7642493b-ea04-4b73-8777-eb62045f0c22",
              "parent_uuid": "27235abd-a92e-4bc7-88f0-c90cfe6044ef",
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
          "uuid": "02f8b6b2-1efd-4934-9929-1710d327cadf",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "17a99f99-b9ac-46b0-9196-8ba677bd1052",
              "parent_uuid": "02f8b6b2-1efd-4934-9929-1710d327cadf",
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
              "uuid": "ceb21f78-7be7-481c-87f6-1232ec32e3e3",
              "parent_uuid": "02f8b6b2-1efd-4934-9929-1710d327cadf",
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
              "uuid": "d9641b43-9b84-4717-95f5-8300ffc7c85a",
              "parent_uuid": "02f8b6b2-1efd-4934-9929-1710d327cadf",
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
              "uuid": "cf1b703c-9ff7-4db3-aa3d-1adb48a1353f",
              "parent_uuid": "02f8b6b2-1efd-4934-9929-1710d327cadf",
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
              "uuid": "53eaab87-ccbf-4136-99ee-ee17fc8adec7",
              "parent_uuid": "02f8b6b2-1efd-4934-9929-1710d327cadf",
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
          "uuid": "2a2f933d-b87b-4512-8a8b-a81e0ee9047e",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f633102-63ae-44c7-b47f-55ae010f9519",
              "parent_uuid": "2a2f933d-b87b-4512-8a8b-a81e0ee9047e",
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
              "uuid": "d6cf3151-3e72-465d-a36a-d41971f891c3",
              "parent_uuid": "2a2f933d-b87b-4512-8a8b-a81e0ee9047e",
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
              "uuid": "8af4c9e0-798e-4f60-bd84-82adf1a5f7ec",
              "parent_uuid": "2a2f933d-b87b-4512-8a8b-a81e0ee9047e",
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
              "uuid": "b96fe131-4723-4633-be61-caff79db04de",
              "parent_uuid": "2a2f933d-b87b-4512-8a8b-a81e0ee9047e",
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
              "uuid": "38b4bffd-9233-49eb-8bf5-183b5e3d8147",
              "parent_uuid": "2a2f933d-b87b-4512-8a8b-a81e0ee9047e",
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
          "uuid": "2e35265b-6beb-43c7-b6bc-bd394f7d2eac",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1b0f05c1-1031-4e34-b006-9ef91191604e",
              "parent_uuid": "2e35265b-6beb-43c7-b6bc-bd394f7d2eac",
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
              "uuid": "08b10a6e-b724-4d35-9caa-6ded29556ab6",
              "parent_uuid": "2e35265b-6beb-43c7-b6bc-bd394f7d2eac",
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
              "uuid": "892f43e6-1d88-46d0-b4b7-075566f04533",
              "parent_uuid": "2e35265b-6beb-43c7-b6bc-bd394f7d2eac",
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
              "uuid": "0adc93e8-f380-4b19-aa55-e81a4921bf6d",
              "parent_uuid": "2e35265b-6beb-43c7-b6bc-bd394f7d2eac",
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
              "uuid": "97ef8fdb-2715-4efe-9435-d14fac985ad4",
              "parent_uuid": "2e35265b-6beb-43c7-b6bc-bd394f7d2eac",
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
          "uuid": "733009a9-16ac-4709-a1af-635579d54035",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "19029c2b-d6dd-4889-a864-1c171720ece6",
              "parent_uuid": "733009a9-16ac-4709-a1af-635579d54035",
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
              "uuid": "20e872c0-7324-4fef-8ea0-ec73b5e3606f",
              "parent_uuid": "733009a9-16ac-4709-a1af-635579d54035",
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
              "uuid": "f04a44aa-bc87-4213-86e7-ae4b5ccf34b1",
              "parent_uuid": "733009a9-16ac-4709-a1af-635579d54035",
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
              "uuid": "0e2b504c-e092-40a2-ba92-242e015f199a",
              "parent_uuid": "733009a9-16ac-4709-a1af-635579d54035",
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
              "uuid": "b78375fe-fdc3-4279-9b8d-5a9bd2d1df98",
              "parent_uuid": "733009a9-16ac-4709-a1af-635579d54035",
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
          "uuid": "a2fcd653-293c-4dc8-a715-b82ee7fdc7f1",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7e607c9-6f1a-4bb6-a42e-b4daee07e714",
              "parent_uuid": "a2fcd653-293c-4dc8-a715-b82ee7fdc7f1",
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
          "uuid": "e527eb71-fdb3-47f2-a9f2-7de362de14f2",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1f0bd75a-783f-48e0-9444-0ae4dc2f441f",
              "parent_uuid": "e527eb71-fdb3-47f2-a9f2-7de362de14f2",
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
          "uuid": "7ff5ad77-dc47-4037-8f6e-897006243b44",
          "parent_uuid": "51c6ddac-2bc3-4db9-a062-138c0b1e58e5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f71639a-3f5c-4705-a481-a68cc6e232e7",
              "parent_uuid": "7ff5ad77-dc47-4037-8f6e-897006243b44",
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
                  "uuid": "d49dfe77-b42f-48a0-b71c-9f99042e5cbf",
                  "parent_uuid": "8f71639a-3f5c-4705-a481-a68cc6e232e7",
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

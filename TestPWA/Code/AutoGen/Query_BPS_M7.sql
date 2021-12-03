
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
  "uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
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
      "uuid": "89a7e39e-852b-4df6-8b74-52044edbdccb",
      "parent_uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
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
      "uuid": "7403b524-3813-4a45-8d57-ca551e46cd9a",
      "parent_uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
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
      "uuid": "2f45d27e-68eb-404f-ac9a-3987f6fccad8",
      "parent_uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
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
      "uuid": "efccc749-80c5-417d-9014-7004e51c8820",
      "parent_uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
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
      "uuid": "db92a74e-04c0-4d15-a27c-578d121974c4",
      "parent_uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
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
      "uuid": "6db52da9-cdc1-4b25-a2ce-c074469a5764",
      "parent_uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
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
      "uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
      "parent_uuid": "098f16fd-1f83-4915-b389-989c60aeccf8",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "c57419f3-93f7-4dea-84db-d28aa2093fd3",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "d0888597-5b02-4287-8e15-659d1f25d42c",
              "parent_uuid": "c57419f3-93f7-4dea-84db-d28aa2093fd3",
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
              "uuid": "55008dd6-3e58-4832-b1b2-8b6363db0396",
              "parent_uuid": "c57419f3-93f7-4dea-84db-d28aa2093fd3",
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
              "uuid": "93ad7984-ff1c-4e73-820f-26538e333a7a",
              "parent_uuid": "c57419f3-93f7-4dea-84db-d28aa2093fd3",
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
              "uuid": "847af96b-97e5-46d1-afe8-798dbfea4fd8",
              "parent_uuid": "c57419f3-93f7-4dea-84db-d28aa2093fd3",
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
          "uuid": "49af4ea8-6c92-4f0c-b4d3-a042992150f4",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "ce539129-e4a5-4cff-a524-6514b61c68da",
              "parent_uuid": "49af4ea8-6c92-4f0c-b4d3-a042992150f4",
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
              "uuid": "7e82ddec-8a89-484c-a731-ef455c7add6e",
              "parent_uuid": "49af4ea8-6c92-4f0c-b4d3-a042992150f4",
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
              "uuid": "338f665f-b93c-4dc3-97b6-f4a3b01d0d63",
              "parent_uuid": "49af4ea8-6c92-4f0c-b4d3-a042992150f4",
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
              "uuid": "1e5642ac-fa7c-4311-ba3a-4f16e67fd673",
              "parent_uuid": "49af4ea8-6c92-4f0c-b4d3-a042992150f4",
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
          "uuid": "ed016008-5673-4ed0-ad26-ef41750f0cda",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "11d27c2a-e72f-4a66-9b13-d11986e93ce5",
              "parent_uuid": "ed016008-5673-4ed0-ad26-ef41750f0cda",
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
              "uuid": "1e96f1e4-c980-425d-a3de-97a1fba4104d",
              "parent_uuid": "ed016008-5673-4ed0-ad26-ef41750f0cda",
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
              "uuid": "8bd1ec65-0280-434e-9530-c892aa02f4c6",
              "parent_uuid": "ed016008-5673-4ed0-ad26-ef41750f0cda",
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
              "uuid": "b425f2ec-3bb3-4e9e-8d7b-7a8545449ab9",
              "parent_uuid": "ed016008-5673-4ed0-ad26-ef41750f0cda",
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
              "uuid": "3353f9c5-71da-44f6-a711-9fbaa3194fc0",
              "parent_uuid": "ed016008-5673-4ed0-ad26-ef41750f0cda",
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
          "uuid": "17a7b927-fdb5-4b45-ae9d-4cdd6b295338",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "6da87ab6-b5ce-4028-86f5-944fd5cbaf14",
              "parent_uuid": "17a7b927-fdb5-4b45-ae9d-4cdd6b295338",
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
          "uuid": "e3b529a9-08e2-4694-8387-800d61104997",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cdb5c9a1-3f74-4bed-9662-deb00f96517b",
              "parent_uuid": "e3b529a9-08e2-4694-8387-800d61104997",
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
              "uuid": "6aca6017-d6aa-47dc-8936-61b519e6e010",
              "parent_uuid": "e3b529a9-08e2-4694-8387-800d61104997",
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
              "uuid": "79ab1f69-93bf-4c04-b5f3-21a5730cb63a",
              "parent_uuid": "e3b529a9-08e2-4694-8387-800d61104997",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07e0d433-b657-4cca-b1ef-4eba26a0272b",
                  "parent_uuid": "79ab1f69-93bf-4c04-b5f3-21a5730cb63a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "72d8b5cd-8c56-43e3-b9fd-76616e699f2f",
              "parent_uuid": "e3b529a9-08e2-4694-8387-800d61104997",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86332db1-8beb-40eb-be3a-ef4db87df320",
                  "parent_uuid": "72d8b5cd-8c56-43e3-b9fd-76616e699f2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f66f21a-6eec-4584-9a5a-53c65ccfc049",
              "parent_uuid": "e3b529a9-08e2-4694-8387-800d61104997",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "374b5132-b470-48b1-b6bd-32584f63f84d",
                  "parent_uuid": "3f66f21a-6eec-4584-9a5a-53c65ccfc049",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c2d1a8dd-36c8-45c2-985b-d67ed57e5550",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4bfb814d-1118-4f4c-9589-99178d4249bb",
              "parent_uuid": "c2d1a8dd-36c8-45c2-985b-d67ed57e5550",
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
              "uuid": "ef6569fb-53f8-481b-8a78-f2331e64219f",
              "parent_uuid": "c2d1a8dd-36c8-45c2-985b-d67ed57e5550",
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
              "uuid": "5181de3e-b95a-4da9-ad97-211e495009e3",
              "parent_uuid": "c2d1a8dd-36c8-45c2-985b-d67ed57e5550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e7081c3-a230-4776-91ef-99bdb8c583aa",
                  "parent_uuid": "5181de3e-b95a-4da9-ad97-211e495009e3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56436683-35d2-424c-8fb5-b3f0bb4fa7f8",
              "parent_uuid": "c2d1a8dd-36c8-45c2-985b-d67ed57e5550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03f04e49-77e0-4ee0-b4f3-22474c18f6c3",
                  "parent_uuid": "56436683-35d2-424c-8fb5-b3f0bb4fa7f8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2755024-999c-49ab-9bcf-ac323175b33c",
              "parent_uuid": "c2d1a8dd-36c8-45c2-985b-d67ed57e5550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2008b2cc-cd54-48c1-a962-44ba651411bf",
                  "parent_uuid": "b2755024-999c-49ab-9bcf-ac323175b33c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a27dd0c-96ca-4eba-9421-aa5e442819e5",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6ccebda7-4b87-477e-8ed6-58b2beb66693",
              "parent_uuid": "8a27dd0c-96ca-4eba-9421-aa5e442819e5",
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
              "uuid": "d98768ac-c340-4d57-a747-585f97c8faa5",
              "parent_uuid": "8a27dd0c-96ca-4eba-9421-aa5e442819e5",
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
              "uuid": "ef194dfd-1016-484d-80ff-d07996769ad6",
              "parent_uuid": "8a27dd0c-96ca-4eba-9421-aa5e442819e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0e0d0b6-5f2d-49b8-b1f1-aba862f9dc41",
                  "parent_uuid": "ef194dfd-1016-484d-80ff-d07996769ad6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3b98ca49-ab75-4058-a2a0-8ea726eaab79",
              "parent_uuid": "8a27dd0c-96ca-4eba-9421-aa5e442819e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1169ae98-1047-4a00-8c55-883ff1000c45",
                  "parent_uuid": "3b98ca49-ab75-4058-a2a0-8ea726eaab79",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74cb8ac5-afe4-40c5-8ee5-2ab7269ffd54",
              "parent_uuid": "8a27dd0c-96ca-4eba-9421-aa5e442819e5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0bc7d4b-99ba-47b8-89f7-931fbc4c70d9",
                  "parent_uuid": "74cb8ac5-afe4-40c5-8ee5-2ab7269ffd54",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0c2d3a03-d6c5-41f2-b8da-11f737f2b7e2",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e1164c1-4883-4874-8985-2ad8e2f53230",
              "parent_uuid": "0c2d3a03-d6c5-41f2-b8da-11f737f2b7e2",
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
              "uuid": "5294123b-16f2-4501-a5ec-3cdb93930e99",
              "parent_uuid": "0c2d3a03-d6c5-41f2-b8da-11f737f2b7e2",
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
              "uuid": "65ca94df-8fed-4d27-9c38-c29f59204650",
              "parent_uuid": "0c2d3a03-d6c5-41f2-b8da-11f737f2b7e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86bf09a4-f903-4233-8fd2-d6986f652a76",
                  "parent_uuid": "65ca94df-8fed-4d27-9c38-c29f59204650",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89aa40cd-a5b5-4a1d-b9c0-a4fa85e65351",
              "parent_uuid": "0c2d3a03-d6c5-41f2-b8da-11f737f2b7e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3182c88a-e507-4678-b2a4-37c0c7a672ce",
                  "parent_uuid": "89aa40cd-a5b5-4a1d-b9c0-a4fa85e65351",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "abe89b90-2bcc-442f-b1b8-44bf6420fcda",
              "parent_uuid": "0c2d3a03-d6c5-41f2-b8da-11f737f2b7e2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e80923cf-9075-475b-850b-f63cad0b4b9f",
                  "parent_uuid": "abe89b90-2bcc-442f-b1b8-44bf6420fcda",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "58f07c35-ef17-4380-8bc4-0ec646018d32",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3f9f43c6-d1f0-4df2-a819-3a90941d9584",
              "parent_uuid": "58f07c35-ef17-4380-8bc4-0ec646018d32",
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
              "uuid": "3f835fd3-b15b-4fe2-a265-904208c0970a",
              "parent_uuid": "58f07c35-ef17-4380-8bc4-0ec646018d32",
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
              "uuid": "cd721881-36cd-431f-9859-82f2dfe78206",
              "parent_uuid": "58f07c35-ef17-4380-8bc4-0ec646018d32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4e006043-8770-4eda-92ae-9581f99ecd1c",
                  "parent_uuid": "cd721881-36cd-431f-9859-82f2dfe78206",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0492aadd-75bc-4329-b00b-344b8319595b",
              "parent_uuid": "58f07c35-ef17-4380-8bc4-0ec646018d32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b007996-99e2-47b4-9eff-8f1bb4f48864",
                  "parent_uuid": "0492aadd-75bc-4329-b00b-344b8319595b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a4d76ef-3b46-4b9d-bb12-eb7c47315535",
              "parent_uuid": "58f07c35-ef17-4380-8bc4-0ec646018d32",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c2f40461-3171-4de0-899a-0267fa32338c",
                  "parent_uuid": "5a4d76ef-3b46-4b9d-bb12-eb7c47315535",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "91ca3f86-6eb6-4ae1-9577-0c7381b60e89",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6eee865f-c3f5-47f8-8da3-a96d01965c00",
              "parent_uuid": "91ca3f86-6eb6-4ae1-9577-0c7381b60e89",
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
              "uuid": "1e693141-a0b2-45f7-b86f-70d0b2924446",
              "parent_uuid": "91ca3f86-6eb6-4ae1-9577-0c7381b60e89",
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
              "uuid": "b4380e4d-4706-4e01-bb40-6dc4daf8978a",
              "parent_uuid": "91ca3f86-6eb6-4ae1-9577-0c7381b60e89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dceae124-8a7f-4c24-80e8-690df91b5697",
                  "parent_uuid": "b4380e4d-4706-4e01-bb40-6dc4daf8978a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "92427157-f113-4282-a771-4070a4324227",
              "parent_uuid": "91ca3f86-6eb6-4ae1-9577-0c7381b60e89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "007c6036-527c-48fe-81d0-35676a2f9404",
                  "parent_uuid": "92427157-f113-4282-a771-4070a4324227",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9ac6f8c9-4cb8-4219-b899-62795fe0f4d1",
              "parent_uuid": "91ca3f86-6eb6-4ae1-9577-0c7381b60e89",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b1560eda-e7bb-473d-9516-41f32510b212",
                  "parent_uuid": "9ac6f8c9-4cb8-4219-b899-62795fe0f4d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dd4fcb15-56c3-40c3-b243-a5c7eebf8fb3",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c9b5b92-a2d4-4d46-87e7-4802404fa06c",
              "parent_uuid": "dd4fcb15-56c3-40c3-b243-a5c7eebf8fb3",
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
              "uuid": "cb231e24-ad2c-45d4-9640-a9dc929a0407",
              "parent_uuid": "dd4fcb15-56c3-40c3-b243-a5c7eebf8fb3",
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
              "uuid": "d1d70c2c-dff7-4ca4-87fe-3db8e9e15cf6",
              "parent_uuid": "dd4fcb15-56c3-40c3-b243-a5c7eebf8fb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53c9f6e3-c5bf-47ff-9885-879012bb46ec",
                  "parent_uuid": "d1d70c2c-dff7-4ca4-87fe-3db8e9e15cf6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0a55f48-97f7-4490-8b4f-6b715ae5114f",
              "parent_uuid": "dd4fcb15-56c3-40c3-b243-a5c7eebf8fb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1f9d5f1f-2262-4d1a-a151-4dc3aa8cc1b5",
                  "parent_uuid": "f0a55f48-97f7-4490-8b4f-6b715ae5114f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "674e0a6c-d049-4e7b-896d-5869f00e3dc9",
              "parent_uuid": "dd4fcb15-56c3-40c3-b243-a5c7eebf8fb3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b57c2993-4515-407f-a749-7e9bedead454",
                  "parent_uuid": "674e0a6c-d049-4e7b-896d-5869f00e3dc9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "692a78e1-1a24-4c3e-9f3b-196f7c00954e",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7284e9a-65cf-46d3-9b0a-c61f2ddc1a90",
              "parent_uuid": "692a78e1-1a24-4c3e-9f3b-196f7c00954e",
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
              "uuid": "609d3ce9-9d1b-4b76-8be2-9ab946665527",
              "parent_uuid": "692a78e1-1a24-4c3e-9f3b-196f7c00954e",
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
              "uuid": "b95857d0-493d-4ed8-a64d-301966136e29",
              "parent_uuid": "692a78e1-1a24-4c3e-9f3b-196f7c00954e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dfd50f7c-ae65-4ce7-833c-2952f1167c1f",
                  "parent_uuid": "b95857d0-493d-4ed8-a64d-301966136e29",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7fbdb212-7bcb-4d5d-9fb5-34cf89893c09",
              "parent_uuid": "692a78e1-1a24-4c3e-9f3b-196f7c00954e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b3953384-4058-4c4f-b142-a02b393377c0",
                  "parent_uuid": "7fbdb212-7bcb-4d5d-9fb5-34cf89893c09",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d473d72-90dd-49eb-895b-d7af2562c104",
              "parent_uuid": "692a78e1-1a24-4c3e-9f3b-196f7c00954e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9161f48-3317-458c-83e4-380f5ca15899",
                  "parent_uuid": "8d473d72-90dd-49eb-895b-d7af2562c104",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "78dbbcae-954e-4e68-9263-ea0b5d83d10d",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2155b55a-3306-4073-a949-1f4a067d3724",
              "parent_uuid": "78dbbcae-954e-4e68-9263-ea0b5d83d10d",
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
              "uuid": "0807cd96-036f-48f6-a490-d638d4b2f500",
              "parent_uuid": "78dbbcae-954e-4e68-9263-ea0b5d83d10d",
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
              "uuid": "a5b4eb49-2c4d-4ffb-916e-68881f15eff9",
              "parent_uuid": "78dbbcae-954e-4e68-9263-ea0b5d83d10d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6abcee7-80fb-4cfc-891f-2ae872ddc835",
                  "parent_uuid": "a5b4eb49-2c4d-4ffb-916e-68881f15eff9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0584bbbc-f35b-4a8f-9232-604d63def6f1",
              "parent_uuid": "78dbbcae-954e-4e68-9263-ea0b5d83d10d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21875965-6da4-4456-bfb2-212140381876",
                  "parent_uuid": "0584bbbc-f35b-4a8f-9232-604d63def6f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b72e8861-e17a-40d3-9812-e59fc9a34cd9",
              "parent_uuid": "78dbbcae-954e-4e68-9263-ea0b5d83d10d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92a16c8e-f187-48d5-acb4-5da02f8f41b2",
                  "parent_uuid": "b72e8861-e17a-40d3-9812-e59fc9a34cd9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e10b32a6-261c-4bbc-bba8-5668a5832ce1",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "896d63e5-3dab-4496-9f1d-5a7ddd800918",
              "parent_uuid": "e10b32a6-261c-4bbc-bba8-5668a5832ce1",
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
              "uuid": "47e9fc83-d22e-4acf-9c61-93898767e219",
              "parent_uuid": "e10b32a6-261c-4bbc-bba8-5668a5832ce1",
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
              "uuid": "41688103-73fc-4558-851d-5445f8da6153",
              "parent_uuid": "e10b32a6-261c-4bbc-bba8-5668a5832ce1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbeeaed6-bdcb-451d-8086-5944d7411d57",
                  "parent_uuid": "41688103-73fc-4558-851d-5445f8da6153",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1aeedda9-eecf-487a-8dac-f4d33067946f",
              "parent_uuid": "e10b32a6-261c-4bbc-bba8-5668a5832ce1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d485b847-1f5b-4d66-aaa6-3c8be1db5b10",
                  "parent_uuid": "1aeedda9-eecf-487a-8dac-f4d33067946f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "35fbff3b-95e5-47dc-aca3-1ceafa5a9bb7",
              "parent_uuid": "e10b32a6-261c-4bbc-bba8-5668a5832ce1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ddee2fcc-0665-4ffd-8852-4f2900da6b14",
                  "parent_uuid": "35fbff3b-95e5-47dc-aca3-1ceafa5a9bb7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "643d0e6e-6f9d-423b-afab-6f1a1d1ab9fe",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8d4d40f1-22db-4df0-abf6-a7171e2f0225",
              "parent_uuid": "643d0e6e-6f9d-423b-afab-6f1a1d1ab9fe",
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
              "uuid": "8c71d9e4-902d-45aa-897f-6ae9a90c05ab",
              "parent_uuid": "643d0e6e-6f9d-423b-afab-6f1a1d1ab9fe",
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
              "uuid": "8f7f49b7-0cd1-424f-9a65-108ab9560454",
              "parent_uuid": "643d0e6e-6f9d-423b-afab-6f1a1d1ab9fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a347ac4-491a-4ef3-b5b4-6ba93a130a93",
                  "parent_uuid": "8f7f49b7-0cd1-424f-9a65-108ab9560454",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6bcbaa2b-830e-4ad3-9c3b-0e1f94b20ccf",
              "parent_uuid": "643d0e6e-6f9d-423b-afab-6f1a1d1ab9fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0666b7f-68c5-4228-b886-5598e0b0d974",
                  "parent_uuid": "6bcbaa2b-830e-4ad3-9c3b-0e1f94b20ccf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56bb2f49-610f-4685-935a-337e60d17763",
              "parent_uuid": "643d0e6e-6f9d-423b-afab-6f1a1d1ab9fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f043689-72df-4085-846c-a9d660f04d16",
                  "parent_uuid": "56bb2f49-610f-4685-935a-337e60d17763",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bb4564dc-15ff-4737-a301-678c20493a72",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ff03c77-28fb-486c-b3b0-c8a6d8dbb17a",
              "parent_uuid": "bb4564dc-15ff-4737-a301-678c20493a72",
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
              "uuid": "42db559d-6076-424c-b1aa-96eff835ff9d",
              "parent_uuid": "bb4564dc-15ff-4737-a301-678c20493a72",
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
              "uuid": "686ac0c9-fa2f-4047-9fff-365356c2276d",
              "parent_uuid": "bb4564dc-15ff-4737-a301-678c20493a72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "52d1ad1e-32d8-4806-b300-ae026e481329",
                  "parent_uuid": "686ac0c9-fa2f-4047-9fff-365356c2276d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09ba2251-ab43-4b76-a72c-13dd9075ef15",
              "parent_uuid": "bb4564dc-15ff-4737-a301-678c20493a72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "33ad0aab-77d0-4e12-8b5a-56402f7015a9",
                  "parent_uuid": "09ba2251-ab43-4b76-a72c-13dd9075ef15",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d7af7891-4819-4e63-b36a-e57f61d9da2c",
              "parent_uuid": "bb4564dc-15ff-4737-a301-678c20493a72",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "276818ee-dcf0-43ac-874a-a11ce4353a3e",
                  "parent_uuid": "d7af7891-4819-4e63-b36a-e57f61d9da2c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bb746f00-22a9-4c74-823d-8e1fce9709df",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b0fcea7-5dc2-4639-9bae-c7f9c14f66cf",
              "parent_uuid": "bb746f00-22a9-4c74-823d-8e1fce9709df",
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
              "uuid": "1763ef72-60b3-4818-915c-1d46f60d0dcb",
              "parent_uuid": "bb746f00-22a9-4c74-823d-8e1fce9709df",
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
              "uuid": "96782bee-7599-4abf-b10a-dedb2c9cf54d",
              "parent_uuid": "bb746f00-22a9-4c74-823d-8e1fce9709df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62e1fc01-66b5-4b35-8afc-64c1c0ca9d13",
                  "parent_uuid": "96782bee-7599-4abf-b10a-dedb2c9cf54d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24a4c40f-b10c-41c6-a0d6-b11055161e1f",
              "parent_uuid": "bb746f00-22a9-4c74-823d-8e1fce9709df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f580ae0f-474a-4db0-842f-522b674e5ab7",
                  "parent_uuid": "24a4c40f-b10c-41c6-a0d6-b11055161e1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf4853fe-eb6b-4747-a5d2-044b39ab8b5f",
              "parent_uuid": "bb746f00-22a9-4c74-823d-8e1fce9709df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fc11f533-ff8a-4cf3-abc9-227ef48bd9f3",
                  "parent_uuid": "bf4853fe-eb6b-4747-a5d2-044b39ab8b5f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c359f3ca-7423-48de-96cd-44eb46a3276b",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07b77c99-0663-4391-88f4-4a4851926366",
              "parent_uuid": "c359f3ca-7423-48de-96cd-44eb46a3276b",
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
              "uuid": "9430ec54-fe96-424a-aa7a-c2858b184196",
              "parent_uuid": "c359f3ca-7423-48de-96cd-44eb46a3276b",
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
              "uuid": "300666c2-9c88-4f14-b047-b264538ea316",
              "parent_uuid": "c359f3ca-7423-48de-96cd-44eb46a3276b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1766c0d2-f790-45a8-9f27-9f031b6d7b71",
                  "parent_uuid": "300666c2-9c88-4f14-b047-b264538ea316",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2c23b84d-3ca3-4a3d-ac58-05dd65a2db2b",
              "parent_uuid": "c359f3ca-7423-48de-96cd-44eb46a3276b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cd91426b-e977-4615-907c-ad4fb0892815",
                  "parent_uuid": "2c23b84d-3ca3-4a3d-ac58-05dd65a2db2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e4d0f58-4456-4acf-a746-e63a64113f33",
              "parent_uuid": "c359f3ca-7423-48de-96cd-44eb46a3276b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "06d17b34-1873-4ccd-aa7e-66e4d455d68b",
                  "parent_uuid": "2e4d0f58-4456-4acf-a746-e63a64113f33",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5197d156-a774-4378-acf0-d0253a6ff314",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7fd44d5-e949-4ae7-813e-238c8d5f8924",
              "parent_uuid": "5197d156-a774-4378-acf0-d0253a6ff314",
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
              "uuid": "472244a5-a174-4ef0-b101-4960f2f5fa61",
              "parent_uuid": "5197d156-a774-4378-acf0-d0253a6ff314",
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
              "uuid": "f708a990-76fe-4e0a-bdf9-4852fdfaa413",
              "parent_uuid": "5197d156-a774-4378-acf0-d0253a6ff314",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "01f160c5-2c0e-44f6-8471-0fc37c76fc08",
                  "parent_uuid": "f708a990-76fe-4e0a-bdf9-4852fdfaa413",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "287a0898-adf5-4d00-8357-52a9051afc9c",
              "parent_uuid": "5197d156-a774-4378-acf0-d0253a6ff314",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05c03cae-6c2d-4434-b99b-033046d7e5f0",
                  "parent_uuid": "287a0898-adf5-4d00-8357-52a9051afc9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "055b2f88-da91-42fb-9430-fd244b4860ca",
              "parent_uuid": "5197d156-a774-4378-acf0-d0253a6ff314",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abbd50f0-dd6c-420a-92d2-e49d81213ff8",
                  "parent_uuid": "055b2f88-da91-42fb-9430-fd244b4860ca",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a80f6cd2-07a1-47de-9687-55b4f2eb3972",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "688e9043-306b-4636-a804-41eabb20a50c",
              "parent_uuid": "a80f6cd2-07a1-47de-9687-55b4f2eb3972",
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
              "uuid": "880565d4-4fb6-4f1d-aa7c-ea1c47b5c5ef",
              "parent_uuid": "a80f6cd2-07a1-47de-9687-55b4f2eb3972",
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
              "uuid": "c4e6983c-a3f2-4437-9f35-d9dd03222dc5",
              "parent_uuid": "a80f6cd2-07a1-47de-9687-55b4f2eb3972",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18acfcda-d014-4d4a-92c3-9b76cb581197",
                  "parent_uuid": "c4e6983c-a3f2-4437-9f35-d9dd03222dc5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62ca756b-371c-4df4-8507-b7280028c473",
              "parent_uuid": "a80f6cd2-07a1-47de-9687-55b4f2eb3972",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a877e91f-27c2-4cff-a2d1-6bd76e8f2ca3",
                  "parent_uuid": "62ca756b-371c-4df4-8507-b7280028c473",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "415e437f-986d-402b-89ca-710a02f8ac80",
              "parent_uuid": "a80f6cd2-07a1-47de-9687-55b4f2eb3972",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12faebbb-2582-43cb-89d2-48083dfa9718",
                  "parent_uuid": "415e437f-986d-402b-89ca-710a02f8ac80",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e4955cd-244d-4548-b984-c298a06dcb7c",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c58ba081-df8c-4434-951c-83d77c31dcc8",
              "parent_uuid": "4e4955cd-244d-4548-b984-c298a06dcb7c",
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
          "uuid": "63bfa110-77ab-41d5-82db-015c892de85f",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2fe4ede6-8433-4721-86aa-977f81303f18",
              "parent_uuid": "63bfa110-77ab-41d5-82db-015c892de85f",
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
          "uuid": "18776666-390b-4e64-9e15-5683a681902d",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5b47ee0-e74f-4b92-99cf-55d2218459cf",
              "parent_uuid": "18776666-390b-4e64-9e15-5683a681902d",
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
                  "uuid": "88e3fbf0-dc12-4554-8686-275a4a6b7cea",
                  "parent_uuid": "d5b47ee0-e74f-4b92-99cf-55d2218459cf",
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
          "uuid": "79821e4e-36ae-4617-a1be-a2408ee321c0",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "45774b2e-b611-459f-b433-45a52e1562ce",
              "parent_uuid": "79821e4e-36ae-4617-a1be-a2408ee321c0",
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
          "uuid": "34779089-3d84-4a3d-b41a-2ede880c9f17",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "a24e776f-fcf7-414c-a38a-a9442f0d4a0c",
              "parent_uuid": "34779089-3d84-4a3d-b41a-2ede880c9f17",
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
          "uuid": "bf0bfb41-5d62-49a7-a404-92f1a91baf78",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75c74b82-2f10-4f1b-a05d-40e214473b85",
              "parent_uuid": "bf0bfb41-5d62-49a7-a404-92f1a91baf78",
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
              "uuid": "cf03f238-09e4-4b28-82c6-5bd8cf987cc0",
              "parent_uuid": "bf0bfb41-5d62-49a7-a404-92f1a91baf78",
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
              "uuid": "1af45a96-e5bc-4c87-a289-ecc5cb87407c",
              "parent_uuid": "bf0bfb41-5d62-49a7-a404-92f1a91baf78",
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
              "uuid": "5267a3d4-11ec-4b87-a789-39f55caadd40",
              "parent_uuid": "bf0bfb41-5d62-49a7-a404-92f1a91baf78",
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
              "uuid": "86951e34-403f-4aca-8b02-ecff1417448d",
              "parent_uuid": "bf0bfb41-5d62-49a7-a404-92f1a91baf78",
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
          "uuid": "1ae5737b-da7d-4d09-b180-06e3493059b1",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "30bbf17f-1639-43b5-8339-28ceacc3ca7b",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1d9f03a5-0a41-4d9e-8d1e-36fbc91ff27b",
              "parent_uuid": "30bbf17f-1639-43b5-8339-28ceacc3ca7b",
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
              "uuid": "7b6a4422-9edb-4d9f-8c46-da4b17a19851",
              "parent_uuid": "30bbf17f-1639-43b5-8339-28ceacc3ca7b",
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
              "uuid": "4e35a0e5-7fa1-4b3d-a51a-2f65514bc3b2",
              "parent_uuid": "30bbf17f-1639-43b5-8339-28ceacc3ca7b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f98e563-0f35-452d-8020-cfd29110ba39",
                  "parent_uuid": "4e35a0e5-7fa1-4b3d-a51a-2f65514bc3b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bd7cb86-f8e3-44ee-9813-c7b3224ab3ba",
              "parent_uuid": "30bbf17f-1639-43b5-8339-28ceacc3ca7b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c78a7104-d139-4a18-b143-a3e15f3ee1e4",
                  "parent_uuid": "0bd7cb86-f8e3-44ee-9813-c7b3224ab3ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "312d5edf-cef9-4060-921e-33c42aa7a643",
              "parent_uuid": "30bbf17f-1639-43b5-8339-28ceacc3ca7b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70a0cb78-5b43-41c8-8cb4-dbda47cef290",
                  "parent_uuid": "312d5edf-cef9-4060-921e-33c42aa7a643",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9fbda432-2204-42e2-92c0-5d2eea66e20e",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e0749fec-58a9-476e-83d0-633cd7d1a193",
              "parent_uuid": "9fbda432-2204-42e2-92c0-5d2eea66e20e",
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
              "uuid": "0df863bf-dc0b-4a9d-ad9c-46654ff1b856",
              "parent_uuid": "9fbda432-2204-42e2-92c0-5d2eea66e20e",
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
              "uuid": "92f11f5f-3b48-4c52-a32a-a123c81dbe2f",
              "parent_uuid": "9fbda432-2204-42e2-92c0-5d2eea66e20e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba6d4baf-fafe-45d1-98d9-3f57e4e6843b",
                  "parent_uuid": "92f11f5f-3b48-4c52-a32a-a123c81dbe2f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "39ef48d5-b3e9-43d1-8523-417723ee009e",
              "parent_uuid": "9fbda432-2204-42e2-92c0-5d2eea66e20e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c10b0c44-c764-4dfe-9406-3c72a0ba15fd",
                  "parent_uuid": "39ef48d5-b3e9-43d1-8523-417723ee009e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3f3f75c-51bf-4235-9dfb-1cb1616a8448",
              "parent_uuid": "9fbda432-2204-42e2-92c0-5d2eea66e20e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f87c9a4-a4c5-4966-a347-6992a9b2ef74",
                  "parent_uuid": "e3f3f75c-51bf-4235-9dfb-1cb1616a8448",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "848b5831-4958-48b0-a1bf-e63c0759b2bf",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71a8c4b4-0190-41c6-80be-336250fee442",
              "parent_uuid": "848b5831-4958-48b0-a1bf-e63c0759b2bf",
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
              "uuid": "81b683ff-3f76-4c74-a3f6-7839a945a52b",
              "parent_uuid": "848b5831-4958-48b0-a1bf-e63c0759b2bf",
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
              "uuid": "6210b8d4-dc3f-4ac0-bfc3-638c88bc01e1",
              "parent_uuid": "848b5831-4958-48b0-a1bf-e63c0759b2bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a847af1b-8df9-46b8-b3be-a417c984356a",
                  "parent_uuid": "6210b8d4-dc3f-4ac0-bfc3-638c88bc01e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c934ea5-e4c6-4098-b15d-037527b5a4b3",
              "parent_uuid": "848b5831-4958-48b0-a1bf-e63c0759b2bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75f12f87-8ade-411c-bc6c-138988f0fe5a",
                  "parent_uuid": "3c934ea5-e4c6-4098-b15d-037527b5a4b3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "298fd1a0-9c22-40b7-8043-ed041f48b1d1",
              "parent_uuid": "848b5831-4958-48b0-a1bf-e63c0759b2bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c382767-f8c3-493e-9b8e-f88ad797aef8",
                  "parent_uuid": "298fd1a0-9c22-40b7-8043-ed041f48b1d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "21a727bb-81d0-4532-bf2a-5e88df6882ee",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16dfba0e-d9cb-423c-9394-a20ea8c40ac0",
              "parent_uuid": "21a727bb-81d0-4532-bf2a-5e88df6882ee",
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
              "uuid": "903dce4e-1fd7-403c-a8d4-4e05c0286ecb",
              "parent_uuid": "21a727bb-81d0-4532-bf2a-5e88df6882ee",
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
              "uuid": "bc40f048-57b6-484b-9dfa-a2ab175c8549",
              "parent_uuid": "21a727bb-81d0-4532-bf2a-5e88df6882ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffc190ab-ae1f-4566-b15f-557d9de2ac5d",
                  "parent_uuid": "bc40f048-57b6-484b-9dfa-a2ab175c8549",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b339e4f5-8836-4a25-9f18-7c2b4408bc55",
              "parent_uuid": "21a727bb-81d0-4532-bf2a-5e88df6882ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "621439ca-e4f2-4437-b3ab-bac6cda17062",
                  "parent_uuid": "b339e4f5-8836-4a25-9f18-7c2b4408bc55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0ff9230-29d3-44ef-b465-00bd02501bd7",
              "parent_uuid": "21a727bb-81d0-4532-bf2a-5e88df6882ee",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b31ad12f-702f-44ea-92a1-b7470b2a5dc6",
                  "parent_uuid": "a0ff9230-29d3-44ef-b465-00bd02501bd7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "457316b2-b3ae-410e-b444-f4c1f63e3d38",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "425519c6-15eb-460a-9bf9-5efd680c85b1",
              "parent_uuid": "457316b2-b3ae-410e-b444-f4c1f63e3d38",
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
          "uuid": "bd4c3f9c-8cb4-461f-a6b2-2f172321058a",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8c739eab-bce6-40b9-91f2-cc822d7222e9",
              "parent_uuid": "bd4c3f9c-8cb4-461f-a6b2-2f172321058a",
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
          "uuid": "8c2df182-8c69-48c5-a465-8f30979b6570",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2313bb71-2fed-4ca8-ab86-64254def221a",
              "parent_uuid": "8c2df182-8c69-48c5-a465-8f30979b6570",
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
                  "uuid": "7afc799e-9643-41f7-bf82-d26a45f08deb",
                  "parent_uuid": "2313bb71-2fed-4ca8-ab86-64254def221a",
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
          "uuid": "0c88f264-eb7a-418e-860b-c43b4a315b78",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "7fbac144-51c5-4273-ac6b-58e29625d1ef",
              "parent_uuid": "0c88f264-eb7a-418e-860b-c43b4a315b78",
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
          "uuid": "9fe3f0c8-92d1-41d1-af35-150870b2b61e",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1f95c53e-1a18-4829-80c5-4489d5ed9a2c",
              "parent_uuid": "9fe3f0c8-92d1-41d1-af35-150870b2b61e",
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
          "uuid": "05d773e5-8677-442d-9f5e-18dcfed3549f",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3018b21e-024e-4bd8-8bff-c86a53b8db19",
              "parent_uuid": "05d773e5-8677-442d-9f5e-18dcfed3549f",
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
              "uuid": "eb501a69-527e-4d4c-bcdb-f36b76cab447",
              "parent_uuid": "05d773e5-8677-442d-9f5e-18dcfed3549f",
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
              "uuid": "5cf97efa-9ae5-4478-82ae-19ac5a4a6622",
              "parent_uuid": "05d773e5-8677-442d-9f5e-18dcfed3549f",
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
              "uuid": "c13aa39e-30bb-4209-bad5-65e0333eecdd",
              "parent_uuid": "05d773e5-8677-442d-9f5e-18dcfed3549f",
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
              "uuid": "79fc28cc-af4e-4618-b5e5-7a29635f0949",
              "parent_uuid": "05d773e5-8677-442d-9f5e-18dcfed3549f",
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
          "uuid": "c4fe75f4-af19-4304-9a0e-54e9a8a032fa",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f66bc5fa-aad7-400b-8fc2-67c8bed99a06",
              "parent_uuid": "c4fe75f4-af19-4304-9a0e-54e9a8a032fa",
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
              "uuid": "fa2a2722-1100-48c8-bc37-4def21a732c5",
              "parent_uuid": "c4fe75f4-af19-4304-9a0e-54e9a8a032fa",
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
              "uuid": "e0460184-f9f4-4911-90b7-56938f640a07",
              "parent_uuid": "c4fe75f4-af19-4304-9a0e-54e9a8a032fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5266992-8f3f-45dd-93c4-dffe83899d64",
                  "parent_uuid": "e0460184-f9f4-4911-90b7-56938f640a07",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1709c1fe-fb28-477e-8236-034148c8ee3c",
              "parent_uuid": "c4fe75f4-af19-4304-9a0e-54e9a8a032fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61610d20-1abf-4146-aa9b-706f1c265ba7",
                  "parent_uuid": "1709c1fe-fb28-477e-8236-034148c8ee3c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0cfdfeca-ec85-4753-ab4d-bc0b962d0cd0",
              "parent_uuid": "c4fe75f4-af19-4304-9a0e-54e9a8a032fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7ddf815-a95e-4cec-9b28-fa6cfab99088",
                  "parent_uuid": "0cfdfeca-ec85-4753-ab4d-bc0b962d0cd0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9b75e999-4944-461e-a353-6c7ea529c6ad",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ebb9ac98-d24e-4cb4-940f-d6c850bef56d",
              "parent_uuid": "9b75e999-4944-461e-a353-6c7ea529c6ad",
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
              "uuid": "9f18057b-4329-4dc5-99d5-3d08d8d6ce03",
              "parent_uuid": "9b75e999-4944-461e-a353-6c7ea529c6ad",
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
              "uuid": "e5c504fc-f936-43b2-88d0-672ffe6899f6",
              "parent_uuid": "9b75e999-4944-461e-a353-6c7ea529c6ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8843bb7c-299a-4e6e-95bd-1a2cedd7b74b",
                  "parent_uuid": "e5c504fc-f936-43b2-88d0-672ffe6899f6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "31c90faa-817a-4023-b1e8-8448e1d1fc97",
              "parent_uuid": "9b75e999-4944-461e-a353-6c7ea529c6ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f644bd65-ec66-46dd-95e9-2460d2fc4829",
                  "parent_uuid": "31c90faa-817a-4023-b1e8-8448e1d1fc97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0c21206-730a-415d-a0c8-206d1520fee8",
              "parent_uuid": "9b75e999-4944-461e-a353-6c7ea529c6ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f788a0c-4ec0-4d95-a14c-da6b3a09d242",
                  "parent_uuid": "b0c21206-730a-415d-a0c8-206d1520fee8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d0a46388-e5fa-48ec-aa19-171d5cc3bdeb",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "decd441c-2662-4e42-8973-ec75fa58900d",
              "parent_uuid": "d0a46388-e5fa-48ec-aa19-171d5cc3bdeb",
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
              "uuid": "f9f99f5f-ac2e-4743-ac71-ae2e3a7f6eb2",
              "parent_uuid": "d0a46388-e5fa-48ec-aa19-171d5cc3bdeb",
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
              "uuid": "fad6de52-0c2b-4978-b10b-f66ecf60cd0e",
              "parent_uuid": "d0a46388-e5fa-48ec-aa19-171d5cc3bdeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "852a89b8-5fc6-415d-98c6-34418cb8f720",
                  "parent_uuid": "fad6de52-0c2b-4978-b10b-f66ecf60cd0e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8999f6e3-410c-4dbe-bf29-4c8c5b479f77",
              "parent_uuid": "d0a46388-e5fa-48ec-aa19-171d5cc3bdeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "92501140-2f4d-4743-89f9-bb83e08c419a",
                  "parent_uuid": "8999f6e3-410c-4dbe-bf29-4c8c5b479f77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65617d2b-868d-441e-817d-ce4a65f2f1e8",
              "parent_uuid": "d0a46388-e5fa-48ec-aa19-171d5cc3bdeb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "86ff35d1-9413-4d23-a65f-268a16af2739",
                  "parent_uuid": "65617d2b-868d-441e-817d-ce4a65f2f1e8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9d8c22ec-e930-486e-bf56-f802f7e2bbb0",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0a3b02be-5388-4bd3-aa21-8b1838d5bcf4",
              "parent_uuid": "9d8c22ec-e930-486e-bf56-f802f7e2bbb0",
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
              "uuid": "4b087f1e-f109-4caa-8867-965b82924b85",
              "parent_uuid": "9d8c22ec-e930-486e-bf56-f802f7e2bbb0",
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
              "uuid": "d9f83703-6aaa-409c-a016-43fb679a8e91",
              "parent_uuid": "9d8c22ec-e930-486e-bf56-f802f7e2bbb0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ccb19254-b6f8-4098-801d-e5391289e675",
                  "parent_uuid": "d9f83703-6aaa-409c-a016-43fb679a8e91",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "09d29ca4-6e35-40df-b908-301a841324b5",
              "parent_uuid": "9d8c22ec-e930-486e-bf56-f802f7e2bbb0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "02a27d60-e1cf-4f51-9412-b1791d1ff276",
                  "parent_uuid": "09d29ca4-6e35-40df-b908-301a841324b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5a4d959-22f9-453f-a1c1-d801fd34cdeb",
              "parent_uuid": "9d8c22ec-e930-486e-bf56-f802f7e2bbb0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ef2aa91d-1ce4-45e4-8330-577132f8aa1b",
                  "parent_uuid": "c5a4d959-22f9-453f-a1c1-d801fd34cdeb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7b3fca30-4d3d-4f4c-9a4e-954637102174",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1a8a744-db36-49fe-a8ef-7b27413ad271",
              "parent_uuid": "7b3fca30-4d3d-4f4c-9a4e-954637102174",
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
              "uuid": "cda4be93-ede3-4c0e-a665-9f8fbf7ae9c2",
              "parent_uuid": "7b3fca30-4d3d-4f4c-9a4e-954637102174",
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
              "uuid": "793c3234-32f7-4c45-b138-98c70b2c98f5",
              "parent_uuid": "7b3fca30-4d3d-4f4c-9a4e-954637102174",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d434e927-5438-4abd-b3fe-87cecb53d438",
                  "parent_uuid": "793c3234-32f7-4c45-b138-98c70b2c98f5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "566c3bfa-790b-4e24-9f13-69dc8f88ed9b",
              "parent_uuid": "7b3fca30-4d3d-4f4c-9a4e-954637102174",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d3759080-d227-4a27-8350-74d67a3a387f",
                  "parent_uuid": "566c3bfa-790b-4e24-9f13-69dc8f88ed9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9f613d3-5399-455a-8ac5-8f8c06d13e36",
              "parent_uuid": "7b3fca30-4d3d-4f4c-9a4e-954637102174",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "678d3e3b-7504-484b-8799-fe654963412d",
                  "parent_uuid": "d9f613d3-5399-455a-8ac5-8f8c06d13e36",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a7d09589-6017-4829-b152-c9477cfbe9d4",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "35c85c67-4128-4000-a0da-ba26daca3fc6",
              "parent_uuid": "a7d09589-6017-4829-b152-c9477cfbe9d4",
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
              "uuid": "fff084b8-3fbd-48cc-b0cb-9fe19a623eef",
              "parent_uuid": "a7d09589-6017-4829-b152-c9477cfbe9d4",
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
              "uuid": "f5531b10-7ab8-47c4-99ba-e751de0576ba",
              "parent_uuid": "a7d09589-6017-4829-b152-c9477cfbe9d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b387eac7-8fb3-4788-a756-1394f4373a02",
                  "parent_uuid": "f5531b10-7ab8-47c4-99ba-e751de0576ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0ef8487f-9db1-4161-918a-3b31b82de5b4",
              "parent_uuid": "a7d09589-6017-4829-b152-c9477cfbe9d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "331c1994-d91b-47a3-bf9d-35ee73b167b8",
                  "parent_uuid": "0ef8487f-9db1-4161-918a-3b31b82de5b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01a07cc5-7a08-4998-a4e1-3b24a1ea2ddb",
              "parent_uuid": "a7d09589-6017-4829-b152-c9477cfbe9d4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "37e70e8e-87fb-4ecf-ac3c-800ab8431547",
                  "parent_uuid": "01a07cc5-7a08-4998-a4e1-3b24a1ea2ddb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "65186b95-980c-4988-8251-267cfc9261e3",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2457a07b-915d-4c20-bffc-9b63ec74e639",
              "parent_uuid": "65186b95-980c-4988-8251-267cfc9261e3",
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
          "uuid": "dc8e951e-ed6d-42a9-b52f-37b0475e367c",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fd4814b-db67-465c-9966-c288b974cc2d",
              "parent_uuid": "dc8e951e-ed6d-42a9-b52f-37b0475e367c",
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
          "uuid": "10bac4c3-4cce-4d47-baca-1b398a9a6956",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4e8d05e8-184d-4280-a4ad-0558f582445b",
              "parent_uuid": "10bac4c3-4cce-4d47-baca-1b398a9a6956",
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
                  "uuid": "fca5799d-3b54-4190-8ffd-ceacff447b76",
                  "parent_uuid": "4e8d05e8-184d-4280-a4ad-0558f582445b",
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
          "uuid": "7cd391cb-884b-4b47-b74c-716c61099fe8",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "207a5e8a-e41e-47e2-93e6-c5147457a794",
              "parent_uuid": "7cd391cb-884b-4b47-b74c-716c61099fe8",
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
          "uuid": "68987860-2e67-42fd-b036-72c5340ac929",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "eb69b212-d842-45d5-8372-f7a24815d3b4",
              "parent_uuid": "68987860-2e67-42fd-b036-72c5340ac929",
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
          "uuid": "b8e2f981-c670-425a-b061-03db2de5ce28",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b685d6b6-5048-4b43-9984-725a043570fc",
              "parent_uuid": "b8e2f981-c670-425a-b061-03db2de5ce28",
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
              "uuid": "efc03780-4557-40a0-aa1a-42a41a8d5b85",
              "parent_uuid": "b8e2f981-c670-425a-b061-03db2de5ce28",
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
              "uuid": "f8559dd4-d72e-43cd-9391-3a1bcbaf23ea",
              "parent_uuid": "b8e2f981-c670-425a-b061-03db2de5ce28",
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
              "uuid": "b2bc0460-4273-4cc1-80ff-9a6c6fcc09d9",
              "parent_uuid": "b8e2f981-c670-425a-b061-03db2de5ce28",
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
          "uuid": "dcddf022-3825-4c16-8f26-4973363bf972",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8dc1a5b9-77b9-4ab1-916d-5a41c874a2f7",
              "parent_uuid": "dcddf022-3825-4c16-8f26-4973363bf972",
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
              "uuid": "37fe22bc-236c-40c9-a01f-c33c78138946",
              "parent_uuid": "dcddf022-3825-4c16-8f26-4973363bf972",
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
              "uuid": "e98e99a6-a992-4618-842a-23b6f1d878ff",
              "parent_uuid": "dcddf022-3825-4c16-8f26-4973363bf972",
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
              "uuid": "936b6fd5-b45a-4658-aa55-527fe937ae22",
              "parent_uuid": "dcddf022-3825-4c16-8f26-4973363bf972",
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
          "uuid": "4ef04034-6aa2-45ea-9167-649cc22431ec",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2587bbab-2181-42d2-85a7-1300caa2a823",
              "parent_uuid": "4ef04034-6aa2-45ea-9167-649cc22431ec",
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
              "uuid": "14d6981d-23b1-4a80-bf78-02bba71c8154",
              "parent_uuid": "4ef04034-6aa2-45ea-9167-649cc22431ec",
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
              "uuid": "80658d24-ec03-4e81-8971-9c20b82d6ae6",
              "parent_uuid": "4ef04034-6aa2-45ea-9167-649cc22431ec",
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
              "uuid": "e063bd75-e878-4205-9f21-194069fc70c7",
              "parent_uuid": "4ef04034-6aa2-45ea-9167-649cc22431ec",
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
          "uuid": "1938121a-cee7-41ff-960a-8e57b208e0ff",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "672b7b15-b655-4b8c-bca2-c66fef1eae34",
              "parent_uuid": "1938121a-cee7-41ff-960a-8e57b208e0ff",
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
              "uuid": "da5e5720-a4ae-47af-8a64-3868abf91c62",
              "parent_uuid": "1938121a-cee7-41ff-960a-8e57b208e0ff",
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
              "uuid": "2b22cd85-00c2-48b7-83f1-07c87e3ce243",
              "parent_uuid": "1938121a-cee7-41ff-960a-8e57b208e0ff",
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
              "uuid": "d02f5b39-c3d0-4473-b2eb-0f4568fa8ca3",
              "parent_uuid": "1938121a-cee7-41ff-960a-8e57b208e0ff",
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
          "uuid": "7af2dfff-1773-45ca-bbb6-b7becc92e1f2",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "69f6ded8-cdcd-42d4-b61c-4970f40eb5c9",
              "parent_uuid": "7af2dfff-1773-45ca-bbb6-b7becc92e1f2",
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
              "uuid": "29b5892c-8f89-446c-b3cb-53dbc1dc9297",
              "parent_uuid": "7af2dfff-1773-45ca-bbb6-b7becc92e1f2",
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
              "uuid": "2a54cbf4-0652-47fa-8680-494ba7db2baa",
              "parent_uuid": "7af2dfff-1773-45ca-bbb6-b7becc92e1f2",
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
              "uuid": "746429ce-060f-489d-ab59-e2eab7ccaf28",
              "parent_uuid": "7af2dfff-1773-45ca-bbb6-b7becc92e1f2",
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
          "uuid": "47b08f19-7a4b-47ee-b863-3d33e93fb7f9",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "130ff746-8644-4b73-b84d-7921724f67bf",
              "parent_uuid": "47b08f19-7a4b-47ee-b863-3d33e93fb7f9",
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
              "uuid": "c3020c7e-cb90-4f3c-a5ed-75394ad1092c",
              "parent_uuid": "47b08f19-7a4b-47ee-b863-3d33e93fb7f9",
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
              "uuid": "a79bff01-1e60-4a40-937f-def6f8ac1b5a",
              "parent_uuid": "47b08f19-7a4b-47ee-b863-3d33e93fb7f9",
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
              "uuid": "ebc4ca6f-0df4-4012-846f-77a7c1ff0f9a",
              "parent_uuid": "47b08f19-7a4b-47ee-b863-3d33e93fb7f9",
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
          "uuid": "1b0feac2-90e4-4497-a12c-37028e95c758",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "af2b3d0f-ba49-4bbe-934a-3724681a2d27",
              "parent_uuid": "1b0feac2-90e4-4497-a12c-37028e95c758",
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
              "uuid": "842abe87-fbe5-4ca1-a4b6-dabbed6fffcd",
              "parent_uuid": "1b0feac2-90e4-4497-a12c-37028e95c758",
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
              "uuid": "abe5b59c-c7d9-4450-99fb-78663a37d6f5",
              "parent_uuid": "1b0feac2-90e4-4497-a12c-37028e95c758",
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
              "uuid": "06a4e95f-037b-422c-9037-6ce68aa3e2ec",
              "parent_uuid": "1b0feac2-90e4-4497-a12c-37028e95c758",
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
          "uuid": "25833886-52ba-47f3-bddd-a4ec6f6a7c98",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef73464b-8b39-49b3-975d-003277f3e008",
              "parent_uuid": "25833886-52ba-47f3-bddd-a4ec6f6a7c98",
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
              "uuid": "8097d5fa-982a-492e-a334-06a997672fce",
              "parent_uuid": "25833886-52ba-47f3-bddd-a4ec6f6a7c98",
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
              "uuid": "28224168-426e-4b8c-b55a-07541bf97530",
              "parent_uuid": "25833886-52ba-47f3-bddd-a4ec6f6a7c98",
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
              "uuid": "5bc410c4-13b5-4bce-8213-7d80d9dc727e",
              "parent_uuid": "25833886-52ba-47f3-bddd-a4ec6f6a7c98",
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
          "uuid": "af0b1e41-84e9-4092-8989-86b9b8366cfe",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea43d1e9-ae4d-4256-bc27-25802b37a142",
              "parent_uuid": "af0b1e41-84e9-4092-8989-86b9b8366cfe",
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
              "uuid": "faa5bf3a-c72e-42e0-bd93-ba370e811190",
              "parent_uuid": "af0b1e41-84e9-4092-8989-86b9b8366cfe",
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
              "uuid": "39b775de-2fea-426a-aad5-639b5845ecd5",
              "parent_uuid": "af0b1e41-84e9-4092-8989-86b9b8366cfe",
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
              "uuid": "c008f2a7-e038-47a1-b749-d61be76aa787",
              "parent_uuid": "af0b1e41-84e9-4092-8989-86b9b8366cfe",
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
          "uuid": "3fb8450e-2173-4dd4-859c-17868413a2cb",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "49cf52cf-c7d0-45f6-911c-2ab2bfcabc66",
              "parent_uuid": "3fb8450e-2173-4dd4-859c-17868413a2cb",
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
              "uuid": "8d3e5631-c024-451b-822b-0f8301c30e75",
              "parent_uuid": "3fb8450e-2173-4dd4-859c-17868413a2cb",
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
              "uuid": "25f7c41f-88c3-42de-8aef-edd5e14443c2",
              "parent_uuid": "3fb8450e-2173-4dd4-859c-17868413a2cb",
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
              "uuid": "44c82f3c-350e-4ec2-972d-4d3f2f00ee40",
              "parent_uuid": "3fb8450e-2173-4dd4-859c-17868413a2cb",
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
          "uuid": "fa4fd237-ae98-4e3f-914c-d1a727411434",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "58e88dc2-6bba-4f38-a311-5de0b5b248e7",
              "parent_uuid": "fa4fd237-ae98-4e3f-914c-d1a727411434",
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
              "uuid": "be9032cd-fb2b-49f4-8e30-0519c5fb57b6",
              "parent_uuid": "fa4fd237-ae98-4e3f-914c-d1a727411434",
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
              "uuid": "c75053a4-eac2-42d6-bf7b-17a1e36d617c",
              "parent_uuid": "fa4fd237-ae98-4e3f-914c-d1a727411434",
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
              "uuid": "ae7a34b9-8b4c-45d2-a16f-e4a8940d4005",
              "parent_uuid": "fa4fd237-ae98-4e3f-914c-d1a727411434",
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
          "uuid": "10521adb-3346-418f-afcc-ebda5e4268cd",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4e9009d-08a0-45ff-93a4-51e6bdaaeaed",
              "parent_uuid": "10521adb-3346-418f-afcc-ebda5e4268cd",
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
              "uuid": "adbe3a78-1fa0-49c6-98bd-9460985aa0dc",
              "parent_uuid": "10521adb-3346-418f-afcc-ebda5e4268cd",
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
              "uuid": "7d2bfeaa-a0ca-4484-98bb-88a0e0a8c320",
              "parent_uuid": "10521adb-3346-418f-afcc-ebda5e4268cd",
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
              "uuid": "dca24078-1197-4539-b05e-a5887e20b11a",
              "parent_uuid": "10521adb-3346-418f-afcc-ebda5e4268cd",
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
          "uuid": "cbbabc7e-b4ba-4075-a8fd-312acf6aff47",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f595d5c4-4118-409d-a234-0f877f0206c3",
              "parent_uuid": "cbbabc7e-b4ba-4075-a8fd-312acf6aff47",
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
              "uuid": "ace3184a-8208-411d-a2d7-4715bf3ecf45",
              "parent_uuid": "cbbabc7e-b4ba-4075-a8fd-312acf6aff47",
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
              "uuid": "fd6ffe77-3e5e-49a9-a4a0-8a605b75596c",
              "parent_uuid": "cbbabc7e-b4ba-4075-a8fd-312acf6aff47",
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
              "uuid": "481da93d-aabc-415d-b646-b28af3daa814",
              "parent_uuid": "cbbabc7e-b4ba-4075-a8fd-312acf6aff47",
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
          "uuid": "d7b22e16-ad45-4b17-8a62-384fada7a1f9",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea5698e0-9404-475b-8231-495e15962bf1",
              "parent_uuid": "d7b22e16-ad45-4b17-8a62-384fada7a1f9",
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
          "uuid": "e3bd3968-87cc-4c18-9cef-98a369739ed4",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f03a7de-ad89-41be-8bce-7a2aca2c0b8d",
              "parent_uuid": "e3bd3968-87cc-4c18-9cef-98a369739ed4",
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
          "uuid": "387382b4-13cc-4589-bf7c-c08da3c59365",
          "parent_uuid": "32709a31-b655-4e15-b8e4-576c9eb48979",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "98752500-899f-40ef-b4fa-c14a7569f966",
              "parent_uuid": "387382b4-13cc-4589-bf7c-c08da3c59365",
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
                  "uuid": "6b1a3b31-16a4-493d-b892-a71844ea559e",
                  "parent_uuid": "98752500-899f-40ef-b4fa-c14a7569f966",
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
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

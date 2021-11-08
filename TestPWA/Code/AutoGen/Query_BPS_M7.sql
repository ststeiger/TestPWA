
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
  "uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "0d00a7b0-2260-4ac5-ad08-5b127dc4bb03",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "4abb7b21-e7f6-4c59-9b51-44332e82d4f6",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "184c82c3-f5e2-4dd9-baa0-c38f49a5bb35",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "3fddd475-1e27-4449-b9d6-04a9d1c25fb6",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "433f64c4-b267-4bbd-98b4-d01f42e648e5",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "2db82534-d3d6-4971-b495-a47cb9b4fdb0",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "8c0a514c-55a6-446b-b49d-cca8b2fc8aa2",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
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
      "uuid": "42596530-38a9-4883-a684-61254f4d2467",
      "parent_uuid": "95d251b2-cfd3-4c1b-93ef-504cbf49dd4f",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "009930aa-1c03-4527-bb2d-6fee44e14845",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "0c266bd4-ee05-4787-bcd9-75eb073649e8",
              "parent_uuid": "009930aa-1c03-4527-bb2d-6fee44e14845",
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
              "uuid": "f4c34879-b4dd-4321-bdac-15386626bfd9",
              "parent_uuid": "009930aa-1c03-4527-bb2d-6fee44e14845",
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
              "uuid": "f24e3ad0-e71e-4b86-baa6-668a7d6e35b6",
              "parent_uuid": "009930aa-1c03-4527-bb2d-6fee44e14845",
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
              "uuid": "41d50028-7a8b-49d4-b0a5-12a842e83605",
              "parent_uuid": "009930aa-1c03-4527-bb2d-6fee44e14845",
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
          "uuid": "9441839f-de4a-4045-84d7-e8630ed6eea8",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "b20d8bef-cb7f-4a25-ac9d-f55b976afb7c",
              "parent_uuid": "9441839f-de4a-4045-84d7-e8630ed6eea8",
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
              "uuid": "22e5e8f7-bf51-4e22-b4bc-fe32e8b43b38",
              "parent_uuid": "9441839f-de4a-4045-84d7-e8630ed6eea8",
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
              "uuid": "8d518c42-828b-47e0-8f21-999575e8d159",
              "parent_uuid": "9441839f-de4a-4045-84d7-e8630ed6eea8",
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
              "uuid": "d1e0ef11-6318-4f5f-bb80-9faa16950d59",
              "parent_uuid": "9441839f-de4a-4045-84d7-e8630ed6eea8",
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
          "uuid": "fdb62989-3df2-4914-8b93-7ee6b1290dee",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "b7b08646-c82f-4b4a-b56f-6b553510387c",
              "parent_uuid": "fdb62989-3df2-4914-8b93-7ee6b1290dee",
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
              "uuid": "fa829558-1256-481f-a33a-5e63d530854a",
              "parent_uuid": "fdb62989-3df2-4914-8b93-7ee6b1290dee",
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
              "uuid": "fec11bb2-b126-46b3-bb10-cf09de7ef202",
              "parent_uuid": "fdb62989-3df2-4914-8b93-7ee6b1290dee",
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
              "uuid": "c2f3ad1a-75eb-49d4-a9dc-3061c69d64b5",
              "parent_uuid": "fdb62989-3df2-4914-8b93-7ee6b1290dee",
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
              "uuid": "2664c631-ec0d-4a36-8d20-b0ae369efe68",
              "parent_uuid": "fdb62989-3df2-4914-8b93-7ee6b1290dee",
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
              "uuid": "37ac35c4-59b9-4b89-96b6-56f42129119a",
              "parent_uuid": "fdb62989-3df2-4914-8b93-7ee6b1290dee",
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
          "uuid": "b436cac9-bf11-44c0-92b0-b7fb4d2f9b4a",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f95301bf-9943-4a5d-bbd2-48d2d17d3c92",
              "parent_uuid": "b436cac9-bf11-44c0-92b0-b7fb4d2f9b4a",
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
          "uuid": "52a8a6ff-81d4-4aa6-8f3b-9e109677c5a8",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6c794ee5-af45-406c-9768-d68ae660cb46",
              "parent_uuid": "52a8a6ff-81d4-4aa6-8f3b-9e109677c5a8",
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
              "uuid": "a37393e8-439e-47fb-9973-cbeb83cbf863",
              "parent_uuid": "52a8a6ff-81d4-4aa6-8f3b-9e109677c5a8",
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
              "uuid": "ace77aa8-0c60-4511-b567-70d3688856f1",
              "parent_uuid": "52a8a6ff-81d4-4aa6-8f3b-9e109677c5a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c99d3899-7389-46aa-be4d-7a7bf121e859",
                  "parent_uuid": "ace77aa8-0c60-4511-b567-70d3688856f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4842b3dd-6d55-4b87-a9b2-deacfd277d22",
              "parent_uuid": "52a8a6ff-81d4-4aa6-8f3b-9e109677c5a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "877e2af0-664d-49f1-a587-0ef52fcac0f2",
                  "parent_uuid": "4842b3dd-6d55-4b87-a9b2-deacfd277d22",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e62a53db-8039-4860-bfa1-14207a6f4799",
              "parent_uuid": "52a8a6ff-81d4-4aa6-8f3b-9e109677c5a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "16c2b22a-95bf-48a1-be3c-043c78092a21",
                  "parent_uuid": "e62a53db-8039-4860-bfa1-14207a6f4799",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce575337-028c-404d-a225-26e889643313",
              "parent_uuid": "52a8a6ff-81d4-4aa6-8f3b-9e109677c5a8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c7aafbea-17fe-4cdb-8872-99ab0e80d530",
                  "parent_uuid": "ce575337-028c-404d-a225-26e889643313",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37479e81-437c-4df2-87c9-4f56cd464299",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3970d43f-b90d-44c8-b63b-3df4f71be71d",
              "parent_uuid": "37479e81-437c-4df2-87c9-4f56cd464299",
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
              "uuid": "30af537a-f4c2-442b-ae81-dcc6b1343122",
              "parent_uuid": "37479e81-437c-4df2-87c9-4f56cd464299",
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
              "uuid": "8e046b21-9acf-42fa-bd78-da9bb5c7f32a",
              "parent_uuid": "37479e81-437c-4df2-87c9-4f56cd464299",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e33a4a49-747f-45fc-a4d9-025bc542dd72",
                  "parent_uuid": "8e046b21-9acf-42fa-bd78-da9bb5c7f32a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fca66346-dea5-4285-8a45-237b6e245715",
              "parent_uuid": "37479e81-437c-4df2-87c9-4f56cd464299",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c7fa3a2-6786-4812-a91d-7b683e001f96",
                  "parent_uuid": "fca66346-dea5-4285-8a45-237b6e245715",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7c1b34b7-9aed-4489-86b0-f55533142053",
              "parent_uuid": "37479e81-437c-4df2-87c9-4f56cd464299",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5c1bbb22-b427-4ba5-9e30-cc33176c2994",
                  "parent_uuid": "7c1b34b7-9aed-4489-86b0-f55533142053",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "470867d3-c42c-45fc-9ca9-70414efb4b14",
              "parent_uuid": "37479e81-437c-4df2-87c9-4f56cd464299",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d68e786-05f9-4f09-95a0-2d22d38c62dd",
                  "parent_uuid": "470867d3-c42c-45fc-9ca9-70414efb4b14",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "44fcc834-82de-4e83-a113-0a692fc12354",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1ce3e06e-58bf-48d6-94a3-d3438b103bf1",
              "parent_uuid": "44fcc834-82de-4e83-a113-0a692fc12354",
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
              "uuid": "a6891f9d-1ffa-40f2-850f-7b2d0c890b26",
              "parent_uuid": "44fcc834-82de-4e83-a113-0a692fc12354",
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
              "uuid": "f266a1b2-7bbc-4ec8-b3be-9c32a94bb9d3",
              "parent_uuid": "44fcc834-82de-4e83-a113-0a692fc12354",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "626f92ee-b3f7-41cb-a468-177d42bb4b14",
                  "parent_uuid": "f266a1b2-7bbc-4ec8-b3be-9c32a94bb9d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86b9f57a-9a95-467c-8882-66c0f28a7962",
              "parent_uuid": "44fcc834-82de-4e83-a113-0a692fc12354",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fc25e48-137b-4aa9-bd20-3425f6951943",
                  "parent_uuid": "86b9f57a-9a95-467c-8882-66c0f28a7962",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3852bc30-ac16-4bb6-98be-61febc1d859e",
              "parent_uuid": "44fcc834-82de-4e83-a113-0a692fc12354",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "49fcf3ff-8a24-4503-b259-2b587c8c7c84",
                  "parent_uuid": "3852bc30-ac16-4bb6-98be-61febc1d859e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "48f0407e-5a54-4760-8ae2-aa27ae6f1b24",
              "parent_uuid": "44fcc834-82de-4e83-a113-0a692fc12354",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "504c5622-07cb-417e-bae5-bc2904ab6377",
                  "parent_uuid": "48f0407e-5a54-4760-8ae2-aa27ae6f1b24",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9a251e80-e7e2-4d1f-ae33-5f110756d59d",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd118434-bbb6-4620-8940-80da0f9ca12b",
              "parent_uuid": "9a251e80-e7e2-4d1f-ae33-5f110756d59d",
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
              "uuid": "abdd7464-89bf-4fd7-a7ad-06f7b6166924",
              "parent_uuid": "9a251e80-e7e2-4d1f-ae33-5f110756d59d",
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
              "uuid": "3529f89d-6171-4a23-aab5-f0adeb42bfec",
              "parent_uuid": "9a251e80-e7e2-4d1f-ae33-5f110756d59d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d83c4635-a86b-43d2-b8f1-9a720b3af18b",
                  "parent_uuid": "3529f89d-6171-4a23-aab5-f0adeb42bfec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd80b1c5-247f-4911-8e9c-25654114a335",
              "parent_uuid": "9a251e80-e7e2-4d1f-ae33-5f110756d59d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d199591-5403-43a4-b418-e5fa9720f3e5",
                  "parent_uuid": "fd80b1c5-247f-4911-8e9c-25654114a335",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04305564-a393-46df-a7c4-d48865c4f179",
              "parent_uuid": "9a251e80-e7e2-4d1f-ae33-5f110756d59d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cde472a-fc7a-41aa-ad84-f8171bcb825b",
                  "parent_uuid": "04305564-a393-46df-a7c4-d48865c4f179",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27aadbce-eb89-4a02-b41d-5fea37e54763",
              "parent_uuid": "9a251e80-e7e2-4d1f-ae33-5f110756d59d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de6604d2-50f8-4c60-a407-e66084496dd4",
                  "parent_uuid": "27aadbce-eb89-4a02-b41d-5fea37e54763",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d8ca2420-698d-4456-8db9-4e80369c667e",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e8f2751-4d13-4864-ad74-3305bf185497",
              "parent_uuid": "d8ca2420-698d-4456-8db9-4e80369c667e",
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
              "uuid": "d079cfe4-2ce7-436c-a4a4-375ee4cd4d80",
              "parent_uuid": "d8ca2420-698d-4456-8db9-4e80369c667e",
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
              "uuid": "a224e947-7a09-411e-8887-c3e17207ab17",
              "parent_uuid": "d8ca2420-698d-4456-8db9-4e80369c667e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "351b91bf-646a-4fb3-8ac5-2ec56dddfea8",
                  "parent_uuid": "a224e947-7a09-411e-8887-c3e17207ab17",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c115d02e-05e4-445c-8c88-f7084f5d6f95",
              "parent_uuid": "d8ca2420-698d-4456-8db9-4e80369c667e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "251e3f59-ec09-45f7-9e6f-218df47b80bd",
                  "parent_uuid": "c115d02e-05e4-445c-8c88-f7084f5d6f95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1ed1bf0a-6ae0-4511-a1dd-0d2967c8d6a5",
              "parent_uuid": "d8ca2420-698d-4456-8db9-4e80369c667e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "256b895a-4e1e-499d-ad7a-13d86a1d662c",
                  "parent_uuid": "1ed1bf0a-6ae0-4511-a1dd-0d2967c8d6a5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9bafacf6-db11-4088-9c23-0764550ba5e3",
              "parent_uuid": "d8ca2420-698d-4456-8db9-4e80369c667e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b9577cee-dcbb-46cd-8000-87687ea885d7",
                  "parent_uuid": "9bafacf6-db11-4088-9c23-0764550ba5e3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1b765af0-eeee-484d-bb9c-fe7e4f862011",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4f29e0d-b6b4-4103-a0d6-c1f1f7ff3d64",
              "parent_uuid": "1b765af0-eeee-484d-bb9c-fe7e4f862011",
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
              "uuid": "e6668018-d913-49cc-80f0-4876b6f1f495",
              "parent_uuid": "1b765af0-eeee-484d-bb9c-fe7e4f862011",
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
              "uuid": "20a6a5cf-6baa-4cd3-99a0-578ec07d2b92",
              "parent_uuid": "1b765af0-eeee-484d-bb9c-fe7e4f862011",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a1cb5c5-7c3d-428a-8918-8d0bb7d082ba",
                  "parent_uuid": "20a6a5cf-6baa-4cd3-99a0-578ec07d2b92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5da8c712-67c5-4e74-8c8e-5a139dbbf541",
              "parent_uuid": "1b765af0-eeee-484d-bb9c-fe7e4f862011",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a29c8055-24a0-4261-807e-adf74d6f1331",
                  "parent_uuid": "5da8c712-67c5-4e74-8c8e-5a139dbbf541",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "11f9ab57-4893-4a49-bed9-552e384e0d95",
              "parent_uuid": "1b765af0-eeee-484d-bb9c-fe7e4f862011",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ff3cdf8-6234-4a44-90a3-8d5a1e48544f",
                  "parent_uuid": "11f9ab57-4893-4a49-bed9-552e384e0d95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e1c2f9b-f191-4a0d-8d43-d10895e8736d",
              "parent_uuid": "1b765af0-eeee-484d-bb9c-fe7e4f862011",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2a45521e-5315-47c5-8c11-e9a937b46f72",
                  "parent_uuid": "6e1c2f9b-f191-4a0d-8d43-d10895e8736d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "57380f6c-69f8-4d5e-ab83-6549e1a75003",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e9e4204f-5096-4f0d-9533-4537d882fa71",
              "parent_uuid": "57380f6c-69f8-4d5e-ab83-6549e1a75003",
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
              "uuid": "0655a011-5426-4fec-a83c-05b1bf1adfda",
              "parent_uuid": "57380f6c-69f8-4d5e-ab83-6549e1a75003",
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
              "uuid": "d49b15d3-4a80-4b14-985b-5bdbc1e8997a",
              "parent_uuid": "57380f6c-69f8-4d5e-ab83-6549e1a75003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1c6ef1a8-a1e7-4ebc-9ae5-ef37eb14f950",
                  "parent_uuid": "d49b15d3-4a80-4b14-985b-5bdbc1e8997a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62503895-5cc9-4d7c-9e67-84c93afe5ae9",
              "parent_uuid": "57380f6c-69f8-4d5e-ab83-6549e1a75003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "34b7a1d7-2cda-4499-b416-67b6960170ca",
                  "parent_uuid": "62503895-5cc9-4d7c-9e67-84c93afe5ae9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e1ab7ee-64a0-4231-b469-33f5dae22bf5",
              "parent_uuid": "57380f6c-69f8-4d5e-ab83-6549e1a75003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0b8b9413-1e57-41c3-af68-d42e17b6ef90",
                  "parent_uuid": "1e1ab7ee-64a0-4231-b469-33f5dae22bf5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86f15d47-2c1a-4c0f-bfcb-859f23e10fd5",
              "parent_uuid": "57380f6c-69f8-4d5e-ab83-6549e1a75003",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b4b26aa8-8d57-4c72-a740-3d1ddb459746",
                  "parent_uuid": "86f15d47-2c1a-4c0f-bfcb-859f23e10fd5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5dc50207-5352-4b49-a4bf-32a6e3c8a8fe",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3a6cafd-c617-4173-84e2-59d6dd8a6562",
              "parent_uuid": "5dc50207-5352-4b49-a4bf-32a6e3c8a8fe",
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
              "uuid": "0242694d-e5d1-46a7-a4b8-cc8527861f4c",
              "parent_uuid": "5dc50207-5352-4b49-a4bf-32a6e3c8a8fe",
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
              "uuid": "9a534dc5-4e3b-4e60-8a8b-a2f2b1314e0c",
              "parent_uuid": "5dc50207-5352-4b49-a4bf-32a6e3c8a8fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "321dcef2-c36e-4bb2-8013-1627f3fd9203",
                  "parent_uuid": "9a534dc5-4e3b-4e60-8a8b-a2f2b1314e0c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "272bc41a-0d6a-473d-9571-1de40b45c0d3",
              "parent_uuid": "5dc50207-5352-4b49-a4bf-32a6e3c8a8fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2ab01f03-d671-4e63-a523-f6ac3e22be3f",
                  "parent_uuid": "272bc41a-0d6a-473d-9571-1de40b45c0d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c00e0b8a-6ec4-4887-bd89-2fe58ef8f670",
              "parent_uuid": "5dc50207-5352-4b49-a4bf-32a6e3c8a8fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a00d002-70e4-4945-9b61-2eca6392b251",
                  "parent_uuid": "c00e0b8a-6ec4-4887-bd89-2fe58ef8f670",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0369971b-65a3-47ba-a774-d3a62ef5af58",
              "parent_uuid": "5dc50207-5352-4b49-a4bf-32a6e3c8a8fe",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bd29e5ee-c35e-4208-b52d-496547716109",
                  "parent_uuid": "0369971b-65a3-47ba-a774-d3a62ef5af58",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d63975bc-ac3c-4c1f-b884-21f3a23bd329",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7293058d-e83d-4c74-a987-a0c104c5e99a",
              "parent_uuid": "d63975bc-ac3c-4c1f-b884-21f3a23bd329",
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
              "uuid": "e88a01e2-d2b0-4119-b9b5-99d586f71f8e",
              "parent_uuid": "d63975bc-ac3c-4c1f-b884-21f3a23bd329",
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
              "uuid": "d23f1055-51c8-4e55-8e65-d131a317127a",
              "parent_uuid": "d63975bc-ac3c-4c1f-b884-21f3a23bd329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65ac3f67-48d2-42d1-ae26-76bfa549f783",
                  "parent_uuid": "d23f1055-51c8-4e55-8e65-d131a317127a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "acf0c436-d3aa-4fb6-a706-84c89bfaffc4",
              "parent_uuid": "d63975bc-ac3c-4c1f-b884-21f3a23bd329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8eb6c60d-b08f-4a27-8402-164172c22978",
                  "parent_uuid": "acf0c436-d3aa-4fb6-a706-84c89bfaffc4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0bee1e24-3c83-43d3-b5c1-37cda3553763",
              "parent_uuid": "d63975bc-ac3c-4c1f-b884-21f3a23bd329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ff4111ce-02e5-4069-8b25-12dfea14bc8a",
                  "parent_uuid": "0bee1e24-3c83-43d3-b5c1-37cda3553763",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fd73c274-ea12-43a0-95aa-34390c000461",
              "parent_uuid": "d63975bc-ac3c-4c1f-b884-21f3a23bd329",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a2d1ce1-f38c-4f91-9e44-e1e7c0018786",
                  "parent_uuid": "fd73c274-ea12-43a0-95aa-34390c000461",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "35a94c70-32bf-4e78-b063-f60a4476e910",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2bd778d9-9fc7-4db5-a2b2-56860133d9fa",
              "parent_uuid": "35a94c70-32bf-4e78-b063-f60a4476e910",
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
              "uuid": "1c76b48e-5ebd-4f27-af35-fa6826fe9fbc",
              "parent_uuid": "35a94c70-32bf-4e78-b063-f60a4476e910",
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
              "uuid": "8f14e741-a26f-494e-9632-7f106dc1d25f",
              "parent_uuid": "35a94c70-32bf-4e78-b063-f60a4476e910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c73c36be-8378-482a-b5fb-0f6de3e99ce7",
                  "parent_uuid": "8f14e741-a26f-494e-9632-7f106dc1d25f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9560ebd7-140a-468d-9745-670228a65470",
              "parent_uuid": "35a94c70-32bf-4e78-b063-f60a4476e910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57a82831-7de9-4023-bfc9-96611e99d5a8",
                  "parent_uuid": "9560ebd7-140a-468d-9745-670228a65470",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89d8b4e8-35b0-4c08-a7d4-2fd305e25325",
              "parent_uuid": "35a94c70-32bf-4e78-b063-f60a4476e910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0625866-8bdf-42f1-b5ca-90dd6d2fc068",
                  "parent_uuid": "89d8b4e8-35b0-4c08-a7d4-2fd305e25325",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "55997c25-9981-49a8-b2b8-53fd66e4d5a3",
              "parent_uuid": "35a94c70-32bf-4e78-b063-f60a4476e910",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60aea0ce-4d69-44f4-92c6-56b2d4caefe4",
                  "parent_uuid": "55997c25-9981-49a8-b2b8-53fd66e4d5a3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a172271e-94c8-4363-b998-0dc17c4f2829",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b17a9a03-2a0c-449d-9083-477e36921e56",
              "parent_uuid": "a172271e-94c8-4363-b998-0dc17c4f2829",
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
              "uuid": "618b356a-4dda-4de3-82d2-2f89e02ef4da",
              "parent_uuid": "a172271e-94c8-4363-b998-0dc17c4f2829",
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
              "uuid": "244f05f0-8b01-429f-9a8b-79e809327902",
              "parent_uuid": "a172271e-94c8-4363-b998-0dc17c4f2829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7924bea1-de64-4d57-a1a3-40b7f69ae7c6",
                  "parent_uuid": "244f05f0-8b01-429f-9a8b-79e809327902",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "541982b8-c4ff-469e-a27e-c338cce508f4",
              "parent_uuid": "a172271e-94c8-4363-b998-0dc17c4f2829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a2f009f8-fb69-44eb-8d95-fab8b81b7b97",
                  "parent_uuid": "541982b8-c4ff-469e-a27e-c338cce508f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bddac6cd-5520-49ea-9768-a87282299607",
              "parent_uuid": "a172271e-94c8-4363-b998-0dc17c4f2829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe19e8a0-0e02-42fc-bd71-7f23d930faea",
                  "parent_uuid": "bddac6cd-5520-49ea-9768-a87282299607",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "40a7351b-50bc-4c20-b609-ea374dfb23fe",
              "parent_uuid": "a172271e-94c8-4363-b998-0dc17c4f2829",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4a51e847-ed68-4816-8034-878c615c6ea6",
                  "parent_uuid": "40a7351b-50bc-4c20-b609-ea374dfb23fe",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d0331771-5b8c-4014-a323-bd3ff91fb550",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d3c056a-1d6b-4823-81af-f28fa96b00e4",
              "parent_uuid": "d0331771-5b8c-4014-a323-bd3ff91fb550",
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
              "uuid": "9245e55b-96af-42ea-b78f-c182c54fe1c6",
              "parent_uuid": "d0331771-5b8c-4014-a323-bd3ff91fb550",
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
              "uuid": "afb6420a-9079-476f-90f3-a85577adc2cb",
              "parent_uuid": "d0331771-5b8c-4014-a323-bd3ff91fb550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a98335c4-a91b-4998-9b6d-99a4acb26198",
                  "parent_uuid": "afb6420a-9079-476f-90f3-a85577adc2cb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ad9bb56-ab04-4fc4-b11d-8ea71c935846",
              "parent_uuid": "d0331771-5b8c-4014-a323-bd3ff91fb550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d065be90-6eed-4a80-b549-264cd097995c",
                  "parent_uuid": "8ad9bb56-ab04-4fc4-b11d-8ea71c935846",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14377133-cb98-45bf-bcea-c0d9153a8725",
              "parent_uuid": "d0331771-5b8c-4014-a323-bd3ff91fb550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2dd1a400-5296-4aaf-bc66-844e16a10a98",
                  "parent_uuid": "14377133-cb98-45bf-bcea-c0d9153a8725",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "badf0403-166c-4954-b1d6-287a11ba7db7",
              "parent_uuid": "d0331771-5b8c-4014-a323-bd3ff91fb550",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a9302f9c-04a5-4020-b4ae-c035a660250c",
                  "parent_uuid": "badf0403-166c-4954-b1d6-287a11ba7db7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dfd91835-a255-42cb-a10a-7560e6bef76d",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cb3be288-6d21-4f20-bf33-2318aa4382c3",
              "parent_uuid": "dfd91835-a255-42cb-a10a-7560e6bef76d",
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
              "uuid": "ab6b3051-31cd-4e38-a5c6-1aedf551b9e0",
              "parent_uuid": "dfd91835-a255-42cb-a10a-7560e6bef76d",
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
              "uuid": "d7bcdbec-5cb2-4d92-aed2-f04097013f2e",
              "parent_uuid": "dfd91835-a255-42cb-a10a-7560e6bef76d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbc06343-5f09-440e-baba-664f62628a3a",
                  "parent_uuid": "d7bcdbec-5cb2-4d92-aed2-f04097013f2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb6dbbe0-8f67-4824-86c7-ca19018f8d67",
              "parent_uuid": "dfd91835-a255-42cb-a10a-7560e6bef76d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b6c2fa65-4035-4a4d-a105-2040f7b9f7df",
                  "parent_uuid": "eb6dbbe0-8f67-4824-86c7-ca19018f8d67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db01f223-43a7-4735-9b27-640a736ef719",
              "parent_uuid": "dfd91835-a255-42cb-a10a-7560e6bef76d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f07e9564-9e95-4ae9-bd1b-a741de922cc1",
                  "parent_uuid": "db01f223-43a7-4735-9b27-640a736ef719",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b02643cc-3689-4d10-96a6-fe9d5a078ecd",
              "parent_uuid": "dfd91835-a255-42cb-a10a-7560e6bef76d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cad8681b-5c93-4f77-a387-7cb714370f5e",
                  "parent_uuid": "b02643cc-3689-4d10-96a6-fe9d5a078ecd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3f5fd223-88da-47eb-b13e-2a826bfd3a37",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "839ceb34-2ebf-43ad-ae82-c0f2800b39e7",
              "parent_uuid": "3f5fd223-88da-47eb-b13e-2a826bfd3a37",
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
              "uuid": "2dbe04c1-d848-456c-ad59-35a9fd7b64a3",
              "parent_uuid": "3f5fd223-88da-47eb-b13e-2a826bfd3a37",
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
              "uuid": "0cc20420-828e-4f9b-b6b4-5fbce93e20e1",
              "parent_uuid": "3f5fd223-88da-47eb-b13e-2a826bfd3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be8e8792-01c8-4221-b118-a5ed9df47fb7",
                  "parent_uuid": "0cc20420-828e-4f9b-b6b4-5fbce93e20e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e04cf06f-2a52-4a91-8b81-f7952959dee4",
              "parent_uuid": "3f5fd223-88da-47eb-b13e-2a826bfd3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b7ab22bd-d426-4aec-812c-f0cf9b54d02c",
                  "parent_uuid": "e04cf06f-2a52-4a91-8b81-f7952959dee4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddb720c6-9f11-4e7b-a2f0-8253d16a4c6c",
              "parent_uuid": "3f5fd223-88da-47eb-b13e-2a826bfd3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df95f6ab-8841-4c8c-9d90-e8f3dd7d4e85",
                  "parent_uuid": "ddb720c6-9f11-4e7b-a2f0-8253d16a4c6c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "053b1c25-5844-4611-89b7-855c0edceb96",
              "parent_uuid": "3f5fd223-88da-47eb-b13e-2a826bfd3a37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "964de60e-adb9-41e2-acc2-b6ccbd3db792",
                  "parent_uuid": "053b1c25-5844-4611-89b7-855c0edceb96",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3bf08fbe-8add-40ed-848b-4e4ea19dceb5",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1ad13f2c-7f26-4002-9cfe-b6f1dcb7dc02",
              "parent_uuid": "3bf08fbe-8add-40ed-848b-4e4ea19dceb5",
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
              "uuid": "8fbe1e89-5e49-4e8a-a157-b834b3c508d1",
              "parent_uuid": "3bf08fbe-8add-40ed-848b-4e4ea19dceb5",
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
              "uuid": "361b825e-f553-48c3-9026-1564fe9dd6d3",
              "parent_uuid": "3bf08fbe-8add-40ed-848b-4e4ea19dceb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f254b5d-a760-422d-9004-2f5818535c6f",
                  "parent_uuid": "361b825e-f553-48c3-9026-1564fe9dd6d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a664d8d-cd77-4427-9c9e-0d5935401c56",
              "parent_uuid": "3bf08fbe-8add-40ed-848b-4e4ea19dceb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a63cc056-abf8-438d-b054-9bff4ffcbd9c",
                  "parent_uuid": "4a664d8d-cd77-4427-9c9e-0d5935401c56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51d1fc96-2e37-468a-b16d-6836bf271fb8",
              "parent_uuid": "3bf08fbe-8add-40ed-848b-4e4ea19dceb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "500875e2-4f68-417f-8678-d59c7367cef7",
                  "parent_uuid": "51d1fc96-2e37-468a-b16d-6836bf271fb8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "28144384-1f3b-4934-b6ef-2fb4065da79a",
              "parent_uuid": "3bf08fbe-8add-40ed-848b-4e4ea19dceb5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d62aae69-41c1-443c-841e-1fc7274821b9",
                  "parent_uuid": "28144384-1f3b-4934-b6ef-2fb4065da79a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8a39e39f-ab25-4ecd-888a-4f62af027f98",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "18bc11bd-23d7-4a18-8eae-6c5950630f98",
              "parent_uuid": "8a39e39f-ab25-4ecd-888a-4f62af027f98",
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
              "uuid": "34206fd8-a534-4eec-840a-5a6d7fdb325f",
              "parent_uuid": "8a39e39f-ab25-4ecd-888a-4f62af027f98",
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
              "uuid": "5f98c6c6-f4e6-4d10-aabf-1ba848950022",
              "parent_uuid": "8a39e39f-ab25-4ecd-888a-4f62af027f98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5e83d5f-baa9-4282-a488-4da626b4a7d3",
                  "parent_uuid": "5f98c6c6-f4e6-4d10-aabf-1ba848950022",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5f55e37-8796-41de-84da-ff34497c3a24",
              "parent_uuid": "8a39e39f-ab25-4ecd-888a-4f62af027f98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "84796ff9-be63-4c5f-8719-9b7f8f5bbd9e",
                  "parent_uuid": "f5f55e37-8796-41de-84da-ff34497c3a24",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "af9986ab-9a99-476f-abe1-8e6f67a9346a",
              "parent_uuid": "8a39e39f-ab25-4ecd-888a-4f62af027f98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fc6763a-eaa1-41f0-877b-07c999981950",
                  "parent_uuid": "af9986ab-9a99-476f-abe1-8e6f67a9346a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2e389bcb-60ed-4bea-a210-74612a24d7ee",
              "parent_uuid": "8a39e39f-ab25-4ecd-888a-4f62af027f98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df7c7e28-ad0f-44d0-a677-6aecee08886d",
                  "parent_uuid": "2e389bcb-60ed-4bea-a210-74612a24d7ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3b97479-98d5-4f91-8ddf-90f3b3e3b42c",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09bf162b-3b3c-45b3-b2f2-c5c9275e50f3",
              "parent_uuid": "b3b97479-98d5-4f91-8ddf-90f3b3e3b42c",
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
          "uuid": "c00a9909-fa37-4228-918a-9e512b6f52f1",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5808c857-735d-47da-99dc-bcb05364119e",
              "parent_uuid": "c00a9909-fa37-4228-918a-9e512b6f52f1",
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
          "uuid": "24529ca0-15cf-4622-a2b9-3846cdb3b434",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cfdb5799-6dc5-464d-a4f1-bdcae80bac17",
              "parent_uuid": "24529ca0-15cf-4622-a2b9-3846cdb3b434",
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
                  "uuid": "9dcdab2c-f4f3-402b-b962-5701705474cc",
                  "parent_uuid": "cfdb5799-6dc5-464d-a4f1-bdcae80bac17",
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
          "uuid": "a9d5285b-dc71-467b-92be-6f0d27e646e7",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "17d7114e-30c3-4e65-862c-07212196c601",
              "parent_uuid": "a9d5285b-dc71-467b-92be-6f0d27e646e7",
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
          "uuid": "bf3c50cf-7f07-4864-b0ca-5236301bdd8a",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "717415fe-eb08-4af5-a869-568852319cbf",
              "parent_uuid": "bf3c50cf-7f07-4864-b0ca-5236301bdd8a",
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
          "uuid": "039b9d26-1869-4a70-b99c-57d2c5ae40c6",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d38d7cc0-f682-487b-9a74-3ade6311c9b4",
              "parent_uuid": "039b9d26-1869-4a70-b99c-57d2c5ae40c6",
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
              "uuid": "e5fb9615-a525-4c6f-8948-1ab5b0ac052b",
              "parent_uuid": "039b9d26-1869-4a70-b99c-57d2c5ae40c6",
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
              "uuid": "1046e5dc-8050-4f46-8ebe-060189bbb741",
              "parent_uuid": "039b9d26-1869-4a70-b99c-57d2c5ae40c6",
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
              "uuid": "8db70d20-cb70-41c2-8fb0-616c3adce544",
              "parent_uuid": "039b9d26-1869-4a70-b99c-57d2c5ae40c6",
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
              "uuid": "f5c2e428-0165-4a09-a21f-eb2f9b8b6321",
              "parent_uuid": "039b9d26-1869-4a70-b99c-57d2c5ae40c6",
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
              "uuid": "2f6d172f-5e4d-44d7-9cd6-7aec13cdf9b3",
              "parent_uuid": "039b9d26-1869-4a70-b99c-57d2c5ae40c6",
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
          "uuid": "f59dcd5e-1c1c-46ff-8979-664f8d6a2235",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "646db63d-9076-4bcc-9fbc-f9fd6c2f1ab0",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cecdb1a8-5fab-41ed-b690-63edc66e153b",
              "parent_uuid": "646db63d-9076-4bcc-9fbc-f9fd6c2f1ab0",
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
              "uuid": "4918b87a-050c-430a-970f-bab109f3359b",
              "parent_uuid": "646db63d-9076-4bcc-9fbc-f9fd6c2f1ab0",
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
              "uuid": "f5111795-3a78-479c-b8d1-6e1d8419c536",
              "parent_uuid": "646db63d-9076-4bcc-9fbc-f9fd6c2f1ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "83b14624-4595-4460-8e43-274e1d596d3b",
                  "parent_uuid": "f5111795-3a78-479c-b8d1-6e1d8419c536",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45023d1f-6440-4c17-8c01-5f865dec3738",
              "parent_uuid": "646db63d-9076-4bcc-9fbc-f9fd6c2f1ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3f8a3d37-2f02-4723-b063-ab7b5417cf0d",
                  "parent_uuid": "45023d1f-6440-4c17-8c01-5f865dec3738",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9dc62798-da05-43e8-951b-1c398baad138",
              "parent_uuid": "646db63d-9076-4bcc-9fbc-f9fd6c2f1ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "95d983fa-5e11-4f48-a1df-0129d8a8ea9c",
                  "parent_uuid": "9dc62798-da05-43e8-951b-1c398baad138",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4865b18-2add-4e77-ac6e-2e8a9577761d",
              "parent_uuid": "646db63d-9076-4bcc-9fbc-f9fd6c2f1ab0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d0ed4656-4043-4660-8713-9be95104ffb6",
                  "parent_uuid": "d4865b18-2add-4e77-ac6e-2e8a9577761d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5d90f2f2-8d4e-43bd-aef5-02f9cea150b6",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f08c91b9-8114-4c56-8082-bffc91d3b2a9",
              "parent_uuid": "5d90f2f2-8d4e-43bd-aef5-02f9cea150b6",
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
              "uuid": "6417659d-2dfb-4f6c-bfdf-50e2a741fcda",
              "parent_uuid": "5d90f2f2-8d4e-43bd-aef5-02f9cea150b6",
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
              "uuid": "3d5976b5-53ba-49dc-ae2c-96662d7d6f55",
              "parent_uuid": "5d90f2f2-8d4e-43bd-aef5-02f9cea150b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b915ce0-695f-4dcc-92af-c21dd0a13c41",
                  "parent_uuid": "3d5976b5-53ba-49dc-ae2c-96662d7d6f55",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "56ac7993-a76a-40c4-b942-c87cd2e1be20",
              "parent_uuid": "5d90f2f2-8d4e-43bd-aef5-02f9cea150b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1232bb8a-cc6a-4659-8c4b-fcf59ab1ff04",
                  "parent_uuid": "56ac7993-a76a-40c4-b942-c87cd2e1be20",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "053358ff-2298-44f5-a6ce-68f6ff01400e",
              "parent_uuid": "5d90f2f2-8d4e-43bd-aef5-02f9cea150b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "efa3b0b5-946b-4f19-87ad-e297827f1462",
                  "parent_uuid": "053358ff-2298-44f5-a6ce-68f6ff01400e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "944fdeb4-963b-41c0-8c82-8d0685cb9d56",
              "parent_uuid": "5d90f2f2-8d4e-43bd-aef5-02f9cea150b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6de29c51-f128-47d0-a9cd-29b75bffeefb",
                  "parent_uuid": "944fdeb4-963b-41c0-8c82-8d0685cb9d56",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e4273fba-0391-4d1f-be61-e7de57ee8335",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d111bed4-6085-4269-b5fa-ed06f3cd38ae",
              "parent_uuid": "e4273fba-0391-4d1f-be61-e7de57ee8335",
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
              "uuid": "f2217c4a-1cf3-4fd0-a23c-3569df9fcd34",
              "parent_uuid": "e4273fba-0391-4d1f-be61-e7de57ee8335",
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
              "uuid": "a6124e6c-f916-47d5-933f-bddbf4e7d0a1",
              "parent_uuid": "e4273fba-0391-4d1f-be61-e7de57ee8335",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a451f2b1-aadb-4c93-839e-4db9af041ef1",
                  "parent_uuid": "a6124e6c-f916-47d5-933f-bddbf4e7d0a1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb5d6b37-a803-4c8c-8bcd-7e22d931993f",
              "parent_uuid": "e4273fba-0391-4d1f-be61-e7de57ee8335",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a85dc04-89e4-439c-8c3c-3d517f8b24b7",
                  "parent_uuid": "fb5d6b37-a803-4c8c-8bcd-7e22d931993f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e4af286-a9da-4978-8b4c-cf3ddd532be9",
              "parent_uuid": "e4273fba-0391-4d1f-be61-e7de57ee8335",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39345b6b-3e56-4fff-ac6b-dc8ebe87ac4f",
                  "parent_uuid": "6e4af286-a9da-4978-8b4c-cf3ddd532be9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b376f43-0bff-4fe0-aac3-573262565ec4",
              "parent_uuid": "e4273fba-0391-4d1f-be61-e7de57ee8335",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0446fe20-3ca0-4ff0-be9e-e1d599ade788",
                  "parent_uuid": "7b376f43-0bff-4fe0-aac3-573262565ec4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4d8246ae-867f-4d88-891c-9b494b398ab9",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "22ea2f69-f025-41f1-8a9c-81bcfec69abb",
              "parent_uuid": "4d8246ae-867f-4d88-891c-9b494b398ab9",
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
              "uuid": "0b972106-fb4a-49b2-a8e7-b80b9184c554",
              "parent_uuid": "4d8246ae-867f-4d88-891c-9b494b398ab9",
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
              "uuid": "2b8bdca7-7a2b-4007-9d83-df4129ddc010",
              "parent_uuid": "4d8246ae-867f-4d88-891c-9b494b398ab9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0b92873-4eb6-4e48-931f-3cbd899d47b0",
                  "parent_uuid": "2b8bdca7-7a2b-4007-9d83-df4129ddc010",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2bffe6db-cd7b-4ef3-b861-977d72da7198",
              "parent_uuid": "4d8246ae-867f-4d88-891c-9b494b398ab9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d845944-0baa-40a5-ad0e-bdd274ad95d4",
                  "parent_uuid": "2bffe6db-cd7b-4ef3-b861-977d72da7198",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "32809451-566a-4d7c-88af-17052b95d0b4",
              "parent_uuid": "4d8246ae-867f-4d88-891c-9b494b398ab9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bf092a0d-b626-44e8-bebe-78427f92785a",
                  "parent_uuid": "32809451-566a-4d7c-88af-17052b95d0b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "03775a10-f054-4850-b497-6d1d480a82f7",
              "parent_uuid": "4d8246ae-867f-4d88-891c-9b494b398ab9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c480831e-085f-4809-a33a-92d9c341a3ae",
                  "parent_uuid": "03775a10-f054-4850-b497-6d1d480a82f7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "182b28d5-6621-48e7-9db9-42acfd325393",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b43729c1-c9f1-4ef8-af20-2e0ff283b021",
              "parent_uuid": "182b28d5-6621-48e7-9db9-42acfd325393",
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
          "uuid": "d9857d10-e8fd-40c1-95ab-48fba7e24ab9",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e725702a-4390-45de-b9be-16c8ebcdce6f",
              "parent_uuid": "d9857d10-e8fd-40c1-95ab-48fba7e24ab9",
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
          "uuid": "8dc8e19d-7018-425b-a780-83d72a087550",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "872be18a-fd38-416f-a8bf-a77992ba89ed",
              "parent_uuid": "8dc8e19d-7018-425b-a780-83d72a087550",
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
                  "uuid": "8e034730-ffbc-42ce-9aaa-dd9a2ed13f53",
                  "parent_uuid": "872be18a-fd38-416f-a8bf-a77992ba89ed",
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
          "uuid": "d0eeae89-c9b2-4083-a10a-f4f674fca053",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "1c3afc2f-9eb3-4954-8cff-6f0bcf88d401",
              "parent_uuid": "d0eeae89-c9b2-4083-a10a-f4f674fca053",
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
          "uuid": "756384a1-c209-4a02-8090-c8aaf3a64c7b",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "be47e73a-18c7-4361-a063-0fba1dca1663",
              "parent_uuid": "756384a1-c209-4a02-8090-c8aaf3a64c7b",
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
          "uuid": "98653257-c6f2-4550-ac75-069c87b15db2",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c3611672-1c95-41a9-9b40-6d83efff1bdb",
              "parent_uuid": "98653257-c6f2-4550-ac75-069c87b15db2",
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
              "uuid": "fcbc14a2-394d-4a9d-ad83-61bcf62f3948",
              "parent_uuid": "98653257-c6f2-4550-ac75-069c87b15db2",
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
              "uuid": "79818800-e6a2-4754-a4ae-d8376c9852b9",
              "parent_uuid": "98653257-c6f2-4550-ac75-069c87b15db2",
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
              "uuid": "b2e3022f-c05a-467c-961a-6ddc1da4f958",
              "parent_uuid": "98653257-c6f2-4550-ac75-069c87b15db2",
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
              "uuid": "8606c829-8392-47c0-a153-c793e61392be",
              "parent_uuid": "98653257-c6f2-4550-ac75-069c87b15db2",
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
              "uuid": "761e439a-d4f4-4b74-8916-28da2bb6a397",
              "parent_uuid": "98653257-c6f2-4550-ac75-069c87b15db2",
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
          "uuid": "b892721f-f618-4786-9bea-5debe626fc70",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5ce56fd1-7e77-4b7c-87d5-8a2c0f0d0687",
              "parent_uuid": "b892721f-f618-4786-9bea-5debe626fc70",
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
              "uuid": "703413e3-ea4d-433f-bdd9-a781fe4847d8",
              "parent_uuid": "b892721f-f618-4786-9bea-5debe626fc70",
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
              "uuid": "954f7dc8-045e-413f-9e32-4550c937ce4b",
              "parent_uuid": "b892721f-f618-4786-9bea-5debe626fc70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b070c3b0-bbfa-4a35-bb0f-92ac623d45cb",
                  "parent_uuid": "954f7dc8-045e-413f-9e32-4550c937ce4b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c23406ee-7103-448e-9ae9-a30e30254e04",
              "parent_uuid": "b892721f-f618-4786-9bea-5debe626fc70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "40aabc2b-a906-483b-9f81-22cd2bd96e54",
                  "parent_uuid": "c23406ee-7103-448e-9ae9-a30e30254e04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26bef949-a0b6-488d-901d-597c01ca888b",
              "parent_uuid": "b892721f-f618-4786-9bea-5debe626fc70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e52cc442-8ff0-4fe9-bdd6-d2d23de9c4ed",
                  "parent_uuid": "26bef949-a0b6-488d-901d-597c01ca888b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6973aa7-0d77-497a-84df-62fe87124fad",
              "parent_uuid": "b892721f-f618-4786-9bea-5debe626fc70",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ba8deb14-678f-42f2-af1f-8a91d249d5dc",
                  "parent_uuid": "b6973aa7-0d77-497a-84df-62fe87124fad",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aa9940f6-3106-40aa-8088-662b4659e629",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5ab1187-a1cc-4d72-a75e-67c6285689b5",
              "parent_uuid": "aa9940f6-3106-40aa-8088-662b4659e629",
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
              "uuid": "48a01d98-2018-4fc4-a1a9-a85eddd6de81",
              "parent_uuid": "aa9940f6-3106-40aa-8088-662b4659e629",
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
              "uuid": "fbbc33bd-a641-4db0-a8c1-e4418ac360c6",
              "parent_uuid": "aa9940f6-3106-40aa-8088-662b4659e629",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42a1c94c-ac2c-4a28-b4c7-b69d29a28304",
                  "parent_uuid": "fbbc33bd-a641-4db0-a8c1-e4418ac360c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3112a55d-eef3-4663-be5b-ff77d709b3c2",
              "parent_uuid": "aa9940f6-3106-40aa-8088-662b4659e629",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9a37460b-e77d-41d7-bc94-1bcf7801a99c",
                  "parent_uuid": "3112a55d-eef3-4663-be5b-ff77d709b3c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "767efa1f-eb14-4d09-a7aa-89885ef049e1",
              "parent_uuid": "aa9940f6-3106-40aa-8088-662b4659e629",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5cb249db-400b-4db4-bf99-fb6ce576dc30",
                  "parent_uuid": "767efa1f-eb14-4d09-a7aa-89885ef049e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7f9a1d6e-d233-4a2a-ba5e-db756f17ea07",
              "parent_uuid": "aa9940f6-3106-40aa-8088-662b4659e629",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dadb81eb-c32e-457f-9e9d-b16529f9df14",
                  "parent_uuid": "7f9a1d6e-d233-4a2a-ba5e-db756f17ea07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d364668e-4005-424e-be67-5e645eee1a33",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8c063ac-6c81-43ae-8fae-c78d978f4ae8",
              "parent_uuid": "d364668e-4005-424e-be67-5e645eee1a33",
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
              "uuid": "08d1959d-0181-421a-afad-942fdcb8fee1",
              "parent_uuid": "d364668e-4005-424e-be67-5e645eee1a33",
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
              "uuid": "d8d8db03-a1dc-4924-b99f-5461a7b66b16",
              "parent_uuid": "d364668e-4005-424e-be67-5e645eee1a33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc94e83e-381c-4e9f-94b6-b7b76be4cba9",
                  "parent_uuid": "d8d8db03-a1dc-4924-b99f-5461a7b66b16",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0fdf672-c155-4955-9cfc-610b8d93f705",
              "parent_uuid": "d364668e-4005-424e-be67-5e645eee1a33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6fb0904e-092e-454a-afab-ba3a49ad0653",
                  "parent_uuid": "a0fdf672-c155-4955-9cfc-610b8d93f705",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91fba3d9-5d9e-40c0-a051-8d29eff774c3",
              "parent_uuid": "d364668e-4005-424e-be67-5e645eee1a33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce0278f1-a802-47fc-aeba-49b739bf4799",
                  "parent_uuid": "91fba3d9-5d9e-40c0-a051-8d29eff774c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce1370d9-4539-48df-b862-e17b25f12393",
              "parent_uuid": "d364668e-4005-424e-be67-5e645eee1a33",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d5049fc0-9747-40ce-945d-e48117f7b436",
                  "parent_uuid": "ce1370d9-4539-48df-b862-e17b25f12393",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "75577488-dd55-4830-ba31-1170fad69c52",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3738190c-8801-4cbe-99f9-833eb48ddd37",
              "parent_uuid": "75577488-dd55-4830-ba31-1170fad69c52",
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
              "uuid": "8c4cc64c-c525-4fd9-b42f-657330c9c88c",
              "parent_uuid": "75577488-dd55-4830-ba31-1170fad69c52",
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
              "uuid": "e48a0d5f-4d3f-42d6-909a-450f7ceffeab",
              "parent_uuid": "75577488-dd55-4830-ba31-1170fad69c52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e730dfc0-271b-44da-975c-5d2461f82d9d",
                  "parent_uuid": "e48a0d5f-4d3f-42d6-909a-450f7ceffeab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "16792082-287a-406e-a45b-c02c87ef1c4d",
              "parent_uuid": "75577488-dd55-4830-ba31-1170fad69c52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a10870a5-e82f-4708-b22a-18c998749373",
                  "parent_uuid": "16792082-287a-406e-a45b-c02c87ef1c4d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5b1bda90-8e45-487d-89ae-e077d794c4f1",
              "parent_uuid": "75577488-dd55-4830-ba31-1170fad69c52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1090b010-3d9c-44dd-b7ac-e71a5cb6b11a",
                  "parent_uuid": "5b1bda90-8e45-487d-89ae-e077d794c4f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5d935f1f-822e-4573-a90c-259f9d6078f3",
              "parent_uuid": "75577488-dd55-4830-ba31-1170fad69c52",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "82324731-9acf-4347-9a97-98e2a3e18d9e",
                  "parent_uuid": "5d935f1f-822e-4573-a90c-259f9d6078f3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "84d001c2-2bac-412c-83ca-4473c86413b5",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "946f4baf-f421-4046-8728-174a42acb824",
              "parent_uuid": "84d001c2-2bac-412c-83ca-4473c86413b5",
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
              "uuid": "57027ef7-3a72-435d-8b38-f7c55eab30e1",
              "parent_uuid": "84d001c2-2bac-412c-83ca-4473c86413b5",
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
              "uuid": "a9eebc30-aab0-4124-a9e5-2f12d8e806b5",
              "parent_uuid": "84d001c2-2bac-412c-83ca-4473c86413b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23607d20-ff2e-45fa-9f1f-93c9d7a8d5f0",
                  "parent_uuid": "a9eebc30-aab0-4124-a9e5-2f12d8e806b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aab7a84e-e128-4e8f-8217-7d768373c4e1",
              "parent_uuid": "84d001c2-2bac-412c-83ca-4473c86413b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55bbe02d-e51a-4849-80dc-4490bf7b7fd8",
                  "parent_uuid": "aab7a84e-e128-4e8f-8217-7d768373c4e1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "65e46825-f765-4ded-96fb-b03cac818cde",
              "parent_uuid": "84d001c2-2bac-412c-83ca-4473c86413b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d39f90c-425e-4e1a-9846-766b24f03474",
                  "parent_uuid": "65e46825-f765-4ded-96fb-b03cac818cde",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ef17fee6-4811-4c7c-8e09-0df81aa43681",
              "parent_uuid": "84d001c2-2bac-412c-83ca-4473c86413b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1747263f-c73a-4bd3-85e4-a98c1738c5f3",
                  "parent_uuid": "ef17fee6-4811-4c7c-8e09-0df81aa43681",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0265850c-ac77-48b0-9273-fef75e7784e6",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a773f94-fd31-47ac-ac4d-964054483040",
              "parent_uuid": "0265850c-ac77-48b0-9273-fef75e7784e6",
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
              "uuid": "cec098c9-5372-475b-aa0c-551eb7ad3f81",
              "parent_uuid": "0265850c-ac77-48b0-9273-fef75e7784e6",
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
              "uuid": "fa7202ae-bd46-49cb-84fc-4090079f0955",
              "parent_uuid": "0265850c-ac77-48b0-9273-fef75e7784e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0b7b6fd-e0b4-4a56-9f6a-a28ee9054fe1",
                  "parent_uuid": "fa7202ae-bd46-49cb-84fc-4090079f0955",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ef8137d-3214-42df-8827-ef165dd06d9c",
              "parent_uuid": "0265850c-ac77-48b0-9273-fef75e7784e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b6dd354-ccf3-4c49-99ee-a0557fa43fa3",
                  "parent_uuid": "3ef8137d-3214-42df-8827-ef165dd06d9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5be6ba02-17fa-4337-8fc1-065a668b298f",
              "parent_uuid": "0265850c-ac77-48b0-9273-fef75e7784e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12675af2-79fc-4468-abaf-8d2e017c4bc1",
                  "parent_uuid": "5be6ba02-17fa-4337-8fc1-065a668b298f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a789468-f2cf-4086-b6f0-dbe988f9e3cc",
              "parent_uuid": "0265850c-ac77-48b0-9273-fef75e7784e6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6a568ed8-58ab-4fc2-bc5c-34122a6552d5",
                  "parent_uuid": "6a789468-f2cf-4086-b6f0-dbe988f9e3cc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "77bec488-ba10-4863-925e-95eefa16497b",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c060170f-b98d-4269-8697-fe18de16b92a",
              "parent_uuid": "77bec488-ba10-4863-925e-95eefa16497b",
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
          "uuid": "303e1593-ac93-4f37-afed-dd118660235d",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "45fee5bd-acf1-48e5-9a48-86245d22f938",
              "parent_uuid": "303e1593-ac93-4f37-afed-dd118660235d",
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
          "uuid": "889825ae-e85f-42e2-9997-2927105959f9",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b50f56b-56d3-4148-b0bc-d4c3515a9a74",
              "parent_uuid": "889825ae-e85f-42e2-9997-2927105959f9",
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
                  "uuid": "b804af9f-2d2d-45ac-9928-f181e48eb294",
                  "parent_uuid": "5b50f56b-56d3-4148-b0bc-d4c3515a9a74",
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
          "uuid": "e11dca57-c910-4074-99cb-f79dfea95824",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "baecb3b0-dc97-4b76-82a1-087d92fd1747",
              "parent_uuid": "e11dca57-c910-4074-99cb-f79dfea95824",
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
          "uuid": "f97e7228-91f9-46a7-8723-dffd4de5d9de",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "073aa4fb-ca38-42ea-8a12-2ca7b8fefc86",
              "parent_uuid": "f97e7228-91f9-46a7-8723-dffd4de5d9de",
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
          "uuid": "cde3eec8-b38f-47e0-8f12-d9441099070a",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "87a47480-ea00-4c8a-9e10-998e02b05768",
              "parent_uuid": "cde3eec8-b38f-47e0-8f12-d9441099070a",
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
              "uuid": "1e998d92-f782-4d87-b3d8-e550de4b8e11",
              "parent_uuid": "cde3eec8-b38f-47e0-8f12-d9441099070a",
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
              "uuid": "4078cf5d-b5d0-4bd5-8954-7d27741aa2a8",
              "parent_uuid": "cde3eec8-b38f-47e0-8f12-d9441099070a",
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
              "uuid": "3e306247-3466-484c-a36d-eccb9f336d99",
              "parent_uuid": "cde3eec8-b38f-47e0-8f12-d9441099070a",
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
              "uuid": "9ac6293e-8fd4-4ac2-b289-3d82de81d65a",
              "parent_uuid": "cde3eec8-b38f-47e0-8f12-d9441099070a",
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
          "uuid": "c180af66-863d-4f28-809f-0bc163d76bc6",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "555fa7f8-e767-4031-b83f-d32a713370f5",
              "parent_uuid": "c180af66-863d-4f28-809f-0bc163d76bc6",
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
              "uuid": "a1a8d06c-2f95-418a-9d5e-e074c99d4de9",
              "parent_uuid": "c180af66-863d-4f28-809f-0bc163d76bc6",
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
              "uuid": "9d4b5ab5-df03-4f21-a271-e96f39923b78",
              "parent_uuid": "c180af66-863d-4f28-809f-0bc163d76bc6",
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
              "uuid": "7814399c-4399-4932-8d4c-7c4f7a9f8715",
              "parent_uuid": "c180af66-863d-4f28-809f-0bc163d76bc6",
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
              "uuid": "5067765c-3fb6-42b8-8de0-53b4942eb365",
              "parent_uuid": "c180af66-863d-4f28-809f-0bc163d76bc6",
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
          "uuid": "2203005b-d097-4156-92e9-e73c2cea8c82",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7d0b3fca-5ae9-4192-b143-d645d66c1391",
              "parent_uuid": "2203005b-d097-4156-92e9-e73c2cea8c82",
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
              "uuid": "45d21809-d192-483f-82bb-ec7b7cd8d647",
              "parent_uuid": "2203005b-d097-4156-92e9-e73c2cea8c82",
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
              "uuid": "b6e8bea4-8a65-4aa8-969c-387468699ed8",
              "parent_uuid": "2203005b-d097-4156-92e9-e73c2cea8c82",
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
              "uuid": "9f6fb003-f681-4ed0-a7f8-1e00101493a7",
              "parent_uuid": "2203005b-d097-4156-92e9-e73c2cea8c82",
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
              "uuid": "7649a929-29ed-4291-8696-1bf519474acc",
              "parent_uuid": "2203005b-d097-4156-92e9-e73c2cea8c82",
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
          "uuid": "f078e62c-bf6e-4d91-ab7f-9cd2323aa579",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "63549052-e7b6-4abb-9136-312eb63efc90",
              "parent_uuid": "f078e62c-bf6e-4d91-ab7f-9cd2323aa579",
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
              "uuid": "c1c15591-0bda-4714-8ca3-a721202b7e82",
              "parent_uuid": "f078e62c-bf6e-4d91-ab7f-9cd2323aa579",
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
              "uuid": "7674a40d-9a75-44f4-afad-31fd6d4b6eef",
              "parent_uuid": "f078e62c-bf6e-4d91-ab7f-9cd2323aa579",
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
              "uuid": "8ae27b04-f4e2-4eb2-8b6c-e18f40618d46",
              "parent_uuid": "f078e62c-bf6e-4d91-ab7f-9cd2323aa579",
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
              "uuid": "1892168f-6203-43e3-a7dd-84f06fcc72b9",
              "parent_uuid": "f078e62c-bf6e-4d91-ab7f-9cd2323aa579",
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
          "uuid": "febe135a-22a3-4728-979e-32e07c3eecd6",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "75209cf9-0d5c-4d07-b59e-525373ef445f",
              "parent_uuid": "febe135a-22a3-4728-979e-32e07c3eecd6",
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
              "uuid": "8c82a083-7d40-4c3a-b4a7-075c80402dfb",
              "parent_uuid": "febe135a-22a3-4728-979e-32e07c3eecd6",
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
              "uuid": "70e29ec3-1953-4222-9733-de0109966402",
              "parent_uuid": "febe135a-22a3-4728-979e-32e07c3eecd6",
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
              "uuid": "7617aff5-3eb5-4c87-88e2-a9c054e95534",
              "parent_uuid": "febe135a-22a3-4728-979e-32e07c3eecd6",
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
              "uuid": "3145e88a-6861-43d1-b305-0e9725b553c7",
              "parent_uuid": "febe135a-22a3-4728-979e-32e07c3eecd6",
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
          "uuid": "f4770bc7-c96a-4d60-bbfe-b74f52929dbd",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d451df5b-e388-4b3d-883c-7158a9a3409e",
              "parent_uuid": "f4770bc7-c96a-4d60-bbfe-b74f52929dbd",
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
              "uuid": "32511a22-d457-4832-88fa-4ce7d531ab9a",
              "parent_uuid": "f4770bc7-c96a-4d60-bbfe-b74f52929dbd",
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
              "uuid": "d7c68543-e74b-4470-a260-ab7dabdfa4aa",
              "parent_uuid": "f4770bc7-c96a-4d60-bbfe-b74f52929dbd",
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
              "uuid": "54fe3e68-44b1-48b9-9ec1-f027a4a20f19",
              "parent_uuid": "f4770bc7-c96a-4d60-bbfe-b74f52929dbd",
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
              "uuid": "f50d0573-510d-4859-9874-1e65c958385e",
              "parent_uuid": "f4770bc7-c96a-4d60-bbfe-b74f52929dbd",
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
          "uuid": "41e7af61-6131-490b-897d-ebb4b9f908ef",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d98dbf50-c6b6-4407-a294-831f3a930700",
              "parent_uuid": "41e7af61-6131-490b-897d-ebb4b9f908ef",
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
              "uuid": "af623add-b81e-486e-bb79-b1a2c3bd0d07",
              "parent_uuid": "41e7af61-6131-490b-897d-ebb4b9f908ef",
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
              "uuid": "cc68a965-85aa-442e-84b7-3866cfcf3aa1",
              "parent_uuid": "41e7af61-6131-490b-897d-ebb4b9f908ef",
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
              "uuid": "c28bf18e-ddc8-411e-96f3-8e4b5510ca7e",
              "parent_uuid": "41e7af61-6131-490b-897d-ebb4b9f908ef",
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
              "uuid": "6c3cef1b-deaf-404f-a93e-d757f67d2bc6",
              "parent_uuid": "41e7af61-6131-490b-897d-ebb4b9f908ef",
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
          "uuid": "603f27a4-455c-4921-8bcd-73c799f0747c",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c9687c2-ab86-43a4-8958-5c42f85c03a4",
              "parent_uuid": "603f27a4-455c-4921-8bcd-73c799f0747c",
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
              "uuid": "41fc583b-24de-46a9-93da-a7b18b7a9b9f",
              "parent_uuid": "603f27a4-455c-4921-8bcd-73c799f0747c",
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
              "uuid": "f972c13a-a892-4a42-bd3c-edc6bf346dbb",
              "parent_uuid": "603f27a4-455c-4921-8bcd-73c799f0747c",
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
              "uuid": "8def91c8-98e3-4321-adf0-fe8afcbe411a",
              "parent_uuid": "603f27a4-455c-4921-8bcd-73c799f0747c",
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
              "uuid": "dffb046e-d7cd-4d52-afbd-e7188a3b2498",
              "parent_uuid": "603f27a4-455c-4921-8bcd-73c799f0747c",
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
          "uuid": "b29d3319-0515-40fb-aa55-3d11de325650",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f6bb8961-16f1-4ae6-b47b-9dc40e17a460",
              "parent_uuid": "b29d3319-0515-40fb-aa55-3d11de325650",
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
              "uuid": "2bd51e0d-f72d-417f-8226-5f76ac4326b4",
              "parent_uuid": "b29d3319-0515-40fb-aa55-3d11de325650",
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
              "uuid": "aea6bb74-1215-4164-b0a7-4cc5475fc60f",
              "parent_uuid": "b29d3319-0515-40fb-aa55-3d11de325650",
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
              "uuid": "3d1e2f49-85e3-43a6-8f86-d3533fc2c311",
              "parent_uuid": "b29d3319-0515-40fb-aa55-3d11de325650",
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
              "uuid": "4e3c09d7-7ed6-4126-a22b-46c36bb0b6d4",
              "parent_uuid": "b29d3319-0515-40fb-aa55-3d11de325650",
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
          "uuid": "3bf1d7c9-4ceb-4272-b706-851021edaa5f",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e1d30ac-cedb-4653-b3eb-8bc601d0ef53",
              "parent_uuid": "3bf1d7c9-4ceb-4272-b706-851021edaa5f",
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
              "uuid": "7128f25d-8017-43fb-a036-e5d7b03b4688",
              "parent_uuid": "3bf1d7c9-4ceb-4272-b706-851021edaa5f",
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
              "uuid": "873df49a-e37a-4013-927b-23915158b5c1",
              "parent_uuid": "3bf1d7c9-4ceb-4272-b706-851021edaa5f",
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
              "uuid": "8e737229-a2ea-4dac-8974-b3c3d95666a0",
              "parent_uuid": "3bf1d7c9-4ceb-4272-b706-851021edaa5f",
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
              "uuid": "707d952a-9d7a-4951-8b95-61d2dc480a5e",
              "parent_uuid": "3bf1d7c9-4ceb-4272-b706-851021edaa5f",
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
          "uuid": "f83b8352-5483-4318-b61b-f580c38deae8",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fe621d8-be78-4e81-b6a7-49848601a0c2",
              "parent_uuid": "f83b8352-5483-4318-b61b-f580c38deae8",
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
              "uuid": "cbce0a6a-12a5-4bb8-bdeb-12fa98f3bd3f",
              "parent_uuid": "f83b8352-5483-4318-b61b-f580c38deae8",
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
              "uuid": "29f3b7ef-2928-45c3-a28d-7ea2a9654fd5",
              "parent_uuid": "f83b8352-5483-4318-b61b-f580c38deae8",
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
              "uuid": "fd5daf9b-55e6-46d9-8fa7-93d01b8fe00f",
              "parent_uuid": "f83b8352-5483-4318-b61b-f580c38deae8",
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
              "uuid": "a9cbc0bf-0382-45bf-b2ba-7e0cb683d6b7",
              "parent_uuid": "f83b8352-5483-4318-b61b-f580c38deae8",
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
          "uuid": "1d3c3b99-9856-47ea-a700-caafa0265a75",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e66e42d6-dd73-4c7a-abac-30fc29b785e0",
              "parent_uuid": "1d3c3b99-9856-47ea-a700-caafa0265a75",
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
              "uuid": "6093f6f0-2d99-45fd-bc31-696d52b2154b",
              "parent_uuid": "1d3c3b99-9856-47ea-a700-caafa0265a75",
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
              "uuid": "21371c3f-2336-49fb-a68c-0ade258f094d",
              "parent_uuid": "1d3c3b99-9856-47ea-a700-caafa0265a75",
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
              "uuid": "ae54ba06-ae27-4501-8050-d4235ce311e7",
              "parent_uuid": "1d3c3b99-9856-47ea-a700-caafa0265a75",
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
              "uuid": "62492ec1-297f-4564-8b99-e5940e218dc0",
              "parent_uuid": "1d3c3b99-9856-47ea-a700-caafa0265a75",
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
          "uuid": "a80cbcf5-21fd-46e0-ac6a-c7082e3e1c51",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a080e743-4f58-40c3-8589-6fab51d1e1ef",
              "parent_uuid": "a80cbcf5-21fd-46e0-ac6a-c7082e3e1c51",
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
              "uuid": "9c00dd9b-7964-4c0a-9a45-4060e2defb18",
              "parent_uuid": "a80cbcf5-21fd-46e0-ac6a-c7082e3e1c51",
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
              "uuid": "8b691221-d54e-4a16-9cf7-6a1e9864b236",
              "parent_uuid": "a80cbcf5-21fd-46e0-ac6a-c7082e3e1c51",
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
              "uuid": "c386885b-9810-4fc8-8a11-eaa3aa00e6a2",
              "parent_uuid": "a80cbcf5-21fd-46e0-ac6a-c7082e3e1c51",
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
              "uuid": "f7e53239-2d1c-46f4-8de0-d5b00a513c12",
              "parent_uuid": "a80cbcf5-21fd-46e0-ac6a-c7082e3e1c51",
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
          "uuid": "310f3763-4275-47e4-bcf5-ead5c63366cd",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ad535222-8e2c-4cc3-90e2-24e03a7dfc87",
              "parent_uuid": "310f3763-4275-47e4-bcf5-ead5c63366cd",
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
          "uuid": "44169919-20c4-4156-a519-41c488e9f8fb",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60252f4f-ac63-4fa6-a6e2-c4e2edc7b851",
              "parent_uuid": "44169919-20c4-4156-a519-41c488e9f8fb",
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
          "uuid": "72184abf-48e9-47f2-94b9-8fee730131e8",
          "parent_uuid": "42596530-38a9-4883-a684-61254f4d2467",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b86c6d63-ed18-4e2c-98bd-8909248b9cc3",
              "parent_uuid": "72184abf-48e9-47f2-94b9-8fee730131e8",
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
                  "uuid": "76026c33-440e-425b-a422-d5411e12b618",
                  "parent_uuid": "b86c6d63-ed18-4e2c-98bd-8909248b9cc3",
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

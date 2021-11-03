
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
  "uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "ee3e2fd5-5942-485c-814b-6fbfb3bd9b96",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "c97788ac-6766-49a9-9084-3e84531355c4",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "b0bc431d-b930-4a12-a003-59e452cbd785",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "e353c99e-70d7-40dc-ab24-e8ae4eb53673",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "503ae23f-6464-487c-b5ad-e2f0e33bb935",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "69ba93a5-04f7-47db-81cb-023cb48bc76e",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "c6193b87-af1a-470f-b1e7-967a6e55b377",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
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
      "uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
      "parent_uuid": "e176d88a-be4d-45e8-b4d1-3ff7c1972224",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "89b0bdbd-7306-4dd5-89e3-6da727013e24",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "2fe07c2c-ed7f-4277-8318-9bed88ca79b1",
              "parent_uuid": "89b0bdbd-7306-4dd5-89e3-6da727013e24",
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
              "uuid": "9f886830-640b-42f2-ade6-7f36861c928d",
              "parent_uuid": "89b0bdbd-7306-4dd5-89e3-6da727013e24",
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
              "uuid": "ad858862-f49a-409b-a1d6-1ee217a65aa9",
              "parent_uuid": "89b0bdbd-7306-4dd5-89e3-6da727013e24",
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
              "uuid": "9b6ce404-f98d-4f6c-89f4-2a489e794145",
              "parent_uuid": "89b0bdbd-7306-4dd5-89e3-6da727013e24",
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
          "uuid": "c7b461d4-dda5-4fa3-b8d2-7cc032cc58d3",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "2dee93a5-1d98-45fd-8939-d4340834717e",
              "parent_uuid": "c7b461d4-dda5-4fa3-b8d2-7cc032cc58d3",
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
              "uuid": "203c8390-4d5c-4d99-825b-a473d0c6405a",
              "parent_uuid": "c7b461d4-dda5-4fa3-b8d2-7cc032cc58d3",
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
              "uuid": "7bca7b0a-7e2b-40b1-a277-ff2aec0380b3",
              "parent_uuid": "c7b461d4-dda5-4fa3-b8d2-7cc032cc58d3",
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
              "uuid": "11de0bd1-b726-4c96-a0c4-9b883ab88d0c",
              "parent_uuid": "c7b461d4-dda5-4fa3-b8d2-7cc032cc58d3",
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
          "uuid": "e96a8e35-0b9f-4fb2-a4f5-ebd37c1d4f92",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "30920cb2-6bc7-4e32-a67a-9bf12e6e3039",
              "parent_uuid": "e96a8e35-0b9f-4fb2-a4f5-ebd37c1d4f92",
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
              "uuid": "39aa1b29-f60e-4500-b2fe-ef29e8b7164a",
              "parent_uuid": "e96a8e35-0b9f-4fb2-a4f5-ebd37c1d4f92",
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
              "uuid": "85ae520c-de61-4374-b2a7-2bbfec5a4090",
              "parent_uuid": "e96a8e35-0b9f-4fb2-a4f5-ebd37c1d4f92",
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
              "uuid": "c3d5361e-9fef-4dbd-af02-026aa9132b19",
              "parent_uuid": "e96a8e35-0b9f-4fb2-a4f5-ebd37c1d4f92",
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
              "uuid": "707b5761-9f79-4c26-9948-4a188266295b",
              "parent_uuid": "e96a8e35-0b9f-4fb2-a4f5-ebd37c1d4f92",
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
              "uuid": "c7d54484-3754-475f-839c-bac7314048d1",
              "parent_uuid": "e96a8e35-0b9f-4fb2-a4f5-ebd37c1d4f92",
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
          "uuid": "f6541873-7ec9-42e7-b978-79ccda02b876",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8d42f0b9-745c-4523-9a85-978bc4b2c74d",
              "parent_uuid": "f6541873-7ec9-42e7-b978-79ccda02b876",
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
          "uuid": "e0873f3a-9a2d-439f-8866-1203fdb20a4f",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a8723e68-c8e8-4709-bee9-1789efb777c0",
              "parent_uuid": "e0873f3a-9a2d-439f-8866-1203fdb20a4f",
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
              "uuid": "2d37f272-e509-46e9-ae87-e274249e0492",
              "parent_uuid": "e0873f3a-9a2d-439f-8866-1203fdb20a4f",
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
              "uuid": "5e3cb32c-8254-4b5d-9e7c-75a882e29093",
              "parent_uuid": "e0873f3a-9a2d-439f-8866-1203fdb20a4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d375292e-fc00-4f74-b6a1-c8362faf0dba",
                  "parent_uuid": "5e3cb32c-8254-4b5d-9e7c-75a882e29093",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be6fd0c2-5d53-4c93-86fb-08e20936a45e",
              "parent_uuid": "e0873f3a-9a2d-439f-8866-1203fdb20a4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a7c2fd3b-0702-448e-821f-76f498b1907f",
                  "parent_uuid": "be6fd0c2-5d53-4c93-86fb-08e20936a45e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "afd61e0f-758c-4145-bedc-56ba090155f9",
              "parent_uuid": "e0873f3a-9a2d-439f-8866-1203fdb20a4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "82e4ccf5-e4b2-47f0-9101-90d0114408ae",
                  "parent_uuid": "afd61e0f-758c-4145-bedc-56ba090155f9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "963f71d0-682e-4f68-8f3e-882ba86a16d0",
              "parent_uuid": "e0873f3a-9a2d-439f-8866-1203fdb20a4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "28ec3901-247e-4737-8eef-4cb7cf786168",
                  "parent_uuid": "963f71d0-682e-4f68-8f3e-882ba86a16d0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8277b274-72cf-4cc7-bec8-59ac7b30199e",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9a8cd02c-429f-4069-9154-b7ef2f69d607",
              "parent_uuid": "8277b274-72cf-4cc7-bec8-59ac7b30199e",
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
              "uuid": "4b221f03-2e5a-4b65-9c31-2f55b2c45ea6",
              "parent_uuid": "8277b274-72cf-4cc7-bec8-59ac7b30199e",
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
              "uuid": "c21afe2a-985f-4222-88a6-9633e59287cf",
              "parent_uuid": "8277b274-72cf-4cc7-bec8-59ac7b30199e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f38fd424-a93f-4749-9bee-002983d352aa",
                  "parent_uuid": "c21afe2a-985f-4222-88a6-9633e59287cf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "14fa2c00-b42e-4718-8388-d2acc828ae90",
              "parent_uuid": "8277b274-72cf-4cc7-bec8-59ac7b30199e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "23266855-fd99-4c85-9041-8f5a606ded21",
                  "parent_uuid": "14fa2c00-b42e-4718-8388-d2acc828ae90",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1fd775f-6471-4d33-9097-a7638431057d",
              "parent_uuid": "8277b274-72cf-4cc7-bec8-59ac7b30199e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "675eaf67-bc59-45ef-a1ec-317dc5c27167",
                  "parent_uuid": "c1fd775f-6471-4d33-9097-a7638431057d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c0bdcd6b-163a-4b2a-89a0-1c311bbc375d",
              "parent_uuid": "8277b274-72cf-4cc7-bec8-59ac7b30199e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3ae422af-824a-412a-b4b0-288f00be40d7",
                  "parent_uuid": "c0bdcd6b-163a-4b2a-89a0-1c311bbc375d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d88b71ae-1082-4bc3-8fc7-38f70ee6c493",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a4f95449-7f80-4905-ae79-c6cfa9076285",
              "parent_uuid": "d88b71ae-1082-4bc3-8fc7-38f70ee6c493",
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
              "uuid": "2c3a67b0-15bf-4695-b153-2f91384396f2",
              "parent_uuid": "d88b71ae-1082-4bc3-8fc7-38f70ee6c493",
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
              "uuid": "75f74037-e74e-4751-adce-605a3e9c3358",
              "parent_uuid": "d88b71ae-1082-4bc3-8fc7-38f70ee6c493",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55be69d9-7f5b-45f1-a6a7-bb1af019431c",
                  "parent_uuid": "75f74037-e74e-4751-adce-605a3e9c3358",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "318f88f6-61eb-4fd1-b585-c9a614628931",
              "parent_uuid": "d88b71ae-1082-4bc3-8fc7-38f70ee6c493",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2d824e30-8a55-47fe-8024-59f54d43b6c7",
                  "parent_uuid": "318f88f6-61eb-4fd1-b585-c9a614628931",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b83a0e4-84b8-430d-968a-62a7100eb675",
              "parent_uuid": "d88b71ae-1082-4bc3-8fc7-38f70ee6c493",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ae73be3-ec56-4202-a731-6bb3613516d9",
                  "parent_uuid": "2b83a0e4-84b8-430d-968a-62a7100eb675",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8cbecde8-255d-4f57-af29-7c4d935b6d6a",
              "parent_uuid": "d88b71ae-1082-4bc3-8fc7-38f70ee6c493",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "75ffc942-9f69-41f8-b182-93d1cf288f1a",
                  "parent_uuid": "8cbecde8-255d-4f57-af29-7c4d935b6d6a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d6eee193-5422-4e43-a57f-c67f10b25c78",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f291973-88e3-455e-96dd-245d8d403650",
              "parent_uuid": "d6eee193-5422-4e43-a57f-c67f10b25c78",
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
              "uuid": "d674d96f-16d3-42b9-ba59-f5024fc64ef9",
              "parent_uuid": "d6eee193-5422-4e43-a57f-c67f10b25c78",
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
              "uuid": "73c86b6f-8c79-40ee-aa4a-de61474295e8",
              "parent_uuid": "d6eee193-5422-4e43-a57f-c67f10b25c78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ea9fab1b-808c-48f7-8557-faa044dd0e2f",
                  "parent_uuid": "73c86b6f-8c79-40ee-aa4a-de61474295e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "818b2700-26b6-443f-bc75-6c78448d5c51",
              "parent_uuid": "d6eee193-5422-4e43-a57f-c67f10b25c78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5217f5fc-4ce2-4441-932c-84540adedc91",
                  "parent_uuid": "818b2700-26b6-443f-bc75-6c78448d5c51",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f1459f2d-25e8-42ce-bb99-a569e91f3127",
              "parent_uuid": "d6eee193-5422-4e43-a57f-c67f10b25c78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1819bf70-f73b-4f1e-9de9-b1a138bbdf13",
                  "parent_uuid": "f1459f2d-25e8-42ce-bb99-a569e91f3127",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e18aa0fa-563e-4fa9-b972-d1e3dc5b5c73",
              "parent_uuid": "d6eee193-5422-4e43-a57f-c67f10b25c78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3ea38756-3e2e-401c-b7a5-73ffe65b7ccd",
                  "parent_uuid": "e18aa0fa-563e-4fa9-b972-d1e3dc5b5c73",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "50f48d14-0109-4bd3-8aca-0a1c5a9b8d7f",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9dff8c81-cba4-4aac-9164-ec0bddecdd52",
              "parent_uuid": "50f48d14-0109-4bd3-8aca-0a1c5a9b8d7f",
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
              "uuid": "4f579652-386f-4f25-8edf-aa2c8dee46c9",
              "parent_uuid": "50f48d14-0109-4bd3-8aca-0a1c5a9b8d7f",
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
              "uuid": "3eec0114-216d-476c-ae8e-b6e334c732d7",
              "parent_uuid": "50f48d14-0109-4bd3-8aca-0a1c5a9b8d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "65ff6092-fc2e-454b-b852-b742e4f0c50c",
                  "parent_uuid": "3eec0114-216d-476c-ae8e-b6e334c732d7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fae023b7-4368-41a9-af64-8f4723360194",
              "parent_uuid": "50f48d14-0109-4bd3-8aca-0a1c5a9b8d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48616463-4f74-41c5-9fcd-570f2dc0a4f1",
                  "parent_uuid": "fae023b7-4368-41a9-af64-8f4723360194",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41834e0b-d65f-44dd-b6eb-ec5835d9725e",
              "parent_uuid": "50f48d14-0109-4bd3-8aca-0a1c5a9b8d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aefa3a75-54ee-4ce7-b822-596bc2f5b8a2",
                  "parent_uuid": "41834e0b-d65f-44dd-b6eb-ec5835d9725e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ea6160f8-67ab-4793-9c8f-8cb5b1374dd5",
              "parent_uuid": "50f48d14-0109-4bd3-8aca-0a1c5a9b8d7f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f0717fa9-6f66-433d-94db-eaba57a42e6c",
                  "parent_uuid": "ea6160f8-67ab-4793-9c8f-8cb5b1374dd5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "07e3ca3e-5de4-4a01-ae74-f5d3c8031d30",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9e466453-1e87-4a22-ac4a-03583e9afc6a",
              "parent_uuid": "07e3ca3e-5de4-4a01-ae74-f5d3c8031d30",
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
              "uuid": "ca0f7108-8f25-4805-a645-4991f94a484b",
              "parent_uuid": "07e3ca3e-5de4-4a01-ae74-f5d3c8031d30",
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
              "uuid": "71dd4649-7e44-4570-94bd-4e120df5e022",
              "parent_uuid": "07e3ca3e-5de4-4a01-ae74-f5d3c8031d30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "60352a19-79f2-4b08-8d6f-ad4cefe374a8",
                  "parent_uuid": "71dd4649-7e44-4570-94bd-4e120df5e022",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "631fc9a2-27f4-4e6a-ad56-ec2c62c9bbe4",
              "parent_uuid": "07e3ca3e-5de4-4a01-ae74-f5d3c8031d30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fe9a50f9-12bc-4da2-a843-eed82e1edf1d",
                  "parent_uuid": "631fc9a2-27f4-4e6a-ad56-ec2c62c9bbe4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a96d2f40-6d57-4228-a8cd-55e8072876b1",
              "parent_uuid": "07e3ca3e-5de4-4a01-ae74-f5d3c8031d30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "23dd5476-18a2-4536-97cf-755c8c872788",
                  "parent_uuid": "a96d2f40-6d57-4228-a8cd-55e8072876b1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b6a7176f-05f5-4ee4-82d7-b6bea454abf2",
              "parent_uuid": "07e3ca3e-5de4-4a01-ae74-f5d3c8031d30",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f15beca0-c26f-4e43-b435-f9a1512a569a",
                  "parent_uuid": "b6a7176f-05f5-4ee4-82d7-b6bea454abf2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ce1a1e91-b229-440a-bb45-58132d414ebc",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8feda586-06a1-4e28-b9a6-0452c183ccc6",
              "parent_uuid": "ce1a1e91-b229-440a-bb45-58132d414ebc",
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
              "uuid": "7c6c177f-192c-4737-b3f0-77f1f30c815e",
              "parent_uuid": "ce1a1e91-b229-440a-bb45-58132d414ebc",
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
              "uuid": "46e1bb2b-3f3e-472d-b2e9-5c60de15c2fa",
              "parent_uuid": "ce1a1e91-b229-440a-bb45-58132d414ebc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "17c1d309-f714-4d37-aec1-adf59dc2d71e",
                  "parent_uuid": "46e1bb2b-3f3e-472d-b2e9-5c60de15c2fa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a8aa6c0-c1ae-4d2c-980b-891b10f846b4",
              "parent_uuid": "ce1a1e91-b229-440a-bb45-58132d414ebc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f4311309-a608-4987-b1ea-caf3dd3ecb7f",
                  "parent_uuid": "9a8aa6c0-c1ae-4d2c-980b-891b10f846b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3689f120-9080-4699-8b3f-aa924ef0beda",
              "parent_uuid": "ce1a1e91-b229-440a-bb45-58132d414ebc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18406600-283a-4b73-b4f7-fa08588e67fd",
                  "parent_uuid": "3689f120-9080-4699-8b3f-aa924ef0beda",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8ec5efa5-3952-4a22-ab4a-3c751d28cd1a",
              "parent_uuid": "ce1a1e91-b229-440a-bb45-58132d414ebc",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07b20e70-2293-41c7-b6a3-8cc5357ec7af",
                  "parent_uuid": "8ec5efa5-3952-4a22-ab4a-3c751d28cd1a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6d32d0c5-c4f6-45ba-8824-e31c666cf789",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3371de04-0cfb-4aea-993c-94420e02fd32",
              "parent_uuid": "6d32d0c5-c4f6-45ba-8824-e31c666cf789",
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
              "uuid": "42507843-d85d-47cb-962b-ce705a73393e",
              "parent_uuid": "6d32d0c5-c4f6-45ba-8824-e31c666cf789",
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
              "uuid": "9c268555-42a9-4119-b6e9-410b8f7fa37c",
              "parent_uuid": "6d32d0c5-c4f6-45ba-8824-e31c666cf789",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df5621a5-e56f-415f-a2cc-a95749cc49ed",
                  "parent_uuid": "9c268555-42a9-4119-b6e9-410b8f7fa37c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec605c59-d3af-4a58-bdb7-e61daa578535",
              "parent_uuid": "6d32d0c5-c4f6-45ba-8824-e31c666cf789",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7a886f9f-44f5-44b6-9223-6fa2c8215f2f",
                  "parent_uuid": "ec605c59-d3af-4a58-bdb7-e61daa578535",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0c4ba8d5-0f20-4b1f-89bf-8787227f4e96",
              "parent_uuid": "6d32d0c5-c4f6-45ba-8824-e31c666cf789",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b5de082d-a951-4f12-b90e-5994f3e3a146",
                  "parent_uuid": "0c4ba8d5-0f20-4b1f-89bf-8787227f4e96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "82bc0185-ca40-4e3e-a8d3-24648f29dd26",
              "parent_uuid": "6d32d0c5-c4f6-45ba-8824-e31c666cf789",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25c27c3d-2221-426a-92e9-1f0555c52556",
                  "parent_uuid": "82bc0185-ca40-4e3e-a8d3-24648f29dd26",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4c9d3d18-3f78-4a4d-b13d-e97f451c8b83",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c5ada7f-4dca-4487-b830-359d0ece4c0a",
              "parent_uuid": "4c9d3d18-3f78-4a4d-b13d-e97f451c8b83",
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
              "uuid": "756cf399-a292-49c5-96f2-09b09b645610",
              "parent_uuid": "4c9d3d18-3f78-4a4d-b13d-e97f451c8b83",
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
              "uuid": "4eceae9c-6acf-4ba8-9116-dd8732dfb339",
              "parent_uuid": "4c9d3d18-3f78-4a4d-b13d-e97f451c8b83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb9d3fde-3cf3-4dd2-9aed-bc50957bcd5b",
                  "parent_uuid": "4eceae9c-6acf-4ba8-9116-dd8732dfb339",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "24b421fc-3037-47b7-b361-fa7e52f62115",
              "parent_uuid": "4c9d3d18-3f78-4a4d-b13d-e97f451c8b83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6ec8ac09-ad6a-44c9-ba6f-d88322c745cc",
                  "parent_uuid": "24b421fc-3037-47b7-b361-fa7e52f62115",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e07bcb3d-8edd-4bda-a727-4b7a3f6271af",
              "parent_uuid": "4c9d3d18-3f78-4a4d-b13d-e97f451c8b83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5d78a85c-13a7-4ca2-bae9-31ea9278d8e2",
                  "parent_uuid": "e07bcb3d-8edd-4bda-a727-4b7a3f6271af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d83b7489-0d5d-419b-9b75-9b4de40ecf6b",
              "parent_uuid": "4c9d3d18-3f78-4a4d-b13d-e97f451c8b83",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4863dc82-3b1f-4a86-9387-87dc34f2c6c4",
                  "parent_uuid": "d83b7489-0d5d-419b-9b75-9b4de40ecf6b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2f42107a-eb6e-42a8-a749-4730158d13e1",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcffd196-eb5d-439c-9a9a-b4de46a21168",
              "parent_uuid": "2f42107a-eb6e-42a8-a749-4730158d13e1",
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
              "uuid": "7a0122f9-c4a7-4b88-85e8-aaf14f375fad",
              "parent_uuid": "2f42107a-eb6e-42a8-a749-4730158d13e1",
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
              "uuid": "6df89e1a-cd7d-47ac-bffe-872e0030d413",
              "parent_uuid": "2f42107a-eb6e-42a8-a749-4730158d13e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbcc5a21-95cd-4145-be0b-898169e13f4d",
                  "parent_uuid": "6df89e1a-cd7d-47ac-bffe-872e0030d413",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bc7b7ce3-f9df-4b5f-833d-5928d68a0516",
              "parent_uuid": "2f42107a-eb6e-42a8-a749-4730158d13e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "433a9701-5ca3-467d-8e16-c2e69976fccb",
                  "parent_uuid": "bc7b7ce3-f9df-4b5f-833d-5928d68a0516",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2ccf880-6da1-489b-ad17-25feef05abdd",
              "parent_uuid": "2f42107a-eb6e-42a8-a749-4730158d13e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "104411dd-6b7b-4cb8-a3f7-36a1c6613f8c",
                  "parent_uuid": "e2ccf880-6da1-489b-ad17-25feef05abdd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb5f0e53-9391-4cea-92ec-7935ac9f3a6b",
              "parent_uuid": "2f42107a-eb6e-42a8-a749-4730158d13e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5de5be1c-6005-425d-bd8b-ccefe8984ed4",
                  "parent_uuid": "eb5f0e53-9391-4cea-92ec-7935ac9f3a6b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "73ed57a8-685e-4188-b8d7-fa48154463c6",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "204ebc79-0569-4eb0-877b-69817225508b",
              "parent_uuid": "73ed57a8-685e-4188-b8d7-fa48154463c6",
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
              "uuid": "f1066b9a-7798-4940-ac03-70856283418a",
              "parent_uuid": "73ed57a8-685e-4188-b8d7-fa48154463c6",
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
              "uuid": "3c08448a-2ff5-460c-a4cf-abf15d823457",
              "parent_uuid": "73ed57a8-685e-4188-b8d7-fa48154463c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a4b1bb9c-1e24-47b7-a5ec-c34e628bcfcd",
                  "parent_uuid": "3c08448a-2ff5-460c-a4cf-abf15d823457",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5485fdd-b183-40ca-9fca-f9fe2ad3fff0",
              "parent_uuid": "73ed57a8-685e-4188-b8d7-fa48154463c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de6e1c37-88d8-4dc2-88eb-73dc4ec2b2f9",
                  "parent_uuid": "a5485fdd-b183-40ca-9fca-f9fe2ad3fff0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b20046ce-783c-496e-8560-e007e87e6521",
              "parent_uuid": "73ed57a8-685e-4188-b8d7-fa48154463c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ad6f7178-da4a-4438-ac86-717d6181c80b",
                  "parent_uuid": "b20046ce-783c-496e-8560-e007e87e6521",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1430ef15-a668-4651-860a-2902f45bf1ec",
              "parent_uuid": "73ed57a8-685e-4188-b8d7-fa48154463c6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0930c9a4-ae2d-477c-8f76-d254e5b15c42",
                  "parent_uuid": "1430ef15-a668-4651-860a-2902f45bf1ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9245d72c-b59f-4fb6-96c3-97398b2d11ef",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e69bba04-27a7-422e-88cf-a1e92436ca35",
              "parent_uuid": "9245d72c-b59f-4fb6-96c3-97398b2d11ef",
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
              "uuid": "478225b5-2662-42d4-ab9e-5c32d96ee921",
              "parent_uuid": "9245d72c-b59f-4fb6-96c3-97398b2d11ef",
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
              "uuid": "233ebfe9-dd3a-4220-a5d1-558cc4e48d28",
              "parent_uuid": "9245d72c-b59f-4fb6-96c3-97398b2d11ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e286d706-f549-4a15-af88-7d8817935f3a",
                  "parent_uuid": "233ebfe9-dd3a-4220-a5d1-558cc4e48d28",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b0fb1fa-a1b4-4517-9f51-7f33e4456b5e",
              "parent_uuid": "9245d72c-b59f-4fb6-96c3-97398b2d11ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e8afa271-0210-4dd1-90b3-157179b63e8c",
                  "parent_uuid": "8b0fb1fa-a1b4-4517-9f51-7f33e4456b5e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cb7f56b-a8cb-4f00-83a4-e529128f8f70",
              "parent_uuid": "9245d72c-b59f-4fb6-96c3-97398b2d11ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "21949ad3-09c2-4957-8e66-e1c97d9fa89c",
                  "parent_uuid": "5cb7f56b-a8cb-4f00-83a4-e529128f8f70",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "965e0d01-40da-4a52-822a-07ecb51c1751",
              "parent_uuid": "9245d72c-b59f-4fb6-96c3-97398b2d11ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b2922f85-4876-4334-a246-f95dcfe11426",
                  "parent_uuid": "965e0d01-40da-4a52-822a-07ecb51c1751",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0e320482-3e45-4b40-b236-8933896b8c82",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "92de6268-4993-4f09-aa17-ec121132b312",
              "parent_uuid": "0e320482-3e45-4b40-b236-8933896b8c82",
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
              "uuid": "30861929-69c4-400a-80bb-43be98e0a264",
              "parent_uuid": "0e320482-3e45-4b40-b236-8933896b8c82",
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
              "uuid": "7b1b4681-5335-4e58-beda-dbf328d4f29d",
              "parent_uuid": "0e320482-3e45-4b40-b236-8933896b8c82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6f080e51-0f8f-49c2-a4ca-2d9c9ce3a63b",
                  "parent_uuid": "7b1b4681-5335-4e58-beda-dbf328d4f29d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "44659827-5aa9-40ac-b3f2-9e61c93d1853",
              "parent_uuid": "0e320482-3e45-4b40-b236-8933896b8c82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c3dad64c-3567-419e-9243-15d6f6703e78",
                  "parent_uuid": "44659827-5aa9-40ac-b3f2-9e61c93d1853",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8f35dfab-6504-41c5-a16d-e867f979a801",
              "parent_uuid": "0e320482-3e45-4b40-b236-8933896b8c82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e2ac9334-5626-4d3f-b50b-5fab25eb780e",
                  "parent_uuid": "8f35dfab-6504-41c5-a16d-e867f979a801",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2396cbea-462d-4ae8-9968-f20c7f247066",
              "parent_uuid": "0e320482-3e45-4b40-b236-8933896b8c82",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0cb027da-f90e-4f5b-a69c-207194848bd9",
                  "parent_uuid": "2396cbea-462d-4ae8-9968-f20c7f247066",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "244efa99-0e5b-470d-af5a-1d36c05bd62b",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3c303db6-e315-4dec-8353-3a5870c50a47",
              "parent_uuid": "244efa99-0e5b-470d-af5a-1d36c05bd62b",
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
              "uuid": "476234d6-1df9-4964-82be-d1b115244e0b",
              "parent_uuid": "244efa99-0e5b-470d-af5a-1d36c05bd62b",
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
              "uuid": "527cc1c5-8dc5-4c67-ba51-55b159c41ea7",
              "parent_uuid": "244efa99-0e5b-470d-af5a-1d36c05bd62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11587170-126e-4c86-ac6a-0d5526c7525e",
                  "parent_uuid": "527cc1c5-8dc5-4c67-ba51-55b159c41ea7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "53c6687c-7828-4816-95b6-f7e7ca62a2fc",
              "parent_uuid": "244efa99-0e5b-470d-af5a-1d36c05bd62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dc1b3329-600a-4e10-ab24-5ec5c35481ae",
                  "parent_uuid": "53c6687c-7828-4816-95b6-f7e7ca62a2fc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e2a9c6cb-1055-4731-918d-33904df2a938",
              "parent_uuid": "244efa99-0e5b-470d-af5a-1d36c05bd62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d6d5162b-2ff1-4ed3-86b6-29569cef5190",
                  "parent_uuid": "e2a9c6cb-1055-4731-918d-33904df2a938",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00cd2a65-7a0e-48c0-b1c2-9e29e2d8f248",
              "parent_uuid": "244efa99-0e5b-470d-af5a-1d36c05bd62b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f8e5149-735f-4ff4-998e-2ff783f94458",
                  "parent_uuid": "00cd2a65-7a0e-48c0-b1c2-9e29e2d8f248",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "46869da6-e840-49c1-88a2-8f40193c94e1",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "026917d5-3483-4c00-8512-c720cdcb5e61",
              "parent_uuid": "46869da6-e840-49c1-88a2-8f40193c94e1",
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
              "uuid": "fb1e487e-a6c7-4e35-b95b-7839d00f2a69",
              "parent_uuid": "46869da6-e840-49c1-88a2-8f40193c94e1",
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
              "uuid": "e35b9bc1-4e7e-4d43-a61f-dbbf9ba38a9b",
              "parent_uuid": "46869da6-e840-49c1-88a2-8f40193c94e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "122e6d5c-b2ac-4632-bb1a-efc442631548",
                  "parent_uuid": "e35b9bc1-4e7e-4d43-a61f-dbbf9ba38a9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3c412fd7-b0f4-4253-98e2-7b90ad7b9625",
              "parent_uuid": "46869da6-e840-49c1-88a2-8f40193c94e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bda14910-f447-4e8c-b4c1-c96537d500b8",
                  "parent_uuid": "3c412fd7-b0f4-4253-98e2-7b90ad7b9625",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6f1ab42b-8972-42eb-9183-9044b43acdc8",
              "parent_uuid": "46869da6-e840-49c1-88a2-8f40193c94e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e81ef439-14da-452a-be73-eff9eff0cb02",
                  "parent_uuid": "6f1ab42b-8972-42eb-9183-9044b43acdc8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88a2c169-e7be-4bec-adfb-8ed30b476e4a",
              "parent_uuid": "46869da6-e840-49c1-88a2-8f40193c94e1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91ec6732-156e-4273-9e7d-f6018a906923",
                  "parent_uuid": "88a2c169-e7be-4bec-adfb-8ed30b476e4a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "19655da1-2c22-4b85-aadc-95e504d4245d",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c1fb3625-8c43-4a6a-ad4c-6d36e4b85225",
              "parent_uuid": "19655da1-2c22-4b85-aadc-95e504d4245d",
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
              "uuid": "8632c3df-3bab-451e-ad44-87ba1edb261e",
              "parent_uuid": "19655da1-2c22-4b85-aadc-95e504d4245d",
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
              "uuid": "81dc6093-20f5-4296-8334-531eabfa7f95",
              "parent_uuid": "19655da1-2c22-4b85-aadc-95e504d4245d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5f069ccc-7661-4184-abc7-dbd4bc3986e8",
                  "parent_uuid": "81dc6093-20f5-4296-8334-531eabfa7f95",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47a0eb14-ad89-4a12-bd66-10e14ff190ec",
              "parent_uuid": "19655da1-2c22-4b85-aadc-95e504d4245d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72590457-b849-4763-9583-7d8a5cbeb149",
                  "parent_uuid": "47a0eb14-ad89-4a12-bd66-10e14ff190ec",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d8c39cd-8d74-4437-bd95-8afdbbe8cad5",
              "parent_uuid": "19655da1-2c22-4b85-aadc-95e504d4245d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9d209d8-b842-4f18-898d-c9968d727c4b",
                  "parent_uuid": "0d8c39cd-8d74-4437-bd95-8afdbbe8cad5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aea6ef60-54da-4753-9e04-4d33ec523701",
              "parent_uuid": "19655da1-2c22-4b85-aadc-95e504d4245d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b421dfd9-152e-4eb6-84fe-e1279c53f885",
                  "parent_uuid": "aea6ef60-54da-4753-9e04-4d33ec523701",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bc447b81-1e41-4fe6-a206-8796a2bca5eb",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c9c60f7-abcc-420d-8b61-34b03adf4fde",
              "parent_uuid": "bc447b81-1e41-4fe6-a206-8796a2bca5eb",
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
          "uuid": "78021e6b-7ffb-4fcb-b873-fcc1d1890728",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c7b4834d-d829-4f7a-b0e1-f65d5829f0b9",
              "parent_uuid": "78021e6b-7ffb-4fcb-b873-fcc1d1890728",
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
          "uuid": "84f2b3c2-7731-480f-bccd-3118454c74df",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b550b10b-ee48-48e7-9770-07bb261ddecd",
              "parent_uuid": "84f2b3c2-7731-480f-bccd-3118454c74df",
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
                  "uuid": "b09b5bbc-6c74-46a0-b177-9789f84a1870",
                  "parent_uuid": "b550b10b-ee48-48e7-9770-07bb261ddecd",
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
          "uuid": "9eecb79a-5beb-40f2-8d45-7b52b480a1e7",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "94f1a0d6-af9f-4a81-b6b4-710e6696f6d1",
              "parent_uuid": "9eecb79a-5beb-40f2-8d45-7b52b480a1e7",
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
          "uuid": "2f1c0c2b-f9de-4b94-873d-bab42b5d2ec0",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c2b80791-6513-45e2-89ce-625127a9de0e",
              "parent_uuid": "2f1c0c2b-f9de-4b94-873d-bab42b5d2ec0",
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
          "uuid": "469e0b23-d6e6-4628-ba3c-c9bc0e8a6a9d",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f2527b9b-7f29-45e5-a305-12b400f8d2be",
              "parent_uuid": "469e0b23-d6e6-4628-ba3c-c9bc0e8a6a9d",
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
              "uuid": "0b8324a3-2c92-466a-af0a-b8c8107064b7",
              "parent_uuid": "469e0b23-d6e6-4628-ba3c-c9bc0e8a6a9d",
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
              "uuid": "44f413ea-b8aa-4d52-8693-528f6b2123f8",
              "parent_uuid": "469e0b23-d6e6-4628-ba3c-c9bc0e8a6a9d",
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
              "uuid": "9d4677b1-ecb8-43b7-b216-53a5bf8e9fa3",
              "parent_uuid": "469e0b23-d6e6-4628-ba3c-c9bc0e8a6a9d",
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
              "uuid": "eded65d8-0bb9-4e31-8f9c-906e278e1bfa",
              "parent_uuid": "469e0b23-d6e6-4628-ba3c-c9bc0e8a6a9d",
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
              "uuid": "ecd10d73-d9d9-4ea0-82fe-1d8e4abab95b",
              "parent_uuid": "469e0b23-d6e6-4628-ba3c-c9bc0e8a6a9d",
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
          "uuid": "89c0d8d7-d106-44e9-9c7a-f2f4678d66cf",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "61c30272-1f9b-4187-84c4-a6fc45721d01",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08172c2e-f49e-485f-b33a-02fa15e4ee04",
              "parent_uuid": "61c30272-1f9b-4187-84c4-a6fc45721d01",
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
              "uuid": "2d045802-fd1c-4e27-93cc-b23754e73cf9",
              "parent_uuid": "61c30272-1f9b-4187-84c4-a6fc45721d01",
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
              "uuid": "043e1dc1-fc99-4a73-ab60-a3400fa9f978",
              "parent_uuid": "61c30272-1f9b-4187-84c4-a6fc45721d01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "416cff00-92bb-4db5-a2df-09d713ffff31",
                  "parent_uuid": "043e1dc1-fc99-4a73-ab60-a3400fa9f978",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b6c80f7-f74d-423f-a58a-0349ad69ebdf",
              "parent_uuid": "61c30272-1f9b-4187-84c4-a6fc45721d01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "505534c2-7cf3-4500-9a4c-e196ac0dc989",
                  "parent_uuid": "1b6c80f7-f74d-423f-a58a-0349ad69ebdf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1110791f-e54b-43a0-b434-34eeb50eb070",
              "parent_uuid": "61c30272-1f9b-4187-84c4-a6fc45721d01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9c4c1f7b-d08c-45bb-be04-8ce8d41ab1d3",
                  "parent_uuid": "1110791f-e54b-43a0-b434-34eeb50eb070",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e44fe14-f81a-4808-ab28-326a3b1e33d1",
              "parent_uuid": "61c30272-1f9b-4187-84c4-a6fc45721d01",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "25320bd6-bf8b-4424-a515-ea2d2adb5898",
                  "parent_uuid": "6e44fe14-f81a-4808-ab28-326a3b1e33d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d5c064b1-a7b6-4419-b116-d9738f0812b0",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "556e9492-0b26-4143-9c35-64d313c8fe7c",
              "parent_uuid": "d5c064b1-a7b6-4419-b116-d9738f0812b0",
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
              "uuid": "ab315ce4-a63b-4d60-82fe-5cb24afca888",
              "parent_uuid": "d5c064b1-a7b6-4419-b116-d9738f0812b0",
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
              "uuid": "ca9992d8-98f7-4a07-b8d7-d794d2ea972a",
              "parent_uuid": "d5c064b1-a7b6-4419-b116-d9738f0812b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4dda66b2-bcd7-4ac0-9a80-ef917971c440",
                  "parent_uuid": "ca9992d8-98f7-4a07-b8d7-d794d2ea972a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a743f137-11da-487c-a2ea-c2e71c3da708",
              "parent_uuid": "d5c064b1-a7b6-4419-b116-d9738f0812b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f390ab27-bdf1-45ed-85c0-315ccff85838",
                  "parent_uuid": "a743f137-11da-487c-a2ea-c2e71c3da708",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e28150ef-819c-474e-9829-bf33a030d3af",
              "parent_uuid": "d5c064b1-a7b6-4419-b116-d9738f0812b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7738793a-a6de-40b1-85e9-ac84d1741277",
                  "parent_uuid": "e28150ef-819c-474e-9829-bf33a030d3af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7638fac5-6cdb-4785-b734-13cd9693e97d",
              "parent_uuid": "d5c064b1-a7b6-4419-b116-d9738f0812b0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb68a362-3061-429a-aab8-f6fd7a1528ce",
                  "parent_uuid": "7638fac5-6cdb-4785-b734-13cd9693e97d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0de13e5d-f5f8-41a0-8c38-c6d96c794371",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b8b68fc2-7c13-41ab-b003-c5dad4f43869",
              "parent_uuid": "0de13e5d-f5f8-41a0-8c38-c6d96c794371",
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
              "uuid": "5bd4a792-fe49-42ae-98cf-0e19006acade",
              "parent_uuid": "0de13e5d-f5f8-41a0-8c38-c6d96c794371",
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
              "uuid": "f41ae5ae-fae3-43e5-bd2a-9e91621d3315",
              "parent_uuid": "0de13e5d-f5f8-41a0-8c38-c6d96c794371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "af12b4b4-e794-4e8e-bbc6-c8efd7a3f187",
                  "parent_uuid": "f41ae5ae-fae3-43e5-bd2a-9e91621d3315",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4fd58a17-7538-4e2c-af5a-bfc5634db4b5",
              "parent_uuid": "0de13e5d-f5f8-41a0-8c38-c6d96c794371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f561ebe8-8216-4f4e-947e-edc282bd1d74",
                  "parent_uuid": "4fd58a17-7538-4e2c-af5a-bfc5634db4b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f338d058-c146-4c2c-8c3a-1c96d6893d38",
              "parent_uuid": "0de13e5d-f5f8-41a0-8c38-c6d96c794371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "378a177d-582d-459c-8710-56bca9d484c0",
                  "parent_uuid": "f338d058-c146-4c2c-8c3a-1c96d6893d38",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "da0536fd-a477-4380-89b6-630c56eff46c",
              "parent_uuid": "0de13e5d-f5f8-41a0-8c38-c6d96c794371",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0d854a8-905d-42fc-a64f-49ce7f21f6cf",
                  "parent_uuid": "da0536fd-a477-4380-89b6-630c56eff46c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "69bd8abd-2d3a-4c1f-b3c5-7e17c330f475",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a0e0cd4-2ab9-4adb-94c9-0dd456739239",
              "parent_uuid": "69bd8abd-2d3a-4c1f-b3c5-7e17c330f475",
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
              "uuid": "4c9a9678-12a7-4718-8353-a68dc7b6c05a",
              "parent_uuid": "69bd8abd-2d3a-4c1f-b3c5-7e17c330f475",
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
              "uuid": "efc3e238-429a-491a-b9f7-e7b9b07c843a",
              "parent_uuid": "69bd8abd-2d3a-4c1f-b3c5-7e17c330f475",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e61ae191-4066-42fb-8a67-2d7cc961a0ed",
                  "parent_uuid": "efc3e238-429a-491a-b9f7-e7b9b07c843a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6250c652-1244-420a-ac3c-63168067d5c3",
              "parent_uuid": "69bd8abd-2d3a-4c1f-b3c5-7e17c330f475",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7b1b9e51-8cc9-4b0b-92ba-6b543ee4e124",
                  "parent_uuid": "6250c652-1244-420a-ac3c-63168067d5c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6103214d-694b-4164-93f7-b3aea894be9b",
              "parent_uuid": "69bd8abd-2d3a-4c1f-b3c5-7e17c330f475",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4db94c60-b7a1-45cd-9c3a-3736cbc78080",
                  "parent_uuid": "6103214d-694b-4164-93f7-b3aea894be9b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5bfab6c-fdf8-4186-a196-b7aadd421a63",
              "parent_uuid": "69bd8abd-2d3a-4c1f-b3c5-7e17c330f475",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "248b898d-0971-46ae-bf6b-a06c81962afa",
                  "parent_uuid": "d5bfab6c-fdf8-4186-a196-b7aadd421a63",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c09af8da-e551-4549-9870-f5f5465225e1",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b73a4d3-a487-4685-b1c6-6473a575dd43",
              "parent_uuid": "c09af8da-e551-4549-9870-f5f5465225e1",
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
          "uuid": "1970ddbb-fd24-4079-a119-562fbd6bd0d4",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f4302116-5053-4cfb-87d4-791c58ecf395",
              "parent_uuid": "1970ddbb-fd24-4079-a119-562fbd6bd0d4",
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
          "uuid": "3479a01e-1e28-44a3-9226-d8673a70d44e",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "30d6fb9e-37a9-4fc8-b4ef-2b5dc0715b3f",
              "parent_uuid": "3479a01e-1e28-44a3-9226-d8673a70d44e",
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
                  "uuid": "34a9c7fd-26e0-4d15-8a2f-8a1aad258ebc",
                  "parent_uuid": "30d6fb9e-37a9-4fc8-b4ef-2b5dc0715b3f",
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
          "uuid": "eb82245d-a44b-4c9d-af56-ad8cb7668f2b",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "cb8cf45c-90e5-4744-bb66-eca63cd010ac",
              "parent_uuid": "eb82245d-a44b-4c9d-af56-ad8cb7668f2b",
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
          "uuid": "05f73396-0712-4d0c-b679-8153b6078a44",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f547a12e-e8b1-4f06-93e0-3bb66fac8d34",
              "parent_uuid": "05f73396-0712-4d0c-b679-8153b6078a44",
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
          "uuid": "a2de82bc-77b2-4e7e-b07b-fecd0645a5a0",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6974bab-ce86-4783-9899-7e015a00efd9",
              "parent_uuid": "a2de82bc-77b2-4e7e-b07b-fecd0645a5a0",
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
              "uuid": "68d549c5-a510-415a-903e-fe3af851b26b",
              "parent_uuid": "a2de82bc-77b2-4e7e-b07b-fecd0645a5a0",
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
              "uuid": "56f7f238-18b9-43a6-9e1b-bcdac9861536",
              "parent_uuid": "a2de82bc-77b2-4e7e-b07b-fecd0645a5a0",
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
              "uuid": "fb5802b0-b22c-4bd4-8301-8d33f6b7a1cd",
              "parent_uuid": "a2de82bc-77b2-4e7e-b07b-fecd0645a5a0",
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
              "uuid": "ece3864c-9f75-4869-a5d0-1b933fb5b1c5",
              "parent_uuid": "a2de82bc-77b2-4e7e-b07b-fecd0645a5a0",
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
              "uuid": "80ca8e92-147d-49d4-be5a-d55d314b8631",
              "parent_uuid": "a2de82bc-77b2-4e7e-b07b-fecd0645a5a0",
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
          "uuid": "ef4d2ce3-f1b0-42dd-a111-f5b99626f660",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "be3950ab-fc56-4f09-8475-834585ca2593",
              "parent_uuid": "ef4d2ce3-f1b0-42dd-a111-f5b99626f660",
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
              "uuid": "e55c8a27-9405-4fe4-8c25-cf6a107227c3",
              "parent_uuid": "ef4d2ce3-f1b0-42dd-a111-f5b99626f660",
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
              "uuid": "748c49a7-3f32-4bb2-9910-441ffeb934db",
              "parent_uuid": "ef4d2ce3-f1b0-42dd-a111-f5b99626f660",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9e5cb9d3-c985-405d-8b42-f8bec885d9d8",
                  "parent_uuid": "748c49a7-3f32-4bb2-9910-441ffeb934db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f80deaee-fba5-4ea1-ba42-bcef90adc07b",
              "parent_uuid": "ef4d2ce3-f1b0-42dd-a111-f5b99626f660",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e34823f3-2135-4f8f-bda9-252ff437c8f1",
                  "parent_uuid": "f80deaee-fba5-4ea1-ba42-bcef90adc07b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "54501d46-8dc4-4abf-95d8-470a4d5da290",
              "parent_uuid": "ef4d2ce3-f1b0-42dd-a111-f5b99626f660",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3e6caf2-7c9d-449d-b980-fcf0f40c66c5",
                  "parent_uuid": "54501d46-8dc4-4abf-95d8-470a4d5da290",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c671a83a-5da4-4bad-ae7d-65eacb2257e9",
              "parent_uuid": "ef4d2ce3-f1b0-42dd-a111-f5b99626f660",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a53cf71c-6fbd-453a-a147-f4efa84aedea",
                  "parent_uuid": "c671a83a-5da4-4bad-ae7d-65eacb2257e9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8424a98f-a003-4804-9b70-e0a3614ad215",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5b63053b-3566-41cf-bc56-346b3a3eea74",
              "parent_uuid": "8424a98f-a003-4804-9b70-e0a3614ad215",
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
              "uuid": "9e70641a-b09c-432b-932f-ed806d00c080",
              "parent_uuid": "8424a98f-a003-4804-9b70-e0a3614ad215",
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
              "uuid": "3e1516c1-d032-4499-8ff0-6c980fd276d0",
              "parent_uuid": "8424a98f-a003-4804-9b70-e0a3614ad215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "725afe07-2b6c-4f85-a385-a61928fadbc9",
                  "parent_uuid": "3e1516c1-d032-4499-8ff0-6c980fd276d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "21779440-7624-4e83-8c50-b2dd0142daff",
              "parent_uuid": "8424a98f-a003-4804-9b70-e0a3614ad215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63a6f17d-25ea-4dac-8f61-1a47b14eca26",
                  "parent_uuid": "21779440-7624-4e83-8c50-b2dd0142daff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7b7e9ad8-25f1-4794-8be3-de8a2f3613db",
              "parent_uuid": "8424a98f-a003-4804-9b70-e0a3614ad215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1cc12c5a-7936-4919-841c-e04900e68cab",
                  "parent_uuid": "7b7e9ad8-25f1-4794-8be3-de8a2f3613db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43956036-cb79-4239-b793-565530f5bf00",
              "parent_uuid": "8424a98f-a003-4804-9b70-e0a3614ad215",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "784670c6-a139-4ced-87e7-cbd18ca0323a",
                  "parent_uuid": "43956036-cb79-4239-b793-565530f5bf00",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b86a58e2-6261-4cef-8f49-61bed42e850b",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fd9f6745-013c-4e18-8936-90a7206d8bcb",
              "parent_uuid": "b86a58e2-6261-4cef-8f49-61bed42e850b",
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
              "uuid": "662a64d2-9335-45a4-84b9-91731c4f4a8e",
              "parent_uuid": "b86a58e2-6261-4cef-8f49-61bed42e850b",
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
              "uuid": "c956b07c-7d3c-4943-8c2b-b5176eab3522",
              "parent_uuid": "b86a58e2-6261-4cef-8f49-61bed42e850b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "376e104a-224e-4a6e-a856-51e6b25603e1",
                  "parent_uuid": "c956b07c-7d3c-4943-8c2b-b5176eab3522",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4118716b-8c35-4b05-83a9-8b3ee39bf933",
              "parent_uuid": "b86a58e2-6261-4cef-8f49-61bed42e850b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fb72f48-b2f3-41d7-aaf8-54f92a07c7bf",
                  "parent_uuid": "4118716b-8c35-4b05-83a9-8b3ee39bf933",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ecfeb481-d866-4c67-a623-7fd985845eef",
              "parent_uuid": "b86a58e2-6261-4cef-8f49-61bed42e850b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "097fc1ac-a550-410e-8eb2-7dc098d478c0",
                  "parent_uuid": "ecfeb481-d866-4c67-a623-7fd985845eef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f018656e-de57-4d9f-8d59-0b0b3dff96e9",
              "parent_uuid": "b86a58e2-6261-4cef-8f49-61bed42e850b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4961a0e3-1b13-4167-ac74-eab2bb344ab9",
                  "parent_uuid": "f018656e-de57-4d9f-8d59-0b0b3dff96e9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7d761d89-c18f-418d-bb33-21827d0491f5",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "67292ee3-8cf9-40ce-ade8-878a5ed684a6",
              "parent_uuid": "7d761d89-c18f-418d-bb33-21827d0491f5",
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
              "uuid": "c4926bea-1c32-4ac8-a3ca-f5835efe4386",
              "parent_uuid": "7d761d89-c18f-418d-bb33-21827d0491f5",
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
              "uuid": "cd3d30b7-9ee4-4a3f-bd77-6c861533adfc",
              "parent_uuid": "7d761d89-c18f-418d-bb33-21827d0491f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "583f880c-7890-4e11-ac24-d8851e50891b",
                  "parent_uuid": "cd3d30b7-9ee4-4a3f-bd77-6c861533adfc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46bd8302-a533-4951-af4e-6335be3cb7e5",
              "parent_uuid": "7d761d89-c18f-418d-bb33-21827d0491f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78eae078-a903-4da5-abff-729226bb2978",
                  "parent_uuid": "46bd8302-a533-4951-af4e-6335be3cb7e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d9b7320b-8f82-41af-ac74-fa56ea391601",
              "parent_uuid": "7d761d89-c18f-418d-bb33-21827d0491f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e1098925-bbbf-4b5c-8d80-130de863e18f",
                  "parent_uuid": "d9b7320b-8f82-41af-ac74-fa56ea391601",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f2e949ca-254e-45a8-b7fd-df5ccb09d039",
              "parent_uuid": "7d761d89-c18f-418d-bb33-21827d0491f5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9d155905-bc0f-4ee6-b36d-1d2f93e6d76e",
                  "parent_uuid": "f2e949ca-254e-45a8-b7fd-df5ccb09d039",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "297a2b30-7254-4597-9fde-c7888f36f4fa",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a582313f-160d-4b42-8283-476a090c9a08",
              "parent_uuid": "297a2b30-7254-4597-9fde-c7888f36f4fa",
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
              "uuid": "558d3d29-3bbc-401c-a78b-e05668dc9fa9",
              "parent_uuid": "297a2b30-7254-4597-9fde-c7888f36f4fa",
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
              "uuid": "a3a87e94-b6e2-4f64-8228-dd2a79ce276f",
              "parent_uuid": "297a2b30-7254-4597-9fde-c7888f36f4fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "735941c0-7a4b-457a-8569-d623eab24625",
                  "parent_uuid": "a3a87e94-b6e2-4f64-8228-dd2a79ce276f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "922bf638-8be6-43a0-b318-c3c0a68c7473",
              "parent_uuid": "297a2b30-7254-4597-9fde-c7888f36f4fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e44844e3-582b-4ae3-8123-df5d1eed6fbf",
                  "parent_uuid": "922bf638-8be6-43a0-b318-c3c0a68c7473",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ce2a310f-1d5e-43a6-9892-980074b37333",
              "parent_uuid": "297a2b30-7254-4597-9fde-c7888f36f4fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b76f8ff0-0641-4ebd-befd-10c7dcc3e613",
                  "parent_uuid": "ce2a310f-1d5e-43a6-9892-980074b37333",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "89f9cdbf-cb78-486f-8376-dc001d59e552",
              "parent_uuid": "297a2b30-7254-4597-9fde-c7888f36f4fa",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "020b67c7-8e33-4d28-aae1-7b4e9d747f76",
                  "parent_uuid": "89f9cdbf-cb78-486f-8376-dc001d59e552",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "60b0577c-d085-477c-8718-d40e02f53336",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "439f1d89-49b6-457f-bc88-332ba9351606",
              "parent_uuid": "60b0577c-d085-477c-8718-d40e02f53336",
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
              "uuid": "e96738a3-aa4a-4fcd-8993-a4306b49bfa1",
              "parent_uuid": "60b0577c-d085-477c-8718-d40e02f53336",
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
              "uuid": "603c628e-8dd2-4903-b139-35aad9bd6694",
              "parent_uuid": "60b0577c-d085-477c-8718-d40e02f53336",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a06cd6c7-4494-4f0b-9757-9af7c3e52bf4",
                  "parent_uuid": "603c628e-8dd2-4903-b139-35aad9bd6694",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1258866d-9660-4a6a-982b-13d30f35dafa",
              "parent_uuid": "60b0577c-d085-477c-8718-d40e02f53336",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55d1a284-e050-482e-b76a-032ee84632b1",
                  "parent_uuid": "1258866d-9660-4a6a-982b-13d30f35dafa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01a50526-e9d4-4479-a2de-b4112829faaf",
              "parent_uuid": "60b0577c-d085-477c-8718-d40e02f53336",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "743a2c1b-c9a7-4b1a-b8bb-42c6ac7f9270",
                  "parent_uuid": "01a50526-e9d4-4479-a2de-b4112829faaf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "803c4d85-81e7-4233-ac15-c5263b0007d1",
              "parent_uuid": "60b0577c-d085-477c-8718-d40e02f53336",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfacbeb0-1d71-4c9a-9dc5-5c835c9e4bae",
                  "parent_uuid": "803c4d85-81e7-4233-ac15-c5263b0007d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c369228e-acd7-4069-a41b-a809071c6275",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "337c3e10-dd43-4288-a26e-e15f393c7443",
              "parent_uuid": "c369228e-acd7-4069-a41b-a809071c6275",
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
          "uuid": "fe6002a4-cc61-4b95-8820-c12744c02347",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "632f8f43-deaa-4aa6-b18f-bd125776efe7",
              "parent_uuid": "fe6002a4-cc61-4b95-8820-c12744c02347",
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
          "uuid": "26b92853-5319-4f46-8acc-d7254d1a23bc",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9891e75f-78a1-4780-9b6b-985039f87504",
              "parent_uuid": "26b92853-5319-4f46-8acc-d7254d1a23bc",
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
                  "uuid": "86872598-17fe-4d01-b8bd-b18c5a3e96eb",
                  "parent_uuid": "9891e75f-78a1-4780-9b6b-985039f87504",
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
          "uuid": "dd2ee79d-d7ab-4f26-8482-0ccc8b6db477",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab55cb75-2ff9-4a4b-8aec-91c2601d7722",
              "parent_uuid": "dd2ee79d-d7ab-4f26-8482-0ccc8b6db477",
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
          "uuid": "59c3b8bc-48a8-465a-ab62-099cc9609fab",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "15985e56-9f1e-4336-884a-55e47e41385f",
              "parent_uuid": "59c3b8bc-48a8-465a-ab62-099cc9609fab",
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
          "uuid": "de76dddf-d517-4fb4-ac69-fcda9498305f",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a5b59601-81a1-4db0-8d8d-040195a85fd7",
              "parent_uuid": "de76dddf-d517-4fb4-ac69-fcda9498305f",
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
              "uuid": "c9703517-c066-4d97-9902-d16c53abba53",
              "parent_uuid": "de76dddf-d517-4fb4-ac69-fcda9498305f",
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
              "uuid": "3e3c615e-5230-4c09-8edd-1ee03b94344c",
              "parent_uuid": "de76dddf-d517-4fb4-ac69-fcda9498305f",
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
              "uuid": "b6ccd7f6-1d81-4e2f-8cd5-f73267d4ddc5",
              "parent_uuid": "de76dddf-d517-4fb4-ac69-fcda9498305f",
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
              "uuid": "70623638-a687-4e4b-af03-61951bcc761a",
              "parent_uuid": "de76dddf-d517-4fb4-ac69-fcda9498305f",
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
          "uuid": "ee0e1186-bb39-468e-b081-f82cec531be1",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c63b0063-bf18-4068-9907-f31fa631dcd0",
              "parent_uuid": "ee0e1186-bb39-468e-b081-f82cec531be1",
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
              "uuid": "e6fa23e8-90e5-4a6c-a829-6698fc9a870a",
              "parent_uuid": "ee0e1186-bb39-468e-b081-f82cec531be1",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1d662ea7-774e-4663-b854-acc4ade91b62",
              "parent_uuid": "ee0e1186-bb39-468e-b081-f82cec531be1",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0bbf0fa0-6a61-4db8-a090-0930f246cbce",
              "parent_uuid": "ee0e1186-bb39-468e-b081-f82cec531be1",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "931cd0f2-1924-4183-85b3-6ee2b8d9e32a",
              "parent_uuid": "ee0e1186-bb39-468e-b081-f82cec531be1",
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
          "uuid": "e28470bd-a50b-411c-b5a5-753f88e69405",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "423282d3-d252-4c74-a64a-a3ff29c48706",
              "parent_uuid": "e28470bd-a50b-411c-b5a5-753f88e69405",
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
              "uuid": "6f82b4d6-1183-441f-81eb-39da12232cfa",
              "parent_uuid": "e28470bd-a50b-411c-b5a5-753f88e69405",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7a71cd0f-4d3b-4ed3-9db6-70c3eb29a55b",
              "parent_uuid": "e28470bd-a50b-411c-b5a5-753f88e69405",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "06b9b258-0ba3-46bc-a544-156b21cc5eea",
              "parent_uuid": "e28470bd-a50b-411c-b5a5-753f88e69405",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "98e1f195-4bb4-4d8d-a933-4445e10d05a2",
              "parent_uuid": "e28470bd-a50b-411c-b5a5-753f88e69405",
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
          "uuid": "d0845236-6250-4911-806e-af42c9c35784",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "673bf581-fc10-4fa2-9969-cb7f95fb50bc",
              "parent_uuid": "d0845236-6250-4911-806e-af42c9c35784",
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
              "uuid": "34add677-680f-4669-9cce-5df95ebf4238",
              "parent_uuid": "d0845236-6250-4911-806e-af42c9c35784",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c8ce0399-368d-4f2f-b3c3-1e3bb4f8cc55",
              "parent_uuid": "d0845236-6250-4911-806e-af42c9c35784",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "70b87543-eea6-405c-92b9-19cf886b4332",
              "parent_uuid": "d0845236-6250-4911-806e-af42c9c35784",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "1457038c-a959-45f0-8173-9202a3b45438",
              "parent_uuid": "d0845236-6250-4911-806e-af42c9c35784",
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
          "uuid": "8b4e9c9f-91b6-4414-9cf7-670a7729a2d2",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e7b10f56-a7f7-41be-bf8d-4460275b2f4c",
              "parent_uuid": "8b4e9c9f-91b6-4414-9cf7-670a7729a2d2",
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
              "uuid": "d7e8f543-c6a6-4ccf-bf12-2e8054640125",
              "parent_uuid": "8b4e9c9f-91b6-4414-9cf7-670a7729a2d2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "cc4a31a2-2b86-4c81-9c96-4cf7b9368a28",
              "parent_uuid": "8b4e9c9f-91b6-4414-9cf7-670a7729a2d2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c864c7bd-4a4c-41a7-a687-3786d4cfd631",
              "parent_uuid": "8b4e9c9f-91b6-4414-9cf7-670a7729a2d2",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0e1e70ef-45e4-4098-b645-5800c2467963",
              "parent_uuid": "8b4e9c9f-91b6-4414-9cf7-670a7729a2d2",
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
          "uuid": "f0625fa8-6069-4fab-8bd2-addc8596b5a3",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "43c12cc6-9c14-4bb5-a7ba-31f027a8c767",
              "parent_uuid": "f0625fa8-6069-4fab-8bd2-addc8596b5a3",
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
              "uuid": "ed5e43a2-f08e-4db7-b1ba-f56871fd1a0b",
              "parent_uuid": "f0625fa8-6069-4fab-8bd2-addc8596b5a3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3cb88532-c47a-4ab4-8d86-7dde115997af",
              "parent_uuid": "f0625fa8-6069-4fab-8bd2-addc8596b5a3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0f757a19-925b-40c2-9c92-9ddb0aa8bdb1",
              "parent_uuid": "f0625fa8-6069-4fab-8bd2-addc8596b5a3",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "07b7800e-6889-4ab2-b017-b4ac72e17b40",
              "parent_uuid": "f0625fa8-6069-4fab-8bd2-addc8596b5a3",
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
          "uuid": "df4855ea-a1e6-4ef3-a807-f10a1e64e098",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f7ae40a-dd2f-4d05-ae09-84d597bf0c8f",
              "parent_uuid": "df4855ea-a1e6-4ef3-a807-f10a1e64e098",
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
              "uuid": "d3270863-485a-4eab-af5d-8bf72d50d731",
              "parent_uuid": "df4855ea-a1e6-4ef3-a807-f10a1e64e098",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "d8581ab2-3778-4704-b200-b8943cc637e2",
              "parent_uuid": "df4855ea-a1e6-4ef3-a807-f10a1e64e098",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a698e977-d2ee-4f23-9439-210240eba2de",
              "parent_uuid": "df4855ea-a1e6-4ef3-a807-f10a1e64e098",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "8f249167-6194-4c2f-82a6-3330996c74a4",
              "parent_uuid": "df4855ea-a1e6-4ef3-a807-f10a1e64e098",
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
          "uuid": "7599c6a3-fc48-44bf-9757-aa5477cdfc24",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "97a0ce35-6784-42c0-9b01-b357aa57948c",
              "parent_uuid": "7599c6a3-fc48-44bf-9757-aa5477cdfc24",
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
              "uuid": "f6d8cbb4-e0fc-4247-92ab-51eb499294d0",
              "parent_uuid": "7599c6a3-fc48-44bf-9757-aa5477cdfc24",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "30c984c8-1fd9-45fe-8c3d-d90b4a50b5cb",
              "parent_uuid": "7599c6a3-fc48-44bf-9757-aa5477cdfc24",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "83377586-d767-46e8-9e28-8b799b47408d",
              "parent_uuid": "7599c6a3-fc48-44bf-9757-aa5477cdfc24",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2563ab70-f7a2-4feb-b549-7f60d4397a63",
              "parent_uuid": "7599c6a3-fc48-44bf-9757-aa5477cdfc24",
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
          "uuid": "fa9b12e4-731c-495a-8fbf-34ec78e12011",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dee65d13-3499-40d0-8b14-77ab1e1f24a6",
              "parent_uuid": "fa9b12e4-731c-495a-8fbf-34ec78e12011",
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
              "uuid": "91c628ed-40a9-4986-95c4-73ea4335be42",
              "parent_uuid": "fa9b12e4-731c-495a-8fbf-34ec78e12011",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4f872e58-f560-4ef6-a52f-fdadd1901ff6",
              "parent_uuid": "fa9b12e4-731c-495a-8fbf-34ec78e12011",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "99fe3db3-c6e0-4547-a43f-ead83db113a7",
              "parent_uuid": "fa9b12e4-731c-495a-8fbf-34ec78e12011",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "68ace8bb-2fde-49d8-b12b-223de98c9c67",
              "parent_uuid": "fa9b12e4-731c-495a-8fbf-34ec78e12011",
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
          "uuid": "d8c1c0b9-fa6b-4e20-8a28-024b231086a9",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "673a5233-3138-4308-8193-75bef844863f",
              "parent_uuid": "d8c1c0b9-fa6b-4e20-8a28-024b231086a9",
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
              "uuid": "e0618505-9753-4c3a-917d-5090f371f752",
              "parent_uuid": "d8c1c0b9-fa6b-4e20-8a28-024b231086a9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "7ce134fd-c547-4fdb-8bfc-c98c4c1b88a0",
              "parent_uuid": "d8c1c0b9-fa6b-4e20-8a28-024b231086a9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ff2ca2c6-e933-493c-82dc-ee4c0201457d",
              "parent_uuid": "d8c1c0b9-fa6b-4e20-8a28-024b231086a9",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ee0c1a7b-3996-4a25-9628-610300b4e9ad",
              "parent_uuid": "d8c1c0b9-fa6b-4e20-8a28-024b231086a9",
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
          "uuid": "6475c4f6-37ea-457f-b605-af2b3e5079ba",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31bdef05-a067-46fc-b92f-14a4878b168f",
              "parent_uuid": "6475c4f6-37ea-457f-b605-af2b3e5079ba",
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
              "uuid": "60e78411-3f84-4afc-a3f4-b38c7863f256",
              "parent_uuid": "6475c4f6-37ea-457f-b605-af2b3e5079ba",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "f874a526-c6b0-4ef0-8c2f-b5283b17854d",
              "parent_uuid": "6475c4f6-37ea-457f-b605-af2b3e5079ba",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ce7c1134-c48a-48f9-8d6b-54700a731443",
              "parent_uuid": "6475c4f6-37ea-457f-b605-af2b3e5079ba",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "ae8ea8b2-bd36-49fe-bbe4-6fbcd2f581c1",
              "parent_uuid": "6475c4f6-37ea-457f-b605-af2b3e5079ba",
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
          "uuid": "d8eafd8b-c3c2-4e1a-aa8f-1555840b8a37",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf7fa24d-f83c-4b90-93b5-01cf630fb6ed",
              "parent_uuid": "d8eafd8b-c3c2-4e1a-aa8f-1555840b8a37",
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
              "uuid": "b1fe9865-4c31-4493-a2ba-ea509d22e2fd",
              "parent_uuid": "d8eafd8b-c3c2-4e1a-aa8f-1555840b8a37",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "37af999b-859a-45d9-9af0-8bc25e1acaf3",
              "parent_uuid": "d8eafd8b-c3c2-4e1a-aa8f-1555840b8a37",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "54a02169-c740-4026-9e77-43a158e159e1",
              "parent_uuid": "d8eafd8b-c3c2-4e1a-aa8f-1555840b8a37",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "0205e221-e969-456a-a379-4f8ad19f326e",
              "parent_uuid": "d8eafd8b-c3c2-4e1a-aa8f-1555840b8a37",
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
          "uuid": "6f8d62d5-16de-4129-970b-09a904796c65",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "567d046c-386f-4c19-8a3d-efaebabd75ac",
              "parent_uuid": "6f8d62d5-16de-4129-970b-09a904796c65",
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
              "uuid": "8bfdfdf1-e0cd-4649-bfa6-5d4f898ab923",
              "parent_uuid": "6f8d62d5-16de-4129-970b-09a904796c65",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "45415aa5-8124-4b1b-b4d1-740e249adcbf",
              "parent_uuid": "6f8d62d5-16de-4129-970b-09a904796c65",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "e2ee073b-57a8-40bc-b6ea-930fe3640ee1",
              "parent_uuid": "6f8d62d5-16de-4129-970b-09a904796c65",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "967ce4f0-6fb0-415c-842d-4b2e75e35124",
              "parent_uuid": "6f8d62d5-16de-4129-970b-09a904796c65",
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
          "uuid": "639e5cc6-96e0-4d36-ae4a-7b538c40abca",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71772597-1b97-47c9-b98f-2b5632f183b9",
              "parent_uuid": "639e5cc6-96e0-4d36-ae4a-7b538c40abca",
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
          "uuid": "376b805b-5257-4ad0-a43a-eb5f1f3eafee",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a584b3ea-a3bf-4a7e-bc53-267940837d90",
              "parent_uuid": "376b805b-5257-4ad0-a43a-eb5f1f3eafee",
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
          "uuid": "cd77a10f-f7d1-401d-9674-db2d13fec686",
          "parent_uuid": "9b568bb2-c636-4146-885e-70d8143b43b9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f09d86db-89a1-4816-a031-82e408e0f505",
              "parent_uuid": "cd77a10f-f7d1-401d-9674-db2d13fec686",
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
                  "uuid": "7f5241b2-1dfb-47d1-92c0-90cd25d8b7b1",
                  "parent_uuid": "f09d86db-89a1-4816-a031-82e408e0f505",
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

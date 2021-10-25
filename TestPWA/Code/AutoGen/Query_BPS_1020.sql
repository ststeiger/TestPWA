
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
  "uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "210a3ccc-eb46-4825-80e2-147f7e30a4e8",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "9771a5b6-bf3b-4891-9241-d25b000b8992",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "f14066e3-521b-450b-b1fd-2f9f23b72fa0",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "f03d26ba-7390-4b66-92c9-3d1c707742f3",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "84f94d4d-eeb3-47f6-bbd6-67c7acf26c43",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "8d148ead-e655-4aef-acfe-a2adc754d3f0",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "dc8f4dc3-3d08-4f6a-b44a-0701eaf7b23f",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
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
      "uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
      "parent_uuid": "1f209199-4dd2-407e-a11b-8bc5ac288c69",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "e3342316-3749-4994-9bc9-fe0826be5b8f",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "870516f8-760e-46ed-b528-62151d0b1a79",
              "parent_uuid": "e3342316-3749-4994-9bc9-fe0826be5b8f",
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
              "uuid": "de2aad69-dffe-4e23-b55a-b8ada13c1ebd",
              "parent_uuid": "e3342316-3749-4994-9bc9-fe0826be5b8f",
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
              "uuid": "68c12378-bbc0-440a-a5ba-99665d1a1b29",
              "parent_uuid": "e3342316-3749-4994-9bc9-fe0826be5b8f",
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
              "uuid": "13f4d14f-639c-4303-a41b-b9a104f52647",
              "parent_uuid": "e3342316-3749-4994-9bc9-fe0826be5b8f",
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
          "uuid": "deca5157-d2dd-4723-81a4-cc107f9e0616",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "4dc336a6-4606-4e8a-beaa-d7c5a275e37f",
              "parent_uuid": "deca5157-d2dd-4723-81a4-cc107f9e0616",
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
              "uuid": "fde59fa2-1d2c-4309-be5e-302f3b4baa7a",
              "parent_uuid": "deca5157-d2dd-4723-81a4-cc107f9e0616",
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
              "uuid": "070974ee-a395-4f3d-82d8-e3029b93b8ca",
              "parent_uuid": "deca5157-d2dd-4723-81a4-cc107f9e0616",
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
              "uuid": "208b4be3-c6c5-436a-a4b5-77613b8ce26f",
              "parent_uuid": "deca5157-d2dd-4723-81a4-cc107f9e0616",
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
          "uuid": "8988a433-042a-43e0-8b03-605317c49aff",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "d82837bf-caf0-4317-b1bc-161bc7500383",
              "parent_uuid": "8988a433-042a-43e0-8b03-605317c49aff",
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
              "uuid": "a1555897-c332-4d17-b6e9-e431563df6fe",
              "parent_uuid": "8988a433-042a-43e0-8b03-605317c49aff",
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
              "uuid": "4cb6f99d-6df6-4580-b216-e907daae4a7e",
              "parent_uuid": "8988a433-042a-43e0-8b03-605317c49aff",
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
              "uuid": "48f7b5b2-8813-474c-a747-dc26b6f13f0c",
              "parent_uuid": "8988a433-042a-43e0-8b03-605317c49aff",
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
          "uuid": "ab8c4e1a-e8da-459f-9c79-c43fc2e39b35",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d22beac1-c4d6-4398-bfd0-d8f017faaaa6",
              "parent_uuid": "ab8c4e1a-e8da-459f-9c79-c43fc2e39b35",
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
              "uuid": "9759f361-5f8f-48f6-b267-b643d4f1c0c6",
              "parent_uuid": "ab8c4e1a-e8da-459f-9c79-c43fc2e39b35",
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
              "uuid": "239d5c3f-3b4c-428c-9952-e893b9753698",
              "parent_uuid": "ab8c4e1a-e8da-459f-9c79-c43fc2e39b35",
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
              "uuid": "ebd3a551-5667-48f8-84ae-11defe08c9e4",
              "parent_uuid": "ab8c4e1a-e8da-459f-9c79-c43fc2e39b35",
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
              "uuid": "3c5017a3-f384-44cb-a734-6b3c2d4f07f9",
              "parent_uuid": "ab8c4e1a-e8da-459f-9c79-c43fc2e39b35",
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
              "uuid": "a621e76a-b179-4ae8-8f00-cc25c9e0e3e5",
              "parent_uuid": "ab8c4e1a-e8da-459f-9c79-c43fc2e39b35",
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
          "uuid": "d1717307-eff3-44cb-bc4f-4fd61b8380bb",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c0c96897-f55a-4e6d-8212-187e26e64b5c",
              "parent_uuid": "d1717307-eff3-44cb-bc4f-4fd61b8380bb",
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
          "uuid": "f13957c9-9336-4c2c-b098-67bb647c6be2",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "778a27db-914b-401d-a021-44d2a7e33e7e",
              "parent_uuid": "f13957c9-9336-4c2c-b098-67bb647c6be2",
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
              "uuid": "156f084c-b54c-41a5-be42-8a820f7ce277",
              "parent_uuid": "f13957c9-9336-4c2c-b098-67bb647c6be2",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "80c5159d-f6ab-49d2-bb3f-07c823ef707f",
              "parent_uuid": "f13957c9-9336-4c2c-b098-67bb647c6be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "02466a2b-2b95-433e-b572-896817b7aaa6",
                  "parent_uuid": "80c5159d-f6ab-49d2-bb3f-07c823ef707f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "769fb7b8-f667-4cc5-89ee-dbce96fd0f69",
              "parent_uuid": "f13957c9-9336-4c2c-b098-67bb647c6be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f3da8c44-ae41-4dc4-88a2-583463c74f76",
                  "parent_uuid": "769fb7b8-f667-4cc5-89ee-dbce96fd0f69",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "de6e06b8-f250-4430-8f87-9896c781cbfb",
              "parent_uuid": "f13957c9-9336-4c2c-b098-67bb647c6be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f5e8d4e5-a455-4b5f-94ef-54cc1dbccca6",
                  "parent_uuid": "de6e06b8-f250-4430-8f87-9896c781cbfb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f08d59db-5182-4b71-971f-8cc5d8582315",
              "parent_uuid": "f13957c9-9336-4c2c-b098-67bb647c6be2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "12190590-a2a3-49e9-a4eb-b3df623eaeab",
                  "parent_uuid": "f08d59db-5182-4b71-971f-8cc5d8582315",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "166f82b7-7a3f-4f90-b8df-b2b1647771ef",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60bddaeb-cb72-4e36-bd5f-b31469f56310",
              "parent_uuid": "166f82b7-7a3f-4f90-b8df-b2b1647771ef",
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
              "uuid": "77ee6485-3bf3-40ff-a4f1-af0195686fc9",
              "parent_uuid": "166f82b7-7a3f-4f90-b8df-b2b1647771ef",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "49369ac2-1c12-47b6-9ab0-d665e4255773",
              "parent_uuid": "166f82b7-7a3f-4f90-b8df-b2b1647771ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e6802864-da54-43a1-8931-fe2466f1787e",
                  "parent_uuid": "49369ac2-1c12-47b6-9ab0-d665e4255773",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a50436dc-3e84-4b6d-918a-02727ca23a9a",
              "parent_uuid": "166f82b7-7a3f-4f90-b8df-b2b1647771ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3df33ee3-9e25-48fd-866e-74a0ccbc9167",
                  "parent_uuid": "a50436dc-3e84-4b6d-918a-02727ca23a9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e64224dd-8a42-4d34-90be-5c1ffbdabd54",
              "parent_uuid": "166f82b7-7a3f-4f90-b8df-b2b1647771ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a8d0a062-8f96-4351-b4e9-1e72b98c8129",
                  "parent_uuid": "e64224dd-8a42-4d34-90be-5c1ffbdabd54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2fd3f07-122f-4d44-abfe-d0ea2181211b",
              "parent_uuid": "166f82b7-7a3f-4f90-b8df-b2b1647771ef",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0127c874-41d3-490d-b4df-1534a25c9223",
                  "parent_uuid": "c2fd3f07-122f-4d44-abfe-d0ea2181211b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3cebc9b3-402f-41bd-adbb-afa2d9ec9b48",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce1ee53e-bf5b-4592-9343-cee24ac116db",
              "parent_uuid": "3cebc9b3-402f-41bd-adbb-afa2d9ec9b48",
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
              "uuid": "f7c92454-fab1-454a-8001-42ad3375e84a",
              "parent_uuid": "3cebc9b3-402f-41bd-adbb-afa2d9ec9b48",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "809a5466-b47d-40f9-ac39-49b6a8675839",
              "parent_uuid": "3cebc9b3-402f-41bd-adbb-afa2d9ec9b48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44c2e916-d36b-47cc-9d9f-20c36f4d6649",
                  "parent_uuid": "809a5466-b47d-40f9-ac39-49b6a8675839",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "10ef5dcf-5e78-4d62-832b-a5a5b59e8877",
              "parent_uuid": "3cebc9b3-402f-41bd-adbb-afa2d9ec9b48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "dbe84436-e509-48bb-bb28-893911aded10",
                  "parent_uuid": "10ef5dcf-5e78-4d62-832b-a5a5b59e8877",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d7971de-0e31-43bf-96be-1bb5ce916c3f",
              "parent_uuid": "3cebc9b3-402f-41bd-adbb-afa2d9ec9b48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "621a0d30-3359-4bff-bfc7-4f377f330039",
                  "parent_uuid": "2d7971de-0e31-43bf-96be-1bb5ce916c3f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a29da656-b641-459b-9e77-c7d5870ea1d6",
              "parent_uuid": "3cebc9b3-402f-41bd-adbb-afa2d9ec9b48",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c78a2c7f-7bb0-4aa7-9c16-575f39c837dd",
                  "parent_uuid": "a29da656-b641-459b-9e77-c7d5870ea1d6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d3dc546b-8a9e-4908-b56d-d59c8b48b576",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8456fa90-8287-4e7f-acf0-c96ae59fbb9b",
              "parent_uuid": "d3dc546b-8a9e-4908-b56d-d59c8b48b576",
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
              "uuid": "31bf0a56-3f8d-4efe-aa73-4cd5c716d679",
              "parent_uuid": "d3dc546b-8a9e-4908-b56d-d59c8b48b576",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "7dbca6c9-f2af-4788-a9cc-4fc95b3cda2e",
              "parent_uuid": "d3dc546b-8a9e-4908-b56d-d59c8b48b576",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aa48e6fc-afbd-4711-9824-def7bc1473ac",
                  "parent_uuid": "7dbca6c9-f2af-4788-a9cc-4fc95b3cda2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6e00eca4-201d-406e-bef2-fcd8a1103c77",
              "parent_uuid": "d3dc546b-8a9e-4908-b56d-d59c8b48b576",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3c0f6a0-53db-4815-958c-ee21b9656e1d",
                  "parent_uuid": "6e00eca4-201d-406e-bef2-fcd8a1103c77",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71ca5e1a-21e7-4e62-a7b8-0c690fa7f1d8",
              "parent_uuid": "d3dc546b-8a9e-4908-b56d-d59c8b48b576",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f464ad00-ab08-48ac-b7a5-0aaa7a8069f5",
                  "parent_uuid": "71ca5e1a-21e7-4e62-a7b8-0c690fa7f1d8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b57cf8bd-d59e-43d8-a917-944a7f4d3d8e",
              "parent_uuid": "d3dc546b-8a9e-4908-b56d-d59c8b48b576",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "abadd56e-b10e-4490-b117-e6746ba10df4",
                  "parent_uuid": "b57cf8bd-d59e-43d8-a917-944a7f4d3d8e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3e4a5bdd-268d-490b-ae4c-6fd8ab7d2c4e",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ccf26ff9-cb9e-44c2-a0a6-f5e5c04c2493",
              "parent_uuid": "3e4a5bdd-268d-490b-ae4c-6fd8ab7d2c4e",
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
              "uuid": "21abc2f1-fbca-496a-9d50-275cfd3e021e",
              "parent_uuid": "3e4a5bdd-268d-490b-ae4c-6fd8ab7d2c4e",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "6c78cb6f-ca8c-4d8a-9723-a42f25dbc9ab",
              "parent_uuid": "3e4a5bdd-268d-490b-ae4c-6fd8ab7d2c4e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0372a17e-0926-437f-98bc-b2ea2d2dc18b",
                  "parent_uuid": "6c78cb6f-ca8c-4d8a-9723-a42f25dbc9ab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74c8d7f0-997a-46c3-8563-3195535716ad",
              "parent_uuid": "3e4a5bdd-268d-490b-ae4c-6fd8ab7d2c4e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b3582d3-098f-49ad-a00a-ad8c0319372e",
                  "parent_uuid": "74c8d7f0-997a-46c3-8563-3195535716ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49de9cb2-01c0-41ce-a781-09ec54758efb",
              "parent_uuid": "3e4a5bdd-268d-490b-ae4c-6fd8ab7d2c4e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "42003962-3bbb-4141-a504-d4b5b1f35746",
                  "parent_uuid": "49de9cb2-01c0-41ce-a781-09ec54758efb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "832a8e7c-c990-4586-aa19-3dbb886416cd",
              "parent_uuid": "3e4a5bdd-268d-490b-ae4c-6fd8ab7d2c4e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e2d7f54-3f4e-46a4-9b89-18bd5ad94e89",
                  "parent_uuid": "832a8e7c-c990-4586-aa19-3dbb886416cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ecd2f825-47ab-4e48-b4db-4f491ad16328",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "379cf3bc-4d62-4791-af95-c776e19de78b",
              "parent_uuid": "ecd2f825-47ab-4e48-b4db-4f491ad16328",
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
              "uuid": "d671f557-85db-4d04-ae7f-84fc7543984c",
              "parent_uuid": "ecd2f825-47ab-4e48-b4db-4f491ad16328",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "bdda6a7b-b78e-44c2-9970-9601c301c96e",
              "parent_uuid": "ecd2f825-47ab-4e48-b4db-4f491ad16328",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cb7b341d-7864-40c3-b453-ae2c4463f735",
                  "parent_uuid": "bdda6a7b-b78e-44c2-9970-9601c301c96e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87c5e207-ca98-43c8-9b4f-e216f3e1b671",
              "parent_uuid": "ecd2f825-47ab-4e48-b4db-4f491ad16328",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab393392-7daa-4d50-b2c6-541063c5b1c8",
                  "parent_uuid": "87c5e207-ca98-43c8-9b4f-e216f3e1b671",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b490218-c12e-4357-8df3-c0efda131484",
              "parent_uuid": "ecd2f825-47ab-4e48-b4db-4f491ad16328",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2625dd5c-5653-4029-8072-302e03b7ce8a",
                  "parent_uuid": "4b490218-c12e-4357-8df3-c0efda131484",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4370c1d7-57c0-43f8-9719-ad5cd77055c3",
              "parent_uuid": "ecd2f825-47ab-4e48-b4db-4f491ad16328",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ce07b4e0-9e83-4025-817e-a4cbeca46c7a",
                  "parent_uuid": "4370c1d7-57c0-43f8-9719-ad5cd77055c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1ddf7278-3c63-4316-8c08-aa4981e6a49a",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4f44e423-ac34-4ba1-8f97-bf4a81ed17d7",
              "parent_uuid": "1ddf7278-3c63-4316-8c08-aa4981e6a49a",
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
              "uuid": "94a9a591-1752-4d17-878b-eb8745751e25",
              "parent_uuid": "1ddf7278-3c63-4316-8c08-aa4981e6a49a",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "b0c77b44-b985-4274-b537-1512371aa5e5",
              "parent_uuid": "1ddf7278-3c63-4316-8c08-aa4981e6a49a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc332993-3bf8-4890-9c80-33fe99544a2d",
                  "parent_uuid": "b0c77b44-b985-4274-b537-1512371aa5e5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f68f8a65-9363-4b22-aae0-a0c620524758",
              "parent_uuid": "1ddf7278-3c63-4316-8c08-aa4981e6a49a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2cfb9729-ea5c-43ec-bd27-8b8a87d19ecb",
                  "parent_uuid": "f68f8a65-9363-4b22-aae0-a0c620524758",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7336ec13-b954-48e8-8808-d4dae207af8f",
              "parent_uuid": "1ddf7278-3c63-4316-8c08-aa4981e6a49a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8115a104-653c-409c-9906-f284bfa4832c",
                  "parent_uuid": "7336ec13-b954-48e8-8808-d4dae207af8f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "15262dde-e47e-400c-a0d2-e20693653ac9",
              "parent_uuid": "1ddf7278-3c63-4316-8c08-aa4981e6a49a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "629645ce-6f01-41ab-aebf-f91b0f000072",
                  "parent_uuid": "15262dde-e47e-400c-a0d2-e20693653ac9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "18114f4c-4e3c-4cef-9801-bf3ab5859102",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "102eaa09-382c-4127-9d5a-41202efa349f",
              "parent_uuid": "18114f4c-4e3c-4cef-9801-bf3ab5859102",
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
              "uuid": "102e2b2b-8e08-4964-8284-fc2baa412b58",
              "parent_uuid": "18114f4c-4e3c-4cef-9801-bf3ab5859102",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "50824afc-0d8a-46c8-b04e-4ede5419c592",
              "parent_uuid": "18114f4c-4e3c-4cef-9801-bf3ab5859102",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2aef1f3-f6cc-49bd-a2bf-8bd4fd70aaac",
                  "parent_uuid": "50824afc-0d8a-46c8-b04e-4ede5419c592",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9cf99655-6bdf-4042-8ae5-8a7d1f0c9027",
              "parent_uuid": "18114f4c-4e3c-4cef-9801-bf3ab5859102",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c1f4d802-27ff-4104-bfe6-6ad237664e3e",
                  "parent_uuid": "9cf99655-6bdf-4042-8ae5-8a7d1f0c9027",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1c6550ad-914f-42f9-b66f-ad8941f1c7c3",
              "parent_uuid": "18114f4c-4e3c-4cef-9801-bf3ab5859102",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be01688a-c775-4c70-8b64-72f5adab5ca2",
                  "parent_uuid": "1c6550ad-914f-42f9-b66f-ad8941f1c7c3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4deb7e9d-06d3-446a-8aac-c3714c1f85fa",
              "parent_uuid": "18114f4c-4e3c-4cef-9801-bf3ab5859102",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "99c658e7-072d-4adf-912b-4226034cb926",
                  "parent_uuid": "4deb7e9d-06d3-446a-8aac-c3714c1f85fa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fd3757ef-7682-4f8a-874d-c79849b08275",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1088edcc-ab92-4bc2-a647-f52725e73539",
              "parent_uuid": "fd3757ef-7682-4f8a-874d-c79849b08275",
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
              "uuid": "42dc3faf-7744-4848-8d92-78f8393e435d",
              "parent_uuid": "fd3757ef-7682-4f8a-874d-c79849b08275",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "d32b0204-07b9-4268-b486-71cf4562ac19",
              "parent_uuid": "fd3757ef-7682-4f8a-874d-c79849b08275",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "35b0c812-2b1d-4c24-b3eb-9cb02f0e7508",
                  "parent_uuid": "d32b0204-07b9-4268-b486-71cf4562ac19",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2767da86-1556-45ec-90e8-5cf6503e6210",
              "parent_uuid": "fd3757ef-7682-4f8a-874d-c79849b08275",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "125126f5-af60-40f2-80b4-f02767f7dcd2",
                  "parent_uuid": "2767da86-1556-45ec-90e8-5cf6503e6210",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74873e0d-0370-4cde-9faf-bca9d9bac346",
              "parent_uuid": "fd3757ef-7682-4f8a-874d-c79849b08275",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0040be3d-a45b-4605-9458-e53811ee7807",
                  "parent_uuid": "74873e0d-0370-4cde-9faf-bca9d9bac346",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47866046-d718-483a-bbd4-4ef3dcc3f81d",
              "parent_uuid": "fd3757ef-7682-4f8a-874d-c79849b08275",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1344da49-6860-43d5-9547-f16a105f3076",
                  "parent_uuid": "47866046-d718-483a-bbd4-4ef3dcc3f81d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a061511a-f1db-49f8-9221-71ae02accaaf",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54b7b79e-987d-4831-89f0-9ea0d3339f14",
              "parent_uuid": "a061511a-f1db-49f8-9221-71ae02accaaf",
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
              "uuid": "213e5021-14c3-4799-83d8-125db9914615",
              "parent_uuid": "a061511a-f1db-49f8-9221-71ae02accaaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "c54e6a2d-6887-4ac4-8659-45df87513342",
              "parent_uuid": "a061511a-f1db-49f8-9221-71ae02accaaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fddec606-6205-4fd5-ac01-050a70f2d7bf",
                  "parent_uuid": "c54e6a2d-6887-4ac4-8659-45df87513342",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bd36f8fd-5a1f-4ce9-9984-35b82af4109c",
              "parent_uuid": "a061511a-f1db-49f8-9221-71ae02accaaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "97a5a6d3-2bb2-4468-b0b4-3c49c96f87ee",
                  "parent_uuid": "bd36f8fd-5a1f-4ce9-9984-35b82af4109c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4b99cce2-b38f-4007-a7d1-023585966720",
              "parent_uuid": "a061511a-f1db-49f8-9221-71ae02accaaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "285b1d78-b771-4d1a-b1f9-f2e27016a821",
                  "parent_uuid": "4b99cce2-b38f-4007-a7d1-023585966720",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ff90af2f-5320-4e3e-a296-176420fb9bcf",
              "parent_uuid": "a061511a-f1db-49f8-9221-71ae02accaaf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d167eda1-3447-419a-be03-f3fd277a9af6",
                  "parent_uuid": "ff90af2f-5320-4e3e-a296-176420fb9bcf",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "24a5b134-2206-4916-aceb-43497ffaf12e",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2149b719-cb95-48f4-b01d-ce5a44593253",
              "parent_uuid": "24a5b134-2206-4916-aceb-43497ffaf12e",
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
              "uuid": "bf3e2ffd-bd51-4406-95b2-00ca08ac1462",
              "parent_uuid": "24a5b134-2206-4916-aceb-43497ffaf12e",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "70bca772-3ca4-4ab8-88b4-2891539dc70e",
              "parent_uuid": "24a5b134-2206-4916-aceb-43497ffaf12e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "03ce2cec-75d7-4ab9-bcdf-b1ee7a46cf79",
                  "parent_uuid": "70bca772-3ca4-4ab8-88b4-2891539dc70e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7206136c-bf63-4274-9ab4-dfa1fedf0e8c",
              "parent_uuid": "24a5b134-2206-4916-aceb-43497ffaf12e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "05f3962f-4d1c-4979-8501-8544b802c080",
                  "parent_uuid": "7206136c-bf63-4274-9ab4-dfa1fedf0e8c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b8114d52-e4a3-40b1-bbc3-64afe8f39aff",
              "parent_uuid": "24a5b134-2206-4916-aceb-43497ffaf12e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1328ec69-bc12-4e18-ae53-4ac089dd45ee",
                  "parent_uuid": "b8114d52-e4a3-40b1-bbc3-64afe8f39aff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "326f0e2b-b90b-47b3-b97b-9852d2935ce7",
              "parent_uuid": "24a5b134-2206-4916-aceb-43497ffaf12e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6b4b6dd3-0677-4b83-865f-305f945fba4f",
                  "parent_uuid": "326f0e2b-b90b-47b3-b97b-9852d2935ce7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "41d8ec3f-88c2-4f34-8b3d-69598a7fc849",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec332067-8637-4eb2-94ee-0278bbabc267",
              "parent_uuid": "41d8ec3f-88c2-4f34-8b3d-69598a7fc849",
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
              "uuid": "5c181225-175f-4025-88ed-e9241fb03700",
              "parent_uuid": "41d8ec3f-88c2-4f34-8b3d-69598a7fc849",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "dfc48045-b995-4cc6-b937-064b69efb4fe",
              "parent_uuid": "41d8ec3f-88c2-4f34-8b3d-69598a7fc849",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c49e3217-5cfd-4ec7-8e71-23598ce56bb6",
                  "parent_uuid": "dfc48045-b995-4cc6-b937-064b69efb4fe",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "043d4509-609b-4d42-b9da-ae6011bd2461",
              "parent_uuid": "41d8ec3f-88c2-4f34-8b3d-69598a7fc849",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74022cbb-73fd-4cbf-937b-3ba46391d52c",
                  "parent_uuid": "043d4509-609b-4d42-b9da-ae6011bd2461",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "43c2ff7c-e320-4b2e-b757-b2792ef40dc7",
              "parent_uuid": "41d8ec3f-88c2-4f34-8b3d-69598a7fc849",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f74ec47e-2b31-4273-a14e-54c3d38c64b3",
                  "parent_uuid": "43c2ff7c-e320-4b2e-b757-b2792ef40dc7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "611ebfab-50ef-4940-9bc0-7ea8c10155af",
              "parent_uuid": "41d8ec3f-88c2-4f34-8b3d-69598a7fc849",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e6c7115-433c-4b19-806c-15a02d0b7b2c",
                  "parent_uuid": "611ebfab-50ef-4940-9bc0-7ea8c10155af",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a1bfd728-b29e-4906-a65e-8c5c8d8cd3e9",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b27c70ba-0dc0-4677-92b4-ceb27f4a149b",
              "parent_uuid": "a1bfd728-b29e-4906-a65e-8c5c8d8cd3e9",
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
          "uuid": "fe609ccb-3e42-4a44-a144-5505862f039b",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e5ffcfcc-2f6a-4980-b290-65b67ff2c2c2",
              "parent_uuid": "fe609ccb-3e42-4a44-a144-5505862f039b",
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
          "uuid": "a91bd509-df65-44c5-873a-f3c7217c257a",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "27da356c-a9fe-41d6-a887-f73e32941c2a",
              "parent_uuid": "a91bd509-df65-44c5-873a-f3c7217c257a",
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
                  "uuid": "c1d06d32-80f0-4a59-ad6f-688b347c6814",
                  "parent_uuid": "27da356c-a9fe-41d6-a887-f73e32941c2a",
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
          "uuid": "bbadce99-8f7c-4ce6-b64e-6419578661d2",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "72b53f4c-d786-4581-8a90-b9a939222726",
              "parent_uuid": "bbadce99-8f7c-4ce6-b64e-6419578661d2",
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
          "uuid": "13bc4de3-1bb6-42b1-9add-5f486e85c713",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "58370211-d578-4e4d-80fe-2dfbb460101a",
              "parent_uuid": "13bc4de3-1bb6-42b1-9add-5f486e85c713",
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
          "uuid": "54948550-9058-4773-bfb3-36ec61908cc5",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6ba4796-1278-4e63-a817-e9743260d898",
              "parent_uuid": "54948550-9058-4773-bfb3-36ec61908cc5",
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
              "uuid": "fd891c53-18b2-49f8-b0a1-7ede0080a38f",
              "parent_uuid": "54948550-9058-4773-bfb3-36ec61908cc5",
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
              "uuid": "ce853ad4-70bb-4596-9cd2-ffa8510b6dd3",
              "parent_uuid": "54948550-9058-4773-bfb3-36ec61908cc5",
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
              "uuid": "9a59c077-c2d0-4be2-8249-2dcdcc663eb1",
              "parent_uuid": "54948550-9058-4773-bfb3-36ec61908cc5",
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
              "uuid": "afb5129b-7ce1-43b6-b60a-a25df8e5db74",
              "parent_uuid": "54948550-9058-4773-bfb3-36ec61908cc5",
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
              "uuid": "dae09136-4b52-4d07-a2d0-42382abdd60b",
              "parent_uuid": "54948550-9058-4773-bfb3-36ec61908cc5",
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
          "uuid": "9391df48-723d-41cf-a319-61a359c26232",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8b595585-6791-44d3-b889-793e8b0a1db5",
              "parent_uuid": "9391df48-723d-41cf-a319-61a359c26232",
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
              "uuid": "79aee704-d1eb-475c-9073-77f8c675539d",
              "parent_uuid": "9391df48-723d-41cf-a319-61a359c26232",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "7e1fea90-03c5-4926-8c42-756475fa0873",
              "parent_uuid": "9391df48-723d-41cf-a319-61a359c26232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a7575f67-2a69-45f5-8b18-7794924b4fbe",
                  "parent_uuid": "7e1fea90-03c5-4926-8c42-756475fa0873",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bf0e77f7-2ec2-4301-aa7e-4faa3c62c1dc",
              "parent_uuid": "9391df48-723d-41cf-a319-61a359c26232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b0a6e794-8fa0-45b8-8cc1-50d8c2788b85",
                  "parent_uuid": "bf0e77f7-2ec2-4301-aa7e-4faa3c62c1dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18bb087e-2686-4c14-90d8-2de40caa9377",
              "parent_uuid": "9391df48-723d-41cf-a319-61a359c26232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "df51e660-bea3-432c-985c-46ea3090774a",
                  "parent_uuid": "18bb087e-2686-4c14-90d8-2de40caa9377",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f40ac8ad-a9b9-4daa-8788-9ec86bec6750",
              "parent_uuid": "9391df48-723d-41cf-a319-61a359c26232",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0d5824fa-b43f-4950-b9fc-9b513ceb7ff4",
                  "parent_uuid": "f40ac8ad-a9b9-4daa-8788-9ec86bec6750",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "eccb6f7a-6d7f-49cc-87a0-7d8e76b138ae",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9329eb9e-20b7-4236-a8f2-1b41880b342b",
              "parent_uuid": "eccb6f7a-6d7f-49cc-87a0-7d8e76b138ae",
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
              "uuid": "c9cedfb3-a16f-4b93-961b-90b40da08a75",
              "parent_uuid": "eccb6f7a-6d7f-49cc-87a0-7d8e76b138ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "dbc66906-850e-4a45-ad34-ac3bfc9890dd",
              "parent_uuid": "eccb6f7a-6d7f-49cc-87a0-7d8e76b138ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb702273-7f6f-4f2a-92c3-01074cd8b117",
                  "parent_uuid": "dbc66906-850e-4a45-ad34-ac3bfc9890dd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dc83aad-b9dc-44a3-b026-0ca37bc015e0",
              "parent_uuid": "eccb6f7a-6d7f-49cc-87a0-7d8e76b138ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "81f219a3-16a1-4398-ad28-3c55f56f4f2c",
                  "parent_uuid": "6dc83aad-b9dc-44a3-b026-0ca37bc015e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "108099fc-8853-446e-8e72-8c040bc79fba",
              "parent_uuid": "eccb6f7a-6d7f-49cc-87a0-7d8e76b138ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d5a9ae1-144c-43d4-84ec-6df293f21c1d",
                  "parent_uuid": "108099fc-8853-446e-8e72-8c040bc79fba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26b34591-5547-43f4-be5d-4e4dbae22db7",
              "parent_uuid": "eccb6f7a-6d7f-49cc-87a0-7d8e76b138ae",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1860550a-7864-407b-b132-d62d2afc7494",
                  "parent_uuid": "26b34591-5547-43f4-be5d-4e4dbae22db7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5347e2d4-e271-4170-8858-c8c2aaa49aad",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9eaa1278-a60d-4552-a01f-079f7a51d525",
              "parent_uuid": "5347e2d4-e271-4170-8858-c8c2aaa49aad",
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
              "uuid": "6fb647c1-6ef2-4b80-91c9-47bcfa9fd268",
              "parent_uuid": "5347e2d4-e271-4170-8858-c8c2aaa49aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "0ffa0b20-f628-41b8-9c0d-3d65222b93aa",
              "parent_uuid": "5347e2d4-e271-4170-8858-c8c2aaa49aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a63a9bc7-be0d-4390-b3f0-5315e1ec9549",
                  "parent_uuid": "0ffa0b20-f628-41b8-9c0d-3d65222b93aa",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd7e7285-22e5-4bb0-a644-2b22e97dd4e0",
              "parent_uuid": "5347e2d4-e271-4170-8858-c8c2aaa49aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fbca16c6-4c5b-4b8e-837a-fc93e7b3a7bc",
                  "parent_uuid": "dd7e7285-22e5-4bb0-a644-2b22e97dd4e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0413e669-39c5-43a3-b5a7-ccbf65f5b0a3",
              "parent_uuid": "5347e2d4-e271-4170-8858-c8c2aaa49aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b8e38bf9-bd57-4c4e-9ac1-c8b4f15c5cce",
                  "parent_uuid": "0413e669-39c5-43a3-b5a7-ccbf65f5b0a3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cf3fbfcc-bb6d-41e6-b768-06d77e03ead0",
              "parent_uuid": "5347e2d4-e271-4170-8858-c8c2aaa49aad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7693707d-8a88-47b5-8722-494f66126b5e",
                  "parent_uuid": "cf3fbfcc-bb6d-41e6-b768-06d77e03ead0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "90c4b727-a961-420c-8b75-8c75b2f1e539",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32552636-6619-4c1f-a70e-6eefdad8c806",
              "parent_uuid": "90c4b727-a961-420c-8b75-8c75b2f1e539",
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
              "uuid": "2e9d80c7-657d-449f-9692-1e551f878888",
              "parent_uuid": "90c4b727-a961-420c-8b75-8c75b2f1e539",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "82ad96d7-0e56-4b0d-9ce3-10b79ab17ff2",
              "parent_uuid": "90c4b727-a961-420c-8b75-8c75b2f1e539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c8e3507-f304-479f-9462-73d8f049bfb4",
                  "parent_uuid": "82ad96d7-0e56-4b0d-9ce3-10b79ab17ff2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "147b8022-8db4-4223-b2eb-f69dbca0f42b",
              "parent_uuid": "90c4b727-a961-420c-8b75-8c75b2f1e539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4075de29-091f-45a9-8e82-722a5829e9d8",
                  "parent_uuid": "147b8022-8db4-4223-b2eb-f69dbca0f42b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e92e02e7-4e64-40a5-9011-6376e2f079b5",
              "parent_uuid": "90c4b727-a961-420c-8b75-8c75b2f1e539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bef1b3c-b99d-4352-ad4a-a5670cea0e5d",
                  "parent_uuid": "e92e02e7-4e64-40a5-9011-6376e2f079b5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0a937e09-6bec-4880-b3d7-dbe21e3969ea",
              "parent_uuid": "90c4b727-a961-420c-8b75-8c75b2f1e539",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c9a90c30-9d18-4f5c-9dd4-623f5ff9395f",
                  "parent_uuid": "0a937e09-6bec-4880-b3d7-dbe21e3969ea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8483b0e2-e130-4b11-86a4-46640bc45eb0",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cffc01ef-b3d2-4bd8-8217-9db690f609e8",
              "parent_uuid": "8483b0e2-e130-4b11-86a4-46640bc45eb0",
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
          "uuid": "fbdeaa2b-1a89-4910-8acc-c5965aa2c267",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "15ce7080-1a62-4c74-949f-4ef6354efa27",
              "parent_uuid": "fbdeaa2b-1a89-4910-8acc-c5965aa2c267",
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
          "uuid": "e9526397-58ea-4118-a6ef-3abfe55afa14",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "133c7c6d-fa94-468f-86a7-80c1357e2a93",
              "parent_uuid": "e9526397-58ea-4118-a6ef-3abfe55afa14",
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
                  "uuid": "ffa9ba11-b4c3-4b0b-95d8-9041aca54aa4",
                  "parent_uuid": "133c7c6d-fa94-468f-86a7-80c1357e2a93",
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
          "uuid": "510ec763-61bf-414a-a172-95db9332d82e",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d011aacc-a9b5-4416-9a6b-d1e9c3ac27dc",
              "parent_uuid": "510ec763-61bf-414a-a172-95db9332d82e",
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
          "uuid": "541eb595-ed2d-4c75-bf78-b1dd6b02f2ad",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4791df19-2fb6-4c54-b58e-ae9432a87a42",
              "parent_uuid": "541eb595-ed2d-4c75-bf78-b1dd6b02f2ad",
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
          "uuid": "4ee03cae-b601-408d-97ae-33b8ae41fe1b",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "123227a9-15e2-4eb7-9063-f675c4c5d2f9",
              "parent_uuid": "4ee03cae-b601-408d-97ae-33b8ae41fe1b",
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
              "uuid": "5aeb1275-3139-4cd8-a697-30e34e83212a",
              "parent_uuid": "4ee03cae-b601-408d-97ae-33b8ae41fe1b",
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
              "uuid": "940eba72-b5dc-4bad-90ec-342576c17005",
              "parent_uuid": "4ee03cae-b601-408d-97ae-33b8ae41fe1b",
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
              "uuid": "4fb0d8a0-4224-41c9-a2ad-f8570a88ecac",
              "parent_uuid": "4ee03cae-b601-408d-97ae-33b8ae41fe1b",
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
              "uuid": "5722b586-9d59-4152-a78d-b5c04363fe72",
              "parent_uuid": "4ee03cae-b601-408d-97ae-33b8ae41fe1b",
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
              "uuid": "ecec5b91-6c64-48c2-b5c7-8fa245b2e610",
              "parent_uuid": "4ee03cae-b601-408d-97ae-33b8ae41fe1b",
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
          "uuid": "139575e7-e085-470d-9e6e-db5f47a2ba44",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "d178f70c-db1a-4cee-9a1e-23659f0f6640",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f496698-74e3-4e96-885e-569fcf46a357",
              "parent_uuid": "d178f70c-db1a-4cee-9a1e-23659f0f6640",
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
              "uuid": "f34796cd-4087-461e-992a-af24069f6e59",
              "parent_uuid": "d178f70c-db1a-4cee-9a1e-23659f0f6640",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "f86fe2f5-b96a-43e5-9589-b5e12dd0e6c0",
              "parent_uuid": "d178f70c-db1a-4cee-9a1e-23659f0f6640",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3895ec09-fab1-4f9f-b300-23c5f4b554e9",
                  "parent_uuid": "f86fe2f5-b96a-43e5-9589-b5e12dd0e6c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c8e18703-2f53-40bb-89f0-ff61b9b0b2fb",
              "parent_uuid": "d178f70c-db1a-4cee-9a1e-23659f0f6640",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54a863ce-8ce4-4853-bb67-c241766cbe96",
                  "parent_uuid": "c8e18703-2f53-40bb-89f0-ff61b9b0b2fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "88ad4570-9854-4816-acda-f6d9c60f737c",
              "parent_uuid": "d178f70c-db1a-4cee-9a1e-23659f0f6640",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "69ef9cd7-9774-4106-bbd8-c49a94c1217a",
                  "parent_uuid": "88ad4570-9854-4816-acda-f6d9c60f737c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd710dcc-6a0a-4535-87bf-e82c9c72370e",
              "parent_uuid": "d178f70c-db1a-4cee-9a1e-23659f0f6640",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f62534a1-4a0f-436a-9677-2111c8889a72",
                  "parent_uuid": "cd710dcc-6a0a-4535-87bf-e82c9c72370e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "568afe98-af2a-4948-b329-9cde506406b6",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fedaae53-11ed-476c-94ce-a5b4ff0dccfb",
              "parent_uuid": "568afe98-af2a-4948-b329-9cde506406b6",
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
              "uuid": "884eaa0a-cc3f-432c-9aac-b7252c20c9da",
              "parent_uuid": "568afe98-af2a-4948-b329-9cde506406b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "4311be76-90f8-4067-b2e6-30f400a8bf4f",
              "parent_uuid": "568afe98-af2a-4948-b329-9cde506406b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "29259e54-fb9e-4d8e-b46b-1b7cdde365ee",
                  "parent_uuid": "4311be76-90f8-4067-b2e6-30f400a8bf4f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b293703d-b7c5-4f1e-92f5-4aaf6d349d6a",
              "parent_uuid": "568afe98-af2a-4948-b329-9cde506406b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "514db0dd-04a0-4d51-b0f3-4176f5826f75",
                  "parent_uuid": "b293703d-b7c5-4f1e-92f5-4aaf6d349d6a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "26fcd954-500a-4b61-8f09-fcf5b66cc90b",
              "parent_uuid": "568afe98-af2a-4948-b329-9cde506406b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab1a1193-7621-4c8e-800e-6a380db09548",
                  "parent_uuid": "26fcd954-500a-4b61-8f09-fcf5b66cc90b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f3865673-81bd-48e2-a92a-976c7293f2a9",
              "parent_uuid": "568afe98-af2a-4948-b329-9cde506406b6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fd140ce8-3d09-438a-87cb-ac3b6633776e",
                  "parent_uuid": "f3865673-81bd-48e2-a92a-976c7293f2a9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e4410329-8ef7-4a51-9436-e6644911c93f",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ce5ebd73-0c3e-4c6b-983c-414d0a5fb5d8",
              "parent_uuid": "e4410329-8ef7-4a51-9436-e6644911c93f",
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
              "uuid": "cbd1345c-ac43-43b3-a3c7-8e5c4dfde45a",
              "parent_uuid": "e4410329-8ef7-4a51-9436-e6644911c93f",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "813cca48-908c-41e5-826f-a3c4a1cea209",
              "parent_uuid": "e4410329-8ef7-4a51-9436-e6644911c93f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fccc4fd3-10c4-44db-a1c9-43a98e0d8f05",
                  "parent_uuid": "813cca48-908c-41e5-826f-a3c4a1cea209",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9a9c4f0f-946e-4c36-a702-734947df411d",
              "parent_uuid": "e4410329-8ef7-4a51-9436-e6644911c93f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "48117992-75bf-49f8-9c6d-69c3cfa9f486",
                  "parent_uuid": "9a9c4f0f-946e-4c36-a702-734947df411d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f5302941-8fcd-4e88-a87a-de30c0bb4da9",
              "parent_uuid": "e4410329-8ef7-4a51-9436-e6644911c93f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5300bfe1-5aa4-416d-82ad-239043f10dcf",
                  "parent_uuid": "f5302941-8fcd-4e88-a87a-de30c0bb4da9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c9bcdba5-cd08-4393-afa6-a64dd435aa2d",
              "parent_uuid": "e4410329-8ef7-4a51-9436-e6644911c93f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5e8c8a11-b8f9-4ef2-bf76-5cd0e86b7131",
                  "parent_uuid": "c9bcdba5-cd08-4393-afa6-a64dd435aa2d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "afd72ea9-e825-4f43-84e5-1e7e76ea632a",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0386f712-f620-45ae-948b-132a766db6bb",
              "parent_uuid": "afd72ea9-e825-4f43-84e5-1e7e76ea632a",
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
              "uuid": "0d062ec0-6f02-47fb-8ed3-89ebde32ff13",
              "parent_uuid": "afd72ea9-e825-4f43-84e5-1e7e76ea632a",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "71d6b0c7-9c0b-4fc9-bab4-975224ca15ed",
              "parent_uuid": "afd72ea9-e825-4f43-84e5-1e7e76ea632a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b552451-6d7e-4945-8f08-02a856b91309",
                  "parent_uuid": "71d6b0c7-9c0b-4fc9-bab4-975224ca15ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8eef64a5-ad31-4977-a49c-2bdbb58b8918",
              "parent_uuid": "afd72ea9-e825-4f43-84e5-1e7e76ea632a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "55ef0b73-130c-4cb8-9d8e-3c1e8dfaf7db",
                  "parent_uuid": "8eef64a5-ad31-4977-a49c-2bdbb58b8918",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3373dd61-9c5a-48b0-8497-f19406f4583e",
              "parent_uuid": "afd72ea9-e825-4f43-84e5-1e7e76ea632a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8b043f35-33f1-4ddd-af9b-f060e5f5ab3d",
                  "parent_uuid": "3373dd61-9c5a-48b0-8497-f19406f4583e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c84c9a50-ade7-4a53-891b-7258b2bcb848",
              "parent_uuid": "afd72ea9-e825-4f43-84e5-1e7e76ea632a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7df37f07-7982-4099-b6b6-56a7e97aad3d",
                  "parent_uuid": "c84c9a50-ade7-4a53-891b-7258b2bcb848",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dae444e8-700f-49fc-9574-c46b95ed72ad",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bb602443-6929-4a86-95bf-7db2f3ee2b56",
              "parent_uuid": "dae444e8-700f-49fc-9574-c46b95ed72ad",
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
              "uuid": "3883e085-f792-4375-9a67-907ef72c8f80",
              "parent_uuid": "dae444e8-700f-49fc-9574-c46b95ed72ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "23c89f66-fc36-4c07-9e0e-7c6f22e7026a",
              "parent_uuid": "dae444e8-700f-49fc-9574-c46b95ed72ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3b4bb37c-992a-457e-b0fe-1582e940f575",
                  "parent_uuid": "23c89f66-fc36-4c07-9e0e-7c6f22e7026a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "58c01428-03eb-48ca-8f88-2305d28d852b",
              "parent_uuid": "dae444e8-700f-49fc-9574-c46b95ed72ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee09cff6-713b-42c1-aacb-061395ea32cf",
                  "parent_uuid": "58c01428-03eb-48ca-8f88-2305d28d852b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "358ad3e3-fc09-4786-b380-ef3058404457",
              "parent_uuid": "dae444e8-700f-49fc-9574-c46b95ed72ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "624a7c66-61d7-4232-b372-9ede6689e2df",
                  "parent_uuid": "358ad3e3-fc09-4786-b380-ef3058404457",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2d6152bb-8fb7-469d-9871-37ace28f666b",
              "parent_uuid": "dae444e8-700f-49fc-9574-c46b95ed72ad",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "74d19eef-e3f9-4f8d-8815-7dffb6cefaef",
                  "parent_uuid": "2d6152bb-8fb7-469d-9871-37ace28f666b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ca14ab88-63d4-4ad8-806b-f5129cdbbe95",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5562c9e2-1722-4988-baad-1f6ee13f91bd",
              "parent_uuid": "ca14ab88-63d4-4ad8-806b-f5129cdbbe95",
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
              "uuid": "ccf6eecb-ba79-4b72-a938-4ca12ca24fc6",
              "parent_uuid": "ca14ab88-63d4-4ad8-806b-f5129cdbbe95",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "uuid": "17f278e5-d96e-4951-b93a-8cb64e3a82cd",
              "parent_uuid": "ca14ab88-63d4-4ad8-806b-f5129cdbbe95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "674976ec-ae51-46e9-8ba8-3a79246946e2",
                  "parent_uuid": "17f278e5-d96e-4951-b93a-8cb64e3a82cd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62af57d1-9177-442e-8336-ad10da29b203",
              "parent_uuid": "ca14ab88-63d4-4ad8-806b-f5129cdbbe95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "769dd14e-a291-4a7d-9bfd-18041de42305",
                  "parent_uuid": "62af57d1-9177-442e-8336-ad10da29b203",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f10c0b8-c3ce-4d0a-979b-206227b600e2",
              "parent_uuid": "ca14ab88-63d4-4ad8-806b-f5129cdbbe95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "afadbe8d-e815-4657-93ce-8973a5f8a8f4",
                  "parent_uuid": "4f10c0b8-c3ce-4d0a-979b-206227b600e2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9427d7f1-c848-46b5-b5e3-95c59bb1db07",
              "parent_uuid": "ca14ab88-63d4-4ad8-806b-f5129cdbbe95",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "304ab5e5-951c-4a42-9bf2-90906e643b07",
                  "parent_uuid": "9427d7f1-c848-46b5-b5e3-95c59bb1db07",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b7051ecb-3095-4e51-86cf-8ae4883ba763",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f7ac7dc-f6c9-44b3-b91b-f579cb625d87",
              "parent_uuid": "b7051ecb-3095-4e51-86cf-8ae4883ba763",
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
          "uuid": "326d5279-74cf-4210-b4b4-830896a3e85a",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0be9df44-f332-4631-adaf-ce1540fdf439",
              "parent_uuid": "326d5279-74cf-4210-b4b4-830896a3e85a",
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
          "uuid": "3d371cb4-7666-4ca4-973d-84f476c6f944",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "576adbc2-e6b9-4c7b-a4a3-9b0d95773ab5",
              "parent_uuid": "3d371cb4-7666-4ca4-973d-84f476c6f944",
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
                  "uuid": "a08896ba-122e-42f2-bfb9-b1ee45bc70e4",
                  "parent_uuid": "576adbc2-e6b9-4c7b-a4a3-9b0d95773ab5",
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
          "uuid": "86e4266e-cbeb-45d3-ba8a-18607e8c67b9",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "575e6856-b91d-44bd-9e0a-da2bcccf8cc8",
              "parent_uuid": "86e4266e-cbeb-45d3-ba8a-18607e8c67b9",
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
          "uuid": "e070bb7a-a786-4899-8b8d-00f82f7ebc81",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9a66b18b-1f8c-472e-bcd6-6d0f865a454c",
              "parent_uuid": "e070bb7a-a786-4899-8b8d-00f82f7ebc81",
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
          "uuid": "224d58fd-c515-488e-b30a-cfa6ed50bf7a",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "480520a0-b8c7-4423-a56c-0dd7b9fcec1b",
              "parent_uuid": "224d58fd-c515-488e-b30a-cfa6ed50bf7a",
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
              "uuid": "a6d65703-ca15-481c-bf50-2eb04394d4a1",
              "parent_uuid": "224d58fd-c515-488e-b30a-cfa6ed50bf7a",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b1740aac-ac77-471f-9dd6-353c2016015d",
              "parent_uuid": "224d58fd-c515-488e-b30a-cfa6ed50bf7a",
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
              "uuid": "ceecb940-a5e5-45b2-bca3-0fcd3a586afc",
              "parent_uuid": "224d58fd-c515-488e-b30a-cfa6ed50bf7a",
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
              "uuid": "71a0a106-4f2c-493b-94e7-167a4f2d0c6c",
              "parent_uuid": "224d58fd-c515-488e-b30a-cfa6ed50bf7a",
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
          "uuid": "9494a6bb-303c-4db1-bd50-2ad2cfcb4662",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c85d7f8c-ff54-4b6d-9919-925742fb3239",
              "parent_uuid": "9494a6bb-303c-4db1-bd50-2ad2cfcb4662",
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
              "uuid": "90af2acd-7a0a-42d7-96e6-9451ba57baf7",
              "parent_uuid": "9494a6bb-303c-4db1-bd50-2ad2cfcb4662",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "798357ef-07c0-4ad9-a903-e58c678761ea",
              "parent_uuid": "9494a6bb-303c-4db1-bd50-2ad2cfcb4662",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "9343c619-499a-4346-85fc-6bea88081e9c",
              "parent_uuid": "9494a6bb-303c-4db1-bd50-2ad2cfcb4662",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a601ac9a-ab9a-41c1-a2c1-ddf3ada1d56d",
              "parent_uuid": "9494a6bb-303c-4db1-bd50-2ad2cfcb4662",
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
          "uuid": "8551fc92-5b0a-4436-8bba-7c395359624f",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "375e44c8-87ff-440e-a363-9e2801dce8ec",
              "parent_uuid": "8551fc92-5b0a-4436-8bba-7c395359624f",
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
              "uuid": "b8c373a1-bac2-42ec-8ef4-65e8b929898d",
              "parent_uuid": "8551fc92-5b0a-4436-8bba-7c395359624f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "98252482-f71b-4080-9e2b-55f7a8946904",
              "parent_uuid": "8551fc92-5b0a-4436-8bba-7c395359624f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "6069d10a-81b7-40a0-850f-6a349a6a7df9",
              "parent_uuid": "8551fc92-5b0a-4436-8bba-7c395359624f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "26294074-78d3-419c-876b-0dce07dec1ce",
              "parent_uuid": "8551fc92-5b0a-4436-8bba-7c395359624f",
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
          "uuid": "5d773fae-4cc5-4db0-9866-cc3058c8aaa7",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7173fa0f-bc34-49d9-91a9-b0e213d01a34",
              "parent_uuid": "5d773fae-4cc5-4db0-9866-cc3058c8aaa7",
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
              "uuid": "ecef2d9f-eb97-457b-b6a9-7ab0d358f69b",
              "parent_uuid": "5d773fae-4cc5-4db0-9866-cc3058c8aaa7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2535c2d8-1e1e-42af-9e02-74e3f7aa2847",
              "parent_uuid": "5d773fae-4cc5-4db0-9866-cc3058c8aaa7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "48c45340-c877-4a63-a957-82828264b4a2",
              "parent_uuid": "5d773fae-4cc5-4db0-9866-cc3058c8aaa7",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "85df8fda-90fa-40f1-846c-1616bee0cdcc",
              "parent_uuid": "5d773fae-4cc5-4db0-9866-cc3058c8aaa7",
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
          "uuid": "00c240d5-f099-4ecd-8588-2c7232c2559f",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "080885e4-81f5-472d-a365-d9bfdabc235a",
              "parent_uuid": "00c240d5-f099-4ecd-8588-2c7232c2559f",
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
              "uuid": "94e8bcb1-abaf-48b4-8aee-3005fba47492",
              "parent_uuid": "00c240d5-f099-4ecd-8588-2c7232c2559f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "78b430f4-d065-4dea-8727-cfdacd93b12e",
              "parent_uuid": "00c240d5-f099-4ecd-8588-2c7232c2559f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "37f8a80d-0489-4ae3-8bf1-772d3fe5c1c5",
              "parent_uuid": "00c240d5-f099-4ecd-8588-2c7232c2559f",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "4e6fa403-dbc8-4666-898c-29b97f499cd2",
              "parent_uuid": "00c240d5-f099-4ecd-8588-2c7232c2559f",
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
          "uuid": "2502d264-b828-4a6e-8298-01c7bbadc901",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "26ccbec8-3b9f-4b4c-a369-b278c1378e95",
              "parent_uuid": "2502d264-b828-4a6e-8298-01c7bbadc901",
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
              "uuid": "8d153457-d241-4bdc-bec6-bbbc0428090e",
              "parent_uuid": "2502d264-b828-4a6e-8298-01c7bbadc901",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "fefcc0ed-d20c-46a9-9e14-1dd794bd9278",
              "parent_uuid": "2502d264-b828-4a6e-8298-01c7bbadc901",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "82af24fa-7ace-4fcf-bd53-a34f2d82621a",
              "parent_uuid": "2502d264-b828-4a6e-8298-01c7bbadc901",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "2cc59c8e-fdb2-434a-988d-c05ea3a473a2",
              "parent_uuid": "2502d264-b828-4a6e-8298-01c7bbadc901",
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
          "uuid": "6f6317d2-ab51-4fed-a498-4c9dec8b8d76",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d01dc324-6909-4041-8324-f329fa4abd5c",
              "parent_uuid": "6f6317d2-ab51-4fed-a498-4c9dec8b8d76",
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
              "uuid": "9b344833-a9e9-40cf-9803-ef6c90908225",
              "parent_uuid": "6f6317d2-ab51-4fed-a498-4c9dec8b8d76",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "a031f436-0033-40cb-917c-dc0bd4d95df0",
              "parent_uuid": "6f6317d2-ab51-4fed-a498-4c9dec8b8d76",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b76710d0-3cdb-4742-a59a-11167b2a480b",
              "parent_uuid": "6f6317d2-ab51-4fed-a498-4c9dec8b8d76",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c65787ce-a532-41f4-a7db-e6162e48a63c",
              "parent_uuid": "6f6317d2-ab51-4fed-a498-4c9dec8b8d76",
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
          "uuid": "f084da98-5a36-45e5-a13e-b0056c30b386",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f13a7048-d4a2-42bc-a617-2457e192e04e",
              "parent_uuid": "f084da98-5a36-45e5-a13e-b0056c30b386",
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
              "uuid": "cdf8ba5a-d46d-41fc-9446-de2c62d07ffe",
              "parent_uuid": "f084da98-5a36-45e5-a13e-b0056c30b386",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "bd27256e-659b-4e16-87b5-d780a3846bf9",
              "parent_uuid": "f084da98-5a36-45e5-a13e-b0056c30b386",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "47dbf97d-db35-4ab6-8438-3e36f359fce1",
              "parent_uuid": "f084da98-5a36-45e5-a13e-b0056c30b386",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "b19c7f30-ec0f-4b56-9030-83227a52ee69",
              "parent_uuid": "f084da98-5a36-45e5-a13e-b0056c30b386",
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
          "uuid": "a18c9d23-b25e-450d-a21c-f3964a766361",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e10c20f-5a91-4b8d-84f6-6b3bd0700bbe",
              "parent_uuid": "a18c9d23-b25e-450d-a21c-f3964a766361",
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
              "uuid": "0ab2e4dd-b604-40e9-88bc-2ac21ff8a498",
              "parent_uuid": "a18c9d23-b25e-450d-a21c-f3964a766361",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "3d48758a-c758-4b89-a273-580ad8007979",
              "parent_uuid": "a18c9d23-b25e-450d-a21c-f3964a766361",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "11879623-6a06-4065-8881-53ac811f2d0a",
              "parent_uuid": "a18c9d23-b25e-450d-a21c-f3964a766361",
              "tagName": "td",
              "properties": [
                [
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
              "uuid": "c1b42e57-5d58-4e7c-a11d-a527b8ad402b",
              "parent_uuid": "a18c9d23-b25e-450d-a21c-f3964a766361",
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
          "uuid": "af7d16e6-c480-44a9-91d1-e1f62760a7f4",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06f3f60c-d7c8-4c87-9466-c2a6246355eb",
              "parent_uuid": "af7d16e6-c480-44a9-91d1-e1f62760a7f4",
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
          "uuid": "23daec72-afb6-4b05-bd5e-73c2b0b2f973",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1fbf6bc5-6006-4c52-8e20-4a7c23def99b",
              "parent_uuid": "23daec72-afb6-4b05-bd5e-73c2b0b2f973",
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
          "uuid": "156524bc-5b6d-4fef-b10d-7ff75409f611",
          "parent_uuid": "35814dd2-bba0-42d1-b248-2f215495e412",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20bfb953-52fe-47d1-8889-d76f4b8567e2",
              "parent_uuid": "156524bc-5b6d-4fef-b10d-7ff75409f611",
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
                  "uuid": "e88159dc-538a-4bd7-9216-9b05e2f91d8f",
                  "parent_uuid": "20bfb953-52fe-47d1-8889-d76f4b8567e2",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 


SELECT * FROM #CheckListNodes 

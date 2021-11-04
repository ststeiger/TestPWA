
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
  "uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
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
      "uuid": "497eddb8-c316-44ca-a915-2289af13864c",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
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
      "uuid": "51f51217-d5ab-4260-ac33-f2b9afe8a559",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "35"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "2bb1f300-737a-4014-b418-18bc927f1d8f",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
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
      "uuid": "6bc1e7cc-9282-4c66-bfe3-bc0c44d94c1b",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
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
      "uuid": "5829e3a0-78cb-424c-a2af-b2cb8a81dba7",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "80"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "1718b132-8502-49df-9bec-ded4fcd63a04",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "49"
        ]
      ],
      "children": [],
      "sort": 5,
      "lvl": 0
    },
    {
      "uuid": "f504b4e5-5cb3-4267-b2c7-7deb68d36bf5",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
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
      "uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
      "parent_uuid": "2e760b6a-d40d-4e36-8ede-ee78e4989aac",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f59b73fd-5453-4ad6-89d4-cf3a71c58e1e",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "uuid": "c2744f35-7e3a-4796-844b-09ed9ca880b0",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "uuid": "9ffb65dc-af66-42a8-a9d7-d7a53ca9bf54",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "uuid": "15e3b105-ddbb-4126-9b55-ba67cf56c7e1",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Visuelle Handarbeitsplatz</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "ed21a551-9c14-42d5-aa5f-b3f4ee2868c0",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "8954e869-35b0-487a-b6d4-b3f2dfaf16e1",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "7985715d-7a28-4220-a18f-70eb764cb3a5",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "innerHtml": "\r\n                    <span>Nr.</span>\r\n                ",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "802fe3ce-e34d-43f8-8cc0-d90822451437",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "sort": 7,
              "lvl": 0
            },
            {
              "uuid": "7cafaee8-0a2e-4536-b4e5-64123a14c860",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "sort": 8,
              "lvl": 0
            },
            {
              "uuid": "e7c9d195-c0a4-4d3d-bd82-9157a7ac4fd9",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "sort": 9,
              "lvl": 0
            },
            {
              "uuid": "eb1095fa-e286-46b1-bf8f-0725b09ad335",
              "parent_uuid": "a4e8f030-292a-42f3-800b-375eab2d9d67",
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
              "sort": 10,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "f3aa6cef-f2f0-405f-91c0-f1846b78262c",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "cfefa1ca-3ddb-48fe-8c3b-41d545bffc93",
              "parent_uuid": "f3aa6cef-f2f0-405f-91c0-f1846b78262c",
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
                  "bgcolor",
                  "#EDEDED"
                ]
              ],
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7e06dd14-08ae-4532-b885-f575106f2cc8",
              "parent_uuid": "f3aa6cef-f2f0-405f-91c0-f1846b78262c",
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
              "uuid": "fb892493-a8e1-48c4-8cb2-7df2a56b9ee4",
              "parent_uuid": "f3aa6cef-f2f0-405f-91c0-f1846b78262c",
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
              "uuid": "90c94875-4b66-4cc6-b2aa-ad06d9727a2c",
              "parent_uuid": "f3aa6cef-f2f0-405f-91c0-f1846b78262c",
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
                  "#EDEDED"
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
          "uuid": "8d1c6ab5-e5c8-4858-b2ab-1711709eb0d6",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2fd9e908-12cd-4f13-a4d9-a93896f9fb72",
              "parent_uuid": "8d1c6ab5-e5c8-4858-b2ab-1711709eb0d6",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ec33de53-7ac0-4047-8629-425554a114f7",
              "parent_uuid": "8d1c6ab5-e5c8-4858-b2ab-1711709eb0d6",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4.5cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "64fe1107-86d6-4c0a-a46f-1bf892e2ebbc",
              "parent_uuid": "8d1c6ab5-e5c8-4858-b2ab-1711709eb0d6",
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
              "uuid": "a8b7fe07-132b-4cd5-9baa-7f5cc2c5fed3",
              "parent_uuid": "8d1c6ab5-e5c8-4858-b2ab-1711709eb0d6",
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
              "uuid": "f78fa9bd-b9b1-4edd-adf5-8e07aa332742",
              "parent_uuid": "8d1c6ab5-e5c8-4858-b2ab-1711709eb0d6",
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
              "uuid": "45d42012-9227-47b8-956d-027b8dfa392f",
              "parent_uuid": "8d1c6ab5-e5c8-4858-b2ab-1711709eb0d6",
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
              "innerHtml": "\r\n                    <span class=\"vert\">nicht vorhanden</span>\r\n                ",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "6d0110b1-7bca-4616-ac9c-3c31dfaf8aed",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c77b1771-40e3-43df-a5b2-b8a3a2bdb432",
              "parent_uuid": "6d0110b1-7bca-4616-ac9c-3c31dfaf8aed",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "eb33b926-d242-47a4-af98-e050b5de0f17",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df3e1ff2-53aa-4a33-9972-594c44e2871f",
              "parent_uuid": "eb33b926-d242-47a4-af98-e050b5de0f17",
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
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Not-Halt Taster</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9cf2d18f-2450-43e7-9412-e474d6774949",
              "parent_uuid": "eb33b926-d242-47a4-af98-e050b5de0f17",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "02c7d26e-7730-4692-903d-f2a1e9ba55e0",
              "parent_uuid": "eb33b926-d242-47a4-af98-e050b5de0f17",
              "tagName": "td",
              "properties": [
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
                  "uuid": "30a17d65-2731-43b0-95ff-595b03ff0262",
                  "parent_uuid": "02c7d26e-7730-4692-903d-f2a1e9ba55e0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3e2ed8a-44b8-4f89-ae03-821156161077",
              "parent_uuid": "eb33b926-d242-47a4-af98-e050b5de0f17",
              "tagName": "td",
              "properties": [
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
                  "uuid": "32259d86-27fb-4fe5-91e7-206e6ba45eae",
                  "parent_uuid": "d3e2ed8a-44b8-4f89-ae03-821156161077",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99707557-61b8-461d-95bd-a389d2c22d92",
              "parent_uuid": "eb33b926-d242-47a4-af98-e050b5de0f17",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e7685103-ff53-4de9-8eef-c045fcecffc6",
                  "parent_uuid": "99707557-61b8-461d-95bd-a389d2c22d92",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1134ae5d-c3c1-4284-bdb2-8cb76a5db108",
              "parent_uuid": "eb33b926-d242-47a4-af98-e050b5de0f17",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5f9b4b5f-b27e-452f-84f0-7815fd96eef1",
                  "parent_uuid": "1134ae5d-c3c1-4284-bdb2-8cb76a5db108",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e1e7ff50-4ae7-4391-b3f2-71cb5843fb37",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b397b8fa-6ad1-49bd-993c-f857e9039e1e",
              "parent_uuid": "e1e7ff50-4ae7-4391-b3f2-71cb5843fb37",
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
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Sicherheitsschalter beim Steigband</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c9656be1-849f-4350-9f43-d1a89fb96c4c",
              "parent_uuid": "e1e7ff50-4ae7-4391-b3f2-71cb5843fb37",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "004311b5-addf-4f81-9c0e-01c4f5dacd01",
              "parent_uuid": "e1e7ff50-4ae7-4391-b3f2-71cb5843fb37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d4e99d4c-4b72-4e42-818f-b4bd9db36867",
                  "parent_uuid": "004311b5-addf-4f81-9c0e-01c4f5dacd01",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e860b028-7972-4f2f-afcd-abcad074737d",
              "parent_uuid": "e1e7ff50-4ae7-4391-b3f2-71cb5843fb37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "318404dd-a1d0-4b56-bfb4-67be92e6f97e",
                  "parent_uuid": "e860b028-7972-4f2f-afcd-abcad074737d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8c2b4f14-d6fc-4251-a97b-10017a09551b",
              "parent_uuid": "e1e7ff50-4ae7-4391-b3f2-71cb5843fb37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f0902fb5-1d31-43b0-945e-2793c6773b09",
                  "parent_uuid": "8c2b4f14-d6fc-4251-a97b-10017a09551b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b98e5b0b-7811-4ccd-ae61-b9451613f351",
              "parent_uuid": "e1e7ff50-4ae7-4391-b3f2-71cb5843fb37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0e471a1d-d497-45ba-81bf-327f563d37d7",
                  "parent_uuid": "b98e5b0b-7811-4ccd-ae61-b9451613f351",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "933efc11-ba3d-491d-be7c-dcfff4db4489",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8a7fae6f-6532-468e-95ff-8807f55be224",
              "parent_uuid": "933efc11-ba3d-491d-be7c-dcfff4db4489",
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
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Andeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4616b28b-09bc-4bcd-b1ed-570b9d1891ab",
              "parent_uuid": "933efc11-ba3d-491d-be7c-dcfff4db4489",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f462d3d9-594e-4de3-b625-6e825e8d0535",
              "parent_uuid": "933efc11-ba3d-491d-be7c-dcfff4db4489",
              "tagName": "td",
              "properties": [
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
                  "uuid": "100ee280-9e87-4ae5-8756-98e129ad72b2",
                  "parent_uuid": "f462d3d9-594e-4de3-b625-6e825e8d0535",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "059f998a-1359-4980-a6d9-dcf7e79d21d5",
              "parent_uuid": "933efc11-ba3d-491d-be7c-dcfff4db4489",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6d96944d-ef66-4779-a37e-85f84781bed1",
                  "parent_uuid": "059f998a-1359-4980-a6d9-dcf7e79d21d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8e39c0b4-1e7f-45d5-ae05-84ee409ea515",
              "parent_uuid": "933efc11-ba3d-491d-be7c-dcfff4db4489",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ed3ecf8d-e504-406a-9505-c04a9838889c",
                  "parent_uuid": "8e39c0b4-1e7f-45d5-ae05-84ee409ea515",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2cf8af02-03c7-46d9-83cf-cef3e40cde65",
              "parent_uuid": "933efc11-ba3d-491d-be7c-dcfff4db4489",
              "tagName": "td",
              "properties": [
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
                  "uuid": "74e106b6-63d1-48de-916b-b28bf02d1d47",
                  "parent_uuid": "2cf8af02-03c7-46d9-83cf-cef3e40cde65",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1e0906ae-ed24-45f4-8a18-55bd4dd8737d",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "91a33846-5080-4d94-9643-398cfe06ffd5",
              "parent_uuid": "1e0906ae-ed24-45f4-8a18-55bd4dd8737d",
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
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Geräteprüfung nach SNR 462638 durchgeführt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d5d7f792-de4d-4ce7-b4ff-dde2a0a529c0",
              "parent_uuid": "1e0906ae-ed24-45f4-8a18-55bd4dd8737d",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>2J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "265a611b-22e7-474c-9d5f-60399b19a1d1",
              "parent_uuid": "1e0906ae-ed24-45f4-8a18-55bd4dd8737d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bdabdaba-db35-4766-932b-465dcac394e8",
                  "parent_uuid": "265a611b-22e7-474c-9d5f-60399b19a1d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e41cfa0e-13a8-4abf-9252-88943998c2b4",
              "parent_uuid": "1e0906ae-ed24-45f4-8a18-55bd4dd8737d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8d1dd9b0-4d94-4b1d-9022-1a3d7b961bec",
                  "parent_uuid": "e41cfa0e-13a8-4abf-9252-88943998c2b4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f119353b-4235-4486-990d-72e09b54e81e",
              "parent_uuid": "1e0906ae-ed24-45f4-8a18-55bd4dd8737d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ff04a203-bd43-42e3-85e6-28ac76b5cc2c",
                  "parent_uuid": "f119353b-4235-4486-990d-72e09b54e81e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3f488c97-8e03-4db0-b7fa-353a88bf13df",
              "parent_uuid": "1e0906ae-ed24-45f4-8a18-55bd4dd8737d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e685bf88-754e-4c4b-af2f-5d17d43c0e17",
                  "parent_uuid": "3f488c97-8e03-4db0-b7fa-353a88bf13df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fbeec06f-95c2-4043-8dca-aa071b31cd4f",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6b31ec1-fad2-47f6-abfa-3d83b9870a03",
              "parent_uuid": "fbeec06f-95c2-4043-8dca-aa071b31cd4f",
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
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Steigband auf Beschädigungen oder Risse prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "736b190f-c96e-453d-b4e3-68ec684cfb9e",
              "parent_uuid": "fbeec06f-95c2-4043-8dca-aa071b31cd4f",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "31726600-eb74-4447-9361-8ca38550789b",
              "parent_uuid": "fbeec06f-95c2-4043-8dca-aa071b31cd4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b54741a-7357-4599-b6b4-db0af7abf928",
                  "parent_uuid": "31726600-eb74-4447-9361-8ca38550789b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "49e3f6b9-488d-464f-a1a8-d161e4e260f1",
              "parent_uuid": "fbeec06f-95c2-4043-8dca-aa071b31cd4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "901034dc-668d-4f60-89de-d109dbcdf768",
                  "parent_uuid": "49e3f6b9-488d-464f-a1a8-d161e4e260f1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "956fe16b-1793-4ad0-9014-ab838e700e62",
              "parent_uuid": "fbeec06f-95c2-4043-8dca-aa071b31cd4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "64cd98d2-807f-4385-b776-c15cb7d9e705",
                  "parent_uuid": "956fe16b-1793-4ad0-9014-ab838e700e62",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6e551a2-249b-4efc-991a-85ded51a5cd0",
              "parent_uuid": "fbeec06f-95c2-4043-8dca-aa071b31cd4f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4ba55c57-5bc3-4bc1-aacf-46dfcef26c26",
                  "parent_uuid": "a6e551a2-249b-4efc-991a-85ded51a5cd0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29a42792-ea2e-4cd5-ac78-05fe2740132b",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c00a7e83-f7c7-43f9-a018-58f3d57f62cc",
              "parent_uuid": "29a42792-ea2e-4cd5-ac78-05fe2740132b",
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
                  "37"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Steigband Zentrierung des Fördergurts prüfen. Der seitliche Abstand links/rechts sollte ca. identisch sein.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a53df59c-0eb1-44c1-bfd8-a78a32e3e2f0",
              "parent_uuid": "29a42792-ea2e-4cd5-ac78-05fe2740132b",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "08308c55-f2a0-4549-ad4b-4918096f1e87",
              "parent_uuid": "29a42792-ea2e-4cd5-ac78-05fe2740132b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "21df4626-fb52-4c54-a180-d06fbae21800",
                  "parent_uuid": "08308c55-f2a0-4549-ad4b-4918096f1e87",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a799f756-8f62-4073-8dd1-62bbe0c9f141",
              "parent_uuid": "29a42792-ea2e-4cd5-ac78-05fe2740132b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "31456c87-cb2e-409b-8c09-ec139ef65ad2",
                  "parent_uuid": "a799f756-8f62-4073-8dd1-62bbe0c9f141",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fe13c8dd-6a5e-4c4d-b6ca-32ae7359be93",
              "parent_uuid": "29a42792-ea2e-4cd5-ac78-05fe2740132b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9d2f7f80-2961-4bd4-b2ba-96cb0f238f42",
                  "parent_uuid": "fe13c8dd-6a5e-4c4d-b6ca-32ae7359be93",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1d3d5ff0-e9d3-4cca-a34b-8a1dad5d724f",
              "parent_uuid": "29a42792-ea2e-4cd5-ac78-05fe2740132b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "acf95f85-dcde-409b-83d8-212e25d116e9",
                  "parent_uuid": "1d3d5ff0-e9d3-4cca-a34b-8a1dad5d724f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0d7ea117-b336-462f-a1c9-a59d89a12a9f",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f84f854-8e7c-4d57-b70d-4ccfd7539b71",
              "parent_uuid": "0d7ea117-b336-462f-a1c9-a59d89a12a9f",
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
                  "33"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Transferband auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bfa4b32e-5f15-4eaa-b837-9b7fb0e7e079",
              "parent_uuid": "0d7ea117-b336-462f-a1c9-a59d89a12a9f",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "<span>J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4014dd85-a60a-4d2a-b28d-955f804e1176",
              "parent_uuid": "0d7ea117-b336-462f-a1c9-a59d89a12a9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e1b12de0-7fdb-4b84-a015-368c68fea779",
                  "parent_uuid": "4014dd85-a60a-4d2a-b28d-955f804e1176",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95583846-3847-434b-a09f-a48ab0adfe3e",
              "parent_uuid": "0d7ea117-b336-462f-a1c9-a59d89a12a9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "999851ef-8a5f-4281-aadc-4420d5c5ea98",
                  "parent_uuid": "95583846-3847-434b-a09f-a48ab0adfe3e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dcaf6d59-522b-482c-aa7e-a6140f58469a",
              "parent_uuid": "0d7ea117-b336-462f-a1c9-a59d89a12a9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "299b56a6-f9e5-4156-88ce-0faff46aa08b",
                  "parent_uuid": "dcaf6d59-522b-482c-aa7e-a6140f58469a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "216c2533-3cc5-429c-acbb-89c05bf084c2",
              "parent_uuid": "0d7ea117-b336-462f-a1c9-a59d89a12a9f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fa8c66cf-9cff-4716-a143-25bb17f91183",
                  "parent_uuid": "216c2533-3cc5-429c-acbb-89c05bf084c2",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "31053a17-54ee-430b-8608-0ffb22895653",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0988ced5-2e21-44cf-847e-3b5e34bad84f",
              "parent_uuid": "31053a17-54ee-430b-8608-0ffb22895653",
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
                  "37"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bei den zwei Antriebsmotoren die Laufruhe, Geräuschentwicklung und Lagerung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2638ed78-8a92-4ded-b2a4-04713b054110",
              "parent_uuid": "31053a17-54ee-430b-8608-0ffb22895653",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>J</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fed48d91-5f14-49c3-94a9-7e4c0e5914db",
              "parent_uuid": "31053a17-54ee-430b-8608-0ffb22895653",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eb7a9896-8b14-4d63-9b5b-d8e888d33ca0",
                  "parent_uuid": "fed48d91-5f14-49c3-94a9-7e4c0e5914db",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3883d924-65a5-436b-964b-1e57c09a4b8a",
              "parent_uuid": "31053a17-54ee-430b-8608-0ffb22895653",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bad62094-2ddc-47b4-88ea-00ee960bda15",
                  "parent_uuid": "3883d924-65a5-436b-964b-1e57c09a4b8a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f05c5678-e105-491d-a7fb-d91a12ab4b43",
              "parent_uuid": "31053a17-54ee-430b-8608-0ffb22895653",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4f6b12e8-b4e9-44e3-b0b0-2980a28d92f0",
                  "parent_uuid": "f05c5678-e105-491d-a7fb-d91a12ab4b43",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd2cefb4-60c5-4a85-8e2d-9fa3b04f696a",
              "parent_uuid": "31053a17-54ee-430b-8608-0ffb22895653",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b9031a49-b672-42e4-95c2-60585fb54412",
                  "parent_uuid": "dd2cefb4-60c5-4a85-8e2d-9fa3b04f696a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e936f7e1-0476-4db9-8849-d42135486238",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f7a32828-90b0-4350-bbb5-9ffa4fc60f54",
              "parent_uuid": "e936f7e1-0476-4db9-8849-d42135486238",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "027ea704-c664-4922-8a59-52c51a674936",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c5b392d-66f8-40d9-a26e-c21b9a28597a",
              "parent_uuid": "027ea704-c664-4922-8a59-52c51a674936",
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
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung des HAP mittels Staubsauger und Reinigungsmittel u.a. Bremsenreiniger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4ac6953f-4ed4-4208-9e54-2d9be7ad5728",
              "parent_uuid": "027ea704-c664-4922-8a59-52c51a674936",
              "tagName": "td",
              "properties": [
                [
                  "class",
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
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "26d93238-8716-42c6-af83-9f34b691448c",
              "parent_uuid": "027ea704-c664-4922-8a59-52c51a674936",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ea446730-4c84-410a-a5e2-3c0cf995c794",
                  "parent_uuid": "26d93238-8716-42c6-af83-9f34b691448c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "77ed2cda-3834-44cb-bdd8-23faa873d3b2",
              "parent_uuid": "027ea704-c664-4922-8a59-52c51a674936",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d1ff739-bc0f-4181-9d73-1cfc4636d91a",
                  "parent_uuid": "77ed2cda-3834-44cb-bdd8-23faa873d3b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c625e8a9-9924-44ce-a56e-094816b2a67a",
              "parent_uuid": "027ea704-c664-4922-8a59-52c51a674936",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f37b8f37-67f2-4791-83fd-2b72c9e1ceb9",
                  "parent_uuid": "c625e8a9-9924-44ce-a56e-094816b2a67a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d3166418-6639-44d9-8635-e415964cb9df",
              "parent_uuid": "027ea704-c664-4922-8a59-52c51a674936",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c79cfce9-e180-4627-b3df-efa7084a63d6",
                  "parent_uuid": "d3166418-6639-44d9-8635-e415964cb9df",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bdd64c5a-5e41-4f50-9ca1-a3529f1ac182",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4c8750c3-f78d-4242-a44b-e49390a87b7f",
              "parent_uuid": "bdd64c5a-5e41-4f50-9ca1-a3529f1ac182",
              "tagName": "td",
              "properties": [
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "d926a071-40f5-49cd-9ce6-4bbf0bd844ee",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55aa4942-7c4b-4df0-98b6-237e897e38cc",
              "parent_uuid": "d926a071-40f5-49cd-9ce6-4bbf0bd844ee",
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "d05740ef-61ca-4928-9852-15dbae703baa",
          "parent_uuid": "668b2751-d83f-4fff-93dc-d29446f01f79",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "11f254c0-f106-4574-90d7-ca0b4142524b",
              "parent_uuid": "d05740ef-61ca-4928-9852-15dbae703baa",
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
                  "uuid": "41b0b36c-84a9-49b9-81a9-adf8ce49d36a",
                  "parent_uuid": "11f254c0-f106-4574-90d7-ca0b4142524b",
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
          "sort": 16,
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
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
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
		,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'DA19D272-9439-47A7-9749-153DAFAB2B69'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

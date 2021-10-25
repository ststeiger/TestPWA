
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
  "uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "2058e8c3-24af-485a-bee1-93fed9cef767",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "977b92d1-1628-4f10-9124-a946423366a5",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "99109c56-b348-48c8-b9da-105945bdf323",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "0938ba87-e68d-4dde-bad0-e73121fea0f2",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "bc236c82-fdb3-43f4-83ba-bd305d6691f2",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "8df90ec0-20e2-41c4-a5db-ceead85fdff4",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "2344ee8f-4b3f-491d-a8da-01139357037f",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
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
      "uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
      "parent_uuid": "afa48827-75ec-48ff-9b62-f70fd2649b68",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "7a6fd3ab-3d1e-4fac-9232-ed5d90f079ff",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "5c8c5c10-ba3d-4e55-a1ec-91864ea1e35a",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "5a291870-1895-4afd-9398-d331f92b03ca",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "de9bbe46-c820-40e1-be04-27a055f64dfa",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "3d5a396c-2ffe-45fe-ad6a-b4c6143f5926",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "b1e7b1f9-ffe1-4926-ad2f-cb6449cf6d48",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "d3ff13e8-8a08-48b8-b775-1d9dfd736c7b",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "bbabb3cf-5f00-4737-9c44-fb8ab3e07f45",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "19c29443-cfbd-4966-8eeb-d12515cce0a9",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "bcce22ca-5eb4-43e1-b7e7-ac12770ca9ab",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
              "uuid": "125ebe08-2972-449d-ab80-52543fba21af",
              "parent_uuid": "051cdb07-86b4-4aca-b51a-b859694ecb6f",
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
          "uuid": "64cdd727-aaad-441e-af90-5365d8c261c0",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "450ce2e2-1b1a-4ac8-95da-38cbddef91a9",
              "parent_uuid": "64cdd727-aaad-441e-af90-5365d8c261c0",
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
              "uuid": "33db74dd-5b26-4dc1-882f-ea336466e7f4",
              "parent_uuid": "64cdd727-aaad-441e-af90-5365d8c261c0",
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
              "uuid": "595d3a55-17db-4f41-8ab3-2863adfb2c1a",
              "parent_uuid": "64cdd727-aaad-441e-af90-5365d8c261c0",
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
              "uuid": "c215278a-7ee8-4814-9d20-540658815238",
              "parent_uuid": "64cdd727-aaad-441e-af90-5365d8c261c0",
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
          "uuid": "b19bbd38-5d98-405d-93ab-94f69be4f984",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "123f56a6-d666-436d-8ac1-1f51e15b0d50",
              "parent_uuid": "b19bbd38-5d98-405d-93ab-94f69be4f984",
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
              "uuid": "f82cf7a4-21a3-45d8-915c-cc16f1b28b91",
              "parent_uuid": "b19bbd38-5d98-405d-93ab-94f69be4f984",
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
              "uuid": "88dad409-cb40-4a99-bd67-cd05229c116a",
              "parent_uuid": "b19bbd38-5d98-405d-93ab-94f69be4f984",
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
              "uuid": "2e581d3a-ce35-4edb-962d-ddb4f5acd6bf",
              "parent_uuid": "b19bbd38-5d98-405d-93ab-94f69be4f984",
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
              "uuid": "b4e1b0f9-c18f-424c-af13-17038885baf4",
              "parent_uuid": "b19bbd38-5d98-405d-93ab-94f69be4f984",
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
              "uuid": "ce61ebbb-b05f-4259-bbdb-c5840db13179",
              "parent_uuid": "b19bbd38-5d98-405d-93ab-94f69be4f984",
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
          "uuid": "e30cf6cc-3ffa-4fdd-9194-3629eec3a7d4",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "50271829-8fc6-4cce-8c8c-2a4e8dd19a1d",
              "parent_uuid": "e30cf6cc-3ffa-4fdd-9194-3629eec3a7d4",
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
          "uuid": "b4366a33-eefb-45ea-9a72-eb3a959395e0",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "89f63bab-e6ae-498b-905e-dc74de0a511f",
              "parent_uuid": "b4366a33-eefb-45ea-9a72-eb3a959395e0",
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
              "uuid": "7354a665-44e3-4944-87eb-0965757c7684",
              "parent_uuid": "b4366a33-eefb-45ea-9a72-eb3a959395e0",
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
              "uuid": "98d22d17-48ff-4346-aff6-f8f5afbec581",
              "parent_uuid": "b4366a33-eefb-45ea-9a72-eb3a959395e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "47f69e44-8672-467e-824c-633e0a417748",
                  "parent_uuid": "98d22d17-48ff-4346-aff6-f8f5afbec581",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "faef0de8-e658-4edf-b041-90f82ba81992",
              "parent_uuid": "b4366a33-eefb-45ea-9a72-eb3a959395e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3cd99870-4a39-48a0-b3c9-9e8cbf4bd214",
                  "parent_uuid": "faef0de8-e658-4edf-b041-90f82ba81992",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cbd61f21-23b1-4c7c-a2e1-124be2b6f9f7",
              "parent_uuid": "b4366a33-eefb-45ea-9a72-eb3a959395e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8eb16e7f-43ec-4a5c-b986-2eef042e2f22",
                  "parent_uuid": "cbd61f21-23b1-4c7c-a2e1-124be2b6f9f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8fe6a369-07a6-4f1e-b678-d61275ebb495",
              "parent_uuid": "b4366a33-eefb-45ea-9a72-eb3a959395e0",
              "tagName": "td",
              "properties": [
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
                  "uuid": "42e527dc-15fd-49fa-a8c5-ce7b51cc61be",
                  "parent_uuid": "8fe6a369-07a6-4f1e-b678-d61275ebb495",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "e4a1a13d-1bd9-4b06-b09c-9d3ef2e454cb",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "80ddd9ca-d46b-4c33-83fe-800f069a0280",
              "parent_uuid": "e4a1a13d-1bd9-4b06-b09c-9d3ef2e454cb",
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
              "uuid": "1d619e46-368a-425a-ad00-09818554f880",
              "parent_uuid": "e4a1a13d-1bd9-4b06-b09c-9d3ef2e454cb",
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
              "uuid": "72a26902-35f4-49bd-b7ff-d85f4a0780c7",
              "parent_uuid": "e4a1a13d-1bd9-4b06-b09c-9d3ef2e454cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1c72e89c-7f52-4c80-a460-da2b9942e9a1",
                  "parent_uuid": "72a26902-35f4-49bd-b7ff-d85f4a0780c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6198b1bc-b44c-49a4-8a40-81345cae1085",
              "parent_uuid": "e4a1a13d-1bd9-4b06-b09c-9d3ef2e454cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6aca930e-81d4-412b-818d-97ef26e3161e",
                  "parent_uuid": "6198b1bc-b44c-49a4-8a40-81345cae1085",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "582e9c75-8223-4531-b195-c83ec73074f7",
              "parent_uuid": "e4a1a13d-1bd9-4b06-b09c-9d3ef2e454cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "27263f0f-6d16-48fc-a6a1-1f9d502deca6",
                  "parent_uuid": "582e9c75-8223-4531-b195-c83ec73074f7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "94b97148-7b3f-45ed-8cb5-0a8479f6fbf1",
              "parent_uuid": "e4a1a13d-1bd9-4b06-b09c-9d3ef2e454cb",
              "tagName": "td",
              "properties": [
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
                  "uuid": "150a7c04-5fb1-4c0e-813f-b03ba92a3b5b",
                  "parent_uuid": "94b97148-7b3f-45ed-8cb5-0a8479f6fbf1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "37b41376-6a93-486f-a1d3-29e515893077",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca168d47-40c6-4622-94b0-c2af76220e49",
              "parent_uuid": "37b41376-6a93-486f-a1d3-29e515893077",
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
              "uuid": "f823c897-adbc-4019-b347-31e8b40ad10e",
              "parent_uuid": "37b41376-6a93-486f-a1d3-29e515893077",
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
              "uuid": "8a1d1ca7-4238-449b-be93-b23aaa8d26ff",
              "parent_uuid": "37b41376-6a93-486f-a1d3-29e515893077",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5e52c0d5-759c-46f2-b3f6-f334cd917822",
                  "parent_uuid": "8a1d1ca7-4238-449b-be93-b23aaa8d26ff",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c2c5aa32-a34a-4ec3-ac62-18b714b5e446",
              "parent_uuid": "37b41376-6a93-486f-a1d3-29e515893077",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c348c2b4-3d95-4d7c-af7c-7f40961def10",
                  "parent_uuid": "c2c5aa32-a34a-4ec3-ac62-18b714b5e446",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b09a6fde-6cef-492d-be96-e87634d26a9a",
              "parent_uuid": "37b41376-6a93-486f-a1d3-29e515893077",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d057ebe0-f3c8-4332-99c2-abc88f30944f",
                  "parent_uuid": "b09a6fde-6cef-492d-be96-e87634d26a9a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "957964b1-3e48-458e-93b3-8fbf6d52c82d",
              "parent_uuid": "37b41376-6a93-486f-a1d3-29e515893077",
              "tagName": "td",
              "properties": [
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
                  "uuid": "006a61d6-fc21-4914-91d9-8320dd1d08c7",
                  "parent_uuid": "957964b1-3e48-458e-93b3-8fbf6d52c82d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29b7a798-1e03-449f-afc1-c395660056c7",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e3db975-563e-4c8f-bad2-c73e4665622b",
              "parent_uuid": "29b7a798-1e03-449f-afc1-c395660056c7",
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
              "uuid": "9f8a6045-8bdb-4d7c-a7b4-1dd7562265fb",
              "parent_uuid": "29b7a798-1e03-449f-afc1-c395660056c7",
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
              "uuid": "058ee7d0-f722-4348-9c2f-0d9bc8a21481",
              "parent_uuid": "29b7a798-1e03-449f-afc1-c395660056c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "58db6992-1e97-46cb-a72e-237d8b68bc8e",
                  "parent_uuid": "058ee7d0-f722-4348-9c2f-0d9bc8a21481",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "62b3c5dd-4365-40e3-a85c-cbf87ab043b2",
              "parent_uuid": "29b7a798-1e03-449f-afc1-c395660056c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b5b1c495-e396-4a3f-a9b9-4b63271b9599",
                  "parent_uuid": "62b3c5dd-4365-40e3-a85c-cbf87ab043b2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "33bca8e2-1d00-45ca-b19b-2aeceb7b4c2b",
              "parent_uuid": "29b7a798-1e03-449f-afc1-c395660056c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8100ae75-d2b6-4c7a-a063-8a285fa1eccf",
                  "parent_uuid": "33bca8e2-1d00-45ca-b19b-2aeceb7b4c2b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0db25d6-c11b-40f8-8160-e8224e15998d",
              "parent_uuid": "29b7a798-1e03-449f-afc1-c395660056c7",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d9bb9659-7f64-4d9f-92db-ae26005a1475",
                  "parent_uuid": "a0db25d6-c11b-40f8-8160-e8224e15998d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "015520e6-8998-4818-aecc-e922e9cac037",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "093032fb-bda1-4db9-876d-1da3fd7127ad",
              "parent_uuid": "015520e6-8998-4818-aecc-e922e9cac037",
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
              "uuid": "f0aede8d-d211-4d46-9d9e-1deb1882a605",
              "parent_uuid": "015520e6-8998-4818-aecc-e922e9cac037",
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
              "uuid": "37baf3c9-f64d-4a45-80dc-50c45d0c1948",
              "parent_uuid": "015520e6-8998-4818-aecc-e922e9cac037",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7293cb79-807d-4140-80b2-f7e65b75e766",
                  "parent_uuid": "37baf3c9-f64d-4a45-80dc-50c45d0c1948",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a759bf1b-21cf-45a2-ab63-90b1bcc07088",
              "parent_uuid": "015520e6-8998-4818-aecc-e922e9cac037",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6087af9a-0204-4fbd-96ad-26ee8d3f56fa",
                  "parent_uuid": "a759bf1b-21cf-45a2-ab63-90b1bcc07088",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b97ee3bd-24b9-42ed-81f5-3d15b11603a7",
              "parent_uuid": "015520e6-8998-4818-aecc-e922e9cac037",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b5d0a9e5-1089-4335-84d3-a2af00230d94",
                  "parent_uuid": "b97ee3bd-24b9-42ed-81f5-3d15b11603a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b1e6411d-2490-4452-92e3-021829b9c2b0",
              "parent_uuid": "015520e6-8998-4818-aecc-e922e9cac037",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b23ed941-1104-47df-a27d-f36961a9334b",
                  "parent_uuid": "b1e6411d-2490-4452-92e3-021829b9c2b0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0b62c5b1-d4d7-4e3a-9bb1-80cf86231615",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d7a014fa-2e97-4086-a24d-f1ed4df4957e",
              "parent_uuid": "0b62c5b1-d4d7-4e3a-9bb1-80cf86231615",
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
              "uuid": "c93dc182-9b92-4ae5-b712-bf08962f6afa",
              "parent_uuid": "0b62c5b1-d4d7-4e3a-9bb1-80cf86231615",
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
              "uuid": "d8334731-700a-456b-8289-41a1af552caf",
              "parent_uuid": "0b62c5b1-d4d7-4e3a-9bb1-80cf86231615",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9c9c39be-e360-4256-97a8-2a27b367c316",
                  "parent_uuid": "d8334731-700a-456b-8289-41a1af552caf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "876e92e2-7344-4526-89c4-5b369f413dae",
              "parent_uuid": "0b62c5b1-d4d7-4e3a-9bb1-80cf86231615",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2838d897-e93d-468b-9daf-afcf9a0f2c55",
                  "parent_uuid": "876e92e2-7344-4526-89c4-5b369f413dae",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2e2bd81-c8b5-48de-875a-cbd3914e373c",
              "parent_uuid": "0b62c5b1-d4d7-4e3a-9bb1-80cf86231615",
              "tagName": "td",
              "properties": [
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
                  "uuid": "be0f37c9-98b1-4e55-b417-acbffb072231",
                  "parent_uuid": "a2e2bd81-c8b5-48de-875a-cbd3914e373c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a2dfc824-5dc0-407b-ad6e-05e753930314",
              "parent_uuid": "0b62c5b1-d4d7-4e3a-9bb1-80cf86231615",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f6159e84-4c58-4d56-842e-e9bed7661da5",
                  "parent_uuid": "a2dfc824-5dc0-407b-ad6e-05e753930314",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "5623f538-1d8f-4222-9cb0-a0e91a326e5f",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e59c17a3-c942-46e9-9c94-8ada100e5214",
              "parent_uuid": "5623f538-1d8f-4222-9cb0-a0e91a326e5f",
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
              "uuid": "0cc3558b-230b-4b6e-964b-ec5b82ef9190",
              "parent_uuid": "5623f538-1d8f-4222-9cb0-a0e91a326e5f",
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
              "uuid": "5f7d88e0-464f-45e0-a9dd-7b9713971296",
              "parent_uuid": "5623f538-1d8f-4222-9cb0-a0e91a326e5f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9798d287-621f-4ace-9671-78d1e78a3b8f",
                  "parent_uuid": "5f7d88e0-464f-45e0-a9dd-7b9713971296",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eab5737e-96a0-44ff-9c24-8b2ce52d545a",
              "parent_uuid": "5623f538-1d8f-4222-9cb0-a0e91a326e5f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "203c6595-f163-425a-b01c-f79cbf4b240e",
                  "parent_uuid": "eab5737e-96a0-44ff-9c24-8b2ce52d545a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fb09585b-389a-4241-bf78-b0031d72faf7",
              "parent_uuid": "5623f538-1d8f-4222-9cb0-a0e91a326e5f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "767422cd-bc33-4a4a-99e2-0f5c1935dbcf",
                  "parent_uuid": "fb09585b-389a-4241-bf78-b0031d72faf7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3db2cdba-956e-4098-8a07-bb665abf90a7",
              "parent_uuid": "5623f538-1d8f-4222-9cb0-a0e91a326e5f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "311f99ad-01b4-4943-b287-9e0c9acc90e5",
                  "parent_uuid": "3db2cdba-956e-4098-8a07-bb665abf90a7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a35b23f7-79b3-4c80-aa2f-0dc328d8ca60",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ba03f924-36d4-4e11-8d7c-ba5bd3c84b6b",
              "parent_uuid": "a35b23f7-79b3-4c80-aa2f-0dc328d8ca60",
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
              "uuid": "f8767dd5-cfa7-49a9-94e6-6556851f3a4d",
              "parent_uuid": "a35b23f7-79b3-4c80-aa2f-0dc328d8ca60",
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
              "uuid": "b780e72a-ad5c-4838-9266-9eec4a57d749",
              "parent_uuid": "a35b23f7-79b3-4c80-aa2f-0dc328d8ca60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9ccb54f0-52d3-4105-ac72-f945a613a60b",
                  "parent_uuid": "b780e72a-ad5c-4838-9266-9eec4a57d749",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5bde88db-b969-44fa-b2c2-7027cf13b9d1",
              "parent_uuid": "a35b23f7-79b3-4c80-aa2f-0dc328d8ca60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3f645771-1517-4ae6-be87-59879f9b280d",
                  "parent_uuid": "5bde88db-b969-44fa-b2c2-7027cf13b9d1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9abecf0b-1fc7-4795-84df-2712e1da5ce1",
              "parent_uuid": "a35b23f7-79b3-4c80-aa2f-0dc328d8ca60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "64f38cf9-66a3-4fbd-83b3-88756d62f1e6",
                  "parent_uuid": "9abecf0b-1fc7-4795-84df-2712e1da5ce1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7231f5d5-1842-4002-b8d1-e3a145fb227f",
              "parent_uuid": "a35b23f7-79b3-4c80-aa2f-0dc328d8ca60",
              "tagName": "td",
              "properties": [
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
                  "uuid": "30a994a2-afb9-43df-9565-74d19f8137ea",
                  "parent_uuid": "7231f5d5-1842-4002-b8d1-e3a145fb227f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "38f758dd-c021-440f-9082-3eb26cdd2192",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "349fd185-2133-4741-a557-42bb5bbad388",
              "parent_uuid": "38f758dd-c021-440f-9082-3eb26cdd2192",
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
          "uuid": "29c533a4-2ddf-45a2-9b32-a885686520a4",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "951171a2-29c1-4381-842d-a789803968c9",
              "parent_uuid": "29c533a4-2ddf-45a2-9b32-a885686520a4",
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
              "uuid": "a9485dd1-dab4-4061-bfea-430565a29550",
              "parent_uuid": "29c533a4-2ddf-45a2-9b32-a885686520a4",
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
              "uuid": "59f89a31-2e92-41bf-bb65-1a6c11fe932f",
              "parent_uuid": "29c533a4-2ddf-45a2-9b32-a885686520a4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ef13683d-0941-4904-b30b-29d166f3fad5",
                  "parent_uuid": "59f89a31-2e92-41bf-bb65-1a6c11fe932f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e1a84a8-67ca-49d0-bc48-1d44305cee96",
              "parent_uuid": "29c533a4-2ddf-45a2-9b32-a885686520a4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "24134172-3faa-4246-bbe8-43f4e6a8f7be",
                  "parent_uuid": "7e1a84a8-67ca-49d0-bc48-1d44305cee96",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b73c3863-d1c9-4ec6-860b-200e38c0a9e4",
              "parent_uuid": "29c533a4-2ddf-45a2-9b32-a885686520a4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9b16c9a4-b8da-48ce-9d52-6c47692eb790",
                  "parent_uuid": "b73c3863-d1c9-4ec6-860b-200e38c0a9e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "682ed4ea-4da4-4782-9dd2-8247d66d1508",
              "parent_uuid": "29c533a4-2ddf-45a2-9b32-a885686520a4",
              "tagName": "td",
              "properties": [
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
                  "uuid": "455b098a-147a-4e26-a2cb-702c30924bf2",
                  "parent_uuid": "682ed4ea-4da4-4782-9dd2-8247d66d1508",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2a1a389a-ceae-487a-b665-269564592ec6",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea703c47-900e-4996-a63f-93dfe2b1ffce",
              "parent_uuid": "2a1a389a-ceae-487a-b665-269564592ec6",
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
          "uuid": "f57c9cfa-ffdb-4787-89d6-1ddd46f2ba15",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3911acd7-2805-4385-9c0b-8844c92b49fe",
              "parent_uuid": "f57c9cfa-ffdb-4787-89d6-1ddd46f2ba15",
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
          "uuid": "9d4cb5a6-8b01-4dc7-bebe-a653da58ce6b",
          "parent_uuid": "3ba1c696-6faf-4dba-a9f0-bcd7e2669e9b",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59af0a72-0f4e-46ea-95c0-1e28040d2995",
              "parent_uuid": "9d4cb5a6-8b01-4dc7-bebe-a653da58ce6b",
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
                  "uuid": "7bc6dc84-6a4b-442b-9e12-ebb30329be3e",
                  "parent_uuid": "59af0a72-0f4e-46ea-95c0-1e28040d2995",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'DA19D272-9439-47A7-9749-153DAFAB2B69' AS cl_uid 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 



DECLARE @allChecklists TABLE (CL_UID uniqueidentifier NOT NULL PRIMARY KEY, CL_Name nvarchar(256) NULL, CL_Sort int NULL) 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Sort) 
          SELECT 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID, N'Schüttgutcontainer' AS CL_Name, 1 AS CL_Sort 
UNION ALL SELECT '1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS CL_UID, N'EVA' AS CL_Name, 2 AS CL_Sort 
UNION ALL SELECT '58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS CL_UID, N'CIS' AS CL_Name, 3 AS CL_Sort 
UNION ALL SELECT 'DA19D272-9439-47A7-9749-153DAFAB2B69' AS CL_UID, N'VHP' AS CL_Name, 4 AS CL_Sort 
UNION ALL SELECT '698EA23D-485A-4CEE-9B06-2E130A3A5626' AS CL_UID, N'NPL' AS CL_Name, 5 AS CL_Sort 
UNION ALL SELECT 'F1A2DD8A-2D11-496E-9B14-13559405089F' AS CL_UID, N'BPS_M7' AS CL_Name, 6 AS CL_Sort 
UNION ALL SELECT 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS CL_UID, N'BPS_1020' AS CL_Name, 7 AS CL_Sort 
; 



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

WHEN NOT MATCHED BY TARGET THEN 
    INSERT 
    ( 
         CL_UID 
        ,CL_Name 
    ) 
    VALUES 
    ( 
         CTE.CL_UID 
        ,CTE.CL_Name 
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

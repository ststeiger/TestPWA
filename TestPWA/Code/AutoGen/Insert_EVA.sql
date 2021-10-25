
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
  "uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "b66f6414-63bb-49a3-a386-320238c58a1a",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "6027784a-9e2b-44ed-b712-117a4bd735f1",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "70862b60-f48d-4b9f-a13a-1006fd855f5b",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "e2a4cadc-140c-47f6-b0d8-5196c25c41e7",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "08de68f6-c1d6-446e-9a1c-199fdfdbbde0",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "0a9261f4-4076-4a85-85f5-136d4eb5cda0",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "524a6cee-8213-42c8-aadd-791f9fb23c65",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
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
      "uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
      "parent_uuid": "2a2bc711-faa4-41ff-994e-f818d85865be",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "2c0a54cc-18a4-4e31-b052-60122107d9fb",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "cad79898-d8c3-4049-a922-25292d960152",
              "parent_uuid": "2c0a54cc-18a4-4e31-b052-60122107d9fb",
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
              "uuid": "8e11957b-61f4-4c55-98cc-cc7ef5eb2765",
              "parent_uuid": "2c0a54cc-18a4-4e31-b052-60122107d9fb",
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
              "uuid": "0a6bbbfd-e590-45df-8d44-b83a501daf75",
              "parent_uuid": "2c0a54cc-18a4-4e31-b052-60122107d9fb",
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
              "uuid": "c0d2ed1a-1bca-4f8f-90e1-d1b02d152084",
              "parent_uuid": "2c0a54cc-18a4-4e31-b052-60122107d9fb",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "8"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Ent- und Verpackungsanlage</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "1ef73c3f-ec6b-4e19-bdb3-50748104da66",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "0274a494-7cd5-4c7a-85f9-c3065d33d1f3",
              "parent_uuid": "1ef73c3f-ec6b-4e19-bdb3-50748104da66",
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
              "innerHtml": "\r\n                    <span>Wartungsfirma:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7f436b14-de05-4e71-8581-8a46e8b937b8",
              "parent_uuid": "1ef73c3f-ec6b-4e19-bdb3-50748104da66",
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
              "uuid": "145a5b64-1898-4772-b766-61c2e680f773",
              "parent_uuid": "1ef73c3f-ec6b-4e19-bdb3-50748104da66",
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
              "uuid": "5ca01d99-7fbe-4651-9d2f-4fcd72205be8",
              "parent_uuid": "1ef73c3f-ec6b-4e19-bdb3-50748104da66",
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
          "uuid": "cd1eeaee-4902-49d7-a9e1-1f6cbb0b58ab",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09a43015-7b90-4b9d-9dc8-e80e52c1e80f",
              "parent_uuid": "cd1eeaee-4902-49d7-a9e1-1f6cbb0b58ab",
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
              "uuid": "add0b74b-19df-49e2-b502-252628feffba",
              "parent_uuid": "cd1eeaee-4902-49d7-a9e1-1f6cbb0b58ab",
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
              "uuid": "75ee4a73-c231-4f38-bb4a-31e383f2d8a1",
              "parent_uuid": "cd1eeaee-4902-49d7-a9e1-1f6cbb0b58ab",
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
              "uuid": "37a64e03-2fad-4e9b-a9fe-deb296b7ce9b",
              "parent_uuid": "cd1eeaee-4902-49d7-a9e1-1f6cbb0b58ab",
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
              "uuid": "b38ff121-031a-4c9e-a640-08ff1b682a0c",
              "parent_uuid": "cd1eeaee-4902-49d7-a9e1-1f6cbb0b58ab",
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
              "uuid": "74b652b0-2ecb-4614-bc0e-eadb5cf0587d",
              "parent_uuid": "cd1eeaee-4902-49d7-a9e1-1f6cbb0b58ab",
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
          "uuid": "8c793915-28d7-4cbd-a2a3-9a6ce4d8bfa1",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "57f81d83-4620-4148-a01e-a0f92a8ebe45",
              "parent_uuid": "8c793915-28d7-4cbd-a2a3-9a6ce4d8bfa1",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
                ],
                [
                  "align",
                  "left"
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
          "uuid": "b37b94ed-fd79-49dd-a230-52b8e8ebfd61",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54b3b007-ee1d-4198-82b9-989153a4ec75",
              "parent_uuid": "b37b94ed-fd79-49dd-a230-52b8e8ebfd61",
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
              "uuid": "2b57db2d-75e0-4acf-ae1b-f830dd51cee4",
              "parent_uuid": "b37b94ed-fd79-49dd-a230-52b8e8ebfd61",
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
              "uuid": "aeaf406e-b0b3-4969-b340-19c5d922dcf6",
              "parent_uuid": "b37b94ed-fd79-49dd-a230-52b8e8ebfd61",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a57fc87a-a56c-4ffa-a725-ab51ff681f1c",
                  "parent_uuid": "aeaf406e-b0b3-4969-b340-19c5d922dcf6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95871d37-d586-4dbc-a2df-8db31cab7dc0",
              "parent_uuid": "b37b94ed-fd79-49dd-a230-52b8e8ebfd61",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e06f320a-a362-4f9f-9065-5c3e66496195",
                  "parent_uuid": "95871d37-d586-4dbc-a2df-8db31cab7dc0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "917d709a-d12d-494d-a767-a2b0c41fe1c9",
              "parent_uuid": "b37b94ed-fd79-49dd-a230-52b8e8ebfd61",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5a31ca5c-42ec-4005-ac2b-cd70a26793a9",
                  "parent_uuid": "917d709a-d12d-494d-a767-a2b0c41fe1c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7359f64-6b88-4693-8bdd-52f3718e14ca",
              "parent_uuid": "b37b94ed-fd79-49dd-a230-52b8e8ebfd61",
              "tagName": "td",
              "properties": [
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
                  "uuid": "21e1726c-fa38-4da4-8c6b-e7cc38758122",
                  "parent_uuid": "f7359f64-6b88-4693-8bdd-52f3718e14ca",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8ef17178-b2c8-4f13-8f41-420ad8f7dbd2",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8775c49b-f513-490c-935f-672da2591c2b",
              "parent_uuid": "8ef17178-b2c8-4f13-8f41-420ad8f7dbd2",
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
              "uuid": "e62bab00-6da7-47a8-8700-65c6d1ff27cb",
              "parent_uuid": "8ef17178-b2c8-4f13-8f41-420ad8f7dbd2",
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
              "uuid": "ebf1bc70-85db-4061-b70f-1ab74aa493ad",
              "parent_uuid": "8ef17178-b2c8-4f13-8f41-420ad8f7dbd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "85194992-b54a-40ff-8846-816c55acd234",
                  "parent_uuid": "ebf1bc70-85db-4061-b70f-1ab74aa493ad",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4006097b-e946-4d5c-9b77-9b581ae803a2",
              "parent_uuid": "8ef17178-b2c8-4f13-8f41-420ad8f7dbd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a5e0c553-23a0-4bad-a5dd-116147444ca7",
                  "parent_uuid": "4006097b-e946-4d5c-9b77-9b581ae803a2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ffffca67-97e9-43ba-9904-c3d12bc1dc46",
              "parent_uuid": "8ef17178-b2c8-4f13-8f41-420ad8f7dbd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bbd0dbd1-039c-47c3-9abf-e0b6e9872e95",
                  "parent_uuid": "ffffca67-97e9-43ba-9904-c3d12bc1dc46",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fc9e9169-081c-4c50-9120-c007ab8a4a51",
              "parent_uuid": "8ef17178-b2c8-4f13-8f41-420ad8f7dbd2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "034ff5a1-7215-4e27-8719-527ea9e33b59",
                  "parent_uuid": "fc9e9169-081c-4c50-9120-c007ab8a4a51",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3a1fc027-e94f-45a5-b8ec-52c7fa1c2301",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f9f06d64-189e-4bde-b1e4-17b9af3f4f2d",
              "parent_uuid": "3a1fc027-e94f-45a5-b8ec-52c7fa1c2301",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d6486213-6c9b-4dc1-b3e8-7b257973b041",
              "parent_uuid": "3a1fc027-e94f-45a5-b8ec-52c7fa1c2301",
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
              "uuid": "811fb2a9-210e-489c-a9fd-dff509fe9b3d",
              "parent_uuid": "3a1fc027-e94f-45a5-b8ec-52c7fa1c2301",
              "tagName": "td",
              "properties": [
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
                  "uuid": "54ef36dd-a160-4c2d-8780-ca92ed7f647a",
                  "parent_uuid": "811fb2a9-210e-489c-a9fd-dff509fe9b3d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0e710a71-f9bb-4b33-ab5b-4c2884acdcdd",
              "parent_uuid": "3a1fc027-e94f-45a5-b8ec-52c7fa1c2301",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5fca4b5f-5b7d-44c5-a768-a3e8e47849d5",
                  "parent_uuid": "0e710a71-f9bb-4b33-ab5b-4c2884acdcdd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b440601e-1a4d-4430-9d9c-c050bc5e6475",
              "parent_uuid": "3a1fc027-e94f-45a5-b8ec-52c7fa1c2301",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c9d1a798-e46a-4305-b8d8-d88d268b337a",
                  "parent_uuid": "b440601e-1a4d-4430-9d9c-c050bc5e6475",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8444dc6e-0e21-48a7-a168-275b1af73103",
              "parent_uuid": "3a1fc027-e94f-45a5-b8ec-52c7fa1c2301",
              "tagName": "td",
              "properties": [
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
                  "uuid": "277e78a8-631d-46ed-aa82-b978fba5c7c2",
                  "parent_uuid": "8444dc6e-0e21-48a7-a168-275b1af73103",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c0307a15-e30a-4a98-ae7b-4597930e7d50",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "811a0908-1c85-4343-9eb1-0e342549d1a8",
              "parent_uuid": "c0307a15-e30a-4a98-ae7b-4597930e7d50",
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
              "uuid": "e7f4c806-0e3f-482f-b3d9-aca4b5a3a193",
              "parent_uuid": "c0307a15-e30a-4a98-ae7b-4597930e7d50",
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
              "innerHtml": "<span>2J</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "da772f38-618c-48b9-92d1-b6af77091f97",
              "parent_uuid": "c0307a15-e30a-4a98-ae7b-4597930e7d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c804a887-3a20-4b6b-9435-bea651dd246b",
                  "parent_uuid": "da772f38-618c-48b9-92d1-b6af77091f97",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ab918656-72d5-4d4e-ab61-66c7805c8c31",
              "parent_uuid": "c0307a15-e30a-4a98-ae7b-4597930e7d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fee23143-7bda-49a9-9ce4-5bf65d568458",
                  "parent_uuid": "ab918656-72d5-4d4e-ab61-66c7805c8c31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1eb43307-04d8-47a7-9b4a-f97c053b1672",
              "parent_uuid": "c0307a15-e30a-4a98-ae7b-4597930e7d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9f97574b-9755-4ac0-a8c6-2b30bcebb5dd",
                  "parent_uuid": "1eb43307-04d8-47a7-9b4a-f97c053b1672",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27e61b24-8875-47d5-a43d-4dc6465b230a",
              "parent_uuid": "c0307a15-e30a-4a98-ae7b-4597930e7d50",
              "tagName": "td",
              "properties": [
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
                  "uuid": "46b72a20-347b-41f8-b651-9e08ebcbc55e",
                  "parent_uuid": "27e61b24-8875-47d5-a43d-4dc6465b230a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ca730e79-e0ff-40f5-967e-549c77d98cb5",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c56253ae-a3d7-452f-a381-c53b70ee832b",
              "parent_uuid": "ca730e79-e0ff-40f5-967e-549c77d98cb5",
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
              "uuid": "e43083d4-c7c0-42a2-a4e4-3255b7f93711",
              "parent_uuid": "ca730e79-e0ff-40f5-967e-549c77d98cb5",
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
              "uuid": "52a03047-6045-4444-99c6-91dbba6fef2e",
              "parent_uuid": "ca730e79-e0ff-40f5-967e-549c77d98cb5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7c127560-fa96-4ca1-83ea-030e7bca4486",
                  "parent_uuid": "52a03047-6045-4444-99c6-91dbba6fef2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "802a7c49-40ff-4d7a-98db-e720227b4adc",
              "parent_uuid": "ca730e79-e0ff-40f5-967e-549c77d98cb5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "49f3acfe-7bd2-42c0-868c-dc3b1937c9b8",
                  "parent_uuid": "802a7c49-40ff-4d7a-98db-e720227b4adc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ec7e6c2f-e8ef-4d12-8a17-2021d65a336b",
              "parent_uuid": "ca730e79-e0ff-40f5-967e-549c77d98cb5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e8dd77f7-1409-4a74-818c-1cacf6f3bc7b",
                  "parent_uuid": "ec7e6c2f-e8ef-4d12-8a17-2021d65a336b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0f89a60-c5c0-479e-84f4-2cd07a85801b",
              "parent_uuid": "ca730e79-e0ff-40f5-967e-549c77d98cb5",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4f872468-0612-4b25-a0f3-2f2b943f7035",
                  "parent_uuid": "d0f89a60-c5c0-479e-84f4-2cd07a85801b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "3d61089f-702e-4473-b570-e3ccc13023bf",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee7403a2-390e-4736-b353-633fbef4b1d5",
              "parent_uuid": "3d61089f-702e-4473-b570-e3ccc13023bf",
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
              "uuid": "73d755f3-0a7b-43fa-ad6d-560aee3b5444",
              "parent_uuid": "3d61089f-702e-4473-b570-e3ccc13023bf",
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
              "uuid": "2ea74bcc-65f3-41d1-a568-eaf3a20133d9",
              "parent_uuid": "3d61089f-702e-4473-b570-e3ccc13023bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4a8e5013-7525-4f8a-a6a2-955e529132ee",
                  "parent_uuid": "2ea74bcc-65f3-41d1-a568-eaf3a20133d9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5f8b8128-44e9-452f-bf81-59f2f8dfcdb2",
              "parent_uuid": "3d61089f-702e-4473-b570-e3ccc13023bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "631e945d-6eec-4c7d-b0dc-2ef510938e74",
                  "parent_uuid": "5f8b8128-44e9-452f-bf81-59f2f8dfcdb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1b92bee6-4263-4a5f-aba3-d864f9f4afd2",
              "parent_uuid": "3d61089f-702e-4473-b570-e3ccc13023bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "98b42aee-5b8f-4616-8b31-37fd3d7a8e30",
                  "parent_uuid": "1b92bee6-4263-4a5f-aba3-d864f9f4afd2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4554ff57-84bb-4dbb-bbfa-80817b4104e6",
              "parent_uuid": "3d61089f-702e-4473-b570-e3ccc13023bf",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1d1dcd9a-d6ff-4456-a9f9-5c8201f34e12",
                  "parent_uuid": "4554ff57-84bb-4dbb-bbfa-80817b4104e6",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "488d4f9c-3038-449f-8ec3-cfcd7447fda2",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c0c889b3-5f62-492e-bd31-3757b2c68c7a",
              "parent_uuid": "488d4f9c-3038-449f-8ec3-cfcd7447fda2",
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
              "uuid": "4d7c8073-5b53-40f6-becb-f01b44f7890e",
              "parent_uuid": "488d4f9c-3038-449f-8ec3-cfcd7447fda2",
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
              "uuid": "bb1d8bfc-19d2-4131-a7b1-5c8e3a5bd4cc",
              "parent_uuid": "488d4f9c-3038-449f-8ec3-cfcd7447fda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8c8dea33-54d4-4e89-94ec-15b921926d8e",
                  "parent_uuid": "bb1d8bfc-19d2-4131-a7b1-5c8e3a5bd4cc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a6b1706-1a99-42dd-953c-2af2df952e56",
              "parent_uuid": "488d4f9c-3038-449f-8ec3-cfcd7447fda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "749dc31d-11b7-4fc8-b0e2-664668d63a6d",
                  "parent_uuid": "5a6b1706-1a99-42dd-953c-2af2df952e56",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "91a506c9-e450-47ee-beeb-33d77f2d4535",
              "parent_uuid": "488d4f9c-3038-449f-8ec3-cfcd7447fda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a89088e7-2d47-46a8-b91e-cb0cbbb7c18c",
                  "parent_uuid": "91a506c9-e450-47ee-beeb-33d77f2d4535",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3083890e-e58e-449a-a156-2f9586bc4343",
              "parent_uuid": "488d4f9c-3038-449f-8ec3-cfcd7447fda2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a993bdc7-c224-494f-8f1d-267427f67843",
                  "parent_uuid": "3083890e-e58e-449a-a156-2f9586bc4343",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ec27956e-3af5-4bb1-be27-94b04ba6b90d",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c955489b-4324-4248-a8cf-7aa256165271",
              "parent_uuid": "ec27956e-3af5-4bb1-be27-94b04ba6b90d",
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
              "innerHtml": "\r\n                    <span>Alle Mitnehmerstege auf den Förderbändern mechanisch prüfen und fixieren wenn gelockert</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c244cf6c-e449-47b5-b114-51751db50929",
              "parent_uuid": "ec27956e-3af5-4bb1-be27-94b04ba6b90d",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "d6e0350f-7f46-4cb4-9724-0b7794a03703",
              "parent_uuid": "ec27956e-3af5-4bb1-be27-94b04ba6b90d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "81c547a0-6f38-44bd-b258-a55b7c4ca15f",
                  "parent_uuid": "d6e0350f-7f46-4cb4-9724-0b7794a03703",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7229a342-1098-4c0c-9ed8-bb50a68361c6",
              "parent_uuid": "ec27956e-3af5-4bb1-be27-94b04ba6b90d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d28190e2-db26-4512-ace2-447a36ab1d9f",
                  "parent_uuid": "7229a342-1098-4c0c-9ed8-bb50a68361c6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71371987-4dfc-4ff0-a088-080c0e2d565f",
              "parent_uuid": "ec27956e-3af5-4bb1-be27-94b04ba6b90d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "7416e171-63b5-44e8-a96e-7afaa2dd4e87",
                  "parent_uuid": "71371987-4dfc-4ff0-a088-080c0e2d565f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0f399683-fd93-4da4-92b8-b31da28852ee",
              "parent_uuid": "ec27956e-3af5-4bb1-be27-94b04ba6b90d",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9193be43-9b3b-4a85-8734-94365035245e",
                  "parent_uuid": "0f399683-fd93-4da4-92b8-b31da28852ee",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b128cd1c-0ba1-41b2-9b79-4504ad87ca5e",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1dc00103-5078-4d8e-bf17-3b988b3a72fa",
              "parent_uuid": "b128cd1c-0ba1-41b2-9b79-4504ad87ca5e",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Antriebsmotoren für die Transportbänder prüfen (Geräusche, Laufruhe, Lager, Kabelanschlüsse, Schraubenkontrolle)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1775384e-8785-4667-97ec-5439b2d5e6cb",
              "parent_uuid": "b128cd1c-0ba1-41b2-9b79-4504ad87ca5e",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0605c7ca-be9b-41e6-9225-b466d274f18f",
              "parent_uuid": "b128cd1c-0ba1-41b2-9b79-4504ad87ca5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9a7fae6-1456-454f-bb32-0c2333fd3346",
                  "parent_uuid": "0605c7ca-be9b-41e6-9225-b466d274f18f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8916fcff-c5a0-405e-a1e3-7b6fa025d331",
              "parent_uuid": "b128cd1c-0ba1-41b2-9b79-4504ad87ca5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4d41457c-4fa0-48f0-98e2-e805a98accef",
                  "parent_uuid": "8916fcff-c5a0-405e-a1e3-7b6fa025d331",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "95e4f55c-c846-405c-b2b0-b62efc0670a7",
              "parent_uuid": "b128cd1c-0ba1-41b2-9b79-4504ad87ca5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "02dd203c-8a71-4f94-bc94-0674bbd11b41",
                  "parent_uuid": "95e4f55c-c846-405c-b2b0-b62efc0670a7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddea8672-08c2-4366-bd40-b4cfd8ccd6c7",
              "parent_uuid": "b128cd1c-0ba1-41b2-9b79-4504ad87ca5e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3d952388-532a-4c3e-83e4-aacb9f0887e6",
                  "parent_uuid": "ddea8672-08c2-4366-bd40-b4cfd8ccd6c7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "623a4cc2-4dca-4bcc-9e5c-6bf716f6ccc2",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efcf9f19-1133-4ed4-8182-0f55979db09b",
              "parent_uuid": "623a4cc2-4dca-4bcc-9e5c-6bf716f6ccc2",
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
                  "36"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Rollenförderer bei Ent- und Verpackungsstation auf Beschädigungen prüfen (Laufruhe, Geräusche, Riemen, Anschlusskabel)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7b2e24ba-0c2f-4255-92a1-8e3f5fc527ab",
              "parent_uuid": "623a4cc2-4dca-4bcc-9e5c-6bf716f6ccc2",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fc59b076-3d88-4fb6-a441-707fece9a5d0",
              "parent_uuid": "623a4cc2-4dca-4bcc-9e5c-6bf716f6ccc2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "381d60cb-364f-492e-a6b1-0475359e25a2",
                  "parent_uuid": "fc59b076-3d88-4fb6-a441-707fece9a5d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5eab93de-9933-443a-8c4c-0583a4198856",
              "parent_uuid": "623a4cc2-4dca-4bcc-9e5c-6bf716f6ccc2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a5bc56ac-759f-4ed1-96b6-0e8706d98a06",
                  "parent_uuid": "5eab93de-9933-443a-8c4c-0583a4198856",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f453251c-cf99-4b4c-8b1b-4dda01dbc788",
              "parent_uuid": "623a4cc2-4dca-4bcc-9e5c-6bf716f6ccc2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6c93dbb9-140f-4d1a-919b-233e1bc6bfc1",
                  "parent_uuid": "f453251c-cf99-4b4c-8b1b-4dda01dbc788",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1a853386-9a69-4ffb-ab0c-9220e1e90876",
              "parent_uuid": "623a4cc2-4dca-4bcc-9e5c-6bf716f6ccc2",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0949b395-3fcf-4aa7-a420-3cffdf892c30",
                  "parent_uuid": "1a853386-9a69-4ffb-ab0c-9220e1e90876",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9fd9f408-36a7-45c0-92f5-b9d15268d61f",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc771c71-dff0-4ca8-af7d-474f79036d4b",
              "parent_uuid": "9fd9f408-36a7-45c0-92f5-b9d15268d61f",
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
              "innerHtml": "\r\n                    <span>Ausrichtung der Sensoren prüfen (Lichtschranke, Positionsschalter,Reflektoren, Füllstandssensor)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0b24fbad-1324-4164-bc03-903431ae5bd5",
              "parent_uuid": "9fd9f408-36a7-45c0-92f5-b9d15268d61f",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8fddd4ca-d330-4005-8514-f1819e5957bd",
              "parent_uuid": "9fd9f408-36a7-45c0-92f5-b9d15268d61f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d62be8a7-bc67-4215-ab43-2cc90da4ed3c",
                  "parent_uuid": "8fddd4ca-d330-4005-8514-f1819e5957bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "86ce2d15-ac56-4ce4-bce9-8ae98749c17b",
              "parent_uuid": "9fd9f408-36a7-45c0-92f5-b9d15268d61f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "812b08cc-51c2-4277-9cd6-d13b31fec37b",
                  "parent_uuid": "86ce2d15-ac56-4ce4-bce9-8ae98749c17b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1976010f-bc3f-4f5c-9cdd-0fd0a4781ba5",
              "parent_uuid": "9fd9f408-36a7-45c0-92f5-b9d15268d61f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "cd3031ed-6a1d-4f25-be43-1d6ec8fd29d8",
                  "parent_uuid": "1976010f-bc3f-4f5c-9cdd-0fd0a4781ba5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df031afe-a704-430d-ba04-e7a50701ad13",
              "parent_uuid": "9fd9f408-36a7-45c0-92f5-b9d15268d61f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1366df80-bb1b-40b2-b6fe-c7bbff9013a0",
                  "parent_uuid": "df031afe-a704-430d-ba04-e7a50701ad13",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9578f2c-d159-4f2d-bcbb-1dd9ee687630",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61b93e3a-e56e-402d-9f20-89761e8ae5c7",
              "parent_uuid": "b9578f2c-d159-4f2d-bcbb-1dd9ee687630",
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
                  "36"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Linearantriebe bei Befüllung Münzrollierer und Schüttgutcontainer prüfen (Bewegungen, Positionierung, Geräusche)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a4d2e3a3-5933-43f7-822b-492a671473fc",
              "parent_uuid": "b9578f2c-d159-4f2d-bcbb-1dd9ee687630",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7f240960-d7a3-46d8-8cf9-a2201b3b5e31",
              "parent_uuid": "b9578f2c-d159-4f2d-bcbb-1dd9ee687630",
              "tagName": "td",
              "properties": [
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
                  "uuid": "ae0704db-db72-49d2-847c-6994b66cec99",
                  "parent_uuid": "7f240960-d7a3-46d8-8cf9-a2201b3b5e31",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc2f4fab-977e-427d-931f-ddea36b05957",
              "parent_uuid": "b9578f2c-d159-4f2d-bcbb-1dd9ee687630",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a4c393cd-84ea-4b85-a110-9e0ee4e855fd",
                  "parent_uuid": "dc2f4fab-977e-427d-931f-ddea36b05957",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fa8343dd-561d-4d36-8ecd-6147f8432b5f",
              "parent_uuid": "b9578f2c-d159-4f2d-bcbb-1dd9ee687630",
              "tagName": "td",
              "properties": [
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
                  "uuid": "2c05e515-bf78-48b9-922f-ac80f4e5ee5c",
                  "parent_uuid": "fa8343dd-561d-4d36-8ecd-6147f8432b5f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c1b123a2-3602-4ea4-b5f5-85bfe7f3cdfa",
              "parent_uuid": "b9578f2c-d159-4f2d-bcbb-1dd9ee687630",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1158a8cf-67f2-4c0e-b106-79302a15a46b",
                  "parent_uuid": "c1b123a2-3602-4ea4-b5f5-85bfe7f3cdfa",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9709355a-a74e-41a0-9dbf-03f3acd4ddc8",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f2bef37-57a1-43f0-a29f-fd16907bdf8e",
              "parent_uuid": "9709355a-a74e-41a0-9dbf-03f3acd4ddc8",
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
                  "70"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand der zwei Pneumatikeinheiten kontrollieren<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "484bf28b-dc3d-4bd8-8c40-259371fe57df",
              "parent_uuid": "9709355a-a74e-41a0-9dbf-03f3acd4ddc8",
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
              "uuid": "99cabf9c-841d-4fad-a438-a1a87f9f9db5",
              "parent_uuid": "9709355a-a74e-41a0-9dbf-03f3acd4ddc8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "37edc879-6646-49cc-a8bf-9bd876178b48",
                  "parent_uuid": "99cabf9c-841d-4fad-a438-a1a87f9f9db5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0d6c235-9a53-4453-8c32-2fed03178000",
              "parent_uuid": "9709355a-a74e-41a0-9dbf-03f3acd4ddc8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "455554af-c8fb-44b0-bd74-7a4cba60c168",
                  "parent_uuid": "e0d6c235-9a53-4453-8c32-2fed03178000",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d5d19a79-6d2d-4754-9e52-af6ba18ff892",
              "parent_uuid": "9709355a-a74e-41a0-9dbf-03f3acd4ddc8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "38f07ff6-06ff-476d-8076-e9f8ddeeaed3",
                  "parent_uuid": "d5d19a79-6d2d-4754-9e52-af6ba18ff892",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ebbc51dd-da52-49f9-906e-c443ca8066a7",
              "parent_uuid": "9709355a-a74e-41a0-9dbf-03f3acd4ddc8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "54c1c7e5-5e28-414d-be64-ae833f21f0b6",
                  "parent_uuid": "ebbc51dd-da52-49f9-906e-c443ca8066a7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ef8bd6e1-d100-410c-bee3-a4d764621412",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ebbe934f-8b92-4e2a-9580-1066992ed0bd",
              "parent_uuid": "ef8bd6e1-d100-410c-bee3-a4d764621412",
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
                  "73"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Mechanische Kontrolle der pneumatischen Stopper, Zentrierer, Abschieber bei Münzverpacker prüfen<br>- Bewegungsgeschwindigkeit, Druck<br>- Endanschlag</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1b3160ea-5a11-49ac-9bcd-0daea2f6c4b4",
              "parent_uuid": "ef8bd6e1-d100-410c-bee3-a4d764621412",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "b67098ae-16c6-4bba-b2ec-1f8d90af7e6b",
              "parent_uuid": "ef8bd6e1-d100-410c-bee3-a4d764621412",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1ef1ca08-204b-4878-9cfa-94db7fef470a",
                  "parent_uuid": "b67098ae-16c6-4bba-b2ec-1f8d90af7e6b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "816dc666-5829-412b-9499-9937b7125eac",
              "parent_uuid": "ef8bd6e1-d100-410c-bee3-a4d764621412",
              "tagName": "td",
              "properties": [
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
                  "uuid": "654bc3e1-38a6-434f-a995-534915f07c5e",
                  "parent_uuid": "816dc666-5829-412b-9499-9937b7125eac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6861ef83-5a24-4d66-9e1f-0dd0e5723ee7",
              "parent_uuid": "ef8bd6e1-d100-410c-bee3-a4d764621412",
              "tagName": "td",
              "properties": [
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
                  "uuid": "30020888-0432-4352-ab6a-e9a84fa17769",
                  "parent_uuid": "6861ef83-5a24-4d66-9e1f-0dd0e5723ee7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "189778ff-a4eb-4f25-acb9-efd9860f3a16",
              "parent_uuid": "ef8bd6e1-d100-410c-bee3-a4d764621412",
              "tagName": "td",
              "properties": [
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
                  "uuid": "c0d31341-6215-40e5-80f3-f19ec078cb9b",
                  "parent_uuid": "189778ff-a4eb-4f25-acb9-efd9860f3a16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "cdd331f7-8672-42f2-b23b-3926a9b2a9aa",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9657aa62-5934-4d22-9b1a-46cd2c2675f2",
              "parent_uuid": "cdd331f7-8672-42f2-b23b-3926a9b2a9aa",
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
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "1e4045ca-9461-4759-adbd-ebbb7b22d43a",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "13e38c40-06c4-43f5-81f9-3378c25d6a6c",
              "parent_uuid": "1e4045ca-9461-4759-adbd-ebbb7b22d43a",
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "49d6a0e4-ed26-4fbd-a5bd-402b43e7768f",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5237c162-8eaf-4809-af00-585931329cd5",
              "parent_uuid": "49d6a0e4-ed26-4fbd-a5bd-402b43e7768f",
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
                  "72"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kartonverdichter, Wasserstopp Schlauchplatzsicherung prüfen.<br>-Wasserhahn bei Kartonverdichter schliessen<br>-Wasser Auffanggefäss unter Wasserhahn stellen<br>-Wasserhahn sprunghaft voll öffnen. </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "5be64562-0f19-4e08-a6be-041853385931",
              "parent_uuid": "49d6a0e4-ed26-4fbd-a5bd-402b43e7768f",
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
              "uuid": "f0c4327f-8d44-4a75-90dc-d55da19ed7c2",
              "parent_uuid": "49d6a0e4-ed26-4fbd-a5bd-402b43e7768f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "fe686a8a-ec40-4b41-9122-11b151eb1326",
                  "parent_uuid": "f0c4327f-8d44-4a75-90dc-d55da19ed7c2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0b3aec5-a191-4dbb-8809-13b855329bb0",
              "parent_uuid": "49d6a0e4-ed26-4fbd-a5bd-402b43e7768f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "15b8dd2c-c3e3-45d7-9887-b24c50c8c6b1",
                  "parent_uuid": "f0b3aec5-a191-4dbb-8809-13b855329bb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "db3bf2b9-6953-4493-a348-e1733d075b0f",
              "parent_uuid": "49d6a0e4-ed26-4fbd-a5bd-402b43e7768f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9fe8685-2cf1-4276-8552-125cbb4dded9",
                  "parent_uuid": "db3bf2b9-6953-4493-a348-e1733d075b0f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d008f784-9e98-49d1-9625-3cfc515c925c",
              "parent_uuid": "49d6a0e4-ed26-4fbd-a5bd-402b43e7768f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a409a57a-ecb9-45d2-b509-f0eb90a99d02",
                  "parent_uuid": "d008f784-9e98-49d1-9625-3cfc515c925c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "2eab88e4-cef2-4faa-9b1a-d4f89c73c551",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d931c1c7-8760-4339-9488-9c7779b9ce4d",
              "parent_uuid": "2eab88e4-cef2-4faa-9b1a-d4f89c73c551",
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
              "innerHtml": "\r\n                    <span>Filtermatten an den Schaltschränken bei starker Verschmutzung austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3e91157f-93ed-43e5-b0e1-57113661bf16",
              "parent_uuid": "2eab88e4-cef2-4faa-9b1a-d4f89c73c551",
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
              "innerHtml": "<span>6M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "1c95333e-827f-4e66-b78b-b3ab107d6ed5",
              "parent_uuid": "2eab88e4-cef2-4faa-9b1a-d4f89c73c551",
              "tagName": "td",
              "properties": [
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
                  "uuid": "756b5337-f842-4c46-9400-2155c668a9d5",
                  "parent_uuid": "1c95333e-827f-4e66-b78b-b3ab107d6ed5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "30d26a1d-1a67-46ce-9bd2-69e7caa1a71d",
              "parent_uuid": "2eab88e4-cef2-4faa-9b1a-d4f89c73c551",
              "tagName": "td",
              "properties": [
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
                  "uuid": "268ee215-8efb-4d56-89d5-34ddded737fa",
                  "parent_uuid": "30d26a1d-1a67-46ce-9bd2-69e7caa1a71d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a6d281fe-0e83-4ad4-b2e7-73cf4cc4884d",
              "parent_uuid": "2eab88e4-cef2-4faa-9b1a-d4f89c73c551",
              "tagName": "td",
              "properties": [
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
                  "uuid": "92b0f06c-57d5-4016-8b40-3664dc6cbc18",
                  "parent_uuid": "a6d281fe-0e83-4ad4-b2e7-73cf4cc4884d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "584799a6-133c-4409-876e-59d063e44cf0",
              "parent_uuid": "2eab88e4-cef2-4faa-9b1a-d4f89c73c551",
              "tagName": "td",
              "properties": [
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
                  "uuid": "eec851a4-395b-4007-a247-bcb75db259e4",
                  "parent_uuid": "584799a6-133c-4409-876e-59d063e44cf0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "f3723db4-62fa-4a0c-b3d8-17888a693bf3",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f942813-c970-4d79-a95a-ee89df50bb8c",
              "parent_uuid": "f3723db4-62fa-4a0c-b3d8-17888a693bf3",
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
              "innerHtml": "\r\n                    <span>Sensoren mit trockenem, fusselfreien Tuch reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "015984c0-8b25-4e43-ae37-f648fa04c755",
              "parent_uuid": "f3723db4-62fa-4a0c-b3d8-17888a693bf3",
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
              "uuid": "1abe6ced-984a-4705-b4c8-7f673aa8e217",
              "parent_uuid": "f3723db4-62fa-4a0c-b3d8-17888a693bf3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "77ba9912-67da-4139-8869-1c8e25a8839b",
                  "parent_uuid": "1abe6ced-984a-4705-b4c8-7f673aa8e217",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "61608ead-6b2b-46a2-aafa-904710c0b514",
              "parent_uuid": "f3723db4-62fa-4a0c-b3d8-17888a693bf3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d9f5596c-751a-4267-ab30-18989e10034e",
                  "parent_uuid": "61608ead-6b2b-46a2-aafa-904710c0b514",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cc3b2ff8-4997-4f6d-822b-870c79946519",
              "parent_uuid": "f3723db4-62fa-4a0c-b3d8-17888a693bf3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "3020297e-a716-4fad-8b17-0b91bd98cf42",
                  "parent_uuid": "cc3b2ff8-4997-4f6d-822b-870c79946519",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a036fbb4-c388-458c-8de3-e398d81dc221",
              "parent_uuid": "f3723db4-62fa-4a0c-b3d8-17888a693bf3",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f48ca3b4-e3b9-4596-99d6-7d78af86ca76",
                  "parent_uuid": "a036fbb4-c388-458c-8de3-e398d81dc221",
                  "tagName": "input",
                  "properties": [
                    [
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "a2a84576-da93-4cee-84cd-723ece14b1bc",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "17d71b38-285a-4b38-92d2-c68fed95d4dd",
              "parent_uuid": "a2a84576-da93-4cee-84cd-723ece14b1bc",
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
              "innerHtml": "\r\n                    <span>Förderstrecken reinigen (Münzablagerungen, Papierresten)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "08ab1410-f0cb-4e8b-863f-cf2be2f0ea84",
              "parent_uuid": "a2a84576-da93-4cee-84cd-723ece14b1bc",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "595c5938-d581-469d-97b4-2fbb3e657409",
              "parent_uuid": "a2a84576-da93-4cee-84cd-723ece14b1bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5d794c5d-e856-46e4-a246-a1119f46196f",
                  "parent_uuid": "595c5938-d581-469d-97b4-2fbb3e657409",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2ddde9d7-8733-4c72-88fe-648a67af2519",
              "parent_uuid": "a2a84576-da93-4cee-84cd-723ece14b1bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f8ae36a9-f62f-4cf9-ab32-7596e8af3ed6",
                  "parent_uuid": "2ddde9d7-8733-4c72-88fe-648a67af2519",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ac0184b2-9171-4fae-b947-8ec90d280941",
              "parent_uuid": "a2a84576-da93-4cee-84cd-723ece14b1bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b28daaaa-10b6-4898-b923-fac73d1a2d18",
                  "parent_uuid": "ac0184b2-9171-4fae-b947-8ec90d280941",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "74bc4487-85df-40aa-a856-85e96be5a16c",
              "parent_uuid": "a2a84576-da93-4cee-84cd-723ece14b1bc",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b23c4ff0-523f-415c-b010-c5899c541aa9",
                  "parent_uuid": "74bc4487-85df-40aa-a856-85e96be5a16c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7de55852-85a3-4413-907b-ff824eb1608e",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "095ce3e8-58d8-49c1-8ccc-9daaa6aaad0c",
              "parent_uuid": "7de55852-85a3-4413-907b-ff824eb1608e",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Roboterbereiche von Roboter 1-5 von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "36ee446c-03b6-4754-b1cf-1f1055972c3f",
              "parent_uuid": "7de55852-85a3-4413-907b-ff824eb1608e",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "3428a2ca-3291-41aa-a5f9-c850adebd231",
              "parent_uuid": "7de55852-85a3-4413-907b-ff824eb1608e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "62713618-ce1a-4e74-a96b-3ca96335ae5a",
                  "parent_uuid": "3428a2ca-3291-41aa-a5f9-c850adebd231",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "049bcd3a-6eb7-46d2-8b7a-f772b3e0f848",
              "parent_uuid": "7de55852-85a3-4413-907b-ff824eb1608e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5e95adc8-a8b5-4900-9bf7-fe9de4e6487e",
                  "parent_uuid": "049bcd3a-6eb7-46d2-8b7a-f772b3e0f848",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3dc265ba-12a3-490a-96f3-e45a0170194f",
              "parent_uuid": "7de55852-85a3-4413-907b-ff824eb1608e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "af567167-5cac-48ec-897c-9ac8616b8d7f",
                  "parent_uuid": "3dc265ba-12a3-490a-96f3-e45a0170194f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e53558a5-c229-4fde-b74f-6069f3eece81",
              "parent_uuid": "7de55852-85a3-4413-907b-ff824eb1608e",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1b1a0db0-06b9-4e23-b4df-c814cf6b8fec",
                  "parent_uuid": "e53558a5-c229-4fde-b74f-6069f3eece81",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f1abe533-cc05-42fe-8b24-cee3ccd13ec8",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "676ba2e2-3d2c-4750-8868-2e7339f611c0",
              "parent_uuid": "f1abe533-cc05-42fe-8b24-cee3ccd13ec8",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle drei Münzrollierer von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "03901e9e-8251-4ccb-8aeb-7b98807f1087",
              "parent_uuid": "f1abe533-cc05-42fe-8b24-cee3ccd13ec8",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "0f2e6413-4cee-4337-98a3-d1499d08ff7b",
              "parent_uuid": "f1abe533-cc05-42fe-8b24-cee3ccd13ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "635e784a-6cf4-4b38-8301-c5ed34dbb318",
                  "parent_uuid": "0f2e6413-4cee-4337-98a3-d1499d08ff7b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cd891ddc-b25c-412a-8294-828c49133487",
              "parent_uuid": "f1abe533-cc05-42fe-8b24-cee3ccd13ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6147de14-3adf-488a-bfb0-666d1f86ff78",
                  "parent_uuid": "cd891ddc-b25c-412a-8294-828c49133487",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f6b88b3d-eb07-4642-bd6d-7f8529085f34",
              "parent_uuid": "f1abe533-cc05-42fe-8b24-cee3ccd13ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e9540262-c82f-4b4d-814a-13bd8a4aed53",
                  "parent_uuid": "f6b88b3d-eb07-4642-bd6d-7f8529085f34",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "477fbad6-891c-4837-ae82-4c6680fb9277",
              "parent_uuid": "f1abe533-cc05-42fe-8b24-cee3ccd13ec8",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d4989147-a159-480f-9e02-283c939646ab",
                  "parent_uuid": "477fbad6-891c-4837-ae82-4c6680fb9277",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f62527eb-538d-4500-99b3-c11b36f529de",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "736084e8-7725-42bd-8192-f5d7b06deba7",
              "parent_uuid": "f62527eb-538d-4500-99b3-c11b36f529de",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kartonsverschliesser von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7f72439a-2c9d-4878-871e-32539d2b0b6c",
              "parent_uuid": "f62527eb-538d-4500-99b3-c11b36f529de",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6fb7eab0-0fb3-4c92-928d-822ab0efbc26",
              "parent_uuid": "f62527eb-538d-4500-99b3-c11b36f529de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e263056b-b6f4-4faa-808f-5ccba58f1c96",
                  "parent_uuid": "6fb7eab0-0fb3-4c92-928d-822ab0efbc26",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4cfbd1b-b4f7-484a-b67f-3f9c6d1cc4ed",
              "parent_uuid": "f62527eb-538d-4500-99b3-c11b36f529de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "dbf88b46-7e51-4dde-8313-8e66118b3fc2",
                  "parent_uuid": "f4cfbd1b-b4f7-484a-b67f-3f9c6d1cc4ed",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e1b6e16c-9c71-4f6e-8df8-74c70b6b3bb5",
              "parent_uuid": "f62527eb-538d-4500-99b3-c11b36f529de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "71b57cac-9b1b-401d-9b21-42c9e1815831",
                  "parent_uuid": "e1b6e16c-9c71-4f6e-8df8-74c70b6b3bb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3a7882d4-0e33-4398-8570-12c1264308e3",
              "parent_uuid": "f62527eb-538d-4500-99b3-c11b36f529de",
              "tagName": "td",
              "properties": [
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
                  "uuid": "95b46407-7892-41a4-9e57-9aede225787e",
                  "parent_uuid": "3a7882d4-0e33-4398-8570-12c1264308e3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "dc0d038e-fb49-4ce4-9a4c-8226ec61f440",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e82f881a-f7e1-41ad-a56a-c24224a33147",
              "parent_uuid": "dc0d038e-fb49-4ce4-9a4c-8226ec61f440",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bereich der Strapex Bindegeräte von Verschmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "db974f78-749a-4260-bb68-0b47b413cbe2",
              "parent_uuid": "dc0d038e-fb49-4ce4-9a4c-8226ec61f440",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "784835c0-215f-42d9-a396-5b7d86c1b76c",
              "parent_uuid": "dc0d038e-fb49-4ce4-9a4c-8226ec61f440",
              "tagName": "td",
              "properties": [
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
                  "uuid": "55600271-caf2-467a-8cc2-ec09e42f5e14",
                  "parent_uuid": "784835c0-215f-42d9-a396-5b7d86c1b76c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "66fa93a5-b0ad-491e-9673-1cf4d7062426",
              "parent_uuid": "dc0d038e-fb49-4ce4-9a4c-8226ec61f440",
              "tagName": "td",
              "properties": [
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
                  "uuid": "395e372e-5d29-4570-b931-91fad2c38088",
                  "parent_uuid": "66fa93a5-b0ad-491e-9673-1cf4d7062426",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b0a9c35e-46b3-46c3-a84a-524d483e1bb0",
              "parent_uuid": "dc0d038e-fb49-4ce4-9a4c-8226ec61f440",
              "tagName": "td",
              "properties": [
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
                  "uuid": "bce6d0aa-648e-4c10-8288-c283b73a30bd",
                  "parent_uuid": "b0a9c35e-46b3-46c3-a84a-524d483e1bb0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6a12b4cd-dfdb-421e-82ab-a2e3bc8ce4f7",
              "parent_uuid": "dc0d038e-fb49-4ce4-9a4c-8226ec61f440",
              "tagName": "td",
              "properties": [
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
                  "uuid": "f9f7c7fa-5fb3-4244-a3e4-5242a119685f",
                  "parent_uuid": "6a12b4cd-dfdb-421e-82ab-a2e3bc8ce4f7",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6f4032db-7842-42d7-9d19-14635dd4c4e7",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "91bebbc2-e957-417f-89f3-593b2f02b29e",
              "parent_uuid": "6f4032db-7842-42d7-9d19-14635dd4c4e7",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "11"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "bcafae16-6f79-49ab-b884-d4b937e72598",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a90271a-c7b7-46e6-a423-50a059471748",
              "parent_uuid": "bcafae16-6f79-49ab-b884-d4b937e72598",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Etikettierer von Verschmmutzungen reinigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a73ab135-0375-47a8-ba85-34d89d01b51f",
              "parent_uuid": "bcafae16-6f79-49ab-b884-d4b937e72598",
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
              "innerHtml": "\r\n                    <span>3M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "803e96f6-5afd-4f79-bc75-573036fee424",
              "parent_uuid": "bcafae16-6f79-49ab-b884-d4b937e72598",
              "tagName": "td",
              "properties": [
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
                  "uuid": "6eabd6ce-bc34-4477-bc23-728aae097409",
                  "parent_uuid": "803e96f6-5afd-4f79-bc75-573036fee424",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b2ddd6ed-01a6-4a98-9e65-7fabf56e57e4",
              "parent_uuid": "bcafae16-6f79-49ab-b884-d4b937e72598",
              "tagName": "td",
              "properties": [
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
                  "uuid": "286b745b-6116-4a67-9335-79682880d27c",
                  "parent_uuid": "b2ddd6ed-01a6-4a98-9e65-7fabf56e57e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e66410c2-f148-4541-8b54-214ce6be07ca",
              "parent_uuid": "bcafae16-6f79-49ab-b884-d4b937e72598",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9ed7887e-9a1c-40fe-b1d0-58b874c17a1c",
                  "parent_uuid": "e66410c2-f148-4541-8b54-214ce6be07ca",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "009c8798-bb95-4dc7-946f-51d5addda56a",
              "parent_uuid": "bcafae16-6f79-49ab-b884-d4b937e72598",
              "tagName": "td",
              "properties": [
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
                  "uuid": "0890a575-62e5-45e5-94d4-6b8ec24f91e2",
                  "parent_uuid": "009c8798-bb95-4dc7-946f-51d5addda56a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "efe06f49-755d-4157-9962-2fd67516045b",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e89286d8-90c8-4890-b02e-069db97e0ef8",
              "parent_uuid": "efe06f49-755d-4157-9962-2fd67516045b",
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
                  "38"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen ob die Daten auf der Datenablage auf dem NAS abgelegt werden, Speicher-platzbelegung prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0190310c-99a9-4750-8c17-52b1d40509bb",
              "parent_uuid": "efe06f49-755d-4157-9962-2fd67516045b",
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
              "innerHtml": "\r\n                    <span>1M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "f6065420-be40-49a7-9c95-c436f737ea04",
              "parent_uuid": "efe06f49-755d-4157-9962-2fd67516045b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d9290bc3-c40f-478e-8da9-a3e4fba2b737",
                  "parent_uuid": "f6065420-be40-49a7-9c95-c436f737ea04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8b6d1c30-e694-46b8-9a81-1555245e5af3",
              "parent_uuid": "efe06f49-755d-4157-9962-2fd67516045b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "28dd445d-8dbd-4c3d-a5a6-8e90e3c63c16",
                  "parent_uuid": "8b6d1c30-e694-46b8-9a81-1555245e5af3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4679b15a-fab9-4641-b188-a1c51821500c",
              "parent_uuid": "efe06f49-755d-4157-9962-2fd67516045b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "90e834dd-d02b-4840-9824-633205d55c38",
                  "parent_uuid": "4679b15a-fab9-4641-b188-a1c51821500c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cdb7fc5-b248-43f7-96d6-9bfe557623c5",
              "parent_uuid": "efe06f49-755d-4157-9962-2fd67516045b",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b3520799-6f2d-4fa3-a480-3816b5541580",
                  "parent_uuid": "5cdb7fc5-b248-43f7-96d6-9bfe557623c5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2113dc51-65b5-464b-9767-e8ddfcbbb445",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32e01698-183b-4511-9e4e-e89f1ff6a7bd",
              "parent_uuid": "2113dc51-65b5-464b-9767-e8ddfcbbb445",
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
          "uuid": "920c7dcc-363a-4511-b09a-ab4ffa36e57f",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "20f980bd-68e7-42e5-8a92-073fec046866",
              "parent_uuid": "920c7dcc-363a-4511-b09a-ab4ffa36e57f",
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
          "uuid": "d12be116-55bb-48c9-a2cb-a56d8f1b150d",
          "parent_uuid": "81f867b8-2145-453e-ab76-2cf4e16c4079",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6fef6e39-c7dd-45e7-bc7d-48fe863abf19",
              "parent_uuid": "d12be116-55bb-48c9-a2cb-a56d8f1b150d",
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
                  "uuid": "dcb4f66e-d7bd-470f-81a4-5dd428a98bdc",
                  "parent_uuid": "6fef6e39-c7dd-45e7-bc7d-48fe863abf19",
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
    ,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS cl_uid 
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
		,'1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '1F6BEE57-38A8-4B29-9986-BFAD7D107215'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

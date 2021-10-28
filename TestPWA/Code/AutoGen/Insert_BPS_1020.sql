
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
  "uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "c8bf2d0a-b082-4881-95cc-fa4a7110b667",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "2e275330-4378-47ac-bc4d-002329ebe979",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "feac7014-b4a0-4fdb-9f7c-3a9dc2e728d8",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "db8f6d92-eed7-4e33-828f-ecd22361f468",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "922b80ad-57a2-4240-9cee-66728091c9af",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "9136e06d-9ae9-4dec-a5ae-2f7068008dd9",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "8afa634a-49e8-481e-a56a-f19d868ad6f6",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
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
      "uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
      "parent_uuid": "e4791833-91be-4fe2-8c97-f6be63bdc161",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "d5ee6e45-acce-4da2-97cc-5df53478335a",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "74d82975-b8c3-4524-89ec-e2a12211e66e",
              "parent_uuid": "d5ee6e45-acce-4da2-97cc-5df53478335a",
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
              "uuid": "14f065ca-b417-4190-ae59-8374e1816fc2",
              "parent_uuid": "d5ee6e45-acce-4da2-97cc-5df53478335a",
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
              "uuid": "0bffc3dc-eb64-40a0-b156-3fee6729ca79",
              "parent_uuid": "d5ee6e45-acce-4da2-97cc-5df53478335a",
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
              "uuid": "6e0782ca-5e11-44e1-9cce-547ca2de3bca",
              "parent_uuid": "d5ee6e45-acce-4da2-97cc-5df53478335a",
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
          "uuid": "41995f3e-4ccc-4eeb-8700-b1555388446e",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "f510e2ff-cc07-47d2-bbdf-7a585a400499",
              "parent_uuid": "41995f3e-4ccc-4eeb-8700-b1555388446e",
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
              "uuid": "3c61d5f2-251a-40c2-a357-d896fdcc7bc5",
              "parent_uuid": "41995f3e-4ccc-4eeb-8700-b1555388446e",
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
              "uuid": "dc1b5bc4-664a-4844-947d-a2a32ea80bc5",
              "parent_uuid": "41995f3e-4ccc-4eeb-8700-b1555388446e",
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
              "uuid": "3253c387-df66-4590-b365-793b0e88224a",
              "parent_uuid": "41995f3e-4ccc-4eeb-8700-b1555388446e",
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
          "uuid": "c93382ab-ffb8-496b-8eba-d4215e3d10ac",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "c0349894-d160-4a29-be26-f80a501931e3",
              "parent_uuid": "c93382ab-ffb8-496b-8eba-d4215e3d10ac",
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
              "uuid": "1b541ed5-c279-4121-8c23-810b7e72a40e",
              "parent_uuid": "c93382ab-ffb8-496b-8eba-d4215e3d10ac",
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
              "uuid": "2793e911-da86-4b5a-a058-05b472c1b1ef",
              "parent_uuid": "c93382ab-ffb8-496b-8eba-d4215e3d10ac",
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
              "uuid": "2f643aa2-70d4-4142-a375-e3e314131fb0",
              "parent_uuid": "c93382ab-ffb8-496b-8eba-d4215e3d10ac",
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
          "uuid": "8f646906-7670-4883-b942-a242b92032eb",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "749705e1-eb5c-431a-a861-43b749e2460d",
              "parent_uuid": "8f646906-7670-4883-b942-a242b92032eb",
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
              "uuid": "ae992b7c-8929-4957-9d84-d8e80d1a7ea5",
              "parent_uuid": "8f646906-7670-4883-b942-a242b92032eb",
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
              "uuid": "6d4f9a83-22e5-4b40-800f-188f5a6118e6",
              "parent_uuid": "8f646906-7670-4883-b942-a242b92032eb",
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
              "uuid": "b11aee85-4e0f-4390-98a4-def8c080e782",
              "parent_uuid": "8f646906-7670-4883-b942-a242b92032eb",
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
              "uuid": "e91ef47f-aed9-42b4-8f67-de1b73fd5833",
              "parent_uuid": "8f646906-7670-4883-b942-a242b92032eb",
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
              "uuid": "fc94e9ff-b346-477f-b5a3-5a9ddd5ad17b",
              "parent_uuid": "8f646906-7670-4883-b942-a242b92032eb",
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
          "uuid": "1358c57f-deb0-44ca-b996-a830ee8a6f84",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4372b471-b702-4d04-93e5-f3f3ad3bfc7a",
              "parent_uuid": "1358c57f-deb0-44ca-b996-a830ee8a6f84",
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
          "uuid": "89bd23db-a672-439b-a499-dafd117d3a37",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41d01443-52c6-47fe-b18c-9892e83790ae",
              "parent_uuid": "89bd23db-a672-439b-a499-dafd117d3a37",
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
              "uuid": "1a0b3fe6-441a-4389-8ac9-66ec9e43fe90",
              "parent_uuid": "89bd23db-a672-439b-a499-dafd117d3a37",
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
              "uuid": "ab64883b-2144-45d0-a007-309678eed12b",
              "parent_uuid": "89bd23db-a672-439b-a499-dafd117d3a37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "aeee3475-2305-4a89-abcb-d1064982f562",
                  "parent_uuid": "ab64883b-2144-45d0-a007-309678eed12b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6efca721-9a40-44f0-87e5-85d3af3eb90e",
              "parent_uuid": "89bd23db-a672-439b-a499-dafd117d3a37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "46333cf0-2e35-442d-9f03-68ed9921ca61",
                  "parent_uuid": "6efca721-9a40-44f0-87e5-85d3af3eb90e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "83dfacad-c286-478d-a85c-9d09e11e276a",
              "parent_uuid": "89bd23db-a672-439b-a499-dafd117d3a37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "353e981d-ff67-4999-bf59-fa29116dffb9",
                  "parent_uuid": "83dfacad-c286-478d-a85c-9d09e11e276a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "04a20470-27db-4610-92cd-f1616d308b96",
              "parent_uuid": "89bd23db-a672-439b-a499-dafd117d3a37",
              "tagName": "td",
              "properties": [
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
                  "uuid": "a2f59dfa-40fc-4885-8917-fd8d1816e09c",
                  "parent_uuid": "04a20470-27db-4610-92cd-f1616d308b96",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ec202ddc-5758-45d8-8d44-79fea3d145f6",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aa9ff629-7eed-4c89-aab4-d979b2104bc0",
              "parent_uuid": "ec202ddc-5758-45d8-8d44-79fea3d145f6",
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
              "uuid": "4ce62f14-6e80-4bbf-a840-9cc6895d4015",
              "parent_uuid": "ec202ddc-5758-45d8-8d44-79fea3d145f6",
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
              "uuid": "7c7b1f08-7009-4393-894e-9c4186573f0d",
              "parent_uuid": "ec202ddc-5758-45d8-8d44-79fea3d145f6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "e5adb52b-1e1f-4be8-bbfc-1a99ee267dd0",
                  "parent_uuid": "7c7b1f08-7009-4393-894e-9c4186573f0d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bad8fe12-574b-44a0-a568-9c1803db2cb2",
              "parent_uuid": "ec202ddc-5758-45d8-8d44-79fea3d145f6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "4fbd3d3f-6ec4-41ec-a2ee-21b9c28f10a6",
                  "parent_uuid": "bad8fe12-574b-44a0-a568-9c1803db2cb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d15ba2a5-a156-4800-943a-5c2fe264927a",
              "parent_uuid": "ec202ddc-5758-45d8-8d44-79fea3d145f6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "9170b6e6-77c2-407c-8cec-933c0e2ca772",
                  "parent_uuid": "d15ba2a5-a156-4800-943a-5c2fe264927a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb42596f-2bcf-47e5-882d-bd12ec573e5e",
              "parent_uuid": "ec202ddc-5758-45d8-8d44-79fea3d145f6",
              "tagName": "td",
              "properties": [
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
                  "uuid": "5d20ba9b-97b9-4450-8aa5-bbb084808627",
                  "parent_uuid": "eb42596f-2bcf-47e5-882d-bd12ec573e5e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c327b8c5-7ff3-4304-b932-39f3186c2227",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a7c92818-c0c2-401a-84d7-6f97462d49f8",
              "parent_uuid": "c327b8c5-7ff3-4304-b932-39f3186c2227",
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
              "uuid": "a3c3f9fa-583c-457b-b2cc-ef155d86c710",
              "parent_uuid": "c327b8c5-7ff3-4304-b932-39f3186c2227",
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
              "uuid": "4db0cff2-c216-425c-87f7-ec693abf809d",
              "parent_uuid": "c327b8c5-7ff3-4304-b932-39f3186c2227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "936c9fb6-aa76-412c-ad10-0b730e038da9",
                  "parent_uuid": "4db0cff2-c216-425c-87f7-ec693abf809d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b28713c3-fb5e-40b1-90f2-efbcfd2e7adb",
              "parent_uuid": "c327b8c5-7ff3-4304-b932-39f3186c2227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "41ac0fbf-3655-451e-8a49-5d4c53fcca9a",
                  "parent_uuid": "b28713c3-fb5e-40b1-90f2-efbcfd2e7adb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4555c4df-1bb1-4154-b58f-6fe45a23eacf",
              "parent_uuid": "c327b8c5-7ff3-4304-b932-39f3186c2227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4a4c3ef-59dd-47d8-ab84-5143f59b9be0",
                  "parent_uuid": "4555c4df-1bb1-4154-b58f-6fe45a23eacf",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f958c8ab-3d11-46a0-aa35-ca2d826260e0",
              "parent_uuid": "c327b8c5-7ff3-4304-b932-39f3186c2227",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d621de8d-a713-4fe9-83c0-009e7771e3b5",
                  "parent_uuid": "f958c8ab-3d11-46a0-aa35-ca2d826260e0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fbbe5006-5a50-4b09-92d1-be4b00f5d54c",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41b594b2-e9f6-4187-a322-a9f0a01bf3a5",
              "parent_uuid": "fbbe5006-5a50-4b09-92d1-be4b00f5d54c",
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
              "uuid": "19bdf802-64f3-4909-91d4-1d06ce7e656e",
              "parent_uuid": "fbbe5006-5a50-4b09-92d1-be4b00f5d54c",
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
              "uuid": "35c439c7-a845-4941-9cd7-cac4bb2a44de",
              "parent_uuid": "fbbe5006-5a50-4b09-92d1-be4b00f5d54c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "07874377-66aa-4918-b892-eeb07f8ec56f",
                  "parent_uuid": "35c439c7-a845-4941-9cd7-cac4bb2a44de",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "fcb223aa-7140-4d13-a56d-2b75e88baa1c",
              "parent_uuid": "fbbe5006-5a50-4b09-92d1-be4b00f5d54c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab6aaa38-5b67-4c30-b042-03438a533a60",
                  "parent_uuid": "fcb223aa-7140-4d13-a56d-2b75e88baa1c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3b88dbc-6cba-4bef-a1a0-b2afe2cb2b1d",
              "parent_uuid": "fbbe5006-5a50-4b09-92d1-be4b00f5d54c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "045ae5c9-91b5-4973-a00c-37244d977ad8",
                  "parent_uuid": "e3b88dbc-6cba-4bef-a1a0-b2afe2cb2b1d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "bde97414-8398-4780-a826-721945b391a4",
              "parent_uuid": "fbbe5006-5a50-4b09-92d1-be4b00f5d54c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "12cdfb0c-8bdf-402c-bd3c-e752c55fbca2",
                  "parent_uuid": "bde97414-8398-4780-a826-721945b391a4",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9dd41796-707b-4ced-9993-20b6b9d2b0b9",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "db1e974c-a30e-46dc-b741-9e64c010e942",
              "parent_uuid": "9dd41796-707b-4ced-9993-20b6b9d2b0b9",
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
              "uuid": "beedc6d8-ad9d-41c7-a4ee-e285f9408593",
              "parent_uuid": "9dd41796-707b-4ced-9993-20b6b9d2b0b9",
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
              "uuid": "7571e7d2-824d-422f-9a48-60299575b1c7",
              "parent_uuid": "9dd41796-707b-4ced-9993-20b6b9d2b0b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c98736d4-f790-4682-987c-40418bce4606",
                  "parent_uuid": "7571e7d2-824d-422f-9a48-60299575b1c7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "41c325d9-106c-4773-9dd4-714ee4c3aa65",
              "parent_uuid": "9dd41796-707b-4ced-9993-20b6b9d2b0b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b76315be-6af9-4555-8b73-5bf47ca67dc4",
                  "parent_uuid": "41c325d9-106c-4773-9dd4-714ee4c3aa65",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e15de1a6-a594-4677-9394-8c340f7ef268",
              "parent_uuid": "9dd41796-707b-4ced-9993-20b6b9d2b0b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8f1d94e-2765-4a01-9f27-06e72c8c301f",
                  "parent_uuid": "e15de1a6-a594-4677-9394-8c340f7ef268",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ae1da2d3-d94a-4622-a968-30b26f309cf5",
              "parent_uuid": "9dd41796-707b-4ced-9993-20b6b9d2b0b9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "72b609ce-ab5c-4e25-96e2-33ca0366a99a",
                  "parent_uuid": "ae1da2d3-d94a-4622-a968-30b26f309cf5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b662be67-6228-4e5a-a5b4-f69620260c9d",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ee6a5a08-7669-4bca-bce7-c5b8d76b5b73",
              "parent_uuid": "b662be67-6228-4e5a-a5b4-f69620260c9d",
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
              "uuid": "46afd441-420d-4bb4-8517-335916813ac8",
              "parent_uuid": "b662be67-6228-4e5a-a5b4-f69620260c9d",
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
              "uuid": "dc08da6e-c83d-4212-9e07-c7d14b95b9d5",
              "parent_uuid": "b662be67-6228-4e5a-a5b4-f69620260c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "817d7e3f-5c7f-44cb-a673-d7cae1cd3778",
                  "parent_uuid": "dc08da6e-c83d-4212-9e07-c7d14b95b9d5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7a6da1d9-171f-4749-8a00-6aa00e07e862",
              "parent_uuid": "b662be67-6228-4e5a-a5b4-f69620260c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e7405a66-dbcb-4b98-8256-9b5d452be860",
                  "parent_uuid": "7a6da1d9-171f-4749-8a00-6aa00e07e862",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e156789a-59f4-4bf4-a3ca-42b67dd267ba",
              "parent_uuid": "b662be67-6228-4e5a-a5b4-f69620260c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a5656c39-086d-427c-b5d9-b28cf503739d",
                  "parent_uuid": "e156789a-59f4-4bf4-a3ca-42b67dd267ba",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0f212e8-ec5e-404a-801c-52609ad6fd68",
              "parent_uuid": "b662be67-6228-4e5a-a5b4-f69620260c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ae854b51-adaf-41d1-b7a6-d424c5d1d8e9",
                  "parent_uuid": "d0f212e8-ec5e-404a-801c-52609ad6fd68",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "78dd3bf0-3d0c-4e4e-a9b4-d24f3b7b700c",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7b548265-3199-4410-aaf3-2850339e0784",
              "parent_uuid": "78dd3bf0-3d0c-4e4e-a9b4-d24f3b7b700c",
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
              "uuid": "8d5cd264-170a-486f-b77d-ec071a77c980",
              "parent_uuid": "78dd3bf0-3d0c-4e4e-a9b4-d24f3b7b700c",
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
              "uuid": "d19203c9-028b-45a6-b356-e2a5f85b9483",
              "parent_uuid": "78dd3bf0-3d0c-4e4e-a9b4-d24f3b7b700c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ade2ac44-4b32-47e1-8892-0aed2f285bf3",
                  "parent_uuid": "d19203c9-028b-45a6-b356-e2a5f85b9483",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a35c5a4c-965e-44dd-9e0b-4c7eb1ed59ac",
              "parent_uuid": "78dd3bf0-3d0c-4e4e-a9b4-d24f3b7b700c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e7b9086-3019-4253-a36d-d78fa8dff8d1",
                  "parent_uuid": "a35c5a4c-965e-44dd-9e0b-4c7eb1ed59ac",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "053d1d2c-bae4-4a78-a61f-e125ba40a55f",
              "parent_uuid": "78dd3bf0-3d0c-4e4e-a9b4-d24f3b7b700c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "87691f3f-a96a-4bf2-b783-da030e1d833e",
                  "parent_uuid": "053d1d2c-bae4-4a78-a61f-e125ba40a55f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d74dc38a-39bc-44a5-9865-56196e708d27",
              "parent_uuid": "78dd3bf0-3d0c-4e4e-a9b4-d24f3b7b700c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0e7af602-ba13-4b6c-8ee8-f17efdec7095",
                  "parent_uuid": "d74dc38a-39bc-44a5-9865-56196e708d27",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "fc5e99aa-ebc5-4a12-8804-2028230234d9",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca05ff4b-af1a-453c-82ca-bda37900ad00",
              "parent_uuid": "fc5e99aa-ebc5-4a12-8804-2028230234d9",
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
              "uuid": "f06c9878-d03b-47ff-91a9-a8544b2b856d",
              "parent_uuid": "fc5e99aa-ebc5-4a12-8804-2028230234d9",
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
              "uuid": "9513eed8-2e20-4908-aebc-284c2d13fa1f",
              "parent_uuid": "fc5e99aa-ebc5-4a12-8804-2028230234d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61a28ef5-3035-42cf-a3fd-c34173846560",
                  "parent_uuid": "9513eed8-2e20-4908-aebc-284c2d13fa1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3ebc9ba0-4f00-4c91-be8d-e89e667e07fb",
              "parent_uuid": "fc5e99aa-ebc5-4a12-8804-2028230234d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5bbfbd96-6144-48a5-8bf0-ddb5987e1ec5",
                  "parent_uuid": "3ebc9ba0-4f00-4c91-be8d-e89e667e07fb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e65b64d8-2710-4b68-b4f7-dcc534ee41eb",
              "parent_uuid": "fc5e99aa-ebc5-4a12-8804-2028230234d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "39014a08-b430-49b0-b735-ccb50899cd2e",
                  "parent_uuid": "e65b64d8-2710-4b68-b4f7-dcc534ee41eb",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e3aaa488-bd84-45ce-abce-00bab7404f2d",
              "parent_uuid": "fc5e99aa-ebc5-4a12-8804-2028230234d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "414c05d2-74fa-4a51-bdd6-c8991dca7e27",
                  "parent_uuid": "e3aaa488-bd84-45ce-abce-00bab7404f2d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "de59c60e-d3e0-46d3-9f43-c1a0ba550578",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab79fd6c-7072-463b-b946-6446b029a197",
              "parent_uuid": "de59c60e-d3e0-46d3-9f43-c1a0ba550578",
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
              "uuid": "9068840b-2f4c-4a9d-8afe-f2a414b054b5",
              "parent_uuid": "de59c60e-d3e0-46d3-9f43-c1a0ba550578",
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
              "uuid": "6ed18b45-64fb-4896-a3e2-f73754691d83",
              "parent_uuid": "de59c60e-d3e0-46d3-9f43-c1a0ba550578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5ff820f0-eb3e-4930-ba64-f89c7a1b4ffc",
                  "parent_uuid": "6ed18b45-64fb-4896-a3e2-f73754691d83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0d2c63ca-2011-488e-b805-cfdcceb3103a",
              "parent_uuid": "de59c60e-d3e0-46d3-9f43-c1a0ba550578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e3f56322-05df-4ca1-a983-49913e836991",
                  "parent_uuid": "0d2c63ca-2011-488e-b805-cfdcceb3103a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f53c50c9-4b1c-4c89-98d1-6b14e5e30a18",
              "parent_uuid": "de59c60e-d3e0-46d3-9f43-c1a0ba550578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "08eac751-ef17-49ef-9ba1-17fcaf787713",
                  "parent_uuid": "f53c50c9-4b1c-4c89-98d1-6b14e5e30a18",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0d7ddde-e7d6-4f19-b5f3-3c1fb144a9fb",
              "parent_uuid": "de59c60e-d3e0-46d3-9f43-c1a0ba550578",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "57fa1cec-31e9-48cb-9d32-98b84f4b88d1",
                  "parent_uuid": "e0d7ddde-e7d6-4f19-b5f3-3c1fb144a9fb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "c362944c-5674-4c67-808e-5ea0ee17da50",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a591cb01-7f74-4529-8d92-061311b268b7",
              "parent_uuid": "c362944c-5674-4c67-808e-5ea0ee17da50",
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
              "uuid": "918046b4-422d-4ba8-a9db-652176777af0",
              "parent_uuid": "c362944c-5674-4c67-808e-5ea0ee17da50",
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
              "uuid": "1dda3c35-2847-4316-a981-a64292a10b1a",
              "parent_uuid": "c362944c-5674-4c67-808e-5ea0ee17da50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c0d18e9b-3a68-4177-817d-534669fe69c6",
                  "parent_uuid": "1dda3c35-2847-4316-a981-a64292a10b1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f905ea9b-0916-43bd-ac6d-d025996b9704",
              "parent_uuid": "c362944c-5674-4c67-808e-5ea0ee17da50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8c7781a3-5022-4262-bfef-3690a2a7e516",
                  "parent_uuid": "f905ea9b-0916-43bd-ac6d-d025996b9704",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc96ed5c-1d0b-46b1-a6c0-1bbd4161177f",
              "parent_uuid": "c362944c-5674-4c67-808e-5ea0ee17da50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7d3dc926-230d-4105-90d7-dae08e347fad",
                  "parent_uuid": "dc96ed5c-1d0b-46b1-a6c0-1bbd4161177f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c60498e9-08b2-4229-adeb-9ea5a7114bf1",
              "parent_uuid": "c362944c-5674-4c67-808e-5ea0ee17da50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ae18d8e-cd78-491e-83b4-e5db2a713c20",
                  "parent_uuid": "c60498e9-08b2-4229-adeb-9ea5a7114bf1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4e9a1c20-7523-4dc1-92cc-c79de7db82b1",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d73bc9b7-dfc6-439e-90b4-38f304fa0033",
              "parent_uuid": "4e9a1c20-7523-4dc1-92cc-c79de7db82b1",
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
              "uuid": "27ea3c5a-c450-49d5-b643-13118e3de42f",
              "parent_uuid": "4e9a1c20-7523-4dc1-92cc-c79de7db82b1",
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
              "uuid": "3eecc283-cd13-4f0e-b1a7-589ac3cdc733",
              "parent_uuid": "4e9a1c20-7523-4dc1-92cc-c79de7db82b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "462b2777-3dff-42e8-adda-a5174af8cb3f",
                  "parent_uuid": "3eecc283-cd13-4f0e-b1a7-589ac3cdc733",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "eb910a2a-63b6-4c21-83b0-3e567960786e",
              "parent_uuid": "4e9a1c20-7523-4dc1-92cc-c79de7db82b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cfd3cf4b-6f5a-4f8d-8ff0-8359195fed3b",
                  "parent_uuid": "eb910a2a-63b6-4c21-83b0-3e567960786e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "599796e5-0b75-434e-af32-c42b17913d89",
              "parent_uuid": "4e9a1c20-7523-4dc1-92cc-c79de7db82b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f637db2c-496c-432a-aae6-da5043b8df12",
                  "parent_uuid": "599796e5-0b75-434e-af32-c42b17913d89",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0a77da2-f680-4f11-a6bf-738bc5c0b280",
              "parent_uuid": "4e9a1c20-7523-4dc1-92cc-c79de7db82b1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f20101bb-4b9d-4d2c-ac15-51bb983edba7",
                  "parent_uuid": "d0a77da2-f680-4f11-a6bf-738bc5c0b280",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9bf9da58-f878-4e9b-a236-87f386c492f8",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "718c63ff-ade7-4369-8353-26214a03f4a5",
              "parent_uuid": "9bf9da58-f878-4e9b-a236-87f386c492f8",
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
              "uuid": "4e925727-7663-496a-982b-3a70c7745c6d",
              "parent_uuid": "9bf9da58-f878-4e9b-a236-87f386c492f8",
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
              "uuid": "c9c1e6aa-b649-44e8-95de-82f79508a3af",
              "parent_uuid": "9bf9da58-f878-4e9b-a236-87f386c492f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "890e22f9-0eae-43fc-b0f0-6a8d1c428a59",
                  "parent_uuid": "c9c1e6aa-b649-44e8-95de-82f79508a3af",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6dc67baf-a540-4ba1-9872-a024a6f1a41a",
              "parent_uuid": "9bf9da58-f878-4e9b-a236-87f386c492f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9855773-1c6c-4e87-a345-3bbceb37b89d",
                  "parent_uuid": "6dc67baf-a540-4ba1-9872-a024a6f1a41a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f4b2d9ba-d300-48b3-8085-b34b3aed2a83",
              "parent_uuid": "9bf9da58-f878-4e9b-a236-87f386c492f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7010174b-4f86-44a5-ba55-328b457e434d",
                  "parent_uuid": "f4b2d9ba-d300-48b3-8085-b34b3aed2a83",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f3ecef9-93df-4391-a1ef-b21a10b82f4e",
              "parent_uuid": "9bf9da58-f878-4e9b-a236-87f386c492f8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "280b3dba-bf1c-47bc-b2c1-7bb9d451dcad",
                  "parent_uuid": "2f3ecef9-93df-4391-a1ef-b21a10b82f4e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6b8979f2-a3f7-4f83-bd80-67d97015dacb",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f956af1-298a-4c37-8efd-3ed52b5e4802",
              "parent_uuid": "6b8979f2-a3f7-4f83-bd80-67d97015dacb",
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
          "uuid": "ea6a2c72-6223-4094-9aca-c8cf2f1852f5",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b871dc0-ece9-4df7-a48b-edc25673b542",
              "parent_uuid": "ea6a2c72-6223-4094-9aca-c8cf2f1852f5",
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
          "uuid": "0e948c13-8988-44bb-8a4c-404336e0e137",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "639086c2-42b8-4c77-b427-24ae4239c9df",
              "parent_uuid": "0e948c13-8988-44bb-8a4c-404336e0e137",
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
                  "uuid": "a065202e-9035-415a-b778-522670cbbef2",
                  "parent_uuid": "639086c2-42b8-4c77-b427-24ae4239c9df",
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
          "uuid": "bbd8d1a5-e3f1-4a7d-8ea1-5756f12797d1",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55fad811-23ef-4ed7-a7d7-0b5a1e7446e7",
              "parent_uuid": "bbd8d1a5-e3f1-4a7d-8ea1-5756f12797d1",
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
          "uuid": "05fb1cdb-2ffa-410e-923a-d06d0de57aa1",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "415a95d3-169f-4e49-a0e9-1246ca069643",
              "parent_uuid": "05fb1cdb-2ffa-410e-923a-d06d0de57aa1",
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
          "uuid": "104dd6ea-3393-441d-8e14-50b908ad90fe",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "086519de-5b74-412e-a5e5-f51bb6ff86ab",
              "parent_uuid": "104dd6ea-3393-441d-8e14-50b908ad90fe",
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
              "uuid": "a3792981-e7d9-4c82-ac7c-663c1d8d3b4c",
              "parent_uuid": "104dd6ea-3393-441d-8e14-50b908ad90fe",
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
              "uuid": "be9850d6-a37e-47d0-a29d-be5d3fc60471",
              "parent_uuid": "104dd6ea-3393-441d-8e14-50b908ad90fe",
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
              "uuid": "e6dad2db-d123-411c-b659-39b1abd12b46",
              "parent_uuid": "104dd6ea-3393-441d-8e14-50b908ad90fe",
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
              "uuid": "3da40edd-f753-4484-8c29-9e522b98403f",
              "parent_uuid": "104dd6ea-3393-441d-8e14-50b908ad90fe",
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
              "uuid": "227e93d8-57ca-4a39-86f0-f2f39c4507a5",
              "parent_uuid": "104dd6ea-3393-441d-8e14-50b908ad90fe",
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
          "uuid": "35011198-608b-46eb-8d48-afab8df9621c",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0ca18043-9e42-4c45-b8cb-8329914bc1df",
              "parent_uuid": "35011198-608b-46eb-8d48-afab8df9621c",
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
              "uuid": "3876eaee-e68a-4d96-9482-b0b6f12d05fc",
              "parent_uuid": "35011198-608b-46eb-8d48-afab8df9621c",
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
              "uuid": "c3242077-db69-4e89-a0a6-0b19e85e2b67",
              "parent_uuid": "35011198-608b-46eb-8d48-afab8df9621c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "63f855de-17db-4417-a329-223fb37d1566",
                  "parent_uuid": "c3242077-db69-4e89-a0a6-0b19e85e2b67",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "45ab0919-0825-415a-8cd9-661e97181187",
              "parent_uuid": "35011198-608b-46eb-8d48-afab8df9621c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8f10b8c7-2768-4980-bd85-9827edb7368f",
                  "parent_uuid": "45ab0919-0825-415a-8cd9-661e97181187",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f8ca1b78-5e92-4836-98cc-011b71bd6a48",
              "parent_uuid": "35011198-608b-46eb-8d48-afab8df9621c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "04632181-59ee-40d6-afd1-e7a63af042bb",
                  "parent_uuid": "f8ca1b78-5e92-4836-98cc-011b71bd6a48",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "99e5d572-5238-47ae-8745-453389f285d1",
              "parent_uuid": "35011198-608b-46eb-8d48-afab8df9621c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ea6119e-816f-4cfd-8998-d3780b44dfcc",
                  "parent_uuid": "99e5d572-5238-47ae-8745-453389f285d1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "7a9d2dd6-559f-4cd7-bb1a-5f11680917b5",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fa2be97a-cd6a-4cf5-ab17-d24359107960",
              "parent_uuid": "7a9d2dd6-559f-4cd7-bb1a-5f11680917b5",
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
              "uuid": "f03b97ed-007d-410c-96e5-f3478b400389",
              "parent_uuid": "7a9d2dd6-559f-4cd7-bb1a-5f11680917b5",
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
              "uuid": "eafb9e3a-761b-4c05-b4f8-1ff527f8630a",
              "parent_uuid": "7a9d2dd6-559f-4cd7-bb1a-5f11680917b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4c4c4231-decc-4d7c-bd7e-440f7bd31cbe",
                  "parent_uuid": "eafb9e3a-761b-4c05-b4f8-1ff527f8630a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "22f3cbf3-f494-40ea-90bd-bc8654ce7363",
              "parent_uuid": "7a9d2dd6-559f-4cd7-bb1a-5f11680917b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6fdabfa-bbbf-483c-acd4-7a1058b8d9ad",
                  "parent_uuid": "22f3cbf3-f494-40ea-90bd-bc8654ce7363",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c66633f6-dff9-40ae-a981-501d5498f723",
              "parent_uuid": "7a9d2dd6-559f-4cd7-bb1a-5f11680917b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "71454b09-fca7-4d08-b5d9-6238051bf423",
                  "parent_uuid": "c66633f6-dff9-40ae-a981-501d5498f723",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be9a225b-b739-41f0-ad3c-3fdbd72c7e91",
              "parent_uuid": "7a9d2dd6-559f-4cd7-bb1a-5f11680917b5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "11178b0f-b109-46ea-a370-d22bfe855626",
                  "parent_uuid": "be9a225b-b739-41f0-ad3c-3fdbd72c7e91",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "a4d7c2e0-ff45-4d1f-a44d-249253f5fa37",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "de4af97f-0120-482e-a8a4-0ba72484d662",
              "parent_uuid": "a4d7c2e0-ff45-4d1f-a44d-249253f5fa37",
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
              "uuid": "8db5b3bc-6ad9-48dc-978c-969ea0200754",
              "parent_uuid": "a4d7c2e0-ff45-4d1f-a44d-249253f5fa37",
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
              "uuid": "5ac4514a-456d-4c66-a836-637947bc3ad3",
              "parent_uuid": "a4d7c2e0-ff45-4d1f-a44d-249253f5fa37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "61822e3a-6bad-4649-a141-35970fdd5bea",
                  "parent_uuid": "5ac4514a-456d-4c66-a836-637947bc3ad3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c5cab325-b56c-4aa4-89d6-b193a7acd5e4",
              "parent_uuid": "a4d7c2e0-ff45-4d1f-a44d-249253f5fa37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "847c0255-62f9-42f8-ba96-4414e33dbb29",
                  "parent_uuid": "c5cab325-b56c-4aa4-89d6-b193a7acd5e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "557ec448-38c5-47ea-9751-81051efbf8be",
              "parent_uuid": "a4d7c2e0-ff45-4d1f-a44d-249253f5fa37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d2908ef5-aa88-4d37-b67f-2f7c467942dd",
                  "parent_uuid": "557ec448-38c5-47ea-9751-81051efbf8be",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4344af88-890e-46e8-be1b-974caae3eb41",
              "parent_uuid": "a4d7c2e0-ff45-4d1f-a44d-249253f5fa37",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "78bad87b-6747-4e21-8c38-6b6aa040a5c4",
                  "parent_uuid": "4344af88-890e-46e8-be1b-974caae3eb41",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "836a1091-7627-4c60-90b2-1013f8b6e327",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "02a6aef8-621d-4170-a0aa-ae7725542fb9",
              "parent_uuid": "836a1091-7627-4c60-90b2-1013f8b6e327",
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
              "uuid": "9564c5e3-0511-4ed8-b7db-c1d4775d427b",
              "parent_uuid": "836a1091-7627-4c60-90b2-1013f8b6e327",
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
              "uuid": "b678a5b7-4cb4-40f5-9c46-f41daa205d47",
              "parent_uuid": "836a1091-7627-4c60-90b2-1013f8b6e327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1046a0a8-6993-487f-8e56-a81761bba8c0",
                  "parent_uuid": "b678a5b7-4cb4-40f5-9c46-f41daa205d47",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "620d5d74-94bc-4444-bcca-3739501b42d3",
              "parent_uuid": "836a1091-7627-4c60-90b2-1013f8b6e327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5b365e35-17ad-4c50-b615-bc16c87e7c6d",
                  "parent_uuid": "620d5d74-94bc-4444-bcca-3739501b42d3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "85120035-c7f1-47c3-a15d-1ed6da4a1207",
              "parent_uuid": "836a1091-7627-4c60-90b2-1013f8b6e327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f8e9841-1213-4b1b-845d-663ebb9e0286",
                  "parent_uuid": "85120035-c7f1-47c3-a15d-1ed6da4a1207",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d883592-c99f-40c4-a21f-9d0370cd26f8",
              "parent_uuid": "836a1091-7627-4c60-90b2-1013f8b6e327",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "24c5437f-d17e-4a41-8a9a-179b9a8ab724",
                  "parent_uuid": "6d883592-c99f-40c4-a21f-9d0370cd26f8",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "1876c4d6-a21a-49a4-8b8a-118f7cf1a29c",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2217fcfb-8118-4a5b-b3ea-cc77bc29dc23",
              "parent_uuid": "1876c4d6-a21a-49a4-8b8a-118f7cf1a29c",
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
          "uuid": "ec10c2b7-9db8-4420-8bab-a2ba92e193d7",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a2cdb9a7-df6c-41b8-9d32-8e2b0fb33101",
              "parent_uuid": "ec10c2b7-9db8-4420-8bab-a2ba92e193d7",
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
          "uuid": "a80405cd-3354-41a2-aaa7-6548a8eca005",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "974e04cb-1cb9-4e30-bdfb-2eaf459bbb4d",
              "parent_uuid": "a80405cd-3354-41a2-aaa7-6548a8eca005",
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
                  "uuid": "45df5636-3cde-4435-b986-3031734ce556",
                  "parent_uuid": "974e04cb-1cb9-4e30-bdfb-2eaf459bbb4d",
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
          "uuid": "67d077fc-9213-48ae-84c9-d1d12a22edec",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "179b72d2-8ddf-4337-9989-1f1cac65c3c9",
              "parent_uuid": "67d077fc-9213-48ae-84c9-d1d12a22edec",
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
          "uuid": "cdbf4a3a-ffc3-4f51-bf2d-752a9e17aa52",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "b19755a1-9834-487b-86c6-f3b60aab2453",
              "parent_uuid": "cdbf4a3a-ffc3-4f51-bf2d-752a9e17aa52",
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
          "uuid": "b8bf05aa-7a4e-4094-8883-ed4eabe44c44",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "843a6586-ede7-451a-8e9e-4a296cb703ac",
              "parent_uuid": "b8bf05aa-7a4e-4094-8883-ed4eabe44c44",
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
              "uuid": "82542272-6409-4dfa-9e6c-1e8f3a917a24",
              "parent_uuid": "b8bf05aa-7a4e-4094-8883-ed4eabe44c44",
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
              "uuid": "ea6ad13b-4cf6-4997-b548-a2dea6b62a7f",
              "parent_uuid": "b8bf05aa-7a4e-4094-8883-ed4eabe44c44",
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
              "uuid": "293e2bbf-c1a2-4fe5-9b1c-656060b6d320",
              "parent_uuid": "b8bf05aa-7a4e-4094-8883-ed4eabe44c44",
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
              "uuid": "d0230c32-84ee-48b7-acd0-ed44c9fa54b3",
              "parent_uuid": "b8bf05aa-7a4e-4094-8883-ed4eabe44c44",
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
              "uuid": "baa9e7f5-4c55-4a5e-8d2b-d6f9d28fdd55",
              "parent_uuid": "b8bf05aa-7a4e-4094-8883-ed4eabe44c44",
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
          "uuid": "2731a212-d932-4196-bca6-0dea0de69ab0",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "6b87ffbc-fd82-4160-99dc-42d1cb99f497",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a269605e-4990-4612-a0fc-0fd135483fb6",
              "parent_uuid": "6b87ffbc-fd82-4160-99dc-42d1cb99f497",
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
              "uuid": "b304f548-706a-4a67-b97e-4be903df34d3",
              "parent_uuid": "6b87ffbc-fd82-4160-99dc-42d1cb99f497",
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
              "uuid": "b5ba2e93-1f49-4e9a-8960-08c5ee07a997",
              "parent_uuid": "6b87ffbc-fd82-4160-99dc-42d1cb99f497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "91d87cba-e539-401c-b7c2-975be6d03863",
                  "parent_uuid": "b5ba2e93-1f49-4e9a-8960-08c5ee07a997",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d12250d3-3a5f-4e6e-ad0f-f13ddea67225",
              "parent_uuid": "6b87ffbc-fd82-4160-99dc-42d1cb99f497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2bf50c8b-2157-4e1e-a935-a7d1513ed1bf",
                  "parent_uuid": "d12250d3-3a5f-4e6e-ad0f-f13ddea67225",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d4e290e1-dc9b-4371-81f5-cae51e5a4462",
              "parent_uuid": "6b87ffbc-fd82-4160-99dc-42d1cb99f497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d25b637c-1258-461a-b525-05801132ef0b",
                  "parent_uuid": "d4e290e1-dc9b-4371-81f5-cae51e5a4462",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0520b35c-a984-423f-99ef-1ef5fbbc7e39",
              "parent_uuid": "6b87ffbc-fd82-4160-99dc-42d1cb99f497",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "831d96d9-ad79-4271-b89a-cff30166c136",
                  "parent_uuid": "0520b35c-a984-423f-99ef-1ef5fbbc7e39",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b95eb736-d291-44a4-bea0-033a21ca9e5e",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1098ad10-96df-4db4-858b-40667975486f",
              "parent_uuid": "b95eb736-d291-44a4-bea0-033a21ca9e5e",
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
              "uuid": "8bc6f212-7f5b-4496-bda1-ba2851a9e6e7",
              "parent_uuid": "b95eb736-d291-44a4-bea0-033a21ca9e5e",
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
              "uuid": "ae465fa3-4bd3-49d7-811d-1268ea5532c0",
              "parent_uuid": "b95eb736-d291-44a4-bea0-033a21ca9e5e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9f42d3ca-07bc-41f2-839d-e89e55e088b6",
                  "parent_uuid": "ae465fa3-4bd3-49d7-811d-1268ea5532c0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "18be4b0e-bb20-42f7-b766-b7d3a5148cd7",
              "parent_uuid": "b95eb736-d291-44a4-bea0-033a21ca9e5e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac219d89-2a8a-4567-9273-d69492ee243f",
                  "parent_uuid": "18be4b0e-bb20-42f7-b766-b7d3a5148cd7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "71fb57be-e817-4eda-a26c-e9d14c4ae0bc",
              "parent_uuid": "b95eb736-d291-44a4-bea0-033a21ca9e5e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f605bf36-3d14-43b1-b038-e76186e183f4",
                  "parent_uuid": "71fb57be-e817-4eda-a26c-e9d14c4ae0bc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2b9c6f4d-2d4a-4027-8d8e-d39548ff8d68",
              "parent_uuid": "b95eb736-d291-44a4-bea0-033a21ca9e5e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d375ba62-b342-460b-b1df-3c49145c620a",
                  "parent_uuid": "2b9c6f4d-2d4a-4027-8d8e-d39548ff8d68",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "4978f5d1-827a-4fd2-b27d-741ba636362d",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ec8af83c-661f-414d-9835-67b777b52a1d",
              "parent_uuid": "4978f5d1-827a-4fd2-b27d-741ba636362d",
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
              "uuid": "f4a23ba8-421f-471c-a4f2-3230eb08a115",
              "parent_uuid": "4978f5d1-827a-4fd2-b27d-741ba636362d",
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
              "uuid": "e4e11a8c-9a72-43fc-bb18-e206b7b5d9e9",
              "parent_uuid": "4978f5d1-827a-4fd2-b27d-741ba636362d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ca84017b-ceae-429f-9914-be9b2ce27074",
                  "parent_uuid": "e4e11a8c-9a72-43fc-bb18-e206b7b5d9e9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "81a76b2a-8591-4291-9f98-0e034a470aab",
              "parent_uuid": "4978f5d1-827a-4fd2-b27d-741ba636362d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "18db698c-0ca8-4b52-a103-661ed5578864",
                  "parent_uuid": "81a76b2a-8591-4291-9f98-0e034a470aab",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7daeec8a-246d-4c44-b0e2-c4ecacf751d4",
              "parent_uuid": "4978f5d1-827a-4fd2-b27d-741ba636362d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ea8b0b2-048b-4203-8603-b4fa8dff579b",
                  "parent_uuid": "7daeec8a-246d-4c44-b0e2-c4ecacf751d4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76f4594f-eb3d-4a33-b4c7-6d1cc77e37ec",
              "parent_uuid": "4978f5d1-827a-4fd2-b27d-741ba636362d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eb8780c2-8356-438f-823c-baebf0337fbe",
                  "parent_uuid": "76f4594f-eb3d-4a33-b4c7-6d1cc77e37ec",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "51463772-dd34-4337-922b-463dbd0b575b",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "511b8883-04ff-43d3-91bf-245bbc5a9cd0",
              "parent_uuid": "51463772-dd34-4337-922b-463dbd0b575b",
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
              "uuid": "f811ac27-9883-446c-8c36-d550476f64aa",
              "parent_uuid": "51463772-dd34-4337-922b-463dbd0b575b",
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
              "uuid": "10a85032-d90a-4a3f-ab33-bf42183bcd04",
              "parent_uuid": "51463772-dd34-4337-922b-463dbd0b575b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f60177fe-f0ef-41d9-8ff4-eecb72856389",
                  "parent_uuid": "10a85032-d90a-4a3f-ab33-bf42183bcd04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "be2134a1-8c11-457a-9961-81b29771847b",
              "parent_uuid": "51463772-dd34-4337-922b-463dbd0b575b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1e17dddc-8963-4639-8d55-5d427001fc87",
                  "parent_uuid": "be2134a1-8c11-457a-9961-81b29771847b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6ca0a4d1-26ce-436c-a7a2-82dc900f0a94",
              "parent_uuid": "51463772-dd34-4337-922b-463dbd0b575b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e0744917-7d16-4b22-bd4f-c7de2a3f17f9",
                  "parent_uuid": "6ca0a4d1-26ce-436c-a7a2-82dc900f0a94",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "834ad848-fda7-46a1-952b-3920bcb833c3",
              "parent_uuid": "51463772-dd34-4337-922b-463dbd0b575b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "805150f3-5224-4d44-9dec-5a5337be01a3",
                  "parent_uuid": "834ad848-fda7-46a1-952b-3920bcb833c3",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "0eb9b8e5-6eb1-43a0-8529-ee73c5c9face",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "33e901d3-4b23-4cb8-9f7f-3fdd23732ae7",
              "parent_uuid": "0eb9b8e5-6eb1-43a0-8529-ee73c5c9face",
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
              "uuid": "9d5edc74-58b3-4971-866c-325c3ea93432",
              "parent_uuid": "0eb9b8e5-6eb1-43a0-8529-ee73c5c9face",
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
              "uuid": "8babc4b5-f41c-46a4-b916-c643cf15ff04",
              "parent_uuid": "0eb9b8e5-6eb1-43a0-8529-ee73c5c9face",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "62216029-d8ea-466f-963a-44f741dfd47e",
                  "parent_uuid": "8babc4b5-f41c-46a4-b916-c643cf15ff04",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "87635e90-90a6-4ccb-a8c3-814fc7268153",
              "parent_uuid": "0eb9b8e5-6eb1-43a0-8529-ee73c5c9face",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b278b037-f488-4df3-81b1-4c95a79a22df",
                  "parent_uuid": "87635e90-90a6-4ccb-a8c3-814fc7268153",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7e39a95e-df2c-4087-b081-4bbec1a81023",
              "parent_uuid": "0eb9b8e5-6eb1-43a0-8529-ee73c5c9face",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7fb17dc0-f601-418b-947a-4ef136a2e06d",
                  "parent_uuid": "7e39a95e-df2c-4087-b081-4bbec1a81023",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ca5db42f-d1e8-4a02-8903-28f9395a44dc",
              "parent_uuid": "0eb9b8e5-6eb1-43a0-8529-ee73c5c9face",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70810997-30fa-4cd1-92cc-7ed8d4f4c300",
                  "parent_uuid": "ca5db42f-d1e8-4a02-8903-28f9395a44dc",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2b0a4cf5-3bf9-4bba-a5a3-408668fbabe2",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "07290b03-7d25-4837-80da-5d58d5f70a8d",
              "parent_uuid": "2b0a4cf5-3bf9-4bba-a5a3-408668fbabe2",
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
              "uuid": "597db5c1-f69c-46bc-ac9e-0a8e876ba86d",
              "parent_uuid": "2b0a4cf5-3bf9-4bba-a5a3-408668fbabe2",
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
              "uuid": "d62e1916-bd75-4d14-9b96-544a2c86c4ef",
              "parent_uuid": "2b0a4cf5-3bf9-4bba-a5a3-408668fbabe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "128487f1-36de-4069-885c-bd418b7c0079",
                  "parent_uuid": "d62e1916-bd75-4d14-9b96-544a2c86c4ef",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "08bbc171-e5f3-4919-9258-186515885b78",
              "parent_uuid": "2b0a4cf5-3bf9-4bba-a5a3-408668fbabe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "505141e7-01b2-4ffb-8587-c9da211d0630",
                  "parent_uuid": "08bbc171-e5f3-4919-9258-186515885b78",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d0f92d99-f678-4968-9f63-5f415ce8d53f",
              "parent_uuid": "2b0a4cf5-3bf9-4bba-a5a3-408668fbabe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "de7bf649-1a1f-4204-859a-0fb193cc5f3b",
                  "parent_uuid": "d0f92d99-f678-4968-9f63-5f415ce8d53f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6efda9ad-4196-42b0-bb1b-8935fa0df0c9",
              "parent_uuid": "2b0a4cf5-3bf9-4bba-a5a3-408668fbabe2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e6821738-5c2e-43fd-a312-454713b08794",
                  "parent_uuid": "6efda9ad-4196-42b0-bb1b-8935fa0df0c9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "44a4c4aa-30f3-46a6-afe8-f6a1a546dd83",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7bc08c12-4fc1-478e-9a6e-54d343872c48",
              "parent_uuid": "44a4c4aa-30f3-46a6-afe8-f6a1a546dd83",
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
          "uuid": "abfd173c-b46f-4a50-be00-105b5f523837",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0546eb79-256d-4e9c-a11a-31e7f70a8094",
              "parent_uuid": "abfd173c-b46f-4a50-be00-105b5f523837",
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
          "uuid": "06d14b70-a151-4b4f-8292-09ee133e551c",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0cd1e006-7a13-4be7-b823-fb5507ec7bff",
              "parent_uuid": "06d14b70-a151-4b4f-8292-09ee133e551c",
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
                  "uuid": "8e10851b-51a1-43e5-b02e-9e1e47a834bc",
                  "parent_uuid": "0cd1e006-7a13-4be7-b823-fb5507ec7bff",
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
          "uuid": "23e07124-a6da-47d4-b394-82a735793db1",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b111abb7-eec2-4f21-a65c-db34dbadb6e3",
              "parent_uuid": "23e07124-a6da-47d4-b394-82a735793db1",
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
          "uuid": "449a4585-759c-4a70-b0ba-c53084e7fbbc",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "355cd08b-55bf-41d5-9fba-5fc73c9ff7ec",
              "parent_uuid": "449a4585-759c-4a70-b0ba-c53084e7fbbc",
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
          "uuid": "41134c42-61c6-4cdd-b0c3-e7268c021e81",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea909d29-9fa1-4d24-9860-4e24dc1f64ac",
              "parent_uuid": "41134c42-61c6-4cdd-b0c3-e7268c021e81",
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
              "uuid": "02cce1e0-b092-4d6b-ade6-0d9da8da2414",
              "parent_uuid": "41134c42-61c6-4cdd-b0c3-e7268c021e81",
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
              "uuid": "f746792f-860e-4622-8e97-7822db1b6f36",
              "parent_uuid": "41134c42-61c6-4cdd-b0c3-e7268c021e81",
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
              "uuid": "4c0fff43-44f3-442d-adae-c97427e3b79b",
              "parent_uuid": "41134c42-61c6-4cdd-b0c3-e7268c021e81",
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
              "uuid": "61851ce7-5d4c-4bc8-91b6-1352c409b483",
              "parent_uuid": "41134c42-61c6-4cdd-b0c3-e7268c021e81",
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
          "uuid": "381d62f2-23a9-4460-b0ad-1a464b0411b8",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9286b448-d639-4402-b44b-3a6f69889454",
              "parent_uuid": "381d62f2-23a9-4460-b0ad-1a464b0411b8",
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
              "uuid": "dcb39a92-5b18-4030-a0aa-6043d0f16ae6",
              "parent_uuid": "381d62f2-23a9-4460-b0ad-1a464b0411b8",
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
              "uuid": "416bc38d-f947-4d0b-98f4-575bd62d3476",
              "parent_uuid": "381d62f2-23a9-4460-b0ad-1a464b0411b8",
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
              "uuid": "c0d506f0-dcc2-4d77-85d7-9785f73d2507",
              "parent_uuid": "381d62f2-23a9-4460-b0ad-1a464b0411b8",
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
              "uuid": "6fec9e2b-1226-4a51-8be5-2b785d14e339",
              "parent_uuid": "381d62f2-23a9-4460-b0ad-1a464b0411b8",
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
          "uuid": "fb25e716-08d3-4c3a-bbc6-92a9b4997dee",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eb684e66-b79b-4cb0-b8fe-c7fc003f8adc",
              "parent_uuid": "fb25e716-08d3-4c3a-bbc6-92a9b4997dee",
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
              "uuid": "8e0af920-402b-40cb-a3d4-063c10d4b1bf",
              "parent_uuid": "fb25e716-08d3-4c3a-bbc6-92a9b4997dee",
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
              "uuid": "0e044807-f3e3-46f2-8300-d54a00aaa0e3",
              "parent_uuid": "fb25e716-08d3-4c3a-bbc6-92a9b4997dee",
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
              "uuid": "8030285b-1577-4922-b4bd-ae06d05b5505",
              "parent_uuid": "fb25e716-08d3-4c3a-bbc6-92a9b4997dee",
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
              "uuid": "63000a81-3249-40f3-8a4f-f1a61fd0ab73",
              "parent_uuid": "fb25e716-08d3-4c3a-bbc6-92a9b4997dee",
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
          "uuid": "02e81527-099b-45d3-912b-bf1b1ebffd29",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "861fbf15-54db-4253-a398-94d9f17df69f",
              "parent_uuid": "02e81527-099b-45d3-912b-bf1b1ebffd29",
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
              "uuid": "59617a16-ff75-45c1-9d87-f44b87452efa",
              "parent_uuid": "02e81527-099b-45d3-912b-bf1b1ebffd29",
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
              "uuid": "06b96a8b-5034-4db4-8485-2366f5b6f442",
              "parent_uuid": "02e81527-099b-45d3-912b-bf1b1ebffd29",
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
              "uuid": "428008be-9617-48d8-94f7-b4ac0aa12b06",
              "parent_uuid": "02e81527-099b-45d3-912b-bf1b1ebffd29",
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
              "uuid": "ad6bb1b2-aa1e-4500-848c-140bb01017a1",
              "parent_uuid": "02e81527-099b-45d3-912b-bf1b1ebffd29",
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
          "uuid": "338da1b7-5395-4eda-a9bf-780ad1cbece2",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ab868a83-6bc2-4eca-ade5-32c4fc97549b",
              "parent_uuid": "338da1b7-5395-4eda-a9bf-780ad1cbece2",
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
              "uuid": "34a7f345-a5c1-43b9-8fd8-aa29e64b7294",
              "parent_uuid": "338da1b7-5395-4eda-a9bf-780ad1cbece2",
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
              "uuid": "f3308bd1-cc18-4f21-8ba9-aba9ef977aff",
              "parent_uuid": "338da1b7-5395-4eda-a9bf-780ad1cbece2",
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
              "uuid": "1298f0b3-f992-478c-b2cc-b8f5e5664a52",
              "parent_uuid": "338da1b7-5395-4eda-a9bf-780ad1cbece2",
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
              "uuid": "e2e2aefc-762d-4ad1-97f6-38eb520a2635",
              "parent_uuid": "338da1b7-5395-4eda-a9bf-780ad1cbece2",
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
          "uuid": "71c1cad6-80f0-41e4-9fdf-0c9632b1db54",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cc540880-eb7c-4bd6-929b-be293be72435",
              "parent_uuid": "71c1cad6-80f0-41e4-9fdf-0c9632b1db54",
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
              "uuid": "08d60c00-e889-488f-8110-f9d67d171538",
              "parent_uuid": "71c1cad6-80f0-41e4-9fdf-0c9632b1db54",
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
              "uuid": "f2e992ea-d07c-41b9-a0e8-2728b2a57905",
              "parent_uuid": "71c1cad6-80f0-41e4-9fdf-0c9632b1db54",
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
              "uuid": "8a8d61f5-4c6c-4ad2-a3da-69f6dca00a2c",
              "parent_uuid": "71c1cad6-80f0-41e4-9fdf-0c9632b1db54",
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
              "uuid": "dff5a5d7-4b67-4ff0-9253-5953dbec3b28",
              "parent_uuid": "71c1cad6-80f0-41e4-9fdf-0c9632b1db54",
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
          "uuid": "6c4fc25b-54a3-491e-aa9f-c10bf1e54cf8",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca861af8-0e4e-4443-984c-c3ac65986c5a",
              "parent_uuid": "6c4fc25b-54a3-491e-aa9f-c10bf1e54cf8",
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
              "uuid": "bc27166d-68b3-49e3-afa8-80e3163ccce9",
              "parent_uuid": "6c4fc25b-54a3-491e-aa9f-c10bf1e54cf8",
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
              "uuid": "5b821309-face-458e-990b-135e319bb495",
              "parent_uuid": "6c4fc25b-54a3-491e-aa9f-c10bf1e54cf8",
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
              "uuid": "b15d487d-d23c-4fa5-ab0b-29f5df916c68",
              "parent_uuid": "6c4fc25b-54a3-491e-aa9f-c10bf1e54cf8",
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
              "uuid": "dc3b5964-5131-4192-83e9-1af0cc0d1e7b",
              "parent_uuid": "6c4fc25b-54a3-491e-aa9f-c10bf1e54cf8",
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
          "uuid": "1f92713a-5153-46eb-a046-f0a870a54f8d",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c49e4969-b8ea-43be-9277-732707c66a1b",
              "parent_uuid": "1f92713a-5153-46eb-a046-f0a870a54f8d",
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
              "uuid": "8ed55dd9-308f-4086-82db-43f083e3abf7",
              "parent_uuid": "1f92713a-5153-46eb-a046-f0a870a54f8d",
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
              "uuid": "91bfa33e-400e-4c65-8879-21d2e8b90e56",
              "parent_uuid": "1f92713a-5153-46eb-a046-f0a870a54f8d",
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
              "uuid": "0851fca1-5e38-4cdd-a78a-9dbde0a119e0",
              "parent_uuid": "1f92713a-5153-46eb-a046-f0a870a54f8d",
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
              "uuid": "41bd9b56-3cdb-4cf1-bafb-063134ccbdc3",
              "parent_uuid": "1f92713a-5153-46eb-a046-f0a870a54f8d",
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
          "uuid": "49f78e80-31a6-4084-8b0e-88bf3fdeca01",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4adf2d40-a0ac-4fbb-87e9-1284a9c46649",
              "parent_uuid": "49f78e80-31a6-4084-8b0e-88bf3fdeca01",
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
              "uuid": "4b6ec83f-85fa-4e06-9103-d9aab7cd3fdc",
              "parent_uuid": "49f78e80-31a6-4084-8b0e-88bf3fdeca01",
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
              "uuid": "ed7dfb04-c693-457b-8cc9-337ac0fbf614",
              "parent_uuid": "49f78e80-31a6-4084-8b0e-88bf3fdeca01",
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
              "uuid": "b5de48c0-c1ad-485b-acb0-da89c00825c9",
              "parent_uuid": "49f78e80-31a6-4084-8b0e-88bf3fdeca01",
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
              "uuid": "cd7a40c4-6f6a-4b7a-bc90-e41934d9d388",
              "parent_uuid": "49f78e80-31a6-4084-8b0e-88bf3fdeca01",
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
          "uuid": "1c141451-fcc5-475a-9a44-790871276656",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46e9dbd6-311b-4651-81d6-bd4557d530d0",
              "parent_uuid": "1c141451-fcc5-475a-9a44-790871276656",
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
          "uuid": "acc8cbc8-dedd-46b2-b083-354a650d39ae",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf84ee54-400c-41f0-80ba-ea45c4a421dd",
              "parent_uuid": "acc8cbc8-dedd-46b2-b083-354a650d39ae",
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
          "uuid": "b93cb7fc-5653-4291-809c-ea3c7b088af7",
          "parent_uuid": "40073d4d-ea88-476e-ab91-24c62811a7df",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "60f50218-ef96-4152-9657-98483277e841",
              "parent_uuid": "b93cb7fc-5653-4291-809c-ea3c7b088af7",
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
                  "uuid": "10ea080c-9272-4dc2-857e-78761fc075f2",
                  "parent_uuid": "60f50218-ef96-4152-9657-98483277e841",
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

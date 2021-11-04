
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
  "uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "20b23b54-0099-4ef3-8718-c3cc807753e6",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "fc6eff06-7c67-4238-884f-2e286cbf0ef1",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "b58241f7-2eca-4b96-8ce0-3ff48fa35c32",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "c2d27a21-fc19-4bc0-81ad-5545665d10bd",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "6e46daad-242e-47f9-a654-07b5e90bc273",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "040e6d16-7a45-4ed5-a283-df7b43162795",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "bfd62610-4404-44f9-a871-159c5c5ef70e",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
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
      "uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
      "parent_uuid": "9fcd3c12-af79-4fe0-9047-1d3c419994c6",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "3b94c1fd-00d6-4fba-90c2-8a015406f34e",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "39137717-cba3-4f48-b3bc-e89ce780f285",
              "parent_uuid": "3b94c1fd-00d6-4fba-90c2-8a015406f34e",
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
              "uuid": "f55fc576-48b8-48ab-834b-c524d57d4b66",
              "parent_uuid": "3b94c1fd-00d6-4fba-90c2-8a015406f34e",
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
              "uuid": "6ce0bb44-8ad3-4687-8e42-231f54d3ae3f",
              "parent_uuid": "3b94c1fd-00d6-4fba-90c2-8a015406f34e",
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
              "uuid": "a3ef70c7-0420-40af-91ea-e2b72822b76c",
              "parent_uuid": "3b94c1fd-00d6-4fba-90c2-8a015406f34e",
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
          "uuid": "7021f5c0-82da-4ac3-9aa5-14c4c0b897bb",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "2520331d-37b7-479e-bb68-21964a86f789",
              "parent_uuid": "7021f5c0-82da-4ac3-9aa5-14c4c0b897bb",
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
              "uuid": "9abfc413-6ca2-410a-8c6c-65197d9c394b",
              "parent_uuid": "7021f5c0-82da-4ac3-9aa5-14c4c0b897bb",
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
              "uuid": "9ac5c7e0-cc02-4e5a-99a6-84c5f6305dfb",
              "parent_uuid": "7021f5c0-82da-4ac3-9aa5-14c4c0b897bb",
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
              "uuid": "376ccd47-6f1f-486b-9c23-6b60215ec6ec",
              "parent_uuid": "7021f5c0-82da-4ac3-9aa5-14c4c0b897bb",
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
          "uuid": "e1cea2d3-6a50-4586-bc7d-d54a08f0f037",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "80e09cd5-0c5d-41eb-9fc1-94d1d4169e28",
              "parent_uuid": "e1cea2d3-6a50-4586-bc7d-d54a08f0f037",
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
              "uuid": "ea5e045c-3b5a-41c5-8aad-28c47e3568f7",
              "parent_uuid": "e1cea2d3-6a50-4586-bc7d-d54a08f0f037",
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
              "uuid": "56493603-ee85-4fdc-8460-7a21fba990b2",
              "parent_uuid": "e1cea2d3-6a50-4586-bc7d-d54a08f0f037",
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
              "uuid": "f3dd73eb-322a-4df4-b05f-5db35725ffb1",
              "parent_uuid": "e1cea2d3-6a50-4586-bc7d-d54a08f0f037",
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
              "uuid": "f69c558c-d361-4ceb-8941-464a65b5dde3",
              "parent_uuid": "e1cea2d3-6a50-4586-bc7d-d54a08f0f037",
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
              "uuid": "aaf41c69-9518-4103-8695-372552f1cf4f",
              "parent_uuid": "e1cea2d3-6a50-4586-bc7d-d54a08f0f037",
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
          "uuid": "490ee1fc-f97f-48df-9730-3bba94651377",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8e914bcb-abcd-4b1c-b4b0-7958044e8757",
              "parent_uuid": "490ee1fc-f97f-48df-9730-3bba94651377",
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
          "uuid": "f38ed64f-f0f6-4eae-92b6-c4d9c20d653f",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "821f195a-f525-4dfb-b84f-2dd454225cb0",
              "parent_uuid": "f38ed64f-f0f6-4eae-92b6-c4d9c20d653f",
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
              "uuid": "046cb7e4-4cf2-4996-bc4b-9dee8140d6fe",
              "parent_uuid": "f38ed64f-f0f6-4eae-92b6-c4d9c20d653f",
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
              "uuid": "33a3b246-37d0-4883-b341-725da6e62e5d",
              "parent_uuid": "f38ed64f-f0f6-4eae-92b6-c4d9c20d653f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "d68b98e6-de48-4c7f-b087-f4204033c656",
                  "parent_uuid": "33a3b246-37d0-4883-b341-725da6e62e5d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4f3dde09-f234-4c12-99d5-01587c1489f4",
              "parent_uuid": "f38ed64f-f0f6-4eae-92b6-c4d9c20d653f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "b926aed8-fb6c-4a67-8210-84dc6c590bac",
                  "parent_uuid": "4f3dde09-f234-4c12-99d5-01587c1489f4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46533703-4990-452b-bc1d-7a14bda85b7e",
              "parent_uuid": "f38ed64f-f0f6-4eae-92b6-c4d9c20d653f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "77111380-9995-4bde-9bea-3f410835950b",
                  "parent_uuid": "46533703-4990-452b-bc1d-7a14bda85b7e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a0764cb5-e022-4457-bb3f-51109073d7cb",
              "parent_uuid": "f38ed64f-f0f6-4eae-92b6-c4d9c20d653f",
              "tagName": "td",
              "properties": [
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
                  "uuid": "100f6de9-0a5d-4b9c-952c-5d67b6c8bd0d",
                  "parent_uuid": "a0764cb5-e022-4457-bb3f-51109073d7cb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "877ad264-75da-4421-8543-d2e565b554a1",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b5a219c-03f6-4c95-a74b-c65b23db7f26",
              "parent_uuid": "877ad264-75da-4421-8543-d2e565b554a1",
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
              "uuid": "58834cdd-2184-4cfd-aee2-ea3e5d300a92",
              "parent_uuid": "877ad264-75da-4421-8543-d2e565b554a1",
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
              "uuid": "68e77823-777d-47db-ac1d-13196ba372dc",
              "parent_uuid": "877ad264-75da-4421-8543-d2e565b554a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "23236766-4dfc-447f-bb0a-b3faf4a1248a",
                  "parent_uuid": "68e77823-777d-47db-ac1d-13196ba372dc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "29ab67ed-2369-4a0d-b3b9-8633e213fb84",
              "parent_uuid": "877ad264-75da-4421-8543-d2e565b554a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "1dd8ae3d-d976-4777-a669-9f84537f24b0",
                  "parent_uuid": "29ab67ed-2369-4a0d-b3b9-8633e213fb84",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4d359316-3218-4395-bb8c-97ccd445a881",
              "parent_uuid": "877ad264-75da-4421-8543-d2e565b554a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "05f69e35-75b1-47fe-a83d-4b9e43d5729b",
                  "parent_uuid": "4d359316-3218-4395-bb8c-97ccd445a881",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "839f73e0-d485-4a7d-a486-0178cf862d64",
              "parent_uuid": "877ad264-75da-4421-8543-d2e565b554a1",
              "tagName": "td",
              "properties": [
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
                  "uuid": "8580f8a6-19ff-4698-bf8f-cbd4d8669fc2",
                  "parent_uuid": "839f73e0-d485-4a7d-a486-0178cf862d64",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "466af0fc-ca9e-4a08-923c-991b0d9d2eb4",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b19963d3-5c3c-4ee9-ae18-5faae59a6c42",
              "parent_uuid": "466af0fc-ca9e-4a08-923c-991b0d9d2eb4",
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
              "uuid": "272c62da-44b2-43dd-a53e-be27e6bcf688",
              "parent_uuid": "466af0fc-ca9e-4a08-923c-991b0d9d2eb4",
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
              "uuid": "1b54d458-abff-42a2-8ae9-ef12b6fbd495",
              "parent_uuid": "466af0fc-ca9e-4a08-923c-991b0d9d2eb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aef02c06-b6ce-444d-bb59-f978821094c6",
                  "parent_uuid": "1b54d458-abff-42a2-8ae9-ef12b6fbd495",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "36eec669-2715-4577-bdf4-1757b7aadab6",
              "parent_uuid": "466af0fc-ca9e-4a08-923c-991b0d9d2eb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "be114c17-f466-4343-b7cc-1c12b608bb1c",
                  "parent_uuid": "36eec669-2715-4577-bdf4-1757b7aadab6",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "980834ab-e804-4c56-99be-31c8ed79733d",
              "parent_uuid": "466af0fc-ca9e-4a08-923c-991b0d9d2eb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f404f732-b9b1-443f-95f5-0c36b1dc1891",
                  "parent_uuid": "980834ab-e804-4c56-99be-31c8ed79733d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "2f4f6af7-084a-4fb8-af48-402ec6d0b4f0",
              "parent_uuid": "466af0fc-ca9e-4a08-923c-991b0d9d2eb4",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f003d535-6bba-4e78-ad54-eafe6e430847",
                  "parent_uuid": "2f4f6af7-084a-4fb8-af48-402ec6d0b4f0",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "6ce235cc-0eec-4754-9058-5502d05655c7",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f7d429d-ef6c-4dff-bf4b-53ae7e6d4b25",
              "parent_uuid": "6ce235cc-0eec-4754-9058-5502d05655c7",
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
              "uuid": "6650f08c-2440-4fb9-aa24-9a178fb7bec9",
              "parent_uuid": "6ce235cc-0eec-4754-9058-5502d05655c7",
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
              "uuid": "1300e58e-c32a-4d00-b2c0-cf8f3fcc6516",
              "parent_uuid": "6ce235cc-0eec-4754-9058-5502d05655c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3583e4e1-a58b-4742-bdca-c079b24acaef",
                  "parent_uuid": "1300e58e-c32a-4d00-b2c0-cf8f3fcc6516",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0643e78-2172-40f4-919a-ae5c88b2946d",
              "parent_uuid": "6ce235cc-0eec-4754-9058-5502d05655c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3a85a20a-6288-4f4a-a717-999ce565efaa",
                  "parent_uuid": "f0643e78-2172-40f4-919a-ae5c88b2946d",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7df340f-fce7-4560-8d18-7f5a5c425fb2",
              "parent_uuid": "6ce235cc-0eec-4754-9058-5502d05655c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0aee8ab7-00e6-448b-a6b2-ab76f1dd467e",
                  "parent_uuid": "f7df340f-fce7-4560-8d18-7f5a5c425fb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "8d648aa5-9179-4a6c-9923-fb4a1f986a0a",
              "parent_uuid": "6ce235cc-0eec-4754-9058-5502d05655c7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0fc1db2e-07a3-4c01-aa9f-926f6a798b9c",
                  "parent_uuid": "8d648aa5-9179-4a6c-9923-fb4a1f986a0a",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "922ecb36-2231-49ff-86d2-1e9a3dbad433",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "40cf65bc-ba63-4ecd-9aaa-dc99123998d8",
              "parent_uuid": "922ecb36-2231-49ff-86d2-1e9a3dbad433",
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
              "uuid": "9782627d-6c82-45ca-88b6-540fbcd8b68a",
              "parent_uuid": "922ecb36-2231-49ff-86d2-1e9a3dbad433",
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
              "uuid": "087ffe58-37ba-4e25-9532-31cdc61905a9",
              "parent_uuid": "922ecb36-2231-49ff-86d2-1e9a3dbad433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bda462ae-0c04-4ca0-8243-464c6df3410f",
                  "parent_uuid": "087ffe58-37ba-4e25-9532-31cdc61905a9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "598b2168-33c9-4ddf-ba40-f9c72576b26c",
              "parent_uuid": "922ecb36-2231-49ff-86d2-1e9a3dbad433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "70f37c82-16f4-4031-90a8-45ab53994d91",
                  "parent_uuid": "598b2168-33c9-4ddf-ba40-f9c72576b26c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f9493d3c-b59d-495c-85ec-a6aef28bc16e",
              "parent_uuid": "922ecb36-2231-49ff-86d2-1e9a3dbad433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4f961f9e-ce0d-4330-b4cc-371348db460c",
                  "parent_uuid": "f9493d3c-b59d-495c-85ec-a6aef28bc16e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "01e6068b-5ab7-43b3-8abe-59d727ed339b",
              "parent_uuid": "922ecb36-2231-49ff-86d2-1e9a3dbad433",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "58b77fc6-7d9e-4dba-bf7e-2ad3b1e4de69",
                  "parent_uuid": "01e6068b-5ab7-43b3-8abe-59d727ed339b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "01a6ec51-a2ff-41f2-a323-366167714ecb",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4a0b80aa-82d9-4d31-bf6a-ac221f0b796c",
              "parent_uuid": "01a6ec51-a2ff-41f2-a323-366167714ecb",
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
              "uuid": "204ba899-5c32-42e3-a5a9-c183c65dfd96",
              "parent_uuid": "01a6ec51-a2ff-41f2-a323-366167714ecb",
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
              "uuid": "bb226aca-ad32-46c6-9344-6b7008eaeb5c",
              "parent_uuid": "01a6ec51-a2ff-41f2-a323-366167714ecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "7f5963d9-a729-4571-9fb9-a82b291d5f14",
                  "parent_uuid": "bb226aca-ad32-46c6-9344-6b7008eaeb5c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "facbd623-2cd4-4a81-aa4e-04ff75aa2927",
              "parent_uuid": "01a6ec51-a2ff-41f2-a323-366167714ecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "09af1f89-7497-4cbb-8535-8b2ca2efd7e7",
                  "parent_uuid": "facbd623-2cd4-4a81-aa4e-04ff75aa2927",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ffa3add6-f527-4938-b472-85cde876ed9c",
              "parent_uuid": "01a6ec51-a2ff-41f2-a323-366167714ecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9950dac0-49bd-401b-9c26-2a379aa493e6",
                  "parent_uuid": "ffa3add6-f527-4938-b472-85cde876ed9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "57676528-ec4d-4721-bf5c-8cf14198a73b",
              "parent_uuid": "01a6ec51-a2ff-41f2-a323-366167714ecb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8e53106c-a523-4c98-bf34-1e11b7e5adf4",
                  "parent_uuid": "57676528-ec4d-4721-bf5c-8cf14198a73b",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "642e1134-7091-47e4-ab25-acda3f5a47af",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "619097ab-54a3-43d9-b97c-ba9a6890a8a3",
              "parent_uuid": "642e1134-7091-47e4-ab25-acda3f5a47af",
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
              "uuid": "c31f1110-884e-4e81-ad95-edfb1ae59b43",
              "parent_uuid": "642e1134-7091-47e4-ab25-acda3f5a47af",
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
              "uuid": "532e50c0-de3a-4c4c-8ae3-529e4e29a7bd",
              "parent_uuid": "642e1134-7091-47e4-ab25-acda3f5a47af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cc1e450e-b5ea-419e-9f02-e129795f5807",
                  "parent_uuid": "532e50c0-de3a-4c4c-8ae3-529e4e29a7bd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "170e19b4-633a-444e-a440-ffaf177a6263",
              "parent_uuid": "642e1134-7091-47e4-ab25-acda3f5a47af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a476cd28-5c5a-4b43-8efb-7048adb88df9",
                  "parent_uuid": "170e19b4-633a-444e-a440-ffaf177a6263",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ddd7af5a-de5c-4a47-8aca-a609602c4715",
              "parent_uuid": "642e1134-7091-47e4-ab25-acda3f5a47af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "20261936-c8af-4db4-ad2e-1497e1de5757",
                  "parent_uuid": "ddd7af5a-de5c-4a47-8aca-a609602c4715",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0615b132-4ab8-4dca-920e-7422c70e41cd",
              "parent_uuid": "642e1134-7091-47e4-ab25-acda3f5a47af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96d8cb41-cad4-432e-87ed-cf790af366c9",
                  "parent_uuid": "0615b132-4ab8-4dca-920e-7422c70e41cd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "aee699df-aeaa-47da-a988-96ed038d1679",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "afb61cb9-e9bc-493f-a505-a424999cb1a8",
              "parent_uuid": "aee699df-aeaa-47da-a988-96ed038d1679",
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
              "uuid": "cc9168dd-cce5-48e3-a224-2f5c06b7767a",
              "parent_uuid": "aee699df-aeaa-47da-a988-96ed038d1679",
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
              "uuid": "32cd8bf7-681d-4400-93c9-1b04726bcbea",
              "parent_uuid": "aee699df-aeaa-47da-a988-96ed038d1679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0f79b05c-3fcd-406d-82cf-41ae5c9fbb8c",
                  "parent_uuid": "32cd8bf7-681d-4400-93c9-1b04726bcbea",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "4a76d6a1-30fe-420b-ba0b-a71792fc65a0",
              "parent_uuid": "aee699df-aeaa-47da-a988-96ed038d1679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac530b91-d3e6-4ac4-816c-2770e79c54a5",
                  "parent_uuid": "4a76d6a1-30fe-420b-ba0b-a71792fc65a0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "a5b72c5e-a531-4bf1-a406-56e1c26a6e1f",
              "parent_uuid": "aee699df-aeaa-47da-a988-96ed038d1679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3d6da8f4-64c0-46d8-85fc-900539a3cc14",
                  "parent_uuid": "a5b72c5e-a531-4bf1-a406-56e1c26a6e1f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "78e45e91-ddd8-4614-90c9-1c16fdaad0eb",
              "parent_uuid": "aee699df-aeaa-47da-a988-96ed038d1679",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5858e915-0400-44b2-a73b-268a96c08b7a",
                  "parent_uuid": "78e45e91-ddd8-4614-90c9-1c16fdaad0eb",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2eb25146-87f0-4de2-b80f-5736a0b13c9d",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0c68d693-e67e-454a-961b-7be5253fd579",
              "parent_uuid": "2eb25146-87f0-4de2-b80f-5736a0b13c9d",
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
              "uuid": "0580ef97-a73c-4e38-83ec-47e9fe63fd51",
              "parent_uuid": "2eb25146-87f0-4de2-b80f-5736a0b13c9d",
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
              "uuid": "7f79e55d-39c8-43fe-b6b7-51bc8f7bffb2",
              "parent_uuid": "2eb25146-87f0-4de2-b80f-5736a0b13c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9aef1ebf-ec9f-41fd-a39f-bb32b136ab90",
                  "parent_uuid": "7f79e55d-39c8-43fe-b6b7-51bc8f7bffb2",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3d00cf88-c2a5-4d2f-bd0e-70e4e24bce02",
              "parent_uuid": "2eb25146-87f0-4de2-b80f-5736a0b13c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "695b3ba4-e7a4-4ff1-88d8-0fa7d892502a",
                  "parent_uuid": "3d00cf88-c2a5-4d2f-bd0e-70e4e24bce02",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "aef80adf-362f-468e-8681-a90f9fe9a1e4",
              "parent_uuid": "2eb25146-87f0-4de2-b80f-5736a0b13c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "491a597c-5d21-4732-8755-ae5ea9bb125c",
                  "parent_uuid": "aef80adf-362f-468e-8681-a90f9fe9a1e4",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "3469b442-0e82-44a5-b125-c79e439991a1",
              "parent_uuid": "2eb25146-87f0-4de2-b80f-5736a0b13c9d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "73262bb1-9cd6-434f-81c4-5d31d614b4e6",
                  "parent_uuid": "3469b442-0e82-44a5-b125-c79e439991a1",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "ca232cd9-83d8-4fa5-b62b-3d83f17aab51",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2850b42b-552e-4ce2-889a-b571152887d0",
              "parent_uuid": "ca232cd9-83d8-4fa5-b62b-3d83f17aab51",
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
              "uuid": "91d6675c-5609-4c04-afb3-2cff53d7bb01",
              "parent_uuid": "ca232cd9-83d8-4fa5-b62b-3d83f17aab51",
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
              "uuid": "0f0de497-1968-4fdf-8e96-bce26d33975a",
              "parent_uuid": "ca232cd9-83d8-4fa5-b62b-3d83f17aab51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "59199740-e571-4011-8471-15ab9193dcbe",
                  "parent_uuid": "0f0de497-1968-4fdf-8e96-bce26d33975a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9c30a1ac-d68f-4697-ad84-073e72ab887e",
              "parent_uuid": "ca232cd9-83d8-4fa5-b62b-3d83f17aab51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6c92a287-0b04-4ef7-9fbd-4aa5f6167a9a",
                  "parent_uuid": "9c30a1ac-d68f-4697-ad84-073e72ab887e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "351fa7ad-644f-4fa0-96dc-121fc15cbc9c",
              "parent_uuid": "ca232cd9-83d8-4fa5-b62b-3d83f17aab51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f753a70f-57a7-4726-ba0a-2e85ccea51d0",
                  "parent_uuid": "351fa7ad-644f-4fa0-96dc-121fc15cbc9c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "76681855-ec75-485f-a160-74c82bcbbb9c",
              "parent_uuid": "ca232cd9-83d8-4fa5-b62b-3d83f17aab51",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "952cd349-b72d-4692-b9b1-c828d282b2c6",
                  "parent_uuid": "76681855-ec75-485f-a160-74c82bcbbb9c",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "be47f781-0a4d-410d-b80f-a9c4850732af",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c963370-dece-4b52-980a-54c5907a55f2",
              "parent_uuid": "be47f781-0a4d-410d-b80f-a9c4850732af",
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
              "uuid": "e9d4c536-380f-4810-8b82-deafcfd66556",
              "parent_uuid": "be47f781-0a4d-410d-b80f-a9c4850732af",
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
              "uuid": "8db972eb-ab31-4997-8376-4a33867b40e8",
              "parent_uuid": "be47f781-0a4d-410d-b80f-a9c4850732af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2f479b84-d450-4d9d-9d27-704860ada50c",
                  "parent_uuid": "8db972eb-ab31-4997-8376-4a33867b40e8",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f99e6432-329a-4c2e-a23f-71278d94b9df",
              "parent_uuid": "be47f781-0a4d-410d-b80f-a9c4850732af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab53dfd7-ee5c-4f3a-92c5-e4d294d2a0ee",
                  "parent_uuid": "f99e6432-329a-4c2e-a23f-71278d94b9df",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e0ca7107-bcf0-491d-ab47-57a955c00508",
              "parent_uuid": "be47f781-0a4d-410d-b80f-a9c4850732af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "707202db-6198-46c6-876d-ff36f974e85f",
                  "parent_uuid": "e0ca7107-bcf0-491d-ab47-57a955c00508",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "ad62c528-222b-4d6c-9293-1693be897979",
              "parent_uuid": "be47f781-0a4d-410d-b80f-a9c4850732af",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a3cb7660-4087-4f7d-bbd8-608c0b3d9022",
                  "parent_uuid": "ad62c528-222b-4d6c-9293-1693be897979",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "2d4ac4a5-c780-4043-af1e-38566d606d7e",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0b2de8c1-aa05-4040-94d5-0ad84282ef2c",
              "parent_uuid": "2d4ac4a5-c780-4043-af1e-38566d606d7e",
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
              "uuid": "40f1d1d1-6c21-455e-bc01-1c935c5b9a26",
              "parent_uuid": "2d4ac4a5-c780-4043-af1e-38566d606d7e",
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
              "uuid": "80e31300-4288-43b6-9cc2-b111cd9a4a54",
              "parent_uuid": "2d4ac4a5-c780-4043-af1e-38566d606d7e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "53c958dd-4819-4b8b-89fe-fb3d7b44d4cc",
                  "parent_uuid": "80e31300-4288-43b6-9cc2-b111cd9a4a54",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5cc5e5e1-14d8-4d8d-ad33-9c83d9d67226",
              "parent_uuid": "2d4ac4a5-c780-4043-af1e-38566d606d7e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "96193c37-0f24-406a-90bd-848630c19440",
                  "parent_uuid": "5cc5e5e1-14d8-4d8d-ad33-9c83d9d67226",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "df76e0d0-c67f-47be-9e42-581a17f68a1a",
              "parent_uuid": "2d4ac4a5-c780-4043-af1e-38566d606d7e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "22573655-b558-4f9b-bb55-f19962ed094c",
                  "parent_uuid": "df76e0d0-c67f-47be-9e42-581a17f68a1a",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0c2569e-007c-47e2-bf78-b466c3a3de86",
              "parent_uuid": "2d4ac4a5-c780-4043-af1e-38566d606d7e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "aab8f958-07e8-4db5-8d4c-93fdbc230926",
                  "parent_uuid": "f0c2569e-007c-47e2-bf78-b466c3a3de86",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b3a1a8d2-8c7a-4267-a1d0-9b6cc0146b3d",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68e5af7d-3dd2-42d0-995b-73e6b7a53e46",
              "parent_uuid": "b3a1a8d2-8c7a-4267-a1d0-9b6cc0146b3d",
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
              "uuid": "49424789-cbe4-4404-8d7d-4dfca03e5bb5",
              "parent_uuid": "b3a1a8d2-8c7a-4267-a1d0-9b6cc0146b3d",
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
              "uuid": "0e3d72f9-86d1-4962-afd1-6f89a5cde085",
              "parent_uuid": "b3a1a8d2-8c7a-4267-a1d0-9b6cc0146b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f6e4dbe9-7bff-4ae5-b079-b1fefb7f15e6",
                  "parent_uuid": "0e3d72f9-86d1-4962-afd1-6f89a5cde085",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f886e7ec-7ba4-441d-9743-b2b88ca9c764",
              "parent_uuid": "b3a1a8d2-8c7a-4267-a1d0-9b6cc0146b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bec7709c-901c-4fbe-a8bb-21b24bb0b3e8",
                  "parent_uuid": "f886e7ec-7ba4-441d-9743-b2b88ca9c764",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "003860e5-1afe-4fae-a52b-ff3c7ad9e737",
              "parent_uuid": "b3a1a8d2-8c7a-4267-a1d0-9b6cc0146b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f310cdaf-765e-48b0-8c16-ffd201dca620",
                  "parent_uuid": "003860e5-1afe-4fae-a52b-ff3c7ad9e737",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d6883523-95a0-4d02-ba50-7b944cd0da0d",
              "parent_uuid": "b3a1a8d2-8c7a-4267-a1d0-9b6cc0146b3d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a1324cee-1def-4ae7-aa1c-78b4fe5c0429",
                  "parent_uuid": "d6883523-95a0-4d02-ba50-7b944cd0da0d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "662776e7-79d9-4cea-9668-172b0ac20404",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "315920b4-17b0-4e5f-96e3-19bacb9409c5",
              "parent_uuid": "662776e7-79d9-4cea-9668-172b0ac20404",
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
              "uuid": "32fd3eb5-0cc8-4196-aefe-64dd0c805802",
              "parent_uuid": "662776e7-79d9-4cea-9668-172b0ac20404",
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
              "uuid": "e63f0d0b-0326-405c-9015-7ef8530cbd41",
              "parent_uuid": "662776e7-79d9-4cea-9668-172b0ac20404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "1d5ca899-818f-4dc4-9858-f5f0b72d6665",
                  "parent_uuid": "e63f0d0b-0326-405c-9015-7ef8530cbd41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "6d692982-2fd4-4a0a-8dbd-a5e953e7d809",
              "parent_uuid": "662776e7-79d9-4cea-9668-172b0ac20404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "54590a05-e0ef-408c-a9f5-9443db04cfbc",
                  "parent_uuid": "6d692982-2fd4-4a0a-8dbd-a5e953e7d809",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "602e20b4-d076-44f4-bcbf-189c3a20621c",
              "parent_uuid": "662776e7-79d9-4cea-9668-172b0ac20404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8a5b7365-30c7-4cae-8b78-f3e51ea59b1f",
                  "parent_uuid": "602e20b4-d076-44f4-bcbf-189c3a20621c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dc44b4d8-a316-4809-8f73-cea4df9ffa89",
              "parent_uuid": "662776e7-79d9-4cea-9668-172b0ac20404",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "3e0b63ac-6b17-49ee-b535-7fcafebc04c0",
                  "parent_uuid": "dc44b4d8-a316-4809-8f73-cea4df9ffa89",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d59b99ff-37f4-436d-a49f-06825ce691f7",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a1c264ef-8f40-4e64-8cb1-f0a5f81a7a07",
              "parent_uuid": "d59b99ff-37f4-436d-a49f-06825ce691f7",
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
              "uuid": "33574bbf-6b45-4532-a840-0709e54655ad",
              "parent_uuid": "d59b99ff-37f4-436d-a49f-06825ce691f7",
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
              "uuid": "874a0750-f084-4bf4-946b-c78c221e3f2e",
              "parent_uuid": "d59b99ff-37f4-436d-a49f-06825ce691f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "2840a252-dba0-4fde-b7cf-233fa240029a",
                  "parent_uuid": "874a0750-f084-4bf4-946b-c78c221e3f2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "7237e903-1eb8-4ee7-b795-46922f0a0683",
              "parent_uuid": "d59b99ff-37f4-436d-a49f-06825ce691f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "617a172e-f410-40f3-92b6-3d3297854565",
                  "parent_uuid": "7237e903-1eb8-4ee7-b795-46922f0a0683",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d890f91-f9ef-4db7-a407-48163cdccb4c",
              "parent_uuid": "d59b99ff-37f4-436d-a49f-06825ce691f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "5672bc59-e432-40ea-9e56-bdadc2f2e73d",
                  "parent_uuid": "9d890f91-f9ef-4db7-a407-48163cdccb4c",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f0cf7e42-9ae8-44cc-82df-4c8c9b0f3f6f",
              "parent_uuid": "d59b99ff-37f4-436d-a49f-06825ce691f7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4089dcc2-f15a-4176-b653-ffe33bc43ec9",
                  "parent_uuid": "f0cf7e42-9ae8-44cc-82df-4c8c9b0f3f6f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "bd589d3c-f73b-4e47-8713-cdf6d25470bf",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bcbc29d4-b002-4e56-a1f3-f9f28eb6e183",
              "parent_uuid": "bd589d3c-f73b-4e47-8713-cdf6d25470bf",
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
              "uuid": "c737c916-96b5-48f5-b6c8-ea9d1ec8e610",
              "parent_uuid": "bd589d3c-f73b-4e47-8713-cdf6d25470bf",
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
              "uuid": "4a7a6f98-8198-4f26-a4f2-760ea088148f",
              "parent_uuid": "bd589d3c-f73b-4e47-8713-cdf6d25470bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "550743dc-f98c-4ef6-a439-10f28029a140",
                  "parent_uuid": "4a7a6f98-8198-4f26-a4f2-760ea088148f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "794f48ef-9e65-4623-bf39-33898464bd5b",
              "parent_uuid": "bd589d3c-f73b-4e47-8713-cdf6d25470bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "36d47adf-e680-49d8-900c-73fb0ff37f1c",
                  "parent_uuid": "794f48ef-9e65-4623-bf39-33898464bd5b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "b3c66cd2-b884-4374-be18-e7e37ed2b23b",
              "parent_uuid": "bd589d3c-f73b-4e47-8713-cdf6d25470bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f868a62e-ac14-424a-af0a-17bb074d0fbb",
                  "parent_uuid": "b3c66cd2-b884-4374-be18-e7e37ed2b23b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9d773d76-50a7-4fc0-9ab4-5f8ab21eefea",
              "parent_uuid": "bd589d3c-f73b-4e47-8713-cdf6d25470bf",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c5d15912-1c12-4be9-956a-8026a34c1c1e",
                  "parent_uuid": "9d773d76-50a7-4fc0-9ab4-5f8ab21eefea",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "593ab249-03d7-4a22-914f-4117effd6b6a",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1cde4f14-3858-4c07-a210-e5763a99126c",
              "parent_uuid": "593ab249-03d7-4a22-914f-4117effd6b6a",
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
          "uuid": "c63e68d9-4bd9-4314-914c-8c4ab04fcf2e",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9b1f295a-8d80-4318-99cc-3b44075dfdf5",
              "parent_uuid": "c63e68d9-4bd9-4314-914c-8c4ab04fcf2e",
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
          "uuid": "0bf1b291-dc98-4fa5-9aeb-4045e71d4f23",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1fc529ce-e249-440a-88c2-7f3a16bd7b18",
              "parent_uuid": "0bf1b291-dc98-4fa5-9aeb-4045e71d4f23",
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
                  "uuid": "2500e1ef-5dc8-4a56-93a7-d27c6ca8b4a1",
                  "parent_uuid": "1fc529ce-e249-440a-88c2-7f3a16bd7b18",
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
          "uuid": "96e5d81a-4dc0-4108-9189-2ae7ce7f35d7",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "862adb30-5d8d-47e5-a0aa-d6fe0ffd1c26",
              "parent_uuid": "96e5d81a-4dc0-4108-9189-2ae7ce7f35d7",
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
          "uuid": "3a2a9832-ee3a-4c0d-865e-05815eddf7f4",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f2b72dc0-8cd6-47f6-a170-fa12d5a4fdf9",
              "parent_uuid": "3a2a9832-ee3a-4c0d-865e-05815eddf7f4",
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
          "uuid": "1d74febf-26a2-4ba0-b618-c31d212f6e05",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "71a9aade-93b9-463c-813c-8fa883dd2224",
              "parent_uuid": "1d74febf-26a2-4ba0-b618-c31d212f6e05",
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
              "uuid": "1c65b7c0-8e45-4eaa-a594-4f8a8961bd41",
              "parent_uuid": "1d74febf-26a2-4ba0-b618-c31d212f6e05",
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
              "uuid": "e48ed428-c25e-46a5-831f-b5ebbd761d37",
              "parent_uuid": "1d74febf-26a2-4ba0-b618-c31d212f6e05",
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
              "uuid": "ca6142ef-67d9-4983-93c8-ae0c78fea98c",
              "parent_uuid": "1d74febf-26a2-4ba0-b618-c31d212f6e05",
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
              "uuid": "663ed2fe-7eaa-46d6-81ec-3303e1278f5f",
              "parent_uuid": "1d74febf-26a2-4ba0-b618-c31d212f6e05",
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
              "uuid": "541388e7-616b-4330-8dbd-b0e372d9ca68",
              "parent_uuid": "1d74febf-26a2-4ba0-b618-c31d212f6e05",
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
          "uuid": "9115d3a9-9d51-4786-a1f8-23b57c6fc353",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "6d646752-fb10-4f7a-9419-161c375fa88b",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00fccd80-588e-4273-a967-f0daf7338a3c",
              "parent_uuid": "6d646752-fb10-4f7a-9419-161c375fa88b",
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
              "uuid": "4217e8a5-879e-431f-abb3-50fdb7bc89b9",
              "parent_uuid": "6d646752-fb10-4f7a-9419-161c375fa88b",
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
              "uuid": "9e36f79c-9996-471f-b52f-2db56e6f0615",
              "parent_uuid": "6d646752-fb10-4f7a-9419-161c375fa88b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9505d738-3ca4-4901-8453-46d4f983b9a4",
                  "parent_uuid": "9e36f79c-9996-471f-b52f-2db56e6f0615",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e588a073-d7ea-4675-8f3c-4f4a6e214100",
              "parent_uuid": "6d646752-fb10-4f7a-9419-161c375fa88b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "4475eae8-df0b-43f7-9295-ff55b6f0cd5a",
                  "parent_uuid": "e588a073-d7ea-4675-8f3c-4f4a6e214100",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "1e44c0b7-4ba2-472a-9948-2e86dfcbc302",
              "parent_uuid": "6d646752-fb10-4f7a-9419-161c375fa88b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "0ff79519-97d2-4400-833b-ea60c0252a8b",
                  "parent_uuid": "1e44c0b7-4ba2-472a-9948-2e86dfcbc302",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "51973ec5-c4c1-47a6-8c63-ab1d30b11d0e",
              "parent_uuid": "6d646752-fb10-4f7a-9419-161c375fa88b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9777e12e-4244-4763-8b28-dc36a39b8def",
                  "parent_uuid": "51973ec5-c4c1-47a6-8c63-ab1d30b11d0e",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "968b9837-5a07-436d-bd0f-6a8c8f226698",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aafa96c9-a980-4b6d-86b8-be7e1f03d317",
              "parent_uuid": "968b9837-5a07-436d-bd0f-6a8c8f226698",
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
              "uuid": "3b838f6a-140e-4302-aa7c-7b8231ce178e",
              "parent_uuid": "968b9837-5a07-436d-bd0f-6a8c8f226698",
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
              "uuid": "63ea41f9-9761-4ffe-aa1a-3fbf7be9eea5",
              "parent_uuid": "968b9837-5a07-436d-bd0f-6a8c8f226698",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "eeb99712-167f-48ef-a864-9fc84441c3fa",
                  "parent_uuid": "63ea41f9-9761-4ffe-aa1a-3fbf7be9eea5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "cff59f48-8463-474b-a66b-aa9511816770",
              "parent_uuid": "968b9837-5a07-436d-bd0f-6a8c8f226698",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d359cf2b-bd6d-4eb4-8995-3bc3cce745d4",
                  "parent_uuid": "cff59f48-8463-474b-a66b-aa9511816770",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "222a25c5-f4fc-4b29-9f2f-d3ecc9b36bbd",
              "parent_uuid": "968b9837-5a07-436d-bd0f-6a8c8f226698",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab0410db-b708-4c2b-b809-7a7eb86fbc57",
                  "parent_uuid": "222a25c5-f4fc-4b29-9f2f-d3ecc9b36bbd",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "dd91fdd1-186b-484e-a332-7ed0989b5b4d",
              "parent_uuid": "968b9837-5a07-436d-bd0f-6a8c8f226698",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "fca80e52-c5bc-408e-bdf1-eb5acc2395e7",
                  "parent_uuid": "dd91fdd1-186b-484e-a332-7ed0989b5b4d",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "958086d7-7b93-4689-9d02-4ff01537e355",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "663019e9-cef9-4671-8f0c-f115d50be949",
              "parent_uuid": "958086d7-7b93-4689-9d02-4ff01537e355",
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
              "uuid": "996dc5ce-ab89-4078-b257-02ebb4e8fa01",
              "parent_uuid": "958086d7-7b93-4689-9d02-4ff01537e355",
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
              "uuid": "767df11f-66ea-4d0e-9cf2-ddb87b238a76",
              "parent_uuid": "958086d7-7b93-4689-9d02-4ff01537e355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "44e9ddc5-0b5a-4a2e-999e-d3888e3e1d1e",
                  "parent_uuid": "767df11f-66ea-4d0e-9cf2-ddb87b238a76",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5c5f1f79-a645-4d8b-9b97-2ac242c68d41",
              "parent_uuid": "958086d7-7b93-4689-9d02-4ff01537e355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "e9785286-530b-43a9-a27c-b0b8833f8e93",
                  "parent_uuid": "5c5f1f79-a645-4d8b-9b97-2ac242c68d41",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46cc671b-e34f-4311-a414-d026c5fed454",
              "parent_uuid": "958086d7-7b93-4689-9d02-4ff01537e355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ee4aa8dc-35dd-4d81-a11d-a919cc1155f6",
                  "parent_uuid": "46cc671b-e34f-4311-a414-d026c5fed454",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "9969dc77-9eab-4520-af8c-07e87b8167f9",
              "parent_uuid": "958086d7-7b93-4689-9d02-4ff01537e355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ab1dcde1-3ef0-4ba7-926a-2b6dbbdef766",
                  "parent_uuid": "9969dc77-9eab-4520-af8c-07e87b8167f9",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "9cc7e9e4-be8f-4e2c-a73e-a4c30724db9a",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "750ec5a8-30d1-4dc0-af9a-9a4e7d89b9c8",
              "parent_uuid": "9cc7e9e4-be8f-4e2c-a73e-a4c30724db9a",
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
              "uuid": "6a0c7f80-e81b-430d-967a-6138a4c05ebe",
              "parent_uuid": "9cc7e9e4-be8f-4e2c-a73e-a4c30724db9a",
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
              "uuid": "c655bc83-e68e-414d-b879-ddbd4e03cf98",
              "parent_uuid": "9cc7e9e4-be8f-4e2c-a73e-a4c30724db9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9257251a-4656-4ff6-8f3d-ed6f72cb130c",
                  "parent_uuid": "c655bc83-e68e-414d-b879-ddbd4e03cf98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f79b3ba9-a18f-4041-ab1e-2263ad381ccc",
              "parent_uuid": "9cc7e9e4-be8f-4e2c-a73e-a4c30724db9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "cba4f8c4-6506-4517-9b72-41777631ac15",
                  "parent_uuid": "f79b3ba9-a18f-4041-ab1e-2263ad381ccc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "122605a0-dc0a-46bc-b3f8-c9295d2e57d0",
              "parent_uuid": "9cc7e9e4-be8f-4e2c-a73e-a4c30724db9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c73de0c7-f22d-4e17-9db5-3572221f4a73",
                  "parent_uuid": "122605a0-dc0a-46bc-b3f8-c9295d2e57d0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c13c7a7a-747b-464a-bcb1-22e488373a16",
              "parent_uuid": "9cc7e9e4-be8f-4e2c-a73e-a4c30724db9a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "38b46fd2-709c-4144-87b0-11584884f3ef",
                  "parent_uuid": "c13c7a7a-747b-464a-bcb1-22e488373a16",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "b9ad62e6-6062-4e45-bfa6-f79aee77dbed",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "595469a6-9391-460a-a8b0-7299ca5dc00b",
              "parent_uuid": "b9ad62e6-6062-4e45-bfa6-f79aee77dbed",
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
          "uuid": "ae2cb8e4-7b20-4387-b0bb-39e2842d6826",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7c29dfa1-47e5-4924-aae8-f58d7568a424",
              "parent_uuid": "ae2cb8e4-7b20-4387-b0bb-39e2842d6826",
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
          "uuid": "a69298c8-d987-4b1f-8b1c-d77ecbb54d0e",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b94e335b-90a4-4f79-85e3-5c3f4c8f2e43",
              "parent_uuid": "a69298c8-d987-4b1f-8b1c-d77ecbb54d0e",
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
                  "uuid": "e8af0853-81bf-40b0-b33f-3b4e21bad931",
                  "parent_uuid": "b94e335b-90a4-4f79-85e3-5c3f4c8f2e43",
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
          "uuid": "5edd4750-5147-4818-ab58-bc6fd3b2863b",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "class",
              "page-break"
            ]
          ],
          "children": [
            {
              "uuid": "89af6e23-8594-4d8b-99cd-d683358f6128",
              "parent_uuid": "5edd4750-5147-4818-ab58-bc6fd3b2863b",
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
          "uuid": "762cb426-86b5-4267-a80c-ea24be0dc768",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "c01f33b3-b0a6-449e-91db-5f989f21e0cc",
              "parent_uuid": "762cb426-86b5-4267-a80c-ea24be0dc768",
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
          "uuid": "433f97f0-79e5-4709-9505-fdb0b40c1fff",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d0d8478a-2a69-4cca-9891-4b90eb029fbd",
              "parent_uuid": "433f97f0-79e5-4709-9505-fdb0b40c1fff",
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
              "uuid": "1902f2e3-42f0-4725-a34a-0c65aef1e272",
              "parent_uuid": "433f97f0-79e5-4709-9505-fdb0b40c1fff",
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
              "uuid": "4db4bb36-585e-4ca1-be35-1fa3f58d90a6",
              "parent_uuid": "433f97f0-79e5-4709-9505-fdb0b40c1fff",
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
              "uuid": "e4285345-e3e0-45b5-92b9-3baeabff057d",
              "parent_uuid": "433f97f0-79e5-4709-9505-fdb0b40c1fff",
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
              "uuid": "092bfd61-ecb5-4f19-a736-4aad46ff9524",
              "parent_uuid": "433f97f0-79e5-4709-9505-fdb0b40c1fff",
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
              "uuid": "a15e9c81-99c5-4e08-a514-15ecb83d1307",
              "parent_uuid": "433f97f0-79e5-4709-9505-fdb0b40c1fff",
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
          "uuid": "bf774daf-48b4-4680-9f14-f852fd321c2a",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f420956-08d1-4e05-89b4-b9eb4577b5b4",
              "parent_uuid": "bf774daf-48b4-4680-9f14-f852fd321c2a",
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
              "uuid": "9bd29798-2b78-4d0f-82c1-09108a0fcda4",
              "parent_uuid": "bf774daf-48b4-4680-9f14-f852fd321c2a",
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
              "uuid": "6e55cb8d-e779-440d-bcc1-6368a39dfe08",
              "parent_uuid": "bf774daf-48b4-4680-9f14-f852fd321c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c4d172c1-6e3d-406f-9da6-36958a3ef925",
                  "parent_uuid": "6e55cb8d-e779-440d-bcc1-6368a39dfe08",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "770b6710-00d1-4fd8-8055-e41e22c0bf2e",
              "parent_uuid": "bf774daf-48b4-4680-9f14-f852fd321c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "865fe25b-8405-486c-8597-5f2f0e7e9995",
                  "parent_uuid": "770b6710-00d1-4fd8-8055-e41e22c0bf2e",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "505fb507-3f1a-4dab-a100-38d368e61826",
              "parent_uuid": "bf774daf-48b4-4680-9f14-f852fd321c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "c8951f08-08fd-44b0-8e58-95263ccfafc9",
                  "parent_uuid": "505fb507-3f1a-4dab-a100-38d368e61826",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d487c242-2de8-45d5-9937-a4725aa599fd",
              "parent_uuid": "bf774daf-48b4-4680-9f14-f852fd321c2a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "a516e9a9-c539-41b2-88d7-7fd441567ded",
                  "parent_uuid": "d487c242-2de8-45d5-9937-a4725aa599fd",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "f08b8793-5ae3-454a-be6e-a9261f232d16",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0dc7b245-3fbb-4728-80a4-9a67920555be",
              "parent_uuid": "f08b8793-5ae3-454a-be6e-a9261f232d16",
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
              "uuid": "d0dc34bf-7e66-4620-b39d-a12609502105",
              "parent_uuid": "f08b8793-5ae3-454a-be6e-a9261f232d16",
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
              "uuid": "8907ab91-dc22-47f7-a4ef-3c3a1bcf7834",
              "parent_uuid": "f08b8793-5ae3-454a-be6e-a9261f232d16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "8ea024e2-8bba-43aa-98ed-d9fd94d3c83d",
                  "parent_uuid": "8907ab91-dc22-47f7-a4ef-3c3a1bcf7834",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "5a623d9d-e1ba-437c-a3ca-d8e00551536f",
              "parent_uuid": "f08b8793-5ae3-454a-be6e-a9261f232d16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "6e06488f-4ee1-45ea-be78-74dbf4b8b6c5",
                  "parent_uuid": "5a623d9d-e1ba-437c-a3ca-d8e00551536f",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "46c854c8-7419-4d49-9e66-470938928de7",
              "parent_uuid": "f08b8793-5ae3-454a-be6e-a9261f232d16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "51381d93-0b40-43ed-b4eb-e6346cff2106",
                  "parent_uuid": "46c854c8-7419-4d49-9e66-470938928de7",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "27d48497-bacb-4d99-a295-3dce74183a47",
              "parent_uuid": "f08b8793-5ae3-454a-be6e-a9261f232d16",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f2ec4f9d-0213-460d-8cd5-73cd692cda5e",
                  "parent_uuid": "27d48497-bacb-4d99-a295-3dce74183a47",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "d914889d-e2e6-421f-894e-9bbbba7ad245",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f116ab1-6429-4936-b7ac-0813982bbe9e",
              "parent_uuid": "d914889d-e2e6-421f-894e-9bbbba7ad245",
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
              "uuid": "313e0898-c938-4e63-8a5f-ae82499eed77",
              "parent_uuid": "d914889d-e2e6-421f-894e-9bbbba7ad245",
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
              "uuid": "4f0b43e0-f4cf-44c9-a05e-7853be28fc06",
              "parent_uuid": "d914889d-e2e6-421f-894e-9bbbba7ad245",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "534ee5c5-2d03-492e-be2b-d6c9d5441ed7",
                  "parent_uuid": "4f0b43e0-f4cf-44c9-a05e-7853be28fc06",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "0b26a139-b6a9-4a77-8e0d-932525787ae0",
              "parent_uuid": "d914889d-e2e6-421f-894e-9bbbba7ad245",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "146e4e64-e05c-4d1c-953c-593c20c5145a",
                  "parent_uuid": "0b26a139-b6a9-4a77-8e0d-932525787ae0",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "267aa536-e7ba-4e34-af04-5f61f66d5f73",
              "parent_uuid": "d914889d-e2e6-421f-894e-9bbbba7ad245",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "50f3c5e1-6d1e-41b1-9589-a2fec3b3f1a1",
                  "parent_uuid": "267aa536-e7ba-4e34-af04-5f61f66d5f73",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "47b3c529-0e8b-4584-9eee-a05bee33290f",
              "parent_uuid": "d914889d-e2e6-421f-894e-9bbbba7ad245",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ffc501b9-72ec-4157-b069-f56fc14d3274",
                  "parent_uuid": "47b3c529-0e8b-4584-9eee-a05bee33290f",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "af73d31e-4d2a-41f8-8d14-f75e918cf53a",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d203eb45-95a8-4552-af43-c6648a47241e",
              "parent_uuid": "af73d31e-4d2a-41f8-8d14-f75e918cf53a",
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
              "uuid": "a394032a-e657-4db0-b169-bebe2e32f48c",
              "parent_uuid": "af73d31e-4d2a-41f8-8d14-f75e918cf53a",
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
              "uuid": "a95c9c59-299d-4a8a-b686-1ac0bbfdded1",
              "parent_uuid": "af73d31e-4d2a-41f8-8d14-f75e918cf53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "d4863ce6-d0f3-4d71-86a9-3bdf5bc6c39b",
                  "parent_uuid": "a95c9c59-299d-4a8a-b686-1ac0bbfdded1",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f7ddbefa-c561-4071-ad99-3dc475234f12",
              "parent_uuid": "af73d31e-4d2a-41f8-8d14-f75e918cf53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "13670e62-319e-4908-bff9-48cf178cafd0",
                  "parent_uuid": "f7ddbefa-c561-4071-ad99-3dc475234f12",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "d538ed8b-b7bb-4484-ba6f-b0c80d2a79f3",
              "parent_uuid": "af73d31e-4d2a-41f8-8d14-f75e918cf53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "275e26bd-bfe4-4d8f-bd85-ff2c4a5e3167",
                  "parent_uuid": "d538ed8b-b7bb-4484-ba6f-b0c80d2a79f3",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "00f0a4d0-5d32-44e5-a0e7-4eca12bedba5",
              "parent_uuid": "af73d31e-4d2a-41f8-8d14-f75e918cf53a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "772f2299-756c-478c-a40a-a8c4ed662601",
                  "parent_uuid": "00f0a4d0-5d32-44e5-a0e7-4eca12bedba5",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "29916275-e6cc-499d-8843-aeb7f3a08a78",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf747e88-e5d8-4f3d-a263-0091f866bb68",
              "parent_uuid": "29916275-e6cc-499d-8843-aeb7f3a08a78",
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
              "uuid": "7b9fa3c2-af58-4c3b-a1fb-e8a992664102",
              "parent_uuid": "29916275-e6cc-499d-8843-aeb7f3a08a78",
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
              "uuid": "aedff1dd-06b3-4733-bec6-4dabfb055560",
              "parent_uuid": "29916275-e6cc-499d-8843-aeb7f3a08a78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bc4deda3-2b19-49d4-9b07-ae802dfb23db",
                  "parent_uuid": "aedff1dd-06b3-4733-bec6-4dabfb055560",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "52a6cadd-9ebd-42bc-a307-eddfab4e8cfc",
              "parent_uuid": "29916275-e6cc-499d-8843-aeb7f3a08a78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "77d3bd48-5627-463b-a38f-f845f7d68490",
                  "parent_uuid": "52a6cadd-9ebd-42bc-a307-eddfab4e8cfc",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "957ccddb-1cec-438e-86a4-59337820d0c9",
              "parent_uuid": "29916275-e6cc-499d-8843-aeb7f3a08a78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "b40d19a4-095b-4036-bb8a-b9c301e738f3",
                  "parent_uuid": "957ccddb-1cec-438e-86a4-59337820d0c9",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "428b8c25-431d-4045-a582-468fa6fe3a01",
              "parent_uuid": "29916275-e6cc-499d-8843-aeb7f3a08a78",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "9226def6-39c3-40e3-8246-cc34de2dab16",
                  "parent_uuid": "428b8c25-431d-4045-a582-468fa6fe3a01",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "8c5abf44-d4d2-43d1-88f7-072a56c426bb",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c814462f-1f58-4947-88ac-91375a1b18ee",
              "parent_uuid": "8c5abf44-d4d2-43d1-88f7-072a56c426bb",
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
              "uuid": "7834c9dd-437d-42ed-b780-f8b95c695c91",
              "parent_uuid": "8c5abf44-d4d2-43d1-88f7-072a56c426bb",
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
              "uuid": "240024ea-57ff-407e-99b8-2d8dc1e9d91b",
              "parent_uuid": "8c5abf44-d4d2-43d1-88f7-072a56c426bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "f74453e6-711e-415c-919e-eeb2157798bf",
                  "parent_uuid": "240024ea-57ff-407e-99b8-2d8dc1e9d91b",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "e9b03416-652b-47c7-b91a-3b6feaeaceb5",
              "parent_uuid": "8c5abf44-d4d2-43d1-88f7-072a56c426bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "bb163db2-6805-4b26-a727-b1a3dd749728",
                  "parent_uuid": "e9b03416-652b-47c7-b91a-3b6feaeaceb5",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "c280745e-cd6f-467c-b621-df66de10aa98",
              "parent_uuid": "8c5abf44-d4d2-43d1-88f7-072a56c426bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "745669d2-5941-4deb-82f4-6498a140abd2",
                  "parent_uuid": "c280745e-cd6f-467c-b621-df66de10aa98",
                  "tagName": "input",
                  "properties": [
                    [
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
              "uuid": "f71f12c2-a0e1-46a5-bcab-ebda735a3000",
              "parent_uuid": "8c5abf44-d4d2-43d1-88f7-072a56c426bb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "children": [
                {
                  "uuid": "ac8bde4b-6178-46c2-9232-246c55154a40",
                  "parent_uuid": "f71f12c2-a0e1-46a5-bcab-ebda735a3000",
                  "tagName": "input",
                  "properties": [
                    [
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
          "uuid": "55bf92cf-b7ba-49b3-8784-61777f238cd1",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "59479a39-036a-46b5-bc66-9b45ec0cdc04",
              "parent_uuid": "55bf92cf-b7ba-49b3-8784-61777f238cd1",
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
          "uuid": "e5405968-b77b-4441-a21a-943f390761ac",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c9389a9c-a2a0-486d-b229-932d69780187",
              "parent_uuid": "e5405968-b77b-4441-a21a-943f390761ac",
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
          "uuid": "c74b2838-4664-4e08-9ba1-8bf4065b14c8",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8518ecd5-8de1-4f34-a52f-befbe308724a",
              "parent_uuid": "c74b2838-4664-4e08-9ba1-8bf4065b14c8",
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
                  "uuid": "957d82fb-2d86-4e3d-9906-c3ab1ed8a4b1",
                  "parent_uuid": "8518ecd5-8de1-4f34-a52f-befbe308724a",
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
          "uuid": "0fe15abf-18fd-46a1-af98-757413ce1635",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f72041a1-534f-41c4-8ae3-90ed29951e14",
              "parent_uuid": "0fe15abf-18fd-46a1-af98-757413ce1635",
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
          "uuid": "35d6a5fa-4baa-40c4-a4c0-0efcd6a97e0a",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "01a0e181-bb5c-4298-8ff0-ad253e8a0d50",
              "parent_uuid": "35d6a5fa-4baa-40c4-a4c0-0efcd6a97e0a",
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
          "uuid": "f579f91c-0f83-4975-9035-afbfda4d9b99",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a5944096-c62b-431b-a693-1035374ea0c6",
              "parent_uuid": "f579f91c-0f83-4975-9035-afbfda4d9b99",
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
              "uuid": "f172b5bd-323a-44ff-8dee-66cf9f28e73d",
              "parent_uuid": "f579f91c-0f83-4975-9035-afbfda4d9b99",
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
              "uuid": "a462649b-d4f0-438c-9f98-0986a8a68691",
              "parent_uuid": "f579f91c-0f83-4975-9035-afbfda4d9b99",
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
              "uuid": "77e99587-870d-4902-a49a-5cac2dc6cd33",
              "parent_uuid": "f579f91c-0f83-4975-9035-afbfda4d9b99",
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
              "uuid": "22526aff-91c6-4ee5-80c1-683badb9597a",
              "parent_uuid": "f579f91c-0f83-4975-9035-afbfda4d9b99",
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
          "uuid": "c2f60601-0a4a-40ed-ac44-a6c9a3b30584",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "433073b2-863a-4d6a-b7ca-ec6aefbc7f55",
              "parent_uuid": "c2f60601-0a4a-40ed-ac44-a6c9a3b30584",
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
              "uuid": "1952bcc6-6a31-44b4-bad8-0916de76f4c8",
              "parent_uuid": "c2f60601-0a4a-40ed-ac44-a6c9a3b30584",
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
              "uuid": "45c9e2ed-9275-4522-8f7c-a2f342f22265",
              "parent_uuid": "c2f60601-0a4a-40ed-ac44-a6c9a3b30584",
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
              "uuid": "efe5031f-1b32-4d93-a0f0-1675264df51a",
              "parent_uuid": "c2f60601-0a4a-40ed-ac44-a6c9a3b30584",
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
              "uuid": "4746c50f-abec-4a19-b68a-112cd1492496",
              "parent_uuid": "c2f60601-0a4a-40ed-ac44-a6c9a3b30584",
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
          "uuid": "60f18af3-aad9-4935-b1af-bef6ca8becbc",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e023b0b5-2df1-4177-8223-c033d857513f",
              "parent_uuid": "60f18af3-aad9-4935-b1af-bef6ca8becbc",
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
              "uuid": "8292f8f9-6aed-4232-8a05-aae584e24a72",
              "parent_uuid": "60f18af3-aad9-4935-b1af-bef6ca8becbc",
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
              "uuid": "e18a1a2b-d58a-401c-8fb2-c5109bbf9367",
              "parent_uuid": "60f18af3-aad9-4935-b1af-bef6ca8becbc",
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
              "uuid": "a7e9d48d-1a51-44a2-a266-2cf7d268ec98",
              "parent_uuid": "60f18af3-aad9-4935-b1af-bef6ca8becbc",
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
              "uuid": "aa394f0c-ff83-47ff-a6a2-b4f7385a2eda",
              "parent_uuid": "60f18af3-aad9-4935-b1af-bef6ca8becbc",
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
          "uuid": "1f90b69a-27ca-47c0-8b91-6121b1b84f24",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0f77be98-27b6-494d-a19f-dc03b3f74c5f",
              "parent_uuid": "1f90b69a-27ca-47c0-8b91-6121b1b84f24",
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
              "uuid": "58c5b3cd-6b4c-420a-81d9-0f99e915f7a0",
              "parent_uuid": "1f90b69a-27ca-47c0-8b91-6121b1b84f24",
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
              "uuid": "073b8408-b47a-417e-a6f4-83302e03e01b",
              "parent_uuid": "1f90b69a-27ca-47c0-8b91-6121b1b84f24",
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
              "uuid": "6b6d783b-60cb-46ae-8188-5a778cdf1fc7",
              "parent_uuid": "1f90b69a-27ca-47c0-8b91-6121b1b84f24",
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
              "uuid": "4c81cf17-e5ea-4953-999a-419b732e9dc7",
              "parent_uuid": "1f90b69a-27ca-47c0-8b91-6121b1b84f24",
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
          "uuid": "29a8fccd-9eca-43d2-9466-852331a270b8",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "911a0e0a-5679-4063-ad55-21b6dc1f11e2",
              "parent_uuid": "29a8fccd-9eca-43d2-9466-852331a270b8",
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
              "uuid": "aa228984-0fd9-4a19-861b-49c8052164e8",
              "parent_uuid": "29a8fccd-9eca-43d2-9466-852331a270b8",
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
              "uuid": "61050cd0-a5b0-4c97-be9b-a8c4dea8853f",
              "parent_uuid": "29a8fccd-9eca-43d2-9466-852331a270b8",
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
              "uuid": "a3cb8e05-4f5f-4002-962d-88702b83ad2f",
              "parent_uuid": "29a8fccd-9eca-43d2-9466-852331a270b8",
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
              "uuid": "c22b7be4-8685-4b25-ae04-15fa699e2141",
              "parent_uuid": "29a8fccd-9eca-43d2-9466-852331a270b8",
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
          "uuid": "465886f9-cb1d-4608-a8c3-f63886afc63d",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "31b88e38-40d5-4693-9a2a-8b78d0f0344e",
              "parent_uuid": "465886f9-cb1d-4608-a8c3-f63886afc63d",
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
              "uuid": "93fc89f3-be59-4af4-a758-537085184df8",
              "parent_uuid": "465886f9-cb1d-4608-a8c3-f63886afc63d",
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
              "uuid": "8312bee5-671e-4741-9f26-ae60b0ec08ab",
              "parent_uuid": "465886f9-cb1d-4608-a8c3-f63886afc63d",
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
              "uuid": "8d79af38-e17b-4336-8fcf-25b1551d1234",
              "parent_uuid": "465886f9-cb1d-4608-a8c3-f63886afc63d",
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
              "uuid": "1db21111-fdee-4ff3-b44e-d23f77f60ec9",
              "parent_uuid": "465886f9-cb1d-4608-a8c3-f63886afc63d",
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
          "uuid": "4e5e17d7-3a14-4159-83ab-7cdefba7649e",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "61e1bdd0-b6f8-4102-9e3b-71051ca86cc2",
              "parent_uuid": "4e5e17d7-3a14-4159-83ab-7cdefba7649e",
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
              "uuid": "b6173557-5891-481c-8af4-e1b14073865c",
              "parent_uuid": "4e5e17d7-3a14-4159-83ab-7cdefba7649e",
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
              "uuid": "caf42dd6-b564-4894-a290-099b49b17818",
              "parent_uuid": "4e5e17d7-3a14-4159-83ab-7cdefba7649e",
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
              "uuid": "08f907b0-d2d6-4368-94f1-e7002709cefe",
              "parent_uuid": "4e5e17d7-3a14-4159-83ab-7cdefba7649e",
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
              "uuid": "4a123d82-dce3-4c2e-af61-54915f00bfe6",
              "parent_uuid": "4e5e17d7-3a14-4159-83ab-7cdefba7649e",
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
          "uuid": "2f8db317-c626-48e5-861b-12b8b7af5826",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6025b904-61f9-4de4-ba07-c875765a3df5",
              "parent_uuid": "2f8db317-c626-48e5-861b-12b8b7af5826",
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
              "uuid": "44f1fbe3-9d5b-4d4e-a86a-1e9e7af2f955",
              "parent_uuid": "2f8db317-c626-48e5-861b-12b8b7af5826",
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
              "uuid": "10964bb9-6178-415d-9316-9ba37aec17d1",
              "parent_uuid": "2f8db317-c626-48e5-861b-12b8b7af5826",
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
              "uuid": "a3ba63e3-bc54-44b6-acbb-87482f8f3e08",
              "parent_uuid": "2f8db317-c626-48e5-861b-12b8b7af5826",
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
              "uuid": "5b913c19-56c5-4b76-9917-3fdbfb8c5da6",
              "parent_uuid": "2f8db317-c626-48e5-861b-12b8b7af5826",
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
          "uuid": "cfb34ded-7b9f-4d20-b9b3-d8ab3499dd60",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7e37e03f-44d2-4176-bc20-f521e234f941",
              "parent_uuid": "cfb34ded-7b9f-4d20-b9b3-d8ab3499dd60",
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
              "uuid": "d566a2f0-548a-47dd-b006-663dc0c325c0",
              "parent_uuid": "cfb34ded-7b9f-4d20-b9b3-d8ab3499dd60",
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
              "uuid": "736c518e-ea14-42db-8e84-abd0638ce9db",
              "parent_uuid": "cfb34ded-7b9f-4d20-b9b3-d8ab3499dd60",
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
              "uuid": "80d624d5-7cb4-4128-ab4b-7db2b7dca4bb",
              "parent_uuid": "cfb34ded-7b9f-4d20-b9b3-d8ab3499dd60",
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
              "uuid": "696e3ff1-515a-4143-967f-ad542455237a",
              "parent_uuid": "cfb34ded-7b9f-4d20-b9b3-d8ab3499dd60",
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
          "uuid": "99fdf0f9-9608-449e-ada9-d114e969d56a",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf1d4f0d-a627-435b-a645-0b25297e531f",
              "parent_uuid": "99fdf0f9-9608-449e-ada9-d114e969d56a",
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
              "uuid": "35de7158-1f3f-4a32-84be-eeb08642ddba",
              "parent_uuid": "99fdf0f9-9608-449e-ada9-d114e969d56a",
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
              "uuid": "d9267225-3847-493c-b570-1d037f62c6ac",
              "parent_uuid": "99fdf0f9-9608-449e-ada9-d114e969d56a",
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
              "uuid": "a03670f9-ee35-4abc-9182-23b4d7a32fd8",
              "parent_uuid": "99fdf0f9-9608-449e-ada9-d114e969d56a",
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
              "uuid": "f3aabf2e-0cc3-4656-942f-74dfc0149af5",
              "parent_uuid": "99fdf0f9-9608-449e-ada9-d114e969d56a",
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
          "uuid": "c5e09357-141c-47a0-84a7-6fdd9c4f3a4c",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00a0b45b-cfa9-48b0-9387-dba4f44955ac",
              "parent_uuid": "c5e09357-141c-47a0-84a7-6fdd9c4f3a4c",
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
              "uuid": "1dce8df8-3055-498d-a247-76800ee0e005",
              "parent_uuid": "c5e09357-141c-47a0-84a7-6fdd9c4f3a4c",
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
              "uuid": "566b6162-d1c9-4f4f-8f65-cfa0ab75f326",
              "parent_uuid": "c5e09357-141c-47a0-84a7-6fdd9c4f3a4c",
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
              "uuid": "77f5dddf-3469-4365-bdaa-c7d38ecb9594",
              "parent_uuid": "c5e09357-141c-47a0-84a7-6fdd9c4f3a4c",
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
              "uuid": "c48c519b-caf1-46dd-9d14-d3505eafcf84",
              "parent_uuid": "c5e09357-141c-47a0-84a7-6fdd9c4f3a4c",
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
          "uuid": "bddbfb88-f2b9-42f9-b64a-a568764a1e9a",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8f722084-76a8-4190-a041-5ae1b55684bf",
              "parent_uuid": "bddbfb88-f2b9-42f9-b64a-a568764a1e9a",
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
              "uuid": "c877f935-5bc0-4a9c-b85f-6509e7cad696",
              "parent_uuid": "bddbfb88-f2b9-42f9-b64a-a568764a1e9a",
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
              "uuid": "6577eae4-3404-4ff7-93ea-f440de662566",
              "parent_uuid": "bddbfb88-f2b9-42f9-b64a-a568764a1e9a",
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
              "uuid": "50d4cf84-1371-41d8-8436-b04b0f225ca3",
              "parent_uuid": "bddbfb88-f2b9-42f9-b64a-a568764a1e9a",
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
              "uuid": "cb5597b4-76d1-4a3b-8b78-74a94f3a7c7e",
              "parent_uuid": "bddbfb88-f2b9-42f9-b64a-a568764a1e9a",
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
          "uuid": "14e8c900-014f-4475-a7f0-bab7a1ee3a4b",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2e7060a6-24c1-4b95-969b-dc5fe785b60e",
              "parent_uuid": "14e8c900-014f-4475-a7f0-bab7a1ee3a4b",
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
              "uuid": "1f67be20-0d04-473a-b569-6f24502dfb17",
              "parent_uuid": "14e8c900-014f-4475-a7f0-bab7a1ee3a4b",
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
              "uuid": "3a4dfd11-9021-4334-be02-dfdd42257e95",
              "parent_uuid": "14e8c900-014f-4475-a7f0-bab7a1ee3a4b",
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
              "uuid": "6ac5c671-406e-4560-b03b-28d5b6790728",
              "parent_uuid": "14e8c900-014f-4475-a7f0-bab7a1ee3a4b",
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
              "uuid": "5e2b7e11-df17-410f-ab92-9896c762dc75",
              "parent_uuid": "14e8c900-014f-4475-a7f0-bab7a1ee3a4b",
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
          "uuid": "dcfea602-48a5-4c8d-9cf9-8d3ce73171f9",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86263875-ff29-4c2c-90d1-ea01b5591c9d",
              "parent_uuid": "dcfea602-48a5-4c8d-9cf9-8d3ce73171f9",
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
          "uuid": "6dc0fc67-fc8d-44b0-a9e0-3c2b76f8ea1c",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e2a843b0-b14f-44b1-be6b-a94e3e80e598",
              "parent_uuid": "6dc0fc67-fc8d-44b0-a9e0-3c2b76f8ea1c",
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
          "uuid": "ee031f78-d41b-4511-88d0-dd49305b5b86",
          "parent_uuid": "3071f0e5-504c-4d1a-b748-423c33496ba5",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "791f8b03-ca67-4511-8a20-a46b4c7c0e92",
              "parent_uuid": "ee031f78-d41b-4511-88d0-dd49305b5b86",
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
                  "uuid": "22b3bfff-31d6-43f4-bf7a-817728d1eba1",
                  "parent_uuid": "791f8b03-ca67-4511-8a20-a46b4c7c0e92",
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

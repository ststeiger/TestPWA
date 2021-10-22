
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
  "uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "1db755e2-9a8f-4835-9a41-94cc21e2d6cf",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "512f0d1c-ae1b-4cf5-b1aa-d5e4a7e37772",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "32272962-3551-44ab-90ff-436cdf97f2cb",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "782b08d0-c030-4f86-95ac-29a30f87a234",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "377f8d63-0fa7-443b-a0a5-41cff4198987",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "7966285c-667b-4988-b4d5-731ffa289552",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "f14148b3-fadf-4962-af48-b1f9ab3fde84",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
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
      "uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
      "parent_uuid": "7582df6f-e5e0-42a2-86a3-fc6fad8112a8",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "f33a344e-c6a7-41ba-bd4b-894fc31195c7",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "380c0cb4-353f-43ff-ace0-7bdd02b0256f",
              "parent_uuid": "f33a344e-c6a7-41ba-bd4b-894fc31195c7",
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
              "uuid": "ae80ab95-8a54-41d7-8d8c-17fe59692e29",
              "parent_uuid": "f33a344e-c6a7-41ba-bd4b-894fc31195c7",
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
              "uuid": "3e44a5cf-8cce-44ee-99d6-bf3965fcddbd",
              "parent_uuid": "f33a344e-c6a7-41ba-bd4b-894fc31195c7",
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
              "uuid": "85fa350d-c730-47da-9051-e83ec7e805cd",
              "parent_uuid": "f33a344e-c6a7-41ba-bd4b-894fc31195c7",
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
          "uuid": "277d1818-118d-443b-a0d9-1c8af54d271b",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "21b6f694-f17d-4f85-9682-d5cb79afc2e7",
              "parent_uuid": "277d1818-118d-443b-a0d9-1c8af54d271b",
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
              "uuid": "f0c88784-d114-4b7d-bb2d-c987e63dac68",
              "parent_uuid": "277d1818-118d-443b-a0d9-1c8af54d271b",
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
              "uuid": "498a70ec-61b6-4799-ae44-3aea78092a5a",
              "parent_uuid": "277d1818-118d-443b-a0d9-1c8af54d271b",
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
              "uuid": "27362523-5676-4a4a-88e8-7aa9b200b60f",
              "parent_uuid": "277d1818-118d-443b-a0d9-1c8af54d271b",
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
          "uuid": "8d216494-5c90-455f-ac4f-43d1ccba77f8",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000"
            ]
          ],
          "children": [
            {
              "uuid": "c2b2a74a-8db9-40b2-9307-aa82022238db",
              "parent_uuid": "8d216494-5c90-455f-ac4f-43d1ccba77f8",
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
              "uuid": "c4fad1dc-7cd0-40a5-82cd-0acc6d7d2d4c",
              "parent_uuid": "8d216494-5c90-455f-ac4f-43d1ccba77f8",
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
              "uuid": "c8bd69ca-e6a4-4a22-9029-15541868c730",
              "parent_uuid": "8d216494-5c90-455f-ac4f-43d1ccba77f8",
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
              "uuid": "f56bc047-2c7b-42e0-95c6-5577f00a30aa",
              "parent_uuid": "8d216494-5c90-455f-ac4f-43d1ccba77f8",
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
          "uuid": "93ef174e-bd09-4c1b-b028-53cd993276f5",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "476c9fb2-3bd2-48ce-aede-2721e1ade738",
              "parent_uuid": "93ef174e-bd09-4c1b-b028-53cd993276f5",
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
              "uuid": "bbb9b0aa-78e3-4ecb-8576-f01ac7387f86",
              "parent_uuid": "93ef174e-bd09-4c1b-b028-53cd993276f5",
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
              "uuid": "20977c6a-0846-48a8-b2e0-324fdc4c82a0",
              "parent_uuid": "93ef174e-bd09-4c1b-b028-53cd993276f5",
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
              "uuid": "e5a4ab60-e926-4b5a-9358-2b686fd1da78",
              "parent_uuid": "93ef174e-bd09-4c1b-b028-53cd993276f5",
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
              "uuid": "2ae2638d-f33d-469d-bb9f-6f84f351009b",
              "parent_uuid": "93ef174e-bd09-4c1b-b028-53cd993276f5",
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
              "uuid": "64050859-f7c6-4bdf-980d-dd6f7c61c1a7",
              "parent_uuid": "93ef174e-bd09-4c1b-b028-53cd993276f5",
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
          "uuid": "96f0cc98-0832-4140-bb99-13c55fb3969a",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1d8ea35d-82f7-4497-9221-6785280e55f9",
              "parent_uuid": "96f0cc98-0832-4140-bb99-13c55fb3969a",
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
          "uuid": "cc1657ef-557e-4b00-bc78-09df24bf25a7",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05360049-0e20-47b8-be4f-30fb49767c12",
              "parent_uuid": "cc1657ef-557e-4b00-bc78-09df24bf25a7",
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
              "uuid": "d6d18314-7c06-488f-971d-8eb1b9c6798a",
              "parent_uuid": "cc1657ef-557e-4b00-bc78-09df24bf25a7",
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
              "uuid": "52fbc056-8a1d-4134-a307-4d30faabefd5",
              "parent_uuid": "cc1657ef-557e-4b00-bc78-09df24bf25a7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6f388211-047f-42b3-8d73-100578649cb5",
              "parent_uuid": "cc1657ef-557e-4b00-bc78-09df24bf25a7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "d12bd331-86b4-4981-be0f-359fac814f44",
              "parent_uuid": "cc1657ef-557e-4b00-bc78-09df24bf25a7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "6042b7d2-7965-4826-9f3a-69d4997211d7",
              "parent_uuid": "cc1657ef-557e-4b00-bc78-09df24bf25a7",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 5,
          "lvl": 0
        },
        {
          "uuid": "0f117e08-a772-4585-9a87-47282501ca69",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "639283a3-0072-472b-b1e5-125558b2789d",
              "parent_uuid": "0f117e08-a772-4585-9a87-47282501ca69",
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
              "uuid": "b6d728b0-721f-444f-a24e-652755ff80a3",
              "parent_uuid": "0f117e08-a772-4585-9a87-47282501ca69",
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
              "uuid": "14937713-3170-4faa-b2c3-8c27f0670bd4",
              "parent_uuid": "0f117e08-a772-4585-9a87-47282501ca69",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "b65675d7-d255-4d10-927f-94d26773c2a7",
              "parent_uuid": "0f117e08-a772-4585-9a87-47282501ca69",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "25d84571-44fc-4a93-83a8-2a9180bb17b9",
              "parent_uuid": "0f117e08-a772-4585-9a87-47282501ca69",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "5e4c7234-5b1c-4cd3-90d8-40a802f5fe10",
              "parent_uuid": "0f117e08-a772-4585-9a87-47282501ca69",
              "tagName": "td",
              "properties": [
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
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "faa8c3d7-8c13-4d89-9bcc-1a4e7f2acd84",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cf46efd7-ba28-49ab-9c23-296e48a43ae0",
              "parent_uuid": "faa8c3d7-8c13-4d89-9bcc-1a4e7f2acd84",
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
              "uuid": "50629854-105a-4b68-82aa-9b4dcdf5a6af",
              "parent_uuid": "faa8c3d7-8c13-4d89-9bcc-1a4e7f2acd84",
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
              "uuid": "08693c07-4a50-4f0b-8992-9685c4975db0",
              "parent_uuid": "faa8c3d7-8c13-4d89-9bcc-1a4e7f2acd84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "9cbb3895-8c9f-4fa7-8004-cc4b3cf7253f",
              "parent_uuid": "faa8c3d7-8c13-4d89-9bcc-1a4e7f2acd84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "7548ff56-fca8-4441-8bd6-9aa76f15aeae",
              "parent_uuid": "faa8c3d7-8c13-4d89-9bcc-1a4e7f2acd84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "607a72e8-f36b-4bd5-a69a-c557300fef45",
              "parent_uuid": "faa8c3d7-8c13-4d89-9bcc-1a4e7f2acd84",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "8f8d4933-7bf4-4b35-9a53-23561b39a796",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86f56a86-7345-4f90-ad02-b36b73342585",
              "parent_uuid": "8f8d4933-7bf4-4b35-9a53-23561b39a796",
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
              "uuid": "4b02b6f4-c6cc-48fe-944a-4c87b92865c9",
              "parent_uuid": "8f8d4933-7bf4-4b35-9a53-23561b39a796",
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
              "uuid": "4fef1cd7-e701-4589-801e-a810eba0e39b",
              "parent_uuid": "8f8d4933-7bf4-4b35-9a53-23561b39a796",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "1bbcf48c-4c4c-4fdb-b94c-e80040f4b331",
              "parent_uuid": "8f8d4933-7bf4-4b35-9a53-23561b39a796",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "51d6a508-b6a4-4360-9264-9022760e5d54",
              "parent_uuid": "8f8d4933-7bf4-4b35-9a53-23561b39a796",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "ca562306-45d0-48d1-aa6c-762431450ad0",
              "parent_uuid": "8f8d4933-7bf4-4b35-9a53-23561b39a796",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "7cdf5800-2965-402e-b3cf-630de1ffd300",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a399cc4d-6c2e-418e-9eb3-39ac56bfcf95",
              "parent_uuid": "7cdf5800-2965-402e-b3cf-630de1ffd300",
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
              "uuid": "410b4e85-c06b-4176-a8ec-6f7ff8ec4aad",
              "parent_uuid": "7cdf5800-2965-402e-b3cf-630de1ffd300",
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
              "uuid": "0bf0a073-6326-4254-917d-59f3935cfca6",
              "parent_uuid": "7cdf5800-2965-402e-b3cf-630de1ffd300",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "c059b643-9ea6-42cd-b9a5-4708a70852e2",
              "parent_uuid": "7cdf5800-2965-402e-b3cf-630de1ffd300",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "5add2070-de3d-4137-ae5d-075e6f40e1cb",
              "parent_uuid": "7cdf5800-2965-402e-b3cf-630de1ffd300",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "bfe2bb66-89ed-409f-b00b-db26bd61ce79",
              "parent_uuid": "7cdf5800-2965-402e-b3cf-630de1ffd300",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "0dd8300c-e490-4da5-b7e1-a00afb6941c5",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df629814-7556-4129-aed6-5d372a83e17b",
              "parent_uuid": "0dd8300c-e490-4da5-b7e1-a00afb6941c5",
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
              "uuid": "f7c01761-f1c1-48c2-a753-43f3a97411bd",
              "parent_uuid": "0dd8300c-e490-4da5-b7e1-a00afb6941c5",
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
              "uuid": "30fef15c-8118-4a86-97b0-6ba0b45f41e0",
              "parent_uuid": "0dd8300c-e490-4da5-b7e1-a00afb6941c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "0f868d25-2415-43ae-8181-1920f0d7eb87",
              "parent_uuid": "0dd8300c-e490-4da5-b7e1-a00afb6941c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "95945d1f-02a8-46d1-b317-cd0c2fa2f214",
              "parent_uuid": "0dd8300c-e490-4da5-b7e1-a00afb6941c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "96664445-1644-438a-8c79-68feb2e8a260",
              "parent_uuid": "0dd8300c-e490-4da5-b7e1-a00afb6941c5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "89b559ab-6038-4412-9678-d7c8e615901c",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ed0776f-c16f-4cc9-98a3-22a95e1beda4",
              "parent_uuid": "89b559ab-6038-4412-9678-d7c8e615901c",
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
              "uuid": "10b8152a-d589-4937-9641-debd1e1659ab",
              "parent_uuid": "89b559ab-6038-4412-9678-d7c8e615901c",
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
              "uuid": "c9b27e40-2d44-4f31-9df5-9e237d28c506",
              "parent_uuid": "89b559ab-6038-4412-9678-d7c8e615901c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "75e60626-2060-4c37-aa1d-56c19a123119",
              "parent_uuid": "89b559ab-6038-4412-9678-d7c8e615901c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "f50fef62-567d-4c20-9a63-d42f42574a01",
              "parent_uuid": "89b559ab-6038-4412-9678-d7c8e615901c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "80b1cf3f-4067-458f-a72c-105cd331dcd5",
              "parent_uuid": "89b559ab-6038-4412-9678-d7c8e615901c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "d98f9305-09c2-4ef3-a9f4-4b2834c9bd17",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "50ae1fb9-4279-418c-8287-5511205cbe52",
              "parent_uuid": "d98f9305-09c2-4ef3-a9f4-4b2834c9bd17",
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
              "uuid": "6564ffec-10c1-4bcd-b86d-f16606e4596f",
              "parent_uuid": "d98f9305-09c2-4ef3-a9f4-4b2834c9bd17",
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
              "uuid": "25535bb4-43e7-4102-9f73-7389d0f481aa",
              "parent_uuid": "d98f9305-09c2-4ef3-a9f4-4b2834c9bd17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "46313f8f-131a-4769-9723-268689e09573",
              "parent_uuid": "d98f9305-09c2-4ef3-a9f4-4b2834c9bd17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "46a966b3-e4a4-4401-b638-a1d31888db30",
              "parent_uuid": "d98f9305-09c2-4ef3-a9f4-4b2834c9bd17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "e41a17a9-36e9-43be-83f2-8fba4771fa17",
              "parent_uuid": "d98f9305-09c2-4ef3-a9f4-4b2834c9bd17",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "a2daad68-06f0-4010-ba09-455eead90260",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "712e7447-0a67-49c2-90e1-93a1d6c599b9",
              "parent_uuid": "a2daad68-06f0-4010-ba09-455eead90260",
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
              "uuid": "ec6849e0-b6fe-4312-af59-16f322cdeef4",
              "parent_uuid": "a2daad68-06f0-4010-ba09-455eead90260",
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
              "uuid": "d94a7e84-fa73-44cf-8dd5-033324b1a340",
              "parent_uuid": "a2daad68-06f0-4010-ba09-455eead90260",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6e24128b-c3af-4c1b-a01c-484647b5500a",
              "parent_uuid": "a2daad68-06f0-4010-ba09-455eead90260",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "5a70438e-3c72-457b-97b3-a932fd0dd801",
              "parent_uuid": "a2daad68-06f0-4010-ba09-455eead90260",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "2acb4dd3-a1ad-4999-9976-4d9524c9b38f",
              "parent_uuid": "a2daad68-06f0-4010-ba09-455eead90260",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "64a85b99-cdef-4a06-b8c4-6e22f5aabe8d",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "647a6543-1933-497a-915a-15f96c5e3f0e",
              "parent_uuid": "64a85b99-cdef-4a06-b8c4-6e22f5aabe8d",
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
              "uuid": "2bfc8fc0-fc88-45e9-8f0f-a8bed4c1bcf5",
              "parent_uuid": "64a85b99-cdef-4a06-b8c4-6e22f5aabe8d",
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
              "uuid": "84625147-56a9-47f6-9041-aa0a47380cf9",
              "parent_uuid": "64a85b99-cdef-4a06-b8c4-6e22f5aabe8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "8898497b-bb2d-4df2-8d84-fd91c2687c3a",
              "parent_uuid": "64a85b99-cdef-4a06-b8c4-6e22f5aabe8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0d7779d2-2045-4662-bdf9-695606ff1b96",
              "parent_uuid": "64a85b99-cdef-4a06-b8c4-6e22f5aabe8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "571bedd4-3def-43e0-b570-fd88a5934bc8",
              "parent_uuid": "64a85b99-cdef-4a06-b8c4-6e22f5aabe8d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "6df4f296-4ce2-4885-9177-478af70fca9c",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dcafd0d7-db59-490f-b6f8-290681b1314e",
              "parent_uuid": "6df4f296-4ce2-4885-9177-478af70fca9c",
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
              "uuid": "9d84bda7-4e01-4b30-b281-7387eea42848",
              "parent_uuid": "6df4f296-4ce2-4885-9177-478af70fca9c",
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
              "uuid": "df515f7f-ea55-4f2f-b27f-0807494464ad",
              "parent_uuid": "6df4f296-4ce2-4885-9177-478af70fca9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6c90010f-a292-4a08-ad3a-1b542439c70b",
              "parent_uuid": "6df4f296-4ce2-4885-9177-478af70fca9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "2458a080-9118-44c7-8c21-e475863ab23d",
              "parent_uuid": "6df4f296-4ce2-4885-9177-478af70fca9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "d43c1759-03d3-46a5-9a73-38fd94f2685d",
              "parent_uuid": "6df4f296-4ce2-4885-9177-478af70fca9c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "23150987-4b10-4ffa-a67a-6e42e5ae9c6b",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d295b492-4f4d-4d5c-9bfc-b440095dcbd9",
              "parent_uuid": "23150987-4b10-4ffa-a67a-6e42e5ae9c6b",
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
              "uuid": "30f28b98-5997-48e9-a516-b795ecbc4e5d",
              "parent_uuid": "23150987-4b10-4ffa-a67a-6e42e5ae9c6b",
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
              "uuid": "77838b4d-7a75-4abf-8871-b64370347a03",
              "parent_uuid": "23150987-4b10-4ffa-a67a-6e42e5ae9c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "85ead1b6-5bef-47ce-9063-a40d309896c5",
              "parent_uuid": "23150987-4b10-4ffa-a67a-6e42e5ae9c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "01a46fd4-c725-4e8e-b733-00951aec1df5",
              "parent_uuid": "23150987-4b10-4ffa-a67a-6e42e5ae9c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "46d7164e-203f-4ac5-b4e4-d2e6aed05d9a",
              "parent_uuid": "23150987-4b10-4ffa-a67a-6e42e5ae9c6b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "7123636f-65f3-4d50-af3b-973e1ffdab66",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "16514a27-03e3-494b-8183-78bee2c613e8",
              "parent_uuid": "7123636f-65f3-4d50-af3b-973e1ffdab66",
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
          "uuid": "1dd692c8-c5b3-4bdc-a255-baa01f9fdda4",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0e4cda22-6079-4830-bf90-e50ec888c1a7",
              "parent_uuid": "1dd692c8-c5b3-4bdc-a255-baa01f9fdda4",
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
          "uuid": "be0ca81c-bfe9-46bc-b2c4-879d0a58a940",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52c71de9-c3ad-437d-a76d-b7d6be3e2e46",
              "parent_uuid": "be0ca81c-bfe9-46bc-b2c4-879d0a58a940",
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
              "innerHtml": "\r\n                    <textarea class=\"notes\"></textarea>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "91dac631-0c64-485d-972b-382023eaabc6",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2babdbef-7559-4b64-833e-3860666215bc",
              "parent_uuid": "91dac631-0c64-485d-972b-382023eaabc6",
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
          "uuid": "024eb81f-02a6-4ad4-b191-0ef4987afb63",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: black;"
            ]
          ],
          "children": [
            {
              "uuid": "d5c30bda-a1e6-426d-941e-8c0fa1bd0aea",
              "parent_uuid": "024eb81f-02a6-4ad4-b191-0ef4987afb63",
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
          "uuid": "6dcc803c-f8d4-4277-8703-819c169b5f50",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea48bb13-73a6-4a40-bc0a-0bff24cdff68",
              "parent_uuid": "6dcc803c-f8d4-4277-8703-819c169b5f50",
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
              "uuid": "6b9ccdad-6e54-4206-b7ef-f37336f5b3c7",
              "parent_uuid": "6dcc803c-f8d4-4277-8703-819c169b5f50",
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
              "uuid": "98579203-429c-494b-bb66-2cdccf54e79b",
              "parent_uuid": "6dcc803c-f8d4-4277-8703-819c169b5f50",
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
              "uuid": "f313140f-7f1b-4b44-afe7-a5955af3c5e5",
              "parent_uuid": "6dcc803c-f8d4-4277-8703-819c169b5f50",
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
              "uuid": "7393bb44-382f-4142-89ac-ef63744ea089",
              "parent_uuid": "6dcc803c-f8d4-4277-8703-819c169b5f50",
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
              "uuid": "c67b8635-8fe2-4ccb-ae5b-1afd3b0cfea3",
              "parent_uuid": "6dcc803c-f8d4-4277-8703-819c169b5f50",
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
          "uuid": "8eb247e1-6f38-473a-afe5-ef32abff81d3",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9be2f3a3-9b0f-48fc-b26f-a3e0f039eb2c",
              "parent_uuid": "8eb247e1-6f38-473a-afe5-ef32abff81d3",
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
              "uuid": "ce4cd53d-b699-4fda-b0a1-9dded056b2d7",
              "parent_uuid": "8eb247e1-6f38-473a-afe5-ef32abff81d3",
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
              "uuid": "126d652a-297e-4002-80e4-93cd75202fa2",
              "parent_uuid": "8eb247e1-6f38-473a-afe5-ef32abff81d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d7a04641-c879-4832-ac6c-1dff4947a9b8",
              "parent_uuid": "8eb247e1-6f38-473a-afe5-ef32abff81d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "adfad39b-5a9b-41ed-8db3-1814c92660fd",
              "parent_uuid": "8eb247e1-6f38-473a-afe5-ef32abff81d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "6ebb6a9b-f3ea-4c1b-9d1c-bb4473b3c31e",
              "parent_uuid": "8eb247e1-6f38-473a-afe5-ef32abff81d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "85dffee9-a233-4409-ae00-2f5c81952c43",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "68c4f042-43b8-4fe3-acf3-e7d763bc8674",
              "parent_uuid": "85dffee9-a233-4409-ae00-2f5c81952c43",
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
              "uuid": "9cb58b86-3941-454a-9de1-95ef43ae5279",
              "parent_uuid": "85dffee9-a233-4409-ae00-2f5c81952c43",
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
              "uuid": "3ec93579-e821-4b2d-ad92-3bc5c31040cb",
              "parent_uuid": "85dffee9-a233-4409-ae00-2f5c81952c43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "e9799b1b-9243-478e-9b14-9b2bc0f81eae",
              "parent_uuid": "85dffee9-a233-4409-ae00-2f5c81952c43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a9a4f070-31a9-48cd-9af3-9bf7e8ca98cc",
              "parent_uuid": "85dffee9-a233-4409-ae00-2f5c81952c43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "decde0d5-330c-459b-a15f-6913ff93af3a",
              "parent_uuid": "85dffee9-a233-4409-ae00-2f5c81952c43",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "29eb4234-6d53-43e0-ba33-2d25ab710314",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6cdf9951-40dc-4f8d-9308-0be46b069fd1",
              "parent_uuid": "29eb4234-6d53-43e0-ba33-2d25ab710314",
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
              "uuid": "21579692-ac5a-4004-8ccb-88eaf213ed99",
              "parent_uuid": "29eb4234-6d53-43e0-ba33-2d25ab710314",
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
              "uuid": "1f57caf6-a580-417f-a5db-776ba9e57cb3",
              "parent_uuid": "29eb4234-6d53-43e0-ba33-2d25ab710314",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "efbd74d8-1938-46fb-8299-e57e4dc514cf",
              "parent_uuid": "29eb4234-6d53-43e0-ba33-2d25ab710314",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "1cb9e86f-c73f-43be-a271-7706333be423",
              "parent_uuid": "29eb4234-6d53-43e0-ba33-2d25ab710314",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "afebb4d9-208a-4992-ae5c-bb8d526f520c",
              "parent_uuid": "29eb4234-6d53-43e0-ba33-2d25ab710314",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "d8c5bb38-0e97-4304-9357-ebfe89ab486e",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b686905e-1e52-4b50-a741-528e4cdad936",
              "parent_uuid": "d8c5bb38-0e97-4304-9357-ebfe89ab486e",
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
              "uuid": "6a237cdf-dad2-4cdd-a7f0-59d20db4c3ca",
              "parent_uuid": "d8c5bb38-0e97-4304-9357-ebfe89ab486e",
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
              "uuid": "b4e2988a-96f1-4152-bcfd-f3752d077882",
              "parent_uuid": "d8c5bb38-0e97-4304-9357-ebfe89ab486e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "167f681f-cba0-41d2-af2f-7cffc0ee5d86",
              "parent_uuid": "d8c5bb38-0e97-4304-9357-ebfe89ab486e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "24b892d1-d487-410e-b4df-b8811bb16646",
              "parent_uuid": "d8c5bb38-0e97-4304-9357-ebfe89ab486e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "197bd7f6-5f7e-43e2-b879-23e35760c741",
              "parent_uuid": "d8c5bb38-0e97-4304-9357-ebfe89ab486e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "24b48bbf-3ff3-4989-98d6-4c98118f26c8",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1de67ef1-78de-4d95-b853-4620a8276805",
              "parent_uuid": "24b48bbf-3ff3-4989-98d6-4c98118f26c8",
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
          "uuid": "91a27fe3-a31a-4cc6-b297-27e09aeb1177",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3bca9d83-66e3-4812-9046-d9dcb82c403d",
              "parent_uuid": "91a27fe3-a31a-4cc6-b297-27e09aeb1177",
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
          "uuid": "74ef3d15-2bce-4353-bc7c-28117ca46a4b",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a877bb85-6ccb-4e9a-a10d-773e0d577269",
              "parent_uuid": "74ef3d15-2bce-4353-bc7c-28117ca46a4b",
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
              "innerHtml": "\r\n                    <textarea class=\"notes\"></textarea>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "b460c13d-69c1-4a96-8342-284191ebd67c",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ac445660-72c4-4b73-845b-f348e44a3f02",
              "parent_uuid": "b460c13d-69c1-4a96-8342-284191ebd67c",
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
          "uuid": "eb2fb7c9-3873-44ec-b136-a94c64836f6e",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "e9065340-f3ec-4051-b9e3-9ae74a51148c",
              "parent_uuid": "eb2fb7c9-3873-44ec-b136-a94c64836f6e",
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
          "uuid": "edb10a57-887d-4a94-8436-f4ef17e60c61",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "893585fa-346b-412f-916e-53c25615e988",
              "parent_uuid": "edb10a57-887d-4a94-8436-f4ef17e60c61",
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
              "uuid": "e00996d2-4e91-4bc7-b938-cd905af7c931",
              "parent_uuid": "edb10a57-887d-4a94-8436-f4ef17e60c61",
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
              "uuid": "901d0886-0bc0-47f3-9d2f-63e1965eb82b",
              "parent_uuid": "edb10a57-887d-4a94-8436-f4ef17e60c61",
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
              "uuid": "7733c29a-8288-47a8-9b6c-1dedb543ccc9",
              "parent_uuid": "edb10a57-887d-4a94-8436-f4ef17e60c61",
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
              "uuid": "ea3dbb6e-9725-4093-b68e-07a287b3eb1a",
              "parent_uuid": "edb10a57-887d-4a94-8436-f4ef17e60c61",
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
              "uuid": "226aba66-08c0-4834-afb9-56bd23b6464a",
              "parent_uuid": "edb10a57-887d-4a94-8436-f4ef17e60c61",
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
          "uuid": "61253680-4805-455e-a0b7-e9d558b66519",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "482a42ce-98e2-4263-93cb-afd3695d80d3",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86b56745-e353-4c8c-a47c-bc1b5e05e27e",
              "parent_uuid": "482a42ce-98e2-4263-93cb-afd3695d80d3",
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
              "uuid": "e26c41a3-9806-4989-95b4-1f420964eb22",
              "parent_uuid": "482a42ce-98e2-4263-93cb-afd3695d80d3",
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
              "uuid": "d22c5b69-f9f9-4b03-9375-fabffba99903",
              "parent_uuid": "482a42ce-98e2-4263-93cb-afd3695d80d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "6eaf7285-a636-46ec-b728-9f51a60aed21",
              "parent_uuid": "482a42ce-98e2-4263-93cb-afd3695d80d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "01b1c7b6-ce37-4ef2-b670-d6488da4a5c2",
              "parent_uuid": "482a42ce-98e2-4263-93cb-afd3695d80d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "cce8753f-3f97-498d-970a-087596bfd8cf",
              "parent_uuid": "482a42ce-98e2-4263-93cb-afd3695d80d3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 34,
          "lvl": 0
        },
        {
          "uuid": "95cb883f-889f-4fda-b66a-42aa2fdc9355",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2d92d680-09ec-4c86-a1ea-f53de9482d45",
              "parent_uuid": "95cb883f-889f-4fda-b66a-42aa2fdc9355",
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
              "uuid": "6026fd27-9615-47da-a9da-845ead956233",
              "parent_uuid": "95cb883f-889f-4fda-b66a-42aa2fdc9355",
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
              "uuid": "3ed14b00-6ebd-41dd-80bc-5ef019bebc7b",
              "parent_uuid": "95cb883f-889f-4fda-b66a-42aa2fdc9355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "7ad30de6-9032-4b23-ba14-9db9ff2d8737",
              "parent_uuid": "95cb883f-889f-4fda-b66a-42aa2fdc9355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "ef79b443-59cc-4ec5-b6d7-a9f19088f502",
              "parent_uuid": "95cb883f-889f-4fda-b66a-42aa2fdc9355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "2267015d-3d19-4f39-b26a-2a51f7cb80ee",
              "parent_uuid": "95cb883f-889f-4fda-b66a-42aa2fdc9355",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 35,
          "lvl": 0
        },
        {
          "uuid": "69f253b9-c288-44c4-b38a-b6f15cc9a309",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5c422097-3c33-4e7c-882e-38c457193f25",
              "parent_uuid": "69f253b9-c288-44c4-b38a-b6f15cc9a309",
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
              "uuid": "6636a5b2-fb7f-48dd-a801-dc6b4db87c37",
              "parent_uuid": "69f253b9-c288-44c4-b38a-b6f15cc9a309",
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
              "uuid": "e4843b38-8e2e-4663-9a08-efbb3060b140",
              "parent_uuid": "69f253b9-c288-44c4-b38a-b6f15cc9a309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "bedb1851-dad3-4dd1-90e1-b90ea06b74f4",
              "parent_uuid": "69f253b9-c288-44c4-b38a-b6f15cc9a309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "c3e77d3d-661c-478a-b772-29bb92c3f789",
              "parent_uuid": "69f253b9-c288-44c4-b38a-b6f15cc9a309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "d6550234-d196-47f5-8dda-938eacbcb75b",
              "parent_uuid": "69f253b9-c288-44c4-b38a-b6f15cc9a309",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 36,
          "lvl": 0
        },
        {
          "uuid": "ab4cd088-2989-459e-9280-58d39b43021d",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8e72e461-6c8f-435c-b770-48d2f3914c48",
              "parent_uuid": "ab4cd088-2989-459e-9280-58d39b43021d",
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
              "uuid": "3795a0e9-33ab-4e14-9699-2ff383660c5e",
              "parent_uuid": "ab4cd088-2989-459e-9280-58d39b43021d",
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
              "uuid": "85043e7a-5928-4261-98c9-ed6f537f48fc",
              "parent_uuid": "ab4cd088-2989-459e-9280-58d39b43021d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "5f305586-7fd1-48dc-bd79-c3541e29a733",
              "parent_uuid": "ab4cd088-2989-459e-9280-58d39b43021d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "60e48bb8-dfbf-4e23-9d7d-e1346fc660e8",
              "parent_uuid": "ab4cd088-2989-459e-9280-58d39b43021d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "aa9200ff-55d4-440c-8482-3e24f5654642",
              "parent_uuid": "ab4cd088-2989-459e-9280-58d39b43021d",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 37,
          "lvl": 0
        },
        {
          "uuid": "10795c6b-2eec-4201-8dcd-6c7cf916dbd0",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1571e6c4-40d6-4120-aa2f-5810e4555b7b",
              "parent_uuid": "10795c6b-2eec-4201-8dcd-6c7cf916dbd0",
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
              "uuid": "fcc26623-7b7d-4065-8d99-dfb15522aa3e",
              "parent_uuid": "10795c6b-2eec-4201-8dcd-6c7cf916dbd0",
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
              "uuid": "4152c370-059b-4589-81eb-382d5b271eb3",
              "parent_uuid": "10795c6b-2eec-4201-8dcd-6c7cf916dbd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "5b56a693-045a-418d-bcf0-e21676d620cd",
              "parent_uuid": "10795c6b-2eec-4201-8dcd-6c7cf916dbd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "3dbe51b9-2826-4e0c-996c-df0fca1c1178",
              "parent_uuid": "10795c6b-2eec-4201-8dcd-6c7cf916dbd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "64ed1824-8a8b-4f7c-846e-d4dd70f29679",
              "parent_uuid": "10795c6b-2eec-4201-8dcd-6c7cf916dbd0",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 38,
          "lvl": 0
        },
        {
          "uuid": "4d4dcc08-79b4-4ddf-badd-1966df79e196",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2c7867b7-b285-4028-86ee-7226ae2c2488",
              "parent_uuid": "4d4dcc08-79b4-4ddf-badd-1966df79e196",
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
              "uuid": "9632f844-efbc-42ff-a569-c8ed7972293b",
              "parent_uuid": "4d4dcc08-79b4-4ddf-badd-1966df79e196",
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
              "uuid": "9e11d250-4e43-4ae8-b50b-c0bf786392eb",
              "parent_uuid": "4d4dcc08-79b4-4ddf-badd-1966df79e196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "55fd3179-fad9-4efc-b61c-aec46f9602d2",
              "parent_uuid": "4d4dcc08-79b4-4ddf-badd-1966df79e196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "a35105d9-7fa6-4899-ad0c-b494f87f8225",
              "parent_uuid": "4d4dcc08-79b4-4ddf-badd-1966df79e196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "24dfa312-7011-4f11-9c4a-028e843d802c",
              "parent_uuid": "4d4dcc08-79b4-4ddf-badd-1966df79e196",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ],
                [
                  "bgcolor",
                  "#E7E6E6"
                ]
              ],
              "innerHtml": "<input type=\"checkbox\">",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 39,
          "lvl": 0
        },
        {
          "uuid": "9dab576b-410a-454b-a51c-8b832efeed41",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca3139b4-0818-4f4a-9223-eb25ae10d024",
              "parent_uuid": "9dab576b-410a-454b-a51c-8b832efeed41",
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
          "uuid": "febb88f1-a185-4928-8b12-ea7aeab4c747",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e981eabe-4364-459f-acae-00703b1fc4d7",
              "parent_uuid": "febb88f1-a185-4928-8b12-ea7aeab4c747",
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
          "uuid": "ecd3f3aa-2935-4735-b373-eec6a5902aa4",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "451bd70f-1201-4e05-b4b8-a82b712a8a2c",
              "parent_uuid": "ecd3f3aa-2935-4735-b373-eec6a5902aa4",
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
              "innerHtml": "\r\n                    <textarea class=\"notes\"></textarea>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "954f2e27-0703-440e-9655-9cb1749f26ab",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "547c1ef4-124b-4800-ade4-dc5bbe979fce",
              "parent_uuid": "954f2e27-0703-440e-9655-9cb1749f26ab",
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
          "uuid": "9327daf3-f416-46d6-9884-f671931cf5fe",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d045ff67-515a-47f7-b343-143baa3eddbd",
              "parent_uuid": "9327daf3-f416-46d6-9884-f671931cf5fe",
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
          "uuid": "90538e0e-3798-48ba-b0f8-b965e94fe375",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3844ac1-dbc8-4b32-8b04-91c143ac9148",
              "parent_uuid": "90538e0e-3798-48ba-b0f8-b965e94fe375",
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
              "uuid": "ea519b88-3804-4490-8820-54f8d25ec966",
              "parent_uuid": "90538e0e-3798-48ba-b0f8-b965e94fe375",
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
              "uuid": "d4e68d54-68d4-4513-a75e-3799a9ca47f7",
              "parent_uuid": "90538e0e-3798-48ba-b0f8-b965e94fe375",
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
              "uuid": "8835ab9e-6969-4317-980c-fb682983c82a",
              "parent_uuid": "90538e0e-3798-48ba-b0f8-b965e94fe375",
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
              "uuid": "c29f7da0-37e4-49e0-bfcd-a4c88ab4472c",
              "parent_uuid": "90538e0e-3798-48ba-b0f8-b965e94fe375",
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
          "uuid": "d22c7e72-e560-4899-81c3-338caa29dfcf",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "48646595-7076-4a44-9193-2a2cf51a3536",
              "parent_uuid": "d22c7e72-e560-4899-81c3-338caa29dfcf",
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
              "uuid": "2ca4ffa7-fb50-47b1-9e9c-2920ae215d68",
              "parent_uuid": "d22c7e72-e560-4899-81c3-338caa29dfcf",
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
              "uuid": "73c118d5-8fa9-441a-a0d9-61cc2937b325",
              "parent_uuid": "d22c7e72-e560-4899-81c3-338caa29dfcf",
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
              "uuid": "071cd18b-6471-47d8-a3ad-85017133e23f",
              "parent_uuid": "d22c7e72-e560-4899-81c3-338caa29dfcf",
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
              "uuid": "8dc7db39-80b3-4869-bbc4-31a809ba5f7c",
              "parent_uuid": "d22c7e72-e560-4899-81c3-338caa29dfcf",
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
          "uuid": "8a57d8cb-6682-4b0a-8678-e7561b1ac455",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a0ec0ad8-0432-4277-accd-05a11b16143c",
              "parent_uuid": "8a57d8cb-6682-4b0a-8678-e7561b1ac455",
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
              "uuid": "6edc319a-8096-4a33-8973-6b6af86ba828",
              "parent_uuid": "8a57d8cb-6682-4b0a-8678-e7561b1ac455",
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
              "uuid": "15bb73c0-4860-452c-81c5-fa7981163370",
              "parent_uuid": "8a57d8cb-6682-4b0a-8678-e7561b1ac455",
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
              "uuid": "bd334bdb-0ad3-4c5b-b8f1-5743592b0f37",
              "parent_uuid": "8a57d8cb-6682-4b0a-8678-e7561b1ac455",
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
              "uuid": "144c7cda-4437-40c8-b2fb-24618967301c",
              "parent_uuid": "8a57d8cb-6682-4b0a-8678-e7561b1ac455",
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
          "uuid": "7197203e-b442-4bf0-b242-8b7b98e77b1e",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ef23ce99-924d-413f-989d-088937c3d43a",
              "parent_uuid": "7197203e-b442-4bf0-b242-8b7b98e77b1e",
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
              "uuid": "f0526554-ccbd-4d38-8c3e-8e9d26c7e89b",
              "parent_uuid": "7197203e-b442-4bf0-b242-8b7b98e77b1e",
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
              "uuid": "036575f7-31a1-46dd-8e8e-149742c82c6d",
              "parent_uuid": "7197203e-b442-4bf0-b242-8b7b98e77b1e",
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
              "uuid": "16aa210e-473c-45f5-a51b-95d817b18f42",
              "parent_uuid": "7197203e-b442-4bf0-b242-8b7b98e77b1e",
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
              "uuid": "e40093e4-df58-426c-890f-fb72969aca81",
              "parent_uuid": "7197203e-b442-4bf0-b242-8b7b98e77b1e",
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
          "uuid": "a408c901-7529-481b-89a2-9b6e4f442a42",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4afbf7a6-7c31-4ae2-a2e4-1e2d784a2924",
              "parent_uuid": "a408c901-7529-481b-89a2-9b6e4f442a42",
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
              "uuid": "c7f0a689-7c55-4cab-91ca-22d85a7f0a39",
              "parent_uuid": "a408c901-7529-481b-89a2-9b6e4f442a42",
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
              "uuid": "66acaa1c-81fc-4898-8fbf-d85bfa7116a9",
              "parent_uuid": "a408c901-7529-481b-89a2-9b6e4f442a42",
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
              "uuid": "ab942cd2-a48a-41fb-9258-e632a6a0de4c",
              "parent_uuid": "a408c901-7529-481b-89a2-9b6e4f442a42",
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
              "uuid": "c27bd5cb-5904-492e-ad95-e0cb2e59c3a2",
              "parent_uuid": "a408c901-7529-481b-89a2-9b6e4f442a42",
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
          "uuid": "35b8e7ee-dd95-4811-afd9-a5c58de50f71",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4220723d-6f41-468e-b943-ad1eb3ca1867",
              "parent_uuid": "35b8e7ee-dd95-4811-afd9-a5c58de50f71",
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
              "uuid": "72a0b5f4-9725-4b55-ab45-67bd8d3ed763",
              "parent_uuid": "35b8e7ee-dd95-4811-afd9-a5c58de50f71",
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
              "uuid": "aef75e73-d3b4-478c-b388-e69ba9237906",
              "parent_uuid": "35b8e7ee-dd95-4811-afd9-a5c58de50f71",
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
              "uuid": "b0f0718c-681d-4f1b-9345-bdecdcedad14",
              "parent_uuid": "35b8e7ee-dd95-4811-afd9-a5c58de50f71",
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
              "uuid": "00212157-fd28-468a-8122-3ee20b7d72fc",
              "parent_uuid": "35b8e7ee-dd95-4811-afd9-a5c58de50f71",
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
          "uuid": "3e3949a5-c646-4917-889d-87a639561816",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7f5b5ef8-cc63-4b05-b627-bc555cbc804e",
              "parent_uuid": "3e3949a5-c646-4917-889d-87a639561816",
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
              "uuid": "43b4f8dc-edad-482e-a0c7-b3e7d97f6d22",
              "parent_uuid": "3e3949a5-c646-4917-889d-87a639561816",
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
              "uuid": "dce32112-197a-455a-80af-630930e699ee",
              "parent_uuid": "3e3949a5-c646-4917-889d-87a639561816",
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
              "uuid": "3b4b5f56-849c-4aa7-8585-3b40ff507694",
              "parent_uuid": "3e3949a5-c646-4917-889d-87a639561816",
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
              "uuid": "ab9050ce-8e18-4d33-8217-276f8045f262",
              "parent_uuid": "3e3949a5-c646-4917-889d-87a639561816",
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
          "uuid": "42507083-5da8-4de8-a995-493cbb568dda",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2ec955b6-c61d-48e2-9a0c-a79da1e59313",
              "parent_uuid": "42507083-5da8-4de8-a995-493cbb568dda",
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
              "uuid": "6328b653-7f15-4ce9-a0d5-3a394b426b88",
              "parent_uuid": "42507083-5da8-4de8-a995-493cbb568dda",
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
              "uuid": "be14a0dc-265e-4868-a3f3-09d9ed48d2cd",
              "parent_uuid": "42507083-5da8-4de8-a995-493cbb568dda",
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
              "uuid": "4b38effd-f600-4eac-b727-5b9d5abbfccb",
              "parent_uuid": "42507083-5da8-4de8-a995-493cbb568dda",
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
              "uuid": "400e3917-8f24-4803-ba32-a4ea650b8dfd",
              "parent_uuid": "42507083-5da8-4de8-a995-493cbb568dda",
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
          "uuid": "e102b638-7bc7-4e7b-b619-6e50f4a1b9c9",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1c3718b2-a515-4fd1-b16a-ea2bca25beab",
              "parent_uuid": "e102b638-7bc7-4e7b-b619-6e50f4a1b9c9",
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
              "uuid": "344fb059-8b58-40cc-a339-c3edd42a8386",
              "parent_uuid": "e102b638-7bc7-4e7b-b619-6e50f4a1b9c9",
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
              "uuid": "8d34267e-5dd1-49ad-9a6e-7a876b7dd1f7",
              "parent_uuid": "e102b638-7bc7-4e7b-b619-6e50f4a1b9c9",
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
              "uuid": "db94af1c-2f31-42d5-b7c3-234c87369e22",
              "parent_uuid": "e102b638-7bc7-4e7b-b619-6e50f4a1b9c9",
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
              "uuid": "819f31a9-639b-4a6d-839f-a646013b69b8",
              "parent_uuid": "e102b638-7bc7-4e7b-b619-6e50f4a1b9c9",
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
          "uuid": "5ba5102c-eeb0-41f0-b3ed-89fae328bef7",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b4fd18ad-f680-414e-9bd5-8843ced5573b",
              "parent_uuid": "5ba5102c-eeb0-41f0-b3ed-89fae328bef7",
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
          "uuid": "4f053fe3-4ec3-4eb9-8296-3087578006cf",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bf8c78e2-48c3-40cf-8b8f-1b3543bf75ff",
              "parent_uuid": "4f053fe3-4ec3-4eb9-8296-3087578006cf",
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
          "uuid": "df2fcd5d-f2d8-4550-850e-b80d029a473d",
          "parent_uuid": "df3c388a-83de-4b93-9dd9-5c1c79df64f1",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "1107621f-2c41-4d51-981e-bda11da8760f",
              "parent_uuid": "df2fcd5d-f2d8-4550-850e-b80d029a473d",
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
              "innerHtml": "\r\n                    <textarea class=\"notes\"></textarea>\r\n                ",
              "children": [],
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
    ,'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS cl_uid 
INTO #CheckListNodes 
FROM CTE 
ORDER BY CTE.lvl, CTE.sort 



DECLARE @allChecklists TABLE (CL_UID uniqueidentifier NOT NULL PRIMARY KEY, CL_Name nvarchar(256) NULL, CL_Sort int NULL) 

INSERT INTO @allChecklists(CL_UID, CL_Name, CL_Sort) 
          SELECT 'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS CL_UID, 'Sch�ttgutcontainer' AS CL_Name, 1 AS CL_Sort 
UNION ALL SELECT '1F6BEE57-38A8-4B29-9986-BFAD7D107215' AS CL_UID, 'EVA' AS CL_Name, 2 AS CL_Sort 
UNION ALL SELECT '58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS CL_UID, 'CIS' AS CL_Name, 3 AS CL_Sort 
UNION ALL SELECT 'DA19D272-9439-47A7-9749-153DAFAB2B69' AS CL_UID, 'VHP' AS CL_Name, 4 AS CL_Sort 
UNION ALL SELECT '698EA23D-485A-4CEE-9B06-2E130A3A5626' AS CL_UID, 'NPL' AS CL_Name, 5 AS CL_Sort 
UNION ALL SELECT 'F1A2DD8A-2D11-496E-9B14-13559405089F' AS CL_UID, 'BPS_M7' AS CL_Name, 6 AS CL_Sort 
UNION ALL SELECT 'DDADA097-1BB4-46D5-9EE5-7BB28DD3201B' AS CL_UID, 'BPS_1020' AS CL_Name, 7 AS CL_Sort 
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

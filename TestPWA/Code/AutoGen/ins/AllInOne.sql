
PRINT 'Begin Executing "Insert_BPS_1020.sql"' 

GO 



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


GO 


PRINT 'Done Executing "Insert_BPS_1020.sql"' 


GO 




PRINT 'Begin Executing "Insert_BPS_M7.sql"' 

GO 



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
  "uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "4184065d-1f91-42d8-a7b1-99b48722c1d1",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "a2db4616-a6c1-456b-b112-1c9e90e0e358",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "d1ab9b43-ae9b-4e3f-8143-0831dca4b1c8",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "e27c51dd-1943-406d-b897-f0ed58c647cb",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "6b6dd7d7-fe8e-4621-b261-3af8b3207100",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "e3128fa0-d580-4c02-a5bf-0b9275c0ef13",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "bbf072f6-b03d-4342-a612-366309f84f98",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
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
      "uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
      "parent_uuid": "7dbcb986-580c-447c-af7d-1c47a25b2280",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "ded6c9be-e660-4dd5-8af9-b5b7ffbe4c2a",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
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
              "uuid": "194c6bc4-ea02-4581-850b-cd56fb378a00",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
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
              "uuid": "5683923d-0255-425f-bc39-8f37d330223b",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
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
              "uuid": "2df1e474-f0bb-4493-b546-06d03d5ea5b0",
              "parent_uuid": "87f0b3ad-997c-43d0-a7ba-bd1c1aa5372c",
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
          "uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000;"
            ]
          ],
          "children": [
            {
              "uuid": "f5c564dd-1a0e-4a95-ba56-b699a308b83c",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
              "uuid": "b7761bbf-e7c7-468b-b397-12df1c797190",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
              "uuid": "7f24768d-ffb4-49de-8c9c-b6164c9104bb",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
              "uuid": "b83de45d-e522-418b-a998-3202b64b5671",
              "parent_uuid": "536bae0a-f224-4c92-87f4-488c12b4789b",
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
          "uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "abb89e92-921a-4783-b9a1-33da4bb1547f",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "uuid": "b3d28d8a-60dd-4608-8e19-feaffa3ebbe2",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "uuid": "e74f1e83-cd35-49e5-aba8-0389e110d10f",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "uuid": "fea98291-f093-4e82-886c-cd848a4c7117",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "uuid": "828967b2-d04c-4aa9-95f9-e80b75f8c7c2",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
              "uuid": "4781a2e3-5d30-41cd-bf6d-ff26e5e6659f",
              "parent_uuid": "c856edfd-0a99-46c6-ba55-4ad13852bbe7",
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
          "uuid": "d3a96b80-ac25-4583-8f94-ce91c1991907",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "f79efd99-78c2-4981-bb2a-13ca9f6f100e",
              "parent_uuid": "d3a96b80-ac25-4583-8f94-ce91c1991907",
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
          "uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5e064c4c-e673-4cf7-a618-ff52e1054b9f",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
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
              "uuid": "ca3382a3-ed73-4cc0-bad4-4d24c22f108c",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
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
              "uuid": "20912dcf-64cd-49a1-b7b3-e8dcba82fffb",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
              "uuid": "a917e142-65b8-4c2e-a8d1-ef1558cc2cc0",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
              "uuid": "69f1daf3-8bf0-48d6-ad92-65ae30d2a2ed",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
              "uuid": "196a19f5-dbef-4bd5-a888-64992d5b9e34",
              "parent_uuid": "150dde33-16d8-4af4-bd79-bc9f8f8b6696",
              "tagName": "td",
              "properties": [
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "674c5522-b697-4144-8b1c-de516aa78376",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "05805849-dfed-4888-b5ff-2aac1d9ea236",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
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
              "uuid": "2740f39a-fafb-48ad-80e7-587a6410a6ba",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
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
              "uuid": "b2f8cb94-467a-4aac-b4c4-53c7c991bb52",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
              "uuid": "bcd16a77-1d34-47a6-9065-bb004aa5b540",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
              "uuid": "e0101049-e947-4be4-b6ae-19c1edf28295",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
              "uuid": "52389ad8-09d9-4668-bbc9-a84d66fe31e7",
              "parent_uuid": "674c5522-b697-4144-8b1c-de516aa78376",
              "tagName": "td",
              "properties": [
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
          "uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6538f482-8a03-4a41-a225-123f09134a21",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
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
              "uuid": "6719ccdc-a3cd-459b-b0fc-ab5b25d383cb",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
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
              "uuid": "7c4aeac9-8074-4b3a-a78e-f558fe65d869",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "dff597e0-a79c-4752-b5bb-220ea43e6e23",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "90f93e43-04fa-4351-8617-0f7ec500fddd",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "80ca67de-dc7d-47e6-95b7-38b36112f54a",
              "parent_uuid": "f87b57b1-ea92-45bb-a221-19a05b4dd60b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "352ced97-e44f-410b-aeec-3e5f9973fda6",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
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
              "uuid": "f2ec8376-403b-4e9d-89dd-d6a798104754",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
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
              "uuid": "2c2f0012-837a-45ca-8183-94a31ed24281",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "24b577e4-c7e2-41d9-8a1f-e968f1b36274",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "2e1e42f1-a299-417a-bbba-7b33b5f7a54a",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "7154ebf6-4469-4b02-9dcb-7bc95b0d78a3",
              "parent_uuid": "756ec1bb-fe0d-4bb0-89f0-7c582c8afd47",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e8d89c36-40ce-40f7-907f-5d344b3b6911",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
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
              "uuid": "ae83e18f-cab6-4c7a-9158-5da404eeaece",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
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
              "uuid": "b9e66eb6-4f12-4499-a6ba-dbd7d084ffc2",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a29b772d-7ed2-4722-8421-3042aea5e14b",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "d542b8f3-0838-437d-bc92-8d725cc71918",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "b0ac0620-f52e-4381-83cd-673ed4ee66db",
              "parent_uuid": "f0722016-fa24-4665-bfd6-d0fea74b9fd1",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "093b920c-a28f-432d-842d-c1c9cc99161f",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
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
              "uuid": "c3e3bd80-826b-4f8c-9e21-9b6028fd5bc7",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
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
              "uuid": "648cb34f-d0f9-42fa-86db-cc3c81150884",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a7cf7113-2af4-43d6-a57a-a5ac8f879cbd",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "34895b03-490d-462e-8dc9-1b32df2c9095",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "ec139bd0-7a1c-4992-834d-bcdcb48bb360",
              "parent_uuid": "e744a525-0201-44d1-9498-51b1cee5a483",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f970820-cbdc-403e-95c3-356f3990d955",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
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
              "uuid": "558bd6a8-7568-4b2a-90e7-f39b42eee8ea",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
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
              "uuid": "855a51b4-8205-489c-9a56-402a310e580e",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a80a4679-d591-4626-b3dc-f245939ebe66",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "1693aff1-390e-4d71-aa96-1bf9cb06e5f4",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "3cf01190-50ea-4bf5-814e-326f5e70a458",
              "parent_uuid": "ba5b3e08-8246-451f-bd49-3a18cd4d28b2",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "572808c4-938a-416b-ba4c-c6f807629477",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
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
              "uuid": "b47ada77-638c-4f40-a91c-f9a1e8f12487",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
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
              "uuid": "aef274e0-466b-4af2-8b14-8af3eddb4fbd",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a1d7d961-9461-419a-8c7e-f1d75700640c",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "faa47cf3-ee0d-4ba0-ad14-3541c005d404",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "90e0b978-f0bf-4078-bc31-7891551463d0",
              "parent_uuid": "c935ae52-0a89-4593-9897-54743eb6a935",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dfadd774-809b-4d07-bd37-4740dbf6c5fd",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
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
              "uuid": "c33ee935-51c5-4bc2-a050-0a7ca233dbf7",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
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
              "uuid": "233b4322-f09e-40c8-ae47-c797fe90513a",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a1a32915-7978-4c23-9030-fec4e8182089",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "b29fcf3f-ea39-4590-95eb-d05fab3e8a49",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "49d80997-bebf-47a4-b35e-f32ab8012c29",
              "parent_uuid": "5410d52e-fbec-46d4-a724-3620d15c6c74",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "903ee34a-73bf-486a-a5fd-a49a16914d0b",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
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
              "uuid": "27e836b3-5241-47be-a703-25a1936c0b0e",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
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
              "uuid": "2c1fc1d8-53a8-4468-a003-f1143a14e3eb",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a7ac9eaa-d9c8-4e54-8460-99c35a06cd9a",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "d1475acd-a223-423f-bae3-84f40ae66699",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "cb51993a-baad-4ee3-8da0-9cb95f38188f",
              "parent_uuid": "54defd79-ecfe-406e-95a2-f0771a9fd674",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff8b4228-c1a7-4d0b-b983-c29662282690",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
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
              "uuid": "83f14478-7482-4c46-a361-9198b3adc0b9",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
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
              "uuid": "fc8a81f6-6e1b-4aa2-84b1-072d49193c51",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "5478b54b-2ddb-4e02-a8ae-3de04b9b1ab6",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "6bf2db45-30e0-45ee-9c0a-8339160c657e",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "9c6bfc9f-801e-4089-8112-3118c673fc91",
              "parent_uuid": "0c3624c4-75eb-4c5a-b0bf-ea1b22ae9937",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "29c9e096-7dd6-4251-85d2-3013084e555a",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
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
              "uuid": "3030dfc0-0c43-48b9-b7b0-58a51504d7e5",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
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
              "uuid": "f5a662d0-d6fe-4045-8166-855968a82274",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "9bcbba0b-3624-4012-8611-a308fa2d6aa1",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "0cbe622b-12be-4261-a26f-192f3fc14585",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "9b65c2dc-29c8-4e88-a89e-90ac42d3a197",
              "parent_uuid": "c8680d2c-3fae-4794-8490-41fe6e28bb57",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "aef7888a-3a5d-49db-936c-999f17862661",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4530507e-42a4-4ca5-8b57-32e78bb09e02",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
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
              "uuid": "40deebba-6fae-4e7c-bf33-49f867bde328",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
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
              "uuid": "5b1667a3-fd9f-4650-98e3-7cf78c41c00d",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "e3ed8efc-c085-4caa-8dc3-348e5659e536",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "d00fa792-d97b-43d7-b69f-4675137e8dd4",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "0065148d-45fa-47fc-8a0b-250c33cb3bf1",
              "parent_uuid": "aef7888a-3a5d-49db-936c-999f17862661",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28ee26bb-4e94-4c3f-b224-186f3ddeaaaf",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
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
              "uuid": "0aa78723-de3f-43f2-93f5-f363fd51d19e",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
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
              "uuid": "aa30f51e-64d9-4372-b1ff-8dc038a37b29",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "75709b69-3537-4abe-b090-62fed948ded9",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "679e74a4-57e0-496f-b8fc-500a9a22715c",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "5c9162ed-76c7-49bc-82d8-4db2b8cfbc88",
              "parent_uuid": "9802256d-b57e-4ba7-88a6-ba3ddaa374f3",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54d5273a-2119-4e64-9fcb-e7de070e8eed",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
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
              "uuid": "79bf74c6-f844-4539-ad72-f115640c283c",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
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
              "uuid": "56925ad3-0b77-4c72-9cd7-0bad29ef4f19",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "25dfdd69-dd24-409d-947a-93a00bd48376",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "621ab7d6-2196-4d9e-a2d9-cb9367dd0e65",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "50d97b17-4156-4a8d-a49e-ae625493424a",
              "parent_uuid": "7bd3f292-92c9-4068-90e0-c1acd963b1e7",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00b147af-0637-42c1-a573-84b192e79f31",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
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
              "uuid": "9614f0b8-c153-482b-b64b-4dd0bd00c15e",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
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
              "uuid": "1ecfdb44-c78b-4ccb-8267-0599dbbc6c58",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "3dfa340a-c894-48d7-b429-a489b55126c7",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "9d216fe9-fdfb-4b47-8a9f-a13dd980d8d0",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a27ad991-d5bb-4448-8f25-0cddd2f35934",
              "parent_uuid": "14d99b13-8130-4b68-aab1-ed95d1affcb8",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "58f8f7b0-58c9-40c6-a117-9c06e5673e59",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "477b9da7-8f73-4eeb-b35d-fd4fb11a5261",
              "parent_uuid": "58f8f7b0-58c9-40c6-a117-9c06e5673e59",
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
          "uuid": "97c471c4-3d8c-4686-91f4-b9bb2597ec69",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6d9d038-aecb-4248-8bc1-42270120787f",
              "parent_uuid": "97c471c4-3d8c-4686-91f4-b9bb2597ec69",
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
          "uuid": "9954996a-2cc9-4d77-917e-e6339687208c",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4bb98645-965a-444b-9685-280da850c707",
              "parent_uuid": "9954996a-2cc9-4d77-917e-e6339687208c",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "f8eb5670-dcd0-498f-a2c8-aa7e0db15f0e",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f1eddcf-146b-4491-909e-7e9d522a5a28",
              "parent_uuid": "f8eb5670-dcd0-498f-a2c8-aa7e0db15f0e",
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
          "uuid": "89c62acf-10b9-4f26-b4c5-d87358550086",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "72ab89d8-547c-4c06-b6ed-14527f0bced4",
              "parent_uuid": "89c62acf-10b9-4f26-b4c5-d87358550086",
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
          "uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "569e6eff-892a-403b-8b79-82aeb860e327",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "uuid": "d9e85bd4-ded9-41af-b87e-d5d4a0d93c0d",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "uuid": "91bfd296-5dcd-4f33-99fc-573eb4d16fff",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "uuid": "f34827ac-8196-4cb8-9dff-f774b6ae7486",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "uuid": "6a929244-9056-4ce1-8bbb-8c50e1b37548",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
              "uuid": "d8e4f63c-8788-499e-ab94-c3d1bff1a6d2",
              "parent_uuid": "e18a20ff-0072-415a-8ea5-200614c80fdf",
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
          "uuid": "6d425ed9-8106-4edf-ba04-8aba0515ddf7",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [],
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7640654c-9897-407d-b3c5-cfe6f93ee311",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
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
              "uuid": "0b69c6cd-dcdc-4833-86e8-8304eaeecec7",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
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
              "uuid": "3687d5dc-3575-40c6-ba64-cafe8bd9c0b2",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "9b3bf0f0-326b-4330-aaae-3578bd2de595",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a2bd3083-ee88-422e-8737-81697d5a8c9a",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "7f429d4e-6237-4337-9a9b-3359438bbcd1",
              "parent_uuid": "26b6b22b-ccfe-49fc-ad78-7c2570ca37a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aeab85f2-0967-4ddf-b028-f93e15985cb2",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
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
              "uuid": "b89cb79a-cd99-40d1-98a5-7ac472ea2671",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
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
              "uuid": "994afce9-bbb5-423c-9b69-698e5948cbbb",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "92cac5bc-5d1e-474d-bdb5-eb5e90e850bc",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "4daab201-1962-42cf-a624-f34a69a3f37d",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "6efc8bfa-02fe-4520-bbae-10620cb196ba",
              "parent_uuid": "eb56bccf-5a1b-4302-b946-003590ce167e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c02b6cf0-a5c2-4295-a098-19d69dfaf43b",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
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
              "uuid": "4754b360-2bfd-45da-b842-553213c50106",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
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
              "uuid": "ff27650b-d8ab-410b-bb30-679ae53eb1b5",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "6f073c4f-5f04-43f6-80f9-d92f23ff12bb",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "872fed40-e444-46c9-bce0-c62ec0120df2",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "636f6ad6-524a-4acf-a513-170d9a80e988",
              "parent_uuid": "c7ddf4f1-1432-4b1b-bc11-8f14744e99df",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "bc19a52c-8077-403f-b93f-19419efd5eb4",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
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
              "uuid": "b0408467-4f4c-454d-a309-f4682719ee08",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
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
              "uuid": "10e11364-6283-44db-beab-47613f4ed764",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "def081ab-f169-45ec-a689-b8f2a42a5a9a",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "832cde07-b9e0-437c-a5ed-767015b8c1e8",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "a0e4888d-481a-4757-b6db-7c1c5a51fc73",
              "parent_uuid": "80663f81-1ad2-417f-b9e4-47bc9441e459",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "19d9965f-66b1-4322-90ca-302308c97746",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ddf7fd49-e0ac-4ef4-8800-c5b0b026b30a",
              "parent_uuid": "19d9965f-66b1-4322-90ca-302308c97746",
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
          "uuid": "4ff60f55-d598-4233-a1c8-ea138dcdc3d0",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "df4c1203-3d02-455f-957d-a0be7deabcc8",
              "parent_uuid": "4ff60f55-d598-4233-a1c8-ea138dcdc3d0",
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
          "uuid": "1799eefe-3bee-4491-8347-9cef8fad8515",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9c30f036-7e4a-4b4b-8d5c-a6ba1bfcaa5d",
              "parent_uuid": "1799eefe-3bee-4491-8347-9cef8fad8515",
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
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "0821cf7d-50b1-4a35-b928-c9e69a1496ed",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b176641-6954-4034-a15b-8cb825307d47",
              "parent_uuid": "0821cf7d-50b1-4a35-b928-c9e69a1496ed",
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
          "uuid": "e92f56d1-7bb6-4544-9580-fd346708c0e1",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e33d18fd-18b1-4eb7-9dcd-a557e7b80198",
              "parent_uuid": "e92f56d1-7bb6-4544-9580-fd346708c0e1",
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
          "uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6b15fc12-0642-4e2a-b9db-59e3ab996639",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "uuid": "7ba5311b-a6e7-426f-8801-7e93a2f84144",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "uuid": "d41667f0-d67c-469e-b47e-b5de830d9527",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "uuid": "ef84bf95-44e4-4808-95f7-331be6b6afad",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "uuid": "0d25dd45-2a82-4deb-a577-0c252aca6fdf",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
              "uuid": "506e46e2-e12e-4541-882c-275d17c73242",
              "parent_uuid": "10a061db-ff52-42fb-b318-7e6ff4406b47",
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
          "uuid": "440d6202-3403-408b-951d-588f52e5dd13",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23aea506-ef82-4e1f-882e-efc89478d30c",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
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
              "uuid": "ac5cf7b3-3a85-4eea-8423-2daaf98b558f",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
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
              "uuid": "aaa7ef23-82c7-4aff-82c7-c92049f45076",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "d0a6dc49-2aa4-40fc-a253-8aa3f13d4606",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "de8a07a6-8c44-4926-9b20-8cf0474842cd",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "6415a412-c93c-4960-ab80-3b3130a2ba49",
              "parent_uuid": "440d6202-3403-408b-951d-588f52e5dd13",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2bc0b4f9-ef76-44e1-8469-97fe9082eba2",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
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
              "uuid": "7a7636f3-de15-4e73-b0d8-8995c185f523",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
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
              "uuid": "8dfcabc9-733a-4d05-aa6a-c6aa4cf5d906",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "da944de5-d8be-4bfe-8757-095ca62266ae",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "100df026-2ee6-4a11-a5df-d7a48e1a8b62",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "449b4bce-098e-4bb0-8e36-090794d02149",
              "parent_uuid": "871b8042-766a-4898-8ebd-ff310fcd4713",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "08903fa0-d512-45fd-b991-47e448da2ba3",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
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
              "uuid": "feecec20-57bf-46d4-9b5f-8d574ccdf48a",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
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
              "uuid": "75c09b46-94cd-4fb4-b9e6-17b255c8aea6",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "40f77ae0-8f0d-471c-9a6d-7507a7122df3",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "f585b06d-8b6a-49bc-8120-fa364de8cd12",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "692adfa4-6ef1-431d-87ff-3dbb83ee963f",
              "parent_uuid": "0cb2b7aa-10fc-41a8-9f3f-46026cbc799b",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5cb251f0-f702-4ecd-9222-a97dbe9c0ed7",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
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
              "uuid": "698e2ed3-aec7-45da-9e0f-ba7cd18f0b37",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
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
              "uuid": "75925bd4-ba4d-4e80-8bc5-63af186b8169",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "5bce7257-1957-4027-be3d-67a9e0fc3233",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "74d37b32-ebcc-4cf5-a89d-0a4698e5d028",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "c38dd081-114b-42ba-ba1a-929acb9450bb",
              "parent_uuid": "c220f3ef-6d55-422b-8662-091b0b32d2d9",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 40,
          "lvl": 0
        },
        {
          "uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6a1df8bc-fff8-45dc-ba21-a271760aaadd",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
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
              "uuid": "890d98f8-9b82-4e8b-ab17-c52d014a3b2f",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
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
              "uuid": "dd50044e-7911-40c7-83fb-ee12802308b4",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "e137ee0c-efca-40df-a4c2-722e2a752cd3",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "6447c6a5-0163-4004-9a41-e5931e914619",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "80569f4d-48df-4624-bd01-5ac5570e9c78",
              "parent_uuid": "bb195c7c-a798-4c7c-a440-79037ef6bc7a",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 41,
          "lvl": 0
        },
        {
          "uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dc7c9ddd-d525-4667-a28c-da8edf8ef125",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
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
              "uuid": "49532b93-b674-4511-966d-ba8ca0974622",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
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
              "uuid": "a1bdc3ef-f4c6-4d19-a0bb-99ead36cbada",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "6911d374-d0fb-427f-87fb-6cac48c9e14a",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "252eae8b-5e1b-4a96-9bf2-fee9e4b4d8d3",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
              "uuid": "d6e90877-93aa-4750-937c-9fa330a4d4d7",
              "parent_uuid": "f8c465a2-edf7-4f26-a89f-5f3cd8e2c808",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
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
          "sort": 42,
          "lvl": 0
        },
        {
          "uuid": "e1123d03-17c7-4ed7-8a3b-c369b7c599ae",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "943f2f74-75ad-4925-9abd-f1a99e2c8139",
              "parent_uuid": "e1123d03-17c7-4ed7-8a3b-c369b7c599ae",
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
          "uuid": "9337fb6a-8f56-42f2-a902-31182190f39b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f829bb1-df4c-4c83-be24-e0a775dbacf7",
              "parent_uuid": "9337fb6a-8f56-42f2-a902-31182190f39b",
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
          "uuid": "788d081b-b9f8-46eb-a22a-042158ff7471",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8050373-3a67-4fe1-8027-4c582cc6620d",
              "parent_uuid": "788d081b-b9f8-46eb-a22a-042158ff7471",
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
          "sort": 45,
          "lvl": 0
        },
        {
          "uuid": "b8cd8353-e120-42ad-808e-2a21fff6d57e",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7814e453-7d61-4f9f-8074-d5bd36b90f7d",
              "parent_uuid": "b8cd8353-e120-42ad-808e-2a21fff6d57e",
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
          "uuid": "a8149f56-bd70-4188-8e23-589d69fe6753",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 1px solid black; background-color: #000;"
            ]
          ],
          "children": [
            {
              "uuid": "87f9a137-d38c-4581-bffd-f506dd2b217b",
              "parent_uuid": "a8149f56-bd70-4188-8e23-589d69fe6753",
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
          "uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "efe1e07e-b21e-4d38-a8af-761585631678",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
              "uuid": "c623cb16-e49b-44a2-a83e-8a6af7bf5d32",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
              "uuid": "4669b22c-5fc7-4748-83e0-20fb8f5e5d8f",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
              "uuid": "c8d9ab25-a9f0-4653-af15-4af64976154d",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
              "uuid": "2f5a7cda-6b62-403b-9c7b-54bb990df9e1",
              "parent_uuid": "eddea2da-9867-4f72-9b69-b113471ae554",
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
          "uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ede6cda6-a11d-48ea-b02d-b5c73e46cea1",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "uuid": "85eadc07-44af-456f-bf1a-0052d4f297c7",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "uuid": "e1c3d72d-83b1-4055-976d-7ba4ceba6662",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "uuid": "1484d570-12c9-4d9a-b381-70d63f1112fd",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
              "uuid": "3e144349-4a5b-4b32-8bcb-9fab7b07f60f",
              "parent_uuid": "d29e06fc-68b8-4412-a7f5-9d56e35ef3a8",
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
          "uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "38c53652-bc2a-4537-9ba1-ae74ed6ac774",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "uuid": "28d01bb6-84af-4398-a9fd-3bcfb3293836",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "uuid": "a971869c-33b5-402c-8ff3-a696758892b6",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "uuid": "6e7e57da-e350-491b-a0ef-3712a45ceb4a",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
              "uuid": "9fd1a34a-ca5d-4eb0-9861-03ac7625c348",
              "parent_uuid": "860cdd54-9c8a-4b27-9c3c-c7c10d10fcbe",
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
          "uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46d1d274-45f6-4cca-a291-e0b539899f17",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "uuid": "137627e9-dd25-46c9-8418-dd85310403b2",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "uuid": "361a03df-9c4a-4842-bef4-d5f7365695f4",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "uuid": "85f30c03-6bfc-41fc-8cdb-ffa09ea60728",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
              "uuid": "d677043d-5a00-4c6a-8577-b0aaaa7e8c75",
              "parent_uuid": "d94bdc12-6c0a-4dba-8078-9c5f455e5e02",
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
          "uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d878bb75-f8e3-4b9a-88af-96f0d98421c6",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "uuid": "449527a1-1a45-4b82-a836-11cf234aea71",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "uuid": "bf081891-67ef-40af-a177-794fa114d420",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "uuid": "7b3e98a8-6221-4f28-a040-a7ac6d33b431",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
              "uuid": "a83008e4-db4f-4766-ad63-3cc5e99b7bc8",
              "parent_uuid": "e3f553b6-06ab-4c16-a946-08d5eecae950",
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
          "uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "aaccf5e2-0a3e-44e0-a63d-866b9a438ea3",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "uuid": "857eed2b-2fc7-4dc8-aae5-ff50a84f2ea7",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "uuid": "8965414e-40c3-4e9d-af46-998ac994db33",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "uuid": "0340c847-6663-4d9a-869c-67fd133abf39",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
              "uuid": "e7d9afe1-4610-4bf2-8939-aeaeb8abf3f5",
              "parent_uuid": "058e89e4-1205-42ad-8e9d-4bec83ada0fa",
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
          "uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d96a37ea-c5e3-4b5f-84f7-71462b5f5da9",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "uuid": "6a157443-f791-44d8-b29a-83e41dfd55c1",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "uuid": "b61bd678-3032-4eeb-a8ff-101261e6eb1b",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "uuid": "7b465ed3-fcaf-48d1-8c54-c32db04abeda",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
              "uuid": "30459e6e-1d06-41fd-b214-bc1a971a1662",
              "parent_uuid": "e74b0937-58d5-46b1-a0b8-565e61d1788b",
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
          "uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28008e40-51b8-4155-96b6-b5bec6f52cfd",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "uuid": "c7ea80e2-4116-4255-885b-27ee19ede359",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "uuid": "81656eb9-6c7d-480c-bbb4-2f2efe6093a2",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "uuid": "22c48f2a-42c2-49be-8524-faa3307d26f7",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
              "uuid": "577a29c4-83fc-401b-b040-4b9475ea17c3",
              "parent_uuid": "eaacc553-f2ef-4df7-870b-732abd510404",
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
          "uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a870f00d-ddc7-4fe0-98e1-7114a8672b7f",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "uuid": "75aac01f-2e0c-451d-afb8-e2fd5b033843",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "uuid": "38ba49dc-ff72-4d5f-940d-4b26476959fc",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "uuid": "a072b3a4-97e1-408d-bf3c-7e6e78fa3504",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
              "uuid": "9c7fdc77-dd81-470a-b956-4cf1f7800814",
              "parent_uuid": "dd042fb9-7ee4-4354-bb37-ff778e675a52",
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
          "uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "584bf507-6053-405c-89d3-7be0b6377676",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "uuid": "9ce2b4d7-6977-4e67-817f-28474fa387f7",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "uuid": "1b369b25-5ad2-4f1c-8a91-c8b3394edc9b",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "uuid": "dabbe9ab-52f0-494b-8075-e28ef4aa4f45",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
              "uuid": "d2ff45a0-45fe-409c-8d79-972792de8a94",
              "parent_uuid": "1963e481-3f0d-45b0-8275-5c319997052c",
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
          "uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9fc4cbe8-9ff7-4794-b340-ac7e17b60878",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "uuid": "ba13c3ba-2719-4e64-9b4f-a2f7865b84db",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "uuid": "519478da-f7ba-4f14-a5ca-a70957de2f04",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "uuid": "5f3194d5-b839-4054-a470-e207894b6e69",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
              "uuid": "524525e2-3b34-4172-92a7-1fb218c40dd2",
              "parent_uuid": "5c5109f6-663f-4fa5-9bee-972ceb177371",
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
          "uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52e24d72-c22f-4977-816c-797677498bee",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "uuid": "0f574f3c-df53-49f1-b43e-68e508842680",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "uuid": "3a478fa8-ca3d-41f7-afc7-a28fbdeee185",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "uuid": "a686a4a0-be10-4b03-8c9d-de5365eba4ca",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
              "uuid": "49d7cb53-2ae6-45b8-bd4b-b97cb7008532",
              "parent_uuid": "560b5796-6c72-45a3-a237-f7ba6b3a16af",
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
          "uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "200be211-f345-465c-92e9-24f9f1c4b461",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "uuid": "5bc1d445-124f-4025-b01e-4af41aa302b1",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "uuid": "c586b061-a68b-45a1-9965-987b85489b69",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "uuid": "57c0f7b7-f8ec-446b-b4d3-6c5b147970ba",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
              "uuid": "a488e7bf-f329-40b4-818c-2cd0d1f42f00",
              "parent_uuid": "e90ed243-4895-44fe-ba88-dc4455d801ca",
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
          "uuid": "a1f7db1d-ea5c-41cd-87f0-9a838e6678f1",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4712f772-a50d-4f78-8b2a-3f24afb9413e",
              "parent_uuid": "a1f7db1d-ea5c-41cd-87f0-9a838e6678f1",
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
          "uuid": "3dbb2dd1-08f7-4885-be32-ebf71bee8aa3",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "54af0b5f-b6fd-46ae-a570-c3d7a0d0b3f0",
              "parent_uuid": "3dbb2dd1-08f7-4885-be32-ebf71bee8aa3",
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
          "uuid": "a227af2a-ae79-4b2c-bd04-fdf81d997102",
          "parent_uuid": "c1a5f320-016f-4717-acaf-76029477e9e9",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9f62305c-c072-4e93-a0a1-dd3a94aae70d",
              "parent_uuid": "a227af2a-ae79-4b2c-bd04-fdf81d997102",
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'F1A2DD8A-2D11-496E-9B14-13559405089F' AS cl_uid 
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


GO 


PRINT 'Done Executing "Insert_BPS_M7.sql"' 


GO 




PRINT 'Begin Executing "Insert_CIS.sql"' 

GO 



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
  "uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "855d4c98-a4a3-45bc-a877-85d32ed7c755",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "59e2cdd8-552b-4fdb-acfc-0c1fb49d977e",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "55ed4e78-3c07-47b2-bf61-e5eb985d955c",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "5c5cac94-8f50-43e4-b07c-8baf0ef2f7cd",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "69"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "6ed249dd-aece-4a7a-9e9d-1ed27a1906b5",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "ee308f26-f2ea-45cf-a7e0-16703209f793",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "f0b1c793-50e5-442a-be09-5b6009927355",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
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
      "uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
      "parent_uuid": "ca275afa-6780-410b-83c3-d92191122c7d",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "8eee2964-b2be-4e4d-8d28-31675b15158b",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
              "innerHtml": "<span>Datum:</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "69b499e5-dee9-4a65-abca-ce25012096b9",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
              "uuid": "46d4983f-68e5-4ea1-b2bf-fb5f9f75c227",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
              "uuid": "f475064a-3096-4a93-b7af-bda7bf897d81",
              "parent_uuid": "1b8d6550-9746-4ed0-9652-01834075004d",
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
              "innerHtml": "<span>Bargeldgewerk: Münzinspektions- und Sortieranlage</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4e37eac5-1021-4ee4-8659-59f7429793bc",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
              "uuid": "857051fc-a896-4197-8cab-0f9bba44fcdf",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
              "uuid": "43266d47-f2a8-48b5-a3d0-a39e32dd5752",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
              "uuid": "4b7bd802-e472-45bc-9a83-63c65e1ef575",
              "parent_uuid": "ad036c37-0dbf-4d27-a152-089e54396082",
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
          "uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "09cafa01-5984-4012-a9fa-aa37bbb5d0d7",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
                  "left"
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
              "uuid": "571f2524-411f-435a-8aa2-51a5ec2ed3c5",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4cm;"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "319f69fc-a6ac-42fb-bb6f-5140bd2e921f",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "332c9ab0-0dd5-422d-86ec-2fbc8a4683a9",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "01e4159f-e38e-4c7b-be04-25c4e1bdba0e",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
              "uuid": "534f9505-154a-4935-b35e-bd91320f6818",
              "parent_uuid": "04876b71-fd02-44f8-9bbd-7b55ce77a1fb",
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
          "uuid": "c36bb2ce-f183-4f23-ba89-d0a872d0eee0",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d9dd8037-2730-4578-a13b-4b26ba09bf70",
              "parent_uuid": "c36bb2ce-f183-4f23-ba89-d0a872d0eee0",
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
          "uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "fef53fac-f5dc-47b5-a165-e5ec4928a71f",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
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
              "uuid": "a89fb274-520b-487b-a7cc-4593bd2f3c03",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
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
              "uuid": "77d4551d-3ca3-4d0e-8fa1-eb2497d5c97d",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
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
              "uuid": "52471159-3615-4501-89f1-1caf9f2a3387",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
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
              "uuid": "b434a678-de22-448f-b785-657b1bd16e9c",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
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
              "uuid": "d652e9cb-4695-4c67-b1db-f481b4efcd63",
              "parent_uuid": "5360fcde-033e-49c9-bc52-f139d47581f1",
              "tagName": "td",
              "properties": [
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "21423569-f342-4a81-8b6b-13c9d3457ff6",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Transportbänder auf Beschädigungen oder Risse prüfen. Dazu die untenliegende Abdeckung mit einem Kreuzschlitzschraubenzieher lösen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e25ac3bd-d705-4f22-91f4-f2b8ae1260c9",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8d33e1a0-3566-4a81-8cdf-0241bb1348ca",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
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
              "uuid": "6a66dace-3a34-4826-9290-6e61474189b8",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
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
              "uuid": "6f16d012-ccf8-4bae-8e7a-ff47d45c2dc5",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
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
              "uuid": "1305d23c-63b7-481e-b6f3-283d828d76a0",
              "parent_uuid": "fd55a3ab-9f1c-42e2-a276-9971869401fd",
              "tagName": "td",
              "properties": [
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
          "uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ca21d352-abbe-4aed-a660-3a8e09f03666",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "valign",
                  "middle"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfen Sie alle bewegliche und schwingende Teile auf lose oder fehlende Schrauben.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a029aca2-e9e9-457a-8ab0-15e2fdadfa07",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
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
              "innerHtml": "\r\n                    <span>M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "fdc9260b-09a4-446a-999b-74bed4c5b642",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
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
              "uuid": "cb474b60-30da-4b98-916f-7a5ad29f7b2c",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
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
              "uuid": "50e5e95d-ae79-412b-91a0-960b6d763e13",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
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
              "uuid": "a179071c-5376-4411-b36a-efabcad655df",
              "parent_uuid": "04d262e3-4ee4-413f-b1a8-06a06c3fffd4",
              "tagName": "td",
              "properties": [
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
          "uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c985141d-95df-495d-a84f-97307cb087f9",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
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
                  "34"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b9220a9b-1ef0-4486-b0cb-989e566309cb",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
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
              "uuid": "f4d61928-29b5-4934-ab30-f8d5f4d36a3f",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
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
              "uuid": "3d5d6425-5e8a-4a27-a382-7f9c70a46d80",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
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
              "uuid": "be1a562d-d36d-412f-833b-14f8053cc59a",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
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
              "uuid": "15a87efe-97e6-43a8-9715-3d3455f7027f",
              "parent_uuid": "1b9ac512-d611-4ec4-bed4-21a0034c0185",
              "tagName": "td",
              "properties": [
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
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "a1a977ee-ee48-4dd4-83b9-30edb6a0077f",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e9760912-a604-4de0-9f29-b86308c6c021",
              "parent_uuid": "a1a977ee-ee48-4dd4-83b9-30edb6a0077f",
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "bec481eb-1984-4481-848e-542842bf648b",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "421d9b35-2351-4725-a1af-9d7fc5550ea2",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
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
              "innerHtml": "\r\n                    <span>Gesamte Anlage reinigen:<br>  -Maschineninnere staubsaugen<br>  -EMS staubsaugen inkl. unterhalb beider Bänder<br>  -Maschinenäusseres staubsaugen; u.a. beim Bunker, Z-Förder und der Sch<br>  -Auffangbehälter wie z.B. Grobabscheider, Abstreifer und bei Rückförderer entleeren und reinigen.<br>  -Sortiereinheit mit einem Staubsauger oder einem weichen Tuch reinigen.<br>  -Reinigungsstation-gross, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden <br>  -Reinigungsstation-klein, in Reinigungsstation einspannen Spülwasser und fusselfreies Tuch verwenden </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d76d7c3d-4d14-4a59-a40a-2f2a82873aaf",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
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
              "innerHtml": "\r\n                    <span>W</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "84833149-87df-454a-81a3-b8ad4703bad1",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
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
              "uuid": "8244fbc8-6977-4370-8157-d05d5948c3eb",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
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
              "uuid": "0983b1cb-300e-482c-9061-b4336caae699",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
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
              "uuid": "0f177e46-7e9f-4423-99e1-88172f6e522a",
              "parent_uuid": "bec481eb-1984-4481-848e-542842bf648b",
              "tagName": "td",
              "properties": [
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
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5830643a-df7a-4076-a7ac-d31f8043bb1c",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
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
              "innerHtml": "\r\n                    <span>Festsitzende Münzen in der Maschine überprüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "b03d44d1-b9e1-4810-a78f-739c057fe7cc",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "6da70e9e-9a72-4d22-ad5d-e02d3c4a00be",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
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
              "uuid": "5cafadc3-97b1-488c-a170-665a9eb4d92c",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
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
              "uuid": "db91aab5-9621-4d49-9ab7-ad7b1126b134",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
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
              "uuid": "8bb82ae8-0b7c-4db2-b413-c1e9575d0319",
              "parent_uuid": "47432d13-f0e6-4723-b4f8-9d8020a1d60d",
              "tagName": "td",
              "properties": [
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
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c63bdb53-6f98-4eaf-8c0e-b511badd0db0",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
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
                  "35"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Sichtfenster reinigen mit lauwarmes Wasser sowie ein wenig Spülmittel aus. <br>Verwenden dabei ein Mikrofasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "fd497053-30c4-433e-959a-391cbe984d6e",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "8bec5a52-4c8e-483c-8f58-ecb4dd62883d",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
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
              "uuid": "11591a69-8be4-4154-bac9-87a2dc36742a",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
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
              "uuid": "0ed599a1-6688-4324-bd5f-6837b536e271",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
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
              "uuid": "d6ab79a3-8c05-46a6-80bf-d04da4ce33ae",
              "parent_uuid": "56f27eff-f890-4c96-acdb-5875bb49f984",
              "tagName": "td",
              "properties": [
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
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6677a5db-ab83-4dc6-b4b9-8d88c5fd70a1",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
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
              "innerHtml": "\r\n                    <span>Not-Aus-Taster, Kontrolllampen und Anzeigen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "8ee6a1ff-eab8-47eb-b7c3-f4249a57ac96",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
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
              "uuid": "d98167eb-bebf-4d89-90a5-01e11d936281",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
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
              "uuid": "54ffdd1a-9a9f-48cc-8377-71d64b834974",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
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
              "uuid": "587401a0-cec5-4e0f-8f22-eb6c5ae860a0",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
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
              "uuid": "bff74945-869f-4770-8f81-255a6af94548",
              "parent_uuid": "cfa01ab0-6221-42ab-b9e8-e11060291e24",
              "tagName": "td",
              "properties": [
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1d3231a-af37-4f31-a0ba-3d66fddb23d7",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
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
                  "105"
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
              "innerHtml": "\r\n                    <span>Transportriemen gross reinigen:<br>  -Vereinzelung aus der Fixierung lösen und einem Tisch deponieren<br>  -An der Vereinzelung prüfen, ob sich Schrauben o.ä. gelöst haben.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "36ff99bc-d255-48c5-b544-34b89f73b708",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
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
              "uuid": "43b12e94-ea1a-4206-a865-241689621acc",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
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
              "uuid": "9f530243-527a-40fd-add7-9f10f0eeecdc",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
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
              "uuid": "4723cfc6-b1e0-4d0d-a1d3-104ced737076",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
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
              "uuid": "4cdf2e10-5da2-4774-afab-d3baeca66275",
              "parent_uuid": "8ac4d835-a097-4129-a4e4-8f67ac785d48",
              "tagName": "td",
              "properties": [
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
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "923e70d2-be39-4ecd-813b-68f6b886cc07",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
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
                  "121"
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
              "innerHtml": "\r\n                    <span>Transportriemen klein reinigen:<br>  -Sortierung aufklappen<br>  -An der Sortierung prüfen, ob sich Schraube gelöst haben oder starke Abnutzungen sichtbar sind.<br>  -Transportriemen mit Spuhlwasser und einem nicht kratzendem Reinigungsschwamm reinigen.<br>   -Bandposition händisch drehen<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6ce6a870-7ac0-467e-909c-1a830b8c7e64",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
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
              "uuid": "b88c654c-f559-420b-90bb-a7c5b09e57d9",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
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
              "uuid": "514a2deb-b740-48f1-b1ce-6d86912acefb",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
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
              "uuid": "3f1cf248-a3bb-4b05-ab1f-bc9a2969b498",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
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
              "uuid": "1e12b70c-ce01-4407-9b93-12a36cd68948",
              "parent_uuid": "52e278a5-8915-4e36-8a84-d5e16e05ec3a",
              "tagName": "td",
              "properties": [
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d72123ba-58da-46f9-a3d8-c1eb3fd08a40",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "6"
                ],
                [
                  "height",
                  "69"
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
              "innerHtml": "\r\n                    <span>Spannung Transporriemen gross überprüfen:<br>  -Der Transporriemen muss so in Position gefahren werden, dass der \"BGK-Schriftzug\" auf die horizontale Fläche zu liegen kommt.<br>  -Mittels schwarzem Marker sind dort zwei Markierungen angebracht.<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "169c382b-2c11-4e13-9bb9-cae179444d63",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "rowspan",
                  "3"
                ],
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
              "uuid": "35cd4250-ee75-45a2-8f50-a68b15ff40f8",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "uuid": "b90b63ff-e13b-4ee0-bd0c-1cb5ee0b661c",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "uuid": "23a8557e-18ac-4413-b1ba-a3d577a41315",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "uuid": "c2b3ae65-21be-4e84-84d8-618ce0501fd2",
              "parent_uuid": "17abb7ff-268d-4a96-8282-179ae2deb42f",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b24cd64f-c18c-46e1-8c87-e8e14cb42541",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "18"
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
              "innerHtml": "\r\n                    <span><br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0766437a-e472-4b4e-b35d-5496fa9679de",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "9ce70817-d2f8-4d4f-9e07-5da9ce1929ac",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "style",
                  "background-color: #000; border: 1px solid #000000;"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "71da34d6-d926-4e1e-ae7a-7d58a776c260",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "uuid": "e439ab4e-1201-4fd1-a512-281f6a8b6f4e",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "uuid": "b8866fcb-f367-4097-bec6-4dc6d6dcdba5",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
            },
            {
              "uuid": "bcc25c6a-6cba-4893-b48e-628c609f857b",
              "parent_uuid": "1d88504c-8464-42c5-8a9c-c9fa5a39a532",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "8db9db34-9a1c-4458-a7fa-abf478678263",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
                ],
                [
                  "colspan",
                  "4"
                ],
                [
                  "height",
                  "21"
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
              "innerHtml": "\r\n                    <span>-Die Distanz von Punkt zu Punkt sollte 102cm betragen.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "24d317f3-c7d4-4978-8e07-fa446eb67192",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "innerHtml": "\r\n                    <span>&lt;102cm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "eb4874c4-e0ae-4aa6-881c-d8195b308024",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000"
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
              "innerHtml": "<input type=\"text\" style=\"width: 100%; display: block; box-sizing: border-box;\">",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "d93fe9a8-7bc8-4113-b282-4b967510215a",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "uuid": "fb655937-a186-484d-be38-a9ee151cf578",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "uuid": "8a45561b-64f1-4840-b978-23f5c8a5f4ca",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
            },
            {
              "uuid": "0f6116a6-602e-40c0-9332-1e42e86657be",
              "parent_uuid": "5570f1ef-636e-4682-8d03-bf05d9635685",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"
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
              "sort": 6,
              "lvl": 0
            }
          ],
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dbbacce0-2dbe-46c7-af9d-be7f35d620d0",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
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
                ]
              ],
              "innerHtml": "\r\n                    <span>Überprüfen Sie die Kabel und anderen Anschlüsse auf Verfügbarkeit, Festigkeit, Dichtheit, Schäden, Abrieb der Isolierung.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d57f22e3-dce9-4471-bf5d-da4ebc3274b5",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
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
              "uuid": "f9b90473-601c-4c38-b930-71ebeb1252bc",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
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
              "uuid": "f37d0170-6f97-46b8-87ce-c98015819ee4",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
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
              "uuid": "d3e7af38-0be3-4948-8754-68162f0d573e",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
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
              "uuid": "7e2b6906-f6f1-439a-8126-f95719bbe6b8",
              "parent_uuid": "63766c3d-da9d-4777-a95f-8a91fb7d78a4",
              "tagName": "td",
              "properties": [
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2f134bf0-ed36-40de-87db-63d2a7be5ca3",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Alle Lichtschranken und Sensoren mit einem weichen Reinigungstuch.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "660b382f-4c49-4302-8217-f4374e0775be",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
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
              "uuid": "a9c1a23f-fa7d-47fd-ab3b-7aba264cff9b",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
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
              "uuid": "a31d0f1c-0905-4c95-80cb-b0dc0fd65602",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
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
              "uuid": "3f707dbf-fb06-4f61-804a-f3dbbc94a24c",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
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
              "uuid": "615d14ab-f9ff-43fb-9975-6ee9beed06fe",
              "parent_uuid": "c66c2d8b-4db5-4fb5-95b4-b22d98bad6de",
              "tagName": "td",
              "properties": [
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
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d50531e2-78a1-4536-88c2-02ebf7cedaae",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
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
                  "17"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Beide Server PC-Filter überprüfen und reinigen oder austauschen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "db400bb3-9f6d-4b4a-980f-d1a43d850896",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
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
              "uuid": "11444d16-f278-46f0-a2e8-e7ca8627fcaf",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
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
              "uuid": "e377a368-0a78-4d70-885b-adc42f27f5de",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
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
              "uuid": "2c1539c4-8b80-4d7a-b284-805ee8f698ee",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
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
              "uuid": "570fb198-0ec2-4424-a1f4-c79ecbcb468c",
              "parent_uuid": "b1855b77-02de-47fe-a958-4dfb447920ea",
              "tagName": "td",
              "properties": [
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c94df85e-4054-40eb-b4d3-f6eabb60e5b4",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
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
                  "52"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Kühlaggregat reinigen<br>  -Nehmen Sie vorsichtig die Abdeckung des Kühlaggregats ab.<br>  -Reinigen Sie die Lamellen vorsichtig mit einem Staubsauger</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "ff8c2aa0-f387-431f-a306-a206d9dfd0c9",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
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
              "uuid": "25cc3563-3c2f-4b8f-91d6-ccc87df07e79",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
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
              "uuid": "00768347-1556-46f5-8366-ad37cd47ef5d",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
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
              "uuid": "0d94a759-1624-4251-b81d-c0bacda7bd13",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
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
              "uuid": "eeae759a-74d0-432a-bd8c-4bae5d240aff",
              "parent_uuid": "c791b2d6-de3d-4757-a9b7-2d476cd21218",
              "tagName": "td",
              "properties": [
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "9bee6327-ba24-4940-95d7-fc0d63f5f04e",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "d6ccbdaa-6a82-48cb-8226-3f541b395209",
              "parent_uuid": "9bee6327-ba24-4940-95d7-fc0d63f5f04e",
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86c415fa-7ec7-4ee2-a6e3-191b7a6802b3",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Schwingplatte<br>  -Der Talkbelag der Schwingplatte wird mit einem Spachtel gelöst.<br>  -Anschliessend kann mit einem Reinigungstuch und Bremsreiniger der übrige Schmutz entfernt werden</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "08d4646b-9030-412c-9fab-6a7ff8f1d20b",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "db0385cf-0486-42c2-91e8-b2df7920d088",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
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
              "uuid": "a058ad22-1847-4b68-ad82-d7d61267cd8d",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
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
              "uuid": "6b230bd0-01db-4acf-a6c1-d4fa330471ad",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
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
              "uuid": "50ef41e5-51ea-4f03-abc0-850b562572ff",
              "parent_uuid": "36e2a3f4-1a7e-48b8-a8f5-7bc84eb827b3",
              "tagName": "td",
              "properties": [
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "28e7ae65-b455-4457-9800-d740d3e58d8d",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
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
                  "21"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Prüfen Sie die Abscheider und Bürsten auf Verschleiß.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "461cd7f4-f9bc-4552-acde-914e2c97b266",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "cc3eb5fd-b2d9-473b-a95b-553b3885435b",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
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
              "uuid": "53ac8811-6cc1-4412-a33b-551eec1329ae",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
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
              "uuid": "ed1449ca-cac9-476c-81e3-5ab26c1d8a8d",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
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
              "uuid": "df815d07-9490-4a04-8819-dc4433bf2e97",
              "parent_uuid": "f1319928-40be-4ab8-bee2-ddb38489ffeb",
              "tagName": "td",
              "properties": [
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
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9ade8b83-6347-4d01-a038-faa7654705bd",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
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
                  "51"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Vision-Einheiten<br>  -Reinigen Sie die Oberfläche der Abdeckung vorsichtig mit dem Staubsauger und  mit einem Microphasertuch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c43037de-6146-49c6-a215-ef1892991343",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "404aba8d-0cb6-4c5a-be9c-603515209140",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
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
              "uuid": "181b8afa-ca35-491c-b2dc-021adae030da",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
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
              "uuid": "e2c1f850-7fae-4414-9115-3ac3983d2e11",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
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
              "uuid": "de3ed4d0-be1d-4a0c-a518-25b0d5b35a69",
              "parent_uuid": "9703e713-02b7-4624-b4e1-940a233189cd",
              "tagName": "td",
              "properties": [
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
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3656d7cf-b1e4-4f41-ad11-6d9af71789de",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
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
                  "86"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Vision-Linsen<br>  -Reinige die Oberfläche der Linse vorsichtig mit dem Staubsauger/Druckluftpistole und mit einem Microphasertuch.<br>  -Bei Flecken auf der Linse, muss ein Microphasertuch mit wenig Senorreiniger angewendet werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "d08a14d5-66a2-4581-a129-33d4e5c72973",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7a0c6a84-53b7-40c5-927c-66974c207ede",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
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
              "uuid": "bf2c6839-52d2-4444-a4b5-01aeb9236c21",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
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
              "uuid": "e7d65aac-f4b3-40bd-ba20-b86afaa4c451",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
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
              "uuid": "60d7e187-b5f0-4dfb-a081-d33bb90acd2e",
              "parent_uuid": "401a71c4-154c-4523-ae57-ed3e4025394f",
              "tagName": "td",
              "properties": [
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
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "734a5d37-3807-4b1c-b588-688dd71dfb23",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
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
                  "69"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span>Speicherplatz<br>  -Überprüfe den Speicherplatz auf dem NAS, falls dieser überläuft können alte Daten gelöscht werden.<br>  -Überprüfen den Speicherplatz auf dem Lokalen Laufwerken, falls der überläuft können Logdateien gelöscht werden.</span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "14af8894-132b-4965-a4b5-c9b48401ccdb",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
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
              "uuid": "2f7cf59a-1a8e-4288-b669-3f514d61a548",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
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
              "uuid": "0f022c69-f778-43ea-97b0-10dbf12e7c9d",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
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
              "uuid": "4f3bb506-8496-41ce-9ee0-8935fdecba70",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
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
              "uuid": "3d3e03b2-1431-4445-8581-80ecdac52548",
              "parent_uuid": "9bca8523-4ab8-4881-a47b-3e08aad0aea9",
              "tagName": "td",
              "properties": [
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "89d3802c-765d-4890-9e00-6ff45026a076",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d7219e8-8965-4d90-820e-ae82c164356a",
              "parent_uuid": "89d3802c-765d-4890-9e00-6ff45026a076",
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "8924adfd-425b-4306-827c-c88b84321c94",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "79088ef0-089f-42ca-b68d-f6184cdf9fce",
              "parent_uuid": "8924adfd-425b-4306-827c-c88b84321c94",
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "ce863dc3-b75e-4803-977d-d3b4b8c6fbd5",
          "parent_uuid": "55566d7d-0f84-4489-a99a-897f24db8478",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "57685485-092a-4396-be50-5db159750a8b",
              "parent_uuid": "ce863dc3-b75e-4803-977d-d3b4b8c6fbd5",
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
          "sort": 30,
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
    ,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS cl_uid 
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
		,'58A6D34C-2D4B-4F8A-B831-60488591AEDC' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '58A6D34C-2D4B-4F8A-B831-60488591AEDC'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


GO 


PRINT 'Done Executing "Insert_CIS.sql"' 


GO 




PRINT 'Begin Executing "Insert_EVA.sql"' 

GO 



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
  "uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "bda0758e-626c-46ca-8d06-4ee2e569a9e3",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "a7a87330-b036-4da0-8183-92612c9744a0",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "b6321eef-9d7a-42fd-a3a9-fc219f3fd7c5",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "73493857-84d7-42c2-97cf-17b719cbabc0",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "62ba98f7-2d1a-424f-91e5-06191fe7c9dd",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "0f319385-39d9-48a5-a8bc-84886472a903",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "e40b6d7f-c44e-443c-aa26-16e9040913cc",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
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
      "uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
      "parent_uuid": "c6f94c9c-5cdb-4e47-b778-83f8371480de",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "95ba5cdb-e1dc-4a19-916b-26827a373ac0",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "ff6ea980-f903-4830-afcc-fd13ee4af47a",
              "parent_uuid": "95ba5cdb-e1dc-4a19-916b-26827a373ac0",
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
              "uuid": "decd1924-b1ea-4ccb-85a4-bf08e8c1f588",
              "parent_uuid": "95ba5cdb-e1dc-4a19-916b-26827a373ac0",
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
              "uuid": "00efd58e-a0de-4abe-affd-2305486e7847",
              "parent_uuid": "95ba5cdb-e1dc-4a19-916b-26827a373ac0",
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
              "uuid": "24e29df3-ed40-453b-98f7-a51eca652d89",
              "parent_uuid": "95ba5cdb-e1dc-4a19-916b-26827a373ac0",
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
          "uuid": "6cc86b1d-7495-4c47-818b-8ea8f1efa9f4",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "f401ee1b-8e2e-40a5-b940-ced9a2c567de",
              "parent_uuid": "6cc86b1d-7495-4c47-818b-8ea8f1efa9f4",
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
              "uuid": "bb1e0971-1895-4f52-b574-32888b8cc979",
              "parent_uuid": "6cc86b1d-7495-4c47-818b-8ea8f1efa9f4",
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
              "uuid": "70fe7cb8-ef0d-4f9b-96c0-ee26dff84c96",
              "parent_uuid": "6cc86b1d-7495-4c47-818b-8ea8f1efa9f4",
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
              "uuid": "05264c1b-c971-4806-a009-1d3c6ae7edb7",
              "parent_uuid": "6cc86b1d-7495-4c47-818b-8ea8f1efa9f4",
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
          "uuid": "21d5d99f-1047-497e-9fd5-cae3685d3210",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d38eb6bf-81b2-488b-a6b8-40daf0d19665",
              "parent_uuid": "21d5d99f-1047-497e-9fd5-cae3685d3210",
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
              "uuid": "b27a44d4-5f9c-4576-b548-4b6fd2cd6eac",
              "parent_uuid": "21d5d99f-1047-497e-9fd5-cae3685d3210",
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
              "uuid": "c8b60162-4ef3-4b91-b3bd-270daa3a5b4b",
              "parent_uuid": "21d5d99f-1047-497e-9fd5-cae3685d3210",
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
              "uuid": "17bbd31e-9897-44ad-a8b7-00263512e1a3",
              "parent_uuid": "21d5d99f-1047-497e-9fd5-cae3685d3210",
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
              "uuid": "326e5c91-679b-44d0-931b-b66f41580c05",
              "parent_uuid": "21d5d99f-1047-497e-9fd5-cae3685d3210",
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
              "uuid": "88a20a24-7de4-417a-984f-0410aa772f1d",
              "parent_uuid": "21d5d99f-1047-497e-9fd5-cae3685d3210",
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
          "uuid": "12f9332a-0fa0-458a-bcac-d99c34f7d479",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "8128d10f-1707-4b3e-90ea-d62f483a4afe",
              "parent_uuid": "12f9332a-0fa0-458a-bcac-d99c34f7d479",
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
          "uuid": "e9f99eb7-8a7b-4494-8b55-16cfcd2d335e",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "961aea76-a22b-4cbd-8aa8-8fa47baf45aa",
              "parent_uuid": "e9f99eb7-8a7b-4494-8b55-16cfcd2d335e",
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
              "uuid": "58e4e4cc-f91b-4a74-85dc-6526eea459d2",
              "parent_uuid": "e9f99eb7-8a7b-4494-8b55-16cfcd2d335e",
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
              "uuid": "e962dc8a-878d-44c6-b0f5-2b311fa98476",
              "parent_uuid": "e9f99eb7-8a7b-4494-8b55-16cfcd2d335e",
              "tagName": "td",
              "properties": [
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
              "uuid": "61c5d311-7460-447e-b8f9-78fd9dff5688",
              "parent_uuid": "e9f99eb7-8a7b-4494-8b55-16cfcd2d335e",
              "tagName": "td",
              "properties": [
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
              "uuid": "f1a6bcdf-6805-4134-a15e-c1a713ca1689",
              "parent_uuid": "e9f99eb7-8a7b-4494-8b55-16cfcd2d335e",
              "tagName": "td",
              "properties": [
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
              "uuid": "5f74aa9c-4e0a-4d08-bb37-71eb3f4fc09a",
              "parent_uuid": "e9f99eb7-8a7b-4494-8b55-16cfcd2d335e",
              "tagName": "td",
              "properties": [
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "0bef6b09-780a-4402-98e9-d809cff381e9",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "745a36a9-d925-4ee7-b819-52ad46f049c0",
              "parent_uuid": "0bef6b09-780a-4402-98e9-d809cff381e9",
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
              "uuid": "e5f2aab2-3bf6-419c-b86b-d32fedcf4ca4",
              "parent_uuid": "0bef6b09-780a-4402-98e9-d809cff381e9",
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
              "uuid": "378eb434-2cf2-455f-bc4e-342648391852",
              "parent_uuid": "0bef6b09-780a-4402-98e9-d809cff381e9",
              "tagName": "td",
              "properties": [
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
              "uuid": "94b2f9b1-0eb5-4862-aaea-cbff8609ecb8",
              "parent_uuid": "0bef6b09-780a-4402-98e9-d809cff381e9",
              "tagName": "td",
              "properties": [
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
              "uuid": "fbba6df7-fb54-4a68-a14b-54c1ff41acbf",
              "parent_uuid": "0bef6b09-780a-4402-98e9-d809cff381e9",
              "tagName": "td",
              "properties": [
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
              "uuid": "ec72a57d-a5e7-4941-b0de-828c2bd95047",
              "parent_uuid": "0bef6b09-780a-4402-98e9-d809cff381e9",
              "tagName": "td",
              "properties": [
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
          "uuid": "59511cdd-3a68-4aaa-8ad7-48e4f69c14e6",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f75e8c3f-6ed1-4140-a7b5-1ca4eaf2da93",
              "parent_uuid": "59511cdd-3a68-4aaa-8ad7-48e4f69c14e6",
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
              "uuid": "311b9477-f26a-4f68-bb95-a475fdc5da9c",
              "parent_uuid": "59511cdd-3a68-4aaa-8ad7-48e4f69c14e6",
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
              "uuid": "a9a494b5-1e48-4b76-8480-802e28e05806",
              "parent_uuid": "59511cdd-3a68-4aaa-8ad7-48e4f69c14e6",
              "tagName": "td",
              "properties": [
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
              "uuid": "94b78f25-230a-40b0-8cea-13478e8138b9",
              "parent_uuid": "59511cdd-3a68-4aaa-8ad7-48e4f69c14e6",
              "tagName": "td",
              "properties": [
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
              "uuid": "92b66a15-dd7f-49d7-951a-29fc814b5240",
              "parent_uuid": "59511cdd-3a68-4aaa-8ad7-48e4f69c14e6",
              "tagName": "td",
              "properties": [
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
              "uuid": "b199764f-eaab-4a55-866f-56922c0ab24f",
              "parent_uuid": "59511cdd-3a68-4aaa-8ad7-48e4f69c14e6",
              "tagName": "td",
              "properties": [
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
          "uuid": "4560a930-24a2-4897-ad20-e0255b386ad2",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b3720fe0-85c3-4dde-b960-79cde8f2666f",
              "parent_uuid": "4560a930-24a2-4897-ad20-e0255b386ad2",
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
              "uuid": "02a06253-bf09-4daa-8b9d-b1bb5e127b3a",
              "parent_uuid": "4560a930-24a2-4897-ad20-e0255b386ad2",
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
              "uuid": "52da7398-82af-4d5d-bae3-d8a7a217a86e",
              "parent_uuid": "4560a930-24a2-4897-ad20-e0255b386ad2",
              "tagName": "td",
              "properties": [
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
              "uuid": "ba12614f-81ea-4a92-9d92-f309eb3c5518",
              "parent_uuid": "4560a930-24a2-4897-ad20-e0255b386ad2",
              "tagName": "td",
              "properties": [
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
              "uuid": "44b17d9f-aa37-4636-905b-612a69af1434",
              "parent_uuid": "4560a930-24a2-4897-ad20-e0255b386ad2",
              "tagName": "td",
              "properties": [
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
              "uuid": "a1054147-beae-405d-a25c-c60d67774cea",
              "parent_uuid": "4560a930-24a2-4897-ad20-e0255b386ad2",
              "tagName": "td",
              "properties": [
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
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "f21a50b9-30d1-4a9a-883f-c811e88bdc80",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c529ecda-4780-4848-a05f-e92bce8ac103",
              "parent_uuid": "f21a50b9-30d1-4a9a-883f-c811e88bdc80",
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
              "uuid": "3465b9c0-4341-4473-a897-de38e345b491",
              "parent_uuid": "f21a50b9-30d1-4a9a-883f-c811e88bdc80",
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
              "uuid": "11e7518e-d1a9-430e-84dc-103475e2716a",
              "parent_uuid": "f21a50b9-30d1-4a9a-883f-c811e88bdc80",
              "tagName": "td",
              "properties": [
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
              "uuid": "1549b197-c7cd-4b21-9b58-4485fc707b1a",
              "parent_uuid": "f21a50b9-30d1-4a9a-883f-c811e88bdc80",
              "tagName": "td",
              "properties": [
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
              "uuid": "a9466cf1-e81a-4ba4-950a-6b9cf6eabfff",
              "parent_uuid": "f21a50b9-30d1-4a9a-883f-c811e88bdc80",
              "tagName": "td",
              "properties": [
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
              "uuid": "033c6785-8456-41e2-a9b2-25f52f82961e",
              "parent_uuid": "f21a50b9-30d1-4a9a-883f-c811e88bdc80",
              "tagName": "td",
              "properties": [
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "e43b3f05-eec5-4ed4-90c7-b9455c71e402",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "014c0340-52e3-4cff-997e-4176baf30531",
              "parent_uuid": "e43b3f05-eec5-4ed4-90c7-b9455c71e402",
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
              "uuid": "73420e37-2425-4bd9-af2f-d771d0bc3250",
              "parent_uuid": "e43b3f05-eec5-4ed4-90c7-b9455c71e402",
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
              "uuid": "dcff96a8-a47f-4eac-b574-0c613f8c396f",
              "parent_uuid": "e43b3f05-eec5-4ed4-90c7-b9455c71e402",
              "tagName": "td",
              "properties": [
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
              "uuid": "33822bad-f3e4-4ca0-81dc-5e0117f6c634",
              "parent_uuid": "e43b3f05-eec5-4ed4-90c7-b9455c71e402",
              "tagName": "td",
              "properties": [
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
              "uuid": "dd17c4d2-7347-45b5-b099-72ba00a5da15",
              "parent_uuid": "e43b3f05-eec5-4ed4-90c7-b9455c71e402",
              "tagName": "td",
              "properties": [
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
              "uuid": "59eb88fb-24ad-44f4-8e5a-96335d030181",
              "parent_uuid": "e43b3f05-eec5-4ed4-90c7-b9455c71e402",
              "tagName": "td",
              "properties": [
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
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "af907374-bd17-4d19-92a1-5ed20c4aef11",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "86018183-c802-4374-b1b0-1e4ce2a765a1",
              "parent_uuid": "af907374-bd17-4d19-92a1-5ed20c4aef11",
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
              "uuid": "0ff6ca71-5b66-4aad-9043-108638ebf2b2",
              "parent_uuid": "af907374-bd17-4d19-92a1-5ed20c4aef11",
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
              "uuid": "fbfa8ad0-c3a5-4fc3-9f95-0744f111cfa8",
              "parent_uuid": "af907374-bd17-4d19-92a1-5ed20c4aef11",
              "tagName": "td",
              "properties": [
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
              "uuid": "33ca1abd-0493-4a5f-af52-7a96077311cc",
              "parent_uuid": "af907374-bd17-4d19-92a1-5ed20c4aef11",
              "tagName": "td",
              "properties": [
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
              "uuid": "32c8e98f-cb64-4fc1-a03f-ee1022dfb144",
              "parent_uuid": "af907374-bd17-4d19-92a1-5ed20c4aef11",
              "tagName": "td",
              "properties": [
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
              "uuid": "c5799e3f-8b46-4c19-a710-3e1398aa604b",
              "parent_uuid": "af907374-bd17-4d19-92a1-5ed20c4aef11",
              "tagName": "td",
              "properties": [
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
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "6d261373-7874-4e79-87ae-d18127b3118e",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "0d754180-25e1-44c2-9491-3e494fafa503",
              "parent_uuid": "6d261373-7874-4e79-87ae-d18127b3118e",
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
              "uuid": "9c9b88bf-7901-4f24-8b4a-5e7ddcf75352",
              "parent_uuid": "6d261373-7874-4e79-87ae-d18127b3118e",
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
              "uuid": "0b8d5774-0b80-440e-a31d-6d234bf93124",
              "parent_uuid": "6d261373-7874-4e79-87ae-d18127b3118e",
              "tagName": "td",
              "properties": [
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
              "uuid": "7c047032-5b74-407a-b05f-480d50352127",
              "parent_uuid": "6d261373-7874-4e79-87ae-d18127b3118e",
              "tagName": "td",
              "properties": [
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
              "uuid": "3d7cd798-7438-473a-b7d5-e350332ebb69",
              "parent_uuid": "6d261373-7874-4e79-87ae-d18127b3118e",
              "tagName": "td",
              "properties": [
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
              "uuid": "06081306-5eae-4fe0-88c7-6c14219d148a",
              "parent_uuid": "6d261373-7874-4e79-87ae-d18127b3118e",
              "tagName": "td",
              "properties": [
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
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "1e5649a9-1edf-4b29-ad25-1b905275a987",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2707ac3d-65ed-4d43-8afe-d1cc63128991",
              "parent_uuid": "1e5649a9-1edf-4b29-ad25-1b905275a987",
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
              "uuid": "1ef441ca-2879-4866-b1b5-cfabd744f757",
              "parent_uuid": "1e5649a9-1edf-4b29-ad25-1b905275a987",
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
              "uuid": "5123e7ce-c467-4a3a-8e53-2db6ef1bbc4e",
              "parent_uuid": "1e5649a9-1edf-4b29-ad25-1b905275a987",
              "tagName": "td",
              "properties": [
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
              "uuid": "006820f3-f2c1-4c64-aa6f-14740a8cbbf7",
              "parent_uuid": "1e5649a9-1edf-4b29-ad25-1b905275a987",
              "tagName": "td",
              "properties": [
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
              "uuid": "dcd9e722-43d9-4310-b605-2a9602f5b078",
              "parent_uuid": "1e5649a9-1edf-4b29-ad25-1b905275a987",
              "tagName": "td",
              "properties": [
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
              "uuid": "b13b26d2-30ab-4770-85e3-237ca094d7bc",
              "parent_uuid": "1e5649a9-1edf-4b29-ad25-1b905275a987",
              "tagName": "td",
              "properties": [
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "aff6a886-f0da-43ca-8ed2-c6153a625dd5",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b458e2ef-0e9b-46b7-967c-cef12a0bf052",
              "parent_uuid": "aff6a886-f0da-43ca-8ed2-c6153a625dd5",
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
              "uuid": "c9ac5c64-226a-4b70-8af9-b7bc218e8e47",
              "parent_uuid": "aff6a886-f0da-43ca-8ed2-c6153a625dd5",
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
              "uuid": "c0d5dd2d-c9cd-43cc-b356-152cba097d9e",
              "parent_uuid": "aff6a886-f0da-43ca-8ed2-c6153a625dd5",
              "tagName": "td",
              "properties": [
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
              "uuid": "26c1212f-62de-461c-9852-b011d19c6a91",
              "parent_uuid": "aff6a886-f0da-43ca-8ed2-c6153a625dd5",
              "tagName": "td",
              "properties": [
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
              "uuid": "be0c0623-e253-4732-8d0e-1e205d048245",
              "parent_uuid": "aff6a886-f0da-43ca-8ed2-c6153a625dd5",
              "tagName": "td",
              "properties": [
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
              "uuid": "f1f06143-0834-496b-861b-64577ac161f0",
              "parent_uuid": "aff6a886-f0da-43ca-8ed2-c6153a625dd5",
              "tagName": "td",
              "properties": [
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
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "65050cae-4b97-40dd-88bc-7e9c4f9d49da",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "050aebb5-e610-47fc-b610-f95eed3627de",
              "parent_uuid": "65050cae-4b97-40dd-88bc-7e9c4f9d49da",
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
              "uuid": "b48a78e8-acc0-440d-9236-e269fe8be9be",
              "parent_uuid": "65050cae-4b97-40dd-88bc-7e9c4f9d49da",
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
              "uuid": "cd3c3757-b711-4c56-a756-7c6d1709aed6",
              "parent_uuid": "65050cae-4b97-40dd-88bc-7e9c4f9d49da",
              "tagName": "td",
              "properties": [
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
              "uuid": "2cbcd317-9aab-4f12-8db9-4a2a8e8cb575",
              "parent_uuid": "65050cae-4b97-40dd-88bc-7e9c4f9d49da",
              "tagName": "td",
              "properties": [
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
              "uuid": "556a72cb-da6c-4ed6-8be3-88c4243b7d11",
              "parent_uuid": "65050cae-4b97-40dd-88bc-7e9c4f9d49da",
              "tagName": "td",
              "properties": [
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
              "uuid": "6e490229-f680-4129-894d-acbaf92d08bd",
              "parent_uuid": "65050cae-4b97-40dd-88bc-7e9c4f9d49da",
              "tagName": "td",
              "properties": [
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "fab21a39-7b88-4200-9cba-34ca30c8bdf3",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "992b837f-1574-4f89-883b-94a8ba511db8",
              "parent_uuid": "fab21a39-7b88-4200-9cba-34ca30c8bdf3",
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
              "uuid": "82da2168-a9f9-45e2-a25d-0387af6c9f06",
              "parent_uuid": "fab21a39-7b88-4200-9cba-34ca30c8bdf3",
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
              "uuid": "d815fd4e-cd60-4aa9-86c4-66a8c1fa6612",
              "parent_uuid": "fab21a39-7b88-4200-9cba-34ca30c8bdf3",
              "tagName": "td",
              "properties": [
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
              "uuid": "ae63134c-aa1c-4060-8607-8fa31b140b69",
              "parent_uuid": "fab21a39-7b88-4200-9cba-34ca30c8bdf3",
              "tagName": "td",
              "properties": [
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
              "uuid": "68889380-e930-4a2e-a6e1-2e1ff5830900",
              "parent_uuid": "fab21a39-7b88-4200-9cba-34ca30c8bdf3",
              "tagName": "td",
              "properties": [
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
              "uuid": "4d36797c-6476-41cf-8a27-a1ff7f793a04",
              "parent_uuid": "fab21a39-7b88-4200-9cba-34ca30c8bdf3",
              "tagName": "td",
              "properties": [
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "d7f57843-0092-4545-adfb-66ca02ad9710",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b03050ba-405e-45fc-b787-81b6b632455c",
              "parent_uuid": "d7f57843-0092-4545-adfb-66ca02ad9710",
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
              "uuid": "85328570-d293-4f09-bdc0-c459f99d81ef",
              "parent_uuid": "d7f57843-0092-4545-adfb-66ca02ad9710",
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
              "uuid": "9c146db2-78d4-4aa5-b293-9f7b59a190a2",
              "parent_uuid": "d7f57843-0092-4545-adfb-66ca02ad9710",
              "tagName": "td",
              "properties": [
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
              "uuid": "5d24aad6-53fc-4dfb-b04c-5dd727788438",
              "parent_uuid": "d7f57843-0092-4545-adfb-66ca02ad9710",
              "tagName": "td",
              "properties": [
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
              "uuid": "d2029b91-e130-42d2-95e2-9187574e1031",
              "parent_uuid": "d7f57843-0092-4545-adfb-66ca02ad9710",
              "tagName": "td",
              "properties": [
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
              "uuid": "bc49e7f6-17fc-4479-9570-111fa79fc0da",
              "parent_uuid": "d7f57843-0092-4545-adfb-66ca02ad9710",
              "tagName": "td",
              "properties": [
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
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "9fecb808-503d-4282-93b8-e49d7534d41d",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5f1fcf00-8cea-4275-a2ca-5f24afd5d5d9",
              "parent_uuid": "9fecb808-503d-4282-93b8-e49d7534d41d",
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
              "uuid": "0d521135-2c07-4108-bded-798c2a8ae0d2",
              "parent_uuid": "9fecb808-503d-4282-93b8-e49d7534d41d",
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
              "uuid": "faef6a45-d886-445a-bf14-60071d24f158",
              "parent_uuid": "9fecb808-503d-4282-93b8-e49d7534d41d",
              "tagName": "td",
              "properties": [
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
              "uuid": "4915d2b6-3c15-46f7-8a90-48248c8e1bc0",
              "parent_uuid": "9fecb808-503d-4282-93b8-e49d7534d41d",
              "tagName": "td",
              "properties": [
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
              "uuid": "a926cfd4-a630-4069-985e-e896e7989589",
              "parent_uuid": "9fecb808-503d-4282-93b8-e49d7534d41d",
              "tagName": "td",
              "properties": [
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
              "uuid": "fd153371-95d3-47b2-a5f5-3a9f27ef58bf",
              "parent_uuid": "9fecb808-503d-4282-93b8-e49d7534d41d",
              "tagName": "td",
              "properties": [
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "7663fa6e-0d55-40de-92c6-60a98e61032b",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b14e4dd-093a-42bc-a2d2-f1348bd27bfe",
              "parent_uuid": "7663fa6e-0d55-40de-92c6-60a98e61032b",
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
          "uuid": "4d04a2cd-e69d-4be5-b8f6-99aff0505db5",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "889baac7-4287-4158-88f9-3ec49be1ea7f",
              "parent_uuid": "4d04a2cd-e69d-4be5-b8f6-99aff0505db5",
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
          "uuid": "d3d25014-1925-41c8-9c3a-1076f8c517a8",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d5cdb1c5-76c2-4263-bae4-0e13a88b20d7",
              "parent_uuid": "d3d25014-1925-41c8-9c3a-1076f8c517a8",
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
              "uuid": "49979e86-01ca-4ff1-91e6-febb37633e0f",
              "parent_uuid": "d3d25014-1925-41c8-9c3a-1076f8c517a8",
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
              "uuid": "231e35bb-6c60-4914-91db-b6f8be18ba03",
              "parent_uuid": "d3d25014-1925-41c8-9c3a-1076f8c517a8",
              "tagName": "td",
              "properties": [
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
              "uuid": "5678cd64-a757-4ce9-b223-b344869c5b10",
              "parent_uuid": "d3d25014-1925-41c8-9c3a-1076f8c517a8",
              "tagName": "td",
              "properties": [
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
              "uuid": "69388d0a-f12e-49d3-bcce-6896c3f43620",
              "parent_uuid": "d3d25014-1925-41c8-9c3a-1076f8c517a8",
              "tagName": "td",
              "properties": [
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
              "uuid": "9ad1ada9-ee4f-449e-92ca-94407757d8bc",
              "parent_uuid": "d3d25014-1925-41c8-9c3a-1076f8c517a8",
              "tagName": "td",
              "properties": [
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "521f3a99-7fed-461c-adb3-f579d244dd97",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6f30d49c-c68b-461f-b8fb-8d9098285822",
              "parent_uuid": "521f3a99-7fed-461c-adb3-f579d244dd97",
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
              "uuid": "30c24829-e97b-4356-b923-8c6283b1e151",
              "parent_uuid": "521f3a99-7fed-461c-adb3-f579d244dd97",
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
              "uuid": "e2c35e50-4196-43f8-98fe-6a010fec174e",
              "parent_uuid": "521f3a99-7fed-461c-adb3-f579d244dd97",
              "tagName": "td",
              "properties": [
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
              "uuid": "c9eca72a-331c-4e16-b639-5a4814db428b",
              "parent_uuid": "521f3a99-7fed-461c-adb3-f579d244dd97",
              "tagName": "td",
              "properties": [
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
              "uuid": "ec46d8dd-b652-435a-819e-691c9c87da42",
              "parent_uuid": "521f3a99-7fed-461c-adb3-f579d244dd97",
              "tagName": "td",
              "properties": [
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
              "uuid": "cb6321f7-872c-45a3-b1db-9214ed0bdc9a",
              "parent_uuid": "521f3a99-7fed-461c-adb3-f579d244dd97",
              "tagName": "td",
              "properties": [
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "7cf7cbc3-9b13-4377-b63b-e792cdac50d2",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6897e5d6-6a21-4b48-8ae0-f5216f3931fe",
              "parent_uuid": "7cf7cbc3-9b13-4377-b63b-e792cdac50d2",
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
              "uuid": "f090e729-25f3-484a-8daa-2cf3144fa613",
              "parent_uuid": "7cf7cbc3-9b13-4377-b63b-e792cdac50d2",
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
              "uuid": "d273bc2d-e616-4b57-8eac-31d5ad9c7f1f",
              "parent_uuid": "7cf7cbc3-9b13-4377-b63b-e792cdac50d2",
              "tagName": "td",
              "properties": [
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
              "uuid": "c41dfacc-2a90-42a0-92df-88ddd9fba432",
              "parent_uuid": "7cf7cbc3-9b13-4377-b63b-e792cdac50d2",
              "tagName": "td",
              "properties": [
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
              "uuid": "b07f4fd9-ea8b-4e7d-a81f-d570c245e14b",
              "parent_uuid": "7cf7cbc3-9b13-4377-b63b-e792cdac50d2",
              "tagName": "td",
              "properties": [
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
              "uuid": "416d4924-d4ab-4960-8fc0-525dbf45e765",
              "parent_uuid": "7cf7cbc3-9b13-4377-b63b-e792cdac50d2",
              "tagName": "td",
              "properties": [
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
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "5d5d1de4-9263-4cf5-9911-95fdf3e8f8a7",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c203c19e-c7cc-4150-ae97-713dd95b35e3",
              "parent_uuid": "5d5d1de4-9263-4cf5-9911-95fdf3e8f8a7",
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
              "uuid": "9cf88047-3997-43a1-8fb7-2180f44e2a70",
              "parent_uuid": "5d5d1de4-9263-4cf5-9911-95fdf3e8f8a7",
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
              "uuid": "f416fe7d-6141-41f6-a0d7-49f978ff44c9",
              "parent_uuid": "5d5d1de4-9263-4cf5-9911-95fdf3e8f8a7",
              "tagName": "td",
              "properties": [
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
              "uuid": "e010365f-754c-45c8-983a-71ac66a3bfe0",
              "parent_uuid": "5d5d1de4-9263-4cf5-9911-95fdf3e8f8a7",
              "tagName": "td",
              "properties": [
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
              "uuid": "bde6face-93b6-4a88-8228-9172b249dc13",
              "parent_uuid": "5d5d1de4-9263-4cf5-9911-95fdf3e8f8a7",
              "tagName": "td",
              "properties": [
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
              "uuid": "ddaa010b-029a-41bc-bf08-d851b0af0dc3",
              "parent_uuid": "5d5d1de4-9263-4cf5-9911-95fdf3e8f8a7",
              "tagName": "td",
              "properties": [
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "fcb7b9b7-422f-437e-80be-eed38106257c",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d815482b-062f-435d-a113-f72160678ff7",
              "parent_uuid": "fcb7b9b7-422f-437e-80be-eed38106257c",
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
              "uuid": "ab9fffe8-5160-48ad-9bfe-957c78918ca5",
              "parent_uuid": "fcb7b9b7-422f-437e-80be-eed38106257c",
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
              "uuid": "0ba921d2-7afb-4a1a-a43f-f96a0b889b15",
              "parent_uuid": "fcb7b9b7-422f-437e-80be-eed38106257c",
              "tagName": "td",
              "properties": [
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
              "uuid": "49cb0345-d1bc-4a16-b6c3-e87b9de8cbd4",
              "parent_uuid": "fcb7b9b7-422f-437e-80be-eed38106257c",
              "tagName": "td",
              "properties": [
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
              "uuid": "2f8be6a2-f4f8-4b8b-8e93-7bb82e53cf32",
              "parent_uuid": "fcb7b9b7-422f-437e-80be-eed38106257c",
              "tagName": "td",
              "properties": [
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
              "uuid": "60dd7bc9-9744-460b-8fc4-09f10ff939ec",
              "parent_uuid": "fcb7b9b7-422f-437e-80be-eed38106257c",
              "tagName": "td",
              "properties": [
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
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "64fa22f6-af0c-4bdf-99b4-5bd4cef9c810",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6d966d93-1ab7-48f1-bea2-54e0749db785",
              "parent_uuid": "64fa22f6-af0c-4bdf-99b4-5bd4cef9c810",
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
              "uuid": "ae8171b3-4bf1-4213-81e0-a479ec758005",
              "parent_uuid": "64fa22f6-af0c-4bdf-99b4-5bd4cef9c810",
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
              "uuid": "403cbbb6-c0de-47f6-ad8c-67c8a0a8877e",
              "parent_uuid": "64fa22f6-af0c-4bdf-99b4-5bd4cef9c810",
              "tagName": "td",
              "properties": [
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
              "uuid": "172da16a-2d95-4dd7-a85d-1a8c266be6c5",
              "parent_uuid": "64fa22f6-af0c-4bdf-99b4-5bd4cef9c810",
              "tagName": "td",
              "properties": [
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
              "uuid": "52404822-e97a-4f27-b064-ed6bf3652fac",
              "parent_uuid": "64fa22f6-af0c-4bdf-99b4-5bd4cef9c810",
              "tagName": "td",
              "properties": [
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
              "uuid": "86f90ee2-2cec-40ca-9653-b8ad7e258d8d",
              "parent_uuid": "64fa22f6-af0c-4bdf-99b4-5bd4cef9c810",
              "tagName": "td",
              "properties": [
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
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "ba411165-44bf-44ac-b60d-efd48c7ae94b",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "23a4fa57-aa76-44d2-b3f4-71b3581131eb",
              "parent_uuid": "ba411165-44bf-44ac-b60d-efd48c7ae94b",
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
              "uuid": "fdc22da8-17d1-445f-92ff-525837c81a93",
              "parent_uuid": "ba411165-44bf-44ac-b60d-efd48c7ae94b",
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
              "uuid": "cf85abea-69cb-4715-bbe8-80b7525df999",
              "parent_uuid": "ba411165-44bf-44ac-b60d-efd48c7ae94b",
              "tagName": "td",
              "properties": [
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
              "uuid": "fbb8dd57-c3e9-4079-afa7-1b498406a957",
              "parent_uuid": "ba411165-44bf-44ac-b60d-efd48c7ae94b",
              "tagName": "td",
              "properties": [
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
              "uuid": "c2f2e245-8ffa-4e20-a8a7-f6e7c5ecde1a",
              "parent_uuid": "ba411165-44bf-44ac-b60d-efd48c7ae94b",
              "tagName": "td",
              "properties": [
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
              "uuid": "8355af5e-a769-4686-a203-10c867d05f6c",
              "parent_uuid": "ba411165-44bf-44ac-b60d-efd48c7ae94b",
              "tagName": "td",
              "properties": [
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
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "07222f85-743b-4081-aed6-b2ea84ca2625",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff95811d-97b4-4651-925d-b01ff41271be",
              "parent_uuid": "07222f85-743b-4081-aed6-b2ea84ca2625",
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
              "uuid": "49e04ef6-c253-44b2-9299-18fcdc77efda",
              "parent_uuid": "07222f85-743b-4081-aed6-b2ea84ca2625",
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
              "uuid": "eaed4504-e83e-4c64-b3ff-bcbcee47fd22",
              "parent_uuid": "07222f85-743b-4081-aed6-b2ea84ca2625",
              "tagName": "td",
              "properties": [
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
              "uuid": "16d00836-4e5c-47e1-889c-eb5e780ecdd8",
              "parent_uuid": "07222f85-743b-4081-aed6-b2ea84ca2625",
              "tagName": "td",
              "properties": [
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
              "uuid": "d1c7bb1b-708c-4550-9a0c-d0e4c108ed78",
              "parent_uuid": "07222f85-743b-4081-aed6-b2ea84ca2625",
              "tagName": "td",
              "properties": [
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
              "uuid": "0d5e567d-89c5-4c9c-90f1-d8ffdf260b7e",
              "parent_uuid": "07222f85-743b-4081-aed6-b2ea84ca2625",
              "tagName": "td",
              "properties": [
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
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "4b1c5207-a695-4214-a660-7c8a1bf2500b",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "4c49c921-a6fc-45f3-964e-3b0eb5d49151",
              "parent_uuid": "4b1c5207-a695-4214-a660-7c8a1bf2500b",
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
          "uuid": "3ed5b132-7a90-4e7d-bf97-48950b6d2c90",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ea4585ae-1f22-4bc1-be65-b79b78725de1",
              "parent_uuid": "3ed5b132-7a90-4e7d-bf97-48950b6d2c90",
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
              "uuid": "d3c0b07a-6662-4a4e-943e-cd0c2dfbb786",
              "parent_uuid": "3ed5b132-7a90-4e7d-bf97-48950b6d2c90",
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
              "uuid": "a5aabc0a-897b-4a07-8477-c663264ef7b4",
              "parent_uuid": "3ed5b132-7a90-4e7d-bf97-48950b6d2c90",
              "tagName": "td",
              "properties": [
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
              "uuid": "44b61aaa-db71-4d10-b1b7-539cc9818a94",
              "parent_uuid": "3ed5b132-7a90-4e7d-bf97-48950b6d2c90",
              "tagName": "td",
              "properties": [
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
              "uuid": "8e86ef48-5d57-4cf0-ba4d-6a6f2e8687d3",
              "parent_uuid": "3ed5b132-7a90-4e7d-bf97-48950b6d2c90",
              "tagName": "td",
              "properties": [
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
              "uuid": "28e2d5ce-2f54-408c-a166-ad310548ad8d",
              "parent_uuid": "3ed5b132-7a90-4e7d-bf97-48950b6d2c90",
              "tagName": "td",
              "properties": [
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "de9261a8-baa9-45e0-80ae-7fa5794398ff",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b93e4f72-6f2c-402b-9e34-47626b3251ac",
              "parent_uuid": "de9261a8-baa9-45e0-80ae-7fa5794398ff",
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
              "uuid": "ff1aa384-378a-4091-aa62-e5fe412d31b9",
              "parent_uuid": "de9261a8-baa9-45e0-80ae-7fa5794398ff",
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
              "uuid": "a5b76f4c-e438-4d61-9bdf-fb9f5ed52cf9",
              "parent_uuid": "de9261a8-baa9-45e0-80ae-7fa5794398ff",
              "tagName": "td",
              "properties": [
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
              "uuid": "49de47e7-ed82-458f-9e64-82153a007211",
              "parent_uuid": "de9261a8-baa9-45e0-80ae-7fa5794398ff",
              "tagName": "td",
              "properties": [
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
              "uuid": "c9a8eb9e-b09b-47ca-9cda-9c83bd4a021b",
              "parent_uuid": "de9261a8-baa9-45e0-80ae-7fa5794398ff",
              "tagName": "td",
              "properties": [
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
              "uuid": "54610840-0ad8-47b9-aa82-8866ba99ae67",
              "parent_uuid": "de9261a8-baa9-45e0-80ae-7fa5794398ff",
              "tagName": "td",
              "properties": [
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "a3036790-f5a8-4f73-b71a-08bd40f23663",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "479c5c50-3fcb-4e00-8bfb-7e7a46db1aaf",
              "parent_uuid": "a3036790-f5a8-4f73-b71a-08bd40f23663",
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
          "uuid": "5f9ba522-354f-480f-b29a-259b88016163",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7420933c-929f-4b12-af10-a5a890c22497",
              "parent_uuid": "5f9ba522-354f-480f-b29a-259b88016163",
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
          "uuid": "9780bdf5-1bb9-42b0-8fe9-9a9ddaf4f352",
          "parent_uuid": "875c63d0-7a97-4a3a-98d7-b748923d3700",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3d755ad0-daba-4c0f-aa7c-3e7a9cd4e40f",
              "parent_uuid": "9780bdf5-1bb9-42b0-8fe9-9a9ddaf4f352",
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


GO 


PRINT 'Done Executing "Insert_EVA.sql"' 


GO 




PRINT 'Begin Executing "Insert_NPL.sql"' 

GO 



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
  "uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "9d94b5e8-20d6-4b2d-8c30-01938c1a1e6b",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "84bcc1a1-b6b6-4772-9de5-b165749a1fa5",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "d37bf060-cd3d-4dc0-a9eb-fe16bc23a6ca",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "c9750cf1-39dc-4c07-8ac9-9667be962178",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "a75720bf-aca3-4de2-8654-4f78f4015daf",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "6def3353-286c-4e14-9df5-6001e34a4315",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "e0cad28a-a5f7-4341-9529-ca12e16425f6",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
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
      "uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
      "parent_uuid": "3098d840-0623-4ce3-acd5-4222a5a6ced0",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "e8e733ec-92a2-4442-89fa-4109852f22b7",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-bottom: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "693d482d-aa12-46df-8687-c0c35e5645ba",
              "parent_uuid": "e8e733ec-92a2-4442-89fa-4109852f22b7",
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
              "uuid": "74b9bfaa-3450-46a6-83a1-c8cf71b448a7",
              "parent_uuid": "e8e733ec-92a2-4442-89fa-4109852f22b7",
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
              "uuid": "faa8884b-1e1d-4c56-9d9b-5d60906f569e",
              "parent_uuid": "e8e733ec-92a2-4442-89fa-4109852f22b7",
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
              "uuid": "349fe177-44bf-4436-86c6-e67b876d13ba",
              "parent_uuid": "e8e733ec-92a2-4442-89fa-4109852f22b7",
              "tagName": "td",
              "properties": [
                [
                  "colspan",
                  "8"
                ],
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Notenpufferlager</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            }
          ],
          "sort": 0,
          "lvl": 0
        },
        {
          "uuid": "16afcbb0-389c-49c7-8d4a-2c2ee6613e6e",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000000; border-top: 1px solid #000000; "
            ]
          ],
          "children": [
            {
              "uuid": "9daa76e3-3391-4223-8f7a-0c59230d7b54",
              "parent_uuid": "16afcbb0-389c-49c7-8d4a-2c2ee6613e6e",
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
              "uuid": "a49a5dc7-1cd4-492e-8bc9-1ba64f3e3bed",
              "parent_uuid": "16afcbb0-389c-49c7-8d4a-2c2ee6613e6e",
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
              "uuid": "c6986d25-5381-4d09-bfef-d58b6b1187b7",
              "parent_uuid": "16afcbb0-389c-49c7-8d4a-2c2ee6613e6e",
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
              "uuid": "534fd0b0-d518-468d-b563-914cb2914e3c",
              "parent_uuid": "16afcbb0-389c-49c7-8d4a-2c2ee6613e6e",
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
          "uuid": "dfe29a00-a514-4b1c-9378-444a2b1217ca",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c1bed33b-8c5e-4b15-a6e4-12541d74c35d",
              "parent_uuid": "dfe29a00-a514-4b1c-9378-444a2b1217ca",
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
              "innerHtml": "\r\n                    <span>Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span><br><br>\r\n                    <span style=\"font-style: italic;\">Detailierte Wartungsbeschreibungen sind im Wartungsdokument des NPL abgelegt</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "42630a66-22d3-493b-a021-d8fd3a79384f",
              "parent_uuid": "dfe29a00-a514-4b1c-9378-444a2b1217ca",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "verticalColumn slimBlackBorder"
                ],
                [
                  "style",
                  "height: 4cm;"
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
              "uuid": "dc2ecdae-4bd1-4d99-bb93-0478065215e0",
              "parent_uuid": "dfe29a00-a514-4b1c-9378-444a2b1217ca",
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
              "uuid": "1938d3e3-2755-4b1e-a3b8-0b9ff5c66a79",
              "parent_uuid": "dfe29a00-a514-4b1c-9378-444a2b1217ca",
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
              "uuid": "1cdd7eff-24c4-406e-b708-e013edb4d77b",
              "parent_uuid": "dfe29a00-a514-4b1c-9378-444a2b1217ca",
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
              "uuid": "c347595a-b703-463e-ac28-2531beb9d00f",
              "parent_uuid": "dfe29a00-a514-4b1c-9378-444a2b1217ca",
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
          "uuid": "5dc60132-3cb8-494b-91b8-fceeaab4b6cb",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "81fceeca-4e11-4323-aae4-4e846955bf3a",
              "parent_uuid": "5dc60132-3cb8-494b-91b8-fceeaab4b6cb",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Prüfarbeiten / Funktionskontrollen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "ba913a3a-79bf-487c-890a-db8e06178118",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d1feb87d-ea71-45ed-bbd3-abf53aa9568c",
              "parent_uuid": "ba913a3a-79bf-487c-890a-db8e06178118",
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
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Not-Halt Taster (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "06a56f00-e2bb-40f1-baf8-ad9462689766",
              "parent_uuid": "ba913a3a-79bf-487c-890a-db8e06178118",
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
              "uuid": "06f88355-e0ad-4608-8b63-020210548602",
              "parent_uuid": "ba913a3a-79bf-487c-890a-db8e06178118",
              "tagName": "td",
              "properties": [
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
              "uuid": "d78e9777-80aa-4836-b092-f27eb35449f8",
              "parent_uuid": "ba913a3a-79bf-487c-890a-db8e06178118",
              "tagName": "td",
              "properties": [
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
              "uuid": "61f4577e-d6be-4211-8108-668b50ab9822",
              "parent_uuid": "ba913a3a-79bf-487c-890a-db8e06178118",
              "tagName": "td",
              "properties": [
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
              "uuid": "f562530f-d48a-40ab-a961-cc43ade03536",
              "parent_uuid": "ba913a3a-79bf-487c-890a-db8e06178118",
              "tagName": "td",
              "properties": [
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "b3f2d20e-38f3-4522-b183-bb278aeffe34",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "3665e440-36d0-4acc-9e10-5a47f1ae608b",
              "parent_uuid": "b3f2d20e-38f3-4522-b183-bb278aeffe34",
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
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Prüfung der Sicherheitseinrichtung, Abdeckung auf Beschädigungen prüfen (TK01.01 / .02 / .03 / BU30)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e25adabd-4629-442f-bcd3-7a57510f3635",
              "parent_uuid": "b3f2d20e-38f3-4522-b183-bb278aeffe34",
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
              "uuid": "836c7423-fe86-4198-b637-c8d554b5cbeb",
              "parent_uuid": "b3f2d20e-38f3-4522-b183-bb278aeffe34",
              "tagName": "td",
              "properties": [
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
              "uuid": "d8908796-667a-4557-9ff4-eba44bf8fd0d",
              "parent_uuid": "b3f2d20e-38f3-4522-b183-bb278aeffe34",
              "tagName": "td",
              "properties": [
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
              "uuid": "e84a9364-7fd7-4896-bcc8-16fa4904c859",
              "parent_uuid": "b3f2d20e-38f3-4522-b183-bb278aeffe34",
              "tagName": "td",
              "properties": [
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
              "uuid": "4f9477be-5256-4922-9ab0-e63d3ef94476",
              "parent_uuid": "b3f2d20e-38f3-4522-b183-bb278aeffe34",
              "tagName": "td",
              "properties": [
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
          "uuid": "727ae406-cd6b-4c66-9f69-0bd49e7fdb81",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4ddc95da-5b42-4ced-89ff-d57a56440279",
              "parent_uuid": "727ae406-cd6b-4c66-9f69-0bd49e7fdb81",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Funktionstest Brandschutztore bei Wareneingang / Warenausgang / Verarbeitung<br>- Brandschutztor 101 (2x) <br>- Brandschutztor 102 (2x)<br>- Prüfpunkte: Laufverhalten, Endlagen, Abdichtung, Geräusche, Steuerungsanzeige, Abnutzungsescheinungen, </span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "022b91cb-7471-4118-9d38-bb74bc49e3f8",
              "parent_uuid": "727ae406-cd6b-4c66-9f69-0bd49e7fdb81",
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
              "innerHtml": "<span>M</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "7b6aad21-d7a8-4aa5-a5e8-a369c60aa72a",
              "parent_uuid": "727ae406-cd6b-4c66-9f69-0bd49e7fdb81",
              "tagName": "td",
              "properties": [
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
              "uuid": "d6267933-bf93-4a4a-989f-e3d685e803a6",
              "parent_uuid": "727ae406-cd6b-4c66-9f69-0bd49e7fdb81",
              "tagName": "td",
              "properties": [
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
              "uuid": "59fb03f1-d630-4128-86f4-420874b73792",
              "parent_uuid": "727ae406-cd6b-4c66-9f69-0bd49e7fdb81",
              "tagName": "td",
              "properties": [
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
              "uuid": "81181134-69b6-4dde-88aa-a29650884421",
              "parent_uuid": "727ae406-cd6b-4c66-9f69-0bd49e7fdb81",
              "tagName": "td",
              "properties": [
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
          "uuid": "2850a878-f922-4c04-a3d4-5ffc744de405",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4750b036-1a4c-4f6f-9518-1ba404de6166",
              "parent_uuid": "2850a878-f922-4c04-a3d4-5ffc744de405",
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
              "innerHtml": "\r\n                    <span>Zustandsprüfung <b>IT Infrastruktur</b> gemäss Wartungsdokument <br>\"Service- und Wartungsplan IT Infrastruktur\"</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9c200e1e-3cdd-4161-b43e-653f5b3ae0e4",
              "parent_uuid": "2850a878-f922-4c04-a3d4-5ffc744de405",
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
              "innerHtml": "<span>W</span>",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "80beba35-3571-480d-a8bc-945c62e2293e",
              "parent_uuid": "2850a878-f922-4c04-a3d4-5ffc744de405",
              "tagName": "td",
              "properties": [
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
              "uuid": "e876889c-d395-40f9-b1ab-f0e6ccc20110",
              "parent_uuid": "2850a878-f922-4c04-a3d4-5ffc744de405",
              "tagName": "td",
              "properties": [
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
              "uuid": "bd939f6e-ce3d-4d1b-a262-62722ea9bef2",
              "parent_uuid": "2850a878-f922-4c04-a3d4-5ffc744de405",
              "tagName": "td",
              "properties": [
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
              "uuid": "a07380e1-c7ab-4119-9b5a-998d0f073727",
              "parent_uuid": "2850a878-f922-4c04-a3d4-5ffc744de405",
              "tagName": "td",
              "properties": [
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
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "93796f6e-e6c6-49a9-a81a-3672fbf1c8a5",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4adab248-fded-4f14-85d7-cf5b9a1a047f",
              "parent_uuid": "93796f6e-e6c6-49a9-a81a-3672fbf1c8a5",
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
                  "88"
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
              "innerHtml": "\r\n                    <span><b>Pneumatikzentrale</b> für alle unterschiedlichen Anlagebereiche in Steigzone auf Funktion, genügend Druck, Dichtheit prüfen<br>- Kondensatabscheider<br>- Not-Halt Entlüftungsventil<br>- Druckregelventil</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "898e50f2-798e-4841-874c-43677bb9564b",
              "parent_uuid": "93796f6e-e6c6-49a9-a81a-3672fbf1c8a5",
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
              "uuid": "3b6d7998-1e78-414d-bed0-6e68754b9211",
              "parent_uuid": "93796f6e-e6c6-49a9-a81a-3672fbf1c8a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
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
              "uuid": "438a4b12-92f3-4e65-ba90-2aa1a8b1ee5e",
              "parent_uuid": "93796f6e-e6c6-49a9-a81a-3672fbf1c8a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
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
              "uuid": "cfa6c9a9-8e83-43e4-a94e-2dfaae3c6e9a",
              "parent_uuid": "93796f6e-e6c6-49a9-a81a-3672fbf1c8a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
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
              "uuid": "ceff0e04-7557-4371-b010-728fc56bee5b",
              "parent_uuid": "93796f6e-e6c6-49a9-a81a-3672fbf1c8a5",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
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
          "uuid": "83f02d06-c4e6-4c2a-bad6-913f5293451f",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "41dc4138-a9df-4f0e-98a8-4b61d91392ce",
              "parent_uuid": "83f02d06-c4e6-4c2a-bad6-913f5293451f",
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
                  "74"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Rollenantriebe in der <b>Fördertechnik</b> prüfen<br>- Antriebsriemen (Risse, Abnutzung)<br>- Motorrollen (Laufruhe, Leichtgängigkeit, Lagerzustand)<br>- Befestigung (Klipp, Verschraubung)<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "846521f5-ab34-440d-aae6-ef3b8bdd1ddb",
              "parent_uuid": "83f02d06-c4e6-4c2a-bad6-913f5293451f",
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
              "uuid": "e3119c29-e673-4378-9ffc-84f5e9c698f8",
              "parent_uuid": "83f02d06-c4e6-4c2a-bad6-913f5293451f",
              "tagName": "td",
              "properties": [
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
              "uuid": "a25233fc-7af2-48e6-b2ae-67be75e8ed18",
              "parent_uuid": "83f02d06-c4e6-4c2a-bad6-913f5293451f",
              "tagName": "td",
              "properties": [
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
              "uuid": "5d8e5bce-8a8b-4f0c-8c86-5bbbf8a32819",
              "parent_uuid": "83f02d06-c4e6-4c2a-bad6-913f5293451f",
              "tagName": "td",
              "properties": [
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
              "uuid": "39c5f5c7-8ab0-42ca-b46d-d93d75a8bc84",
              "parent_uuid": "83f02d06-c4e6-4c2a-bad6-913f5293451f",
              "tagName": "td",
              "properties": [
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
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "8cb7a919-5876-429b-a847-6b59cce6c6c4",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ff20394d-f0c8-4ba3-9547-adc72da9fd49",
              "parent_uuid": "8cb7a919-5876-429b-a847-6b59cce6c6c4",
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
                  "53"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Hubstopper</b> in der Fördetechnik prüfen<br>- Dichtheit der Ventile<br>- Bewegungsgeschwindigkeit, Endanschlag des Balkens (Pneumatikzylinder)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "167e8611-a458-4e83-8df7-13734a7ff6a7",
              "parent_uuid": "8cb7a919-5876-429b-a847-6b59cce6c6c4",
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
              "uuid": "27c35cbe-ddaa-4ea3-abfd-9cdeaa48c6ff",
              "parent_uuid": "8cb7a919-5876-429b-a847-6b59cce6c6c4",
              "tagName": "td",
              "properties": [
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
              "uuid": "0f7e5bc1-398c-4795-aa0b-e97f2c820096",
              "parent_uuid": "8cb7a919-5876-429b-a847-6b59cce6c6c4",
              "tagName": "td",
              "properties": [
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
              "uuid": "3900bdd6-594b-494d-8fa5-f3862495873f",
              "parent_uuid": "8cb7a919-5876-429b-a847-6b59cce6c6c4",
              "tagName": "td",
              "properties": [
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
              "uuid": "4adfc33e-f67b-4799-acbf-d5a01d739183",
              "parent_uuid": "8cb7a919-5876-429b-a847-6b59cce6c6c4",
              "tagName": "td",
              "properties": [
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
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "80e4d656-1de7-4c14-97eb-796db2687df7",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3fb5120-2919-44f3-9e5a-a63f77504114",
              "parent_uuid": "80e4d656-1de7-4c14-97eb-796db2687df7",
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
                  "139"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion aller <b>Gurtumsetzer</b> prüfen<br>- Mechanische Spannung der Antriebsriemen beim Schwert (Flachriemen)<br>- Dichtheit der Ventile<br>- Mechanische Bewegung der einzelnen Schwerter (Pneumatikzylinder)<br>- Antriebsketten der Schwerter<br>- Antriebsriemen<br>- Asynchronmotor inkl. Mechanik (Kann manuell per Schütz angesteuert werden)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "23fff84c-f5c8-452e-a161-d729c76b28e8",
              "parent_uuid": "80e4d656-1de7-4c14-97eb-796db2687df7",
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
              "uuid": "aff11c10-a799-478e-980d-c560274ca809",
              "parent_uuid": "80e4d656-1de7-4c14-97eb-796db2687df7",
              "tagName": "td",
              "properties": [
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
              "uuid": "efe6b8f0-4cf6-4411-b2df-3aa7f7a13805",
              "parent_uuid": "80e4d656-1de7-4c14-97eb-796db2687df7",
              "tagName": "td",
              "properties": [
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
              "uuid": "ccdb9333-f243-43a9-aed8-306707f94bd2",
              "parent_uuid": "80e4d656-1de7-4c14-97eb-796db2687df7",
              "tagName": "td",
              "properties": [
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
              "uuid": "5d5daf91-6b86-4ede-a08f-eaf3b96c2834",
              "parent_uuid": "80e4d656-1de7-4c14-97eb-796db2687df7",
              "tagName": "td",
              "properties": [
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
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "a1638975-cefb-4d32-8a1a-cc06d0cff56a",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06920ead-9647-4426-8305-57a09d4d8547",
              "parent_uuid": "a1638975-cefb-4d32-8a1a-cc06d0cff56a",
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
                  "110"
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
              "innerHtml": "\r\n                    <span>Zustand, Funktion, Ausrichtung aller <b>Sensoren</b> auf Reflektoren, Sicherheits-Lichtgitter kontrollieren<br>- Fördertechnik<br>- OSR<br>- Behälterlifte<br>- OSR-Lifte</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "e572a9f0-6244-4046-8c92-b9f0284408f6",
              "parent_uuid": "a1638975-cefb-4d32-8a1a-cc06d0cff56a",
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
              "uuid": "33841109-3ddc-43a3-9458-505149886124",
              "parent_uuid": "a1638975-cefb-4d32-8a1a-cc06d0cff56a",
              "tagName": "td",
              "properties": [
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
              "uuid": "bdb1be29-1d54-45be-9770-8508f843bdb5",
              "parent_uuid": "a1638975-cefb-4d32-8a1a-cc06d0cff56a",
              "tagName": "td",
              "properties": [
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
              "uuid": "3f09e263-bdde-4586-9705-9f817a0c72ee",
              "parent_uuid": "a1638975-cefb-4d32-8a1a-cc06d0cff56a",
              "tagName": "td",
              "properties": [
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
              "uuid": "950e86e0-6942-4eba-8265-27756d8ca69b",
              "parent_uuid": "a1638975-cefb-4d32-8a1a-cc06d0cff56a",
              "tagName": "td",
              "properties": [
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
          "sort": 12,
          "lvl": 0
        },
        {
          "uuid": "9ba05c78-96af-480f-ab2c-65af74b5fd50",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "06064851-2d9d-4a76-8584-63399d1fb19a",
              "parent_uuid": "9ba05c78-96af-480f-ab2c-65af74b5fd50",
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion des <b>EBG/Shuttleliftes</b> für Shuttletausch</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "0651ca28-ac61-4329-9a27-3aebe4858471",
              "parent_uuid": "9ba05c78-96af-480f-ab2c-65af74b5fd50",
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
              "uuid": "cc506ce5-9e49-4196-94a1-558a42ead91e",
              "parent_uuid": "9ba05c78-96af-480f-ab2c-65af74b5fd50",
              "tagName": "td",
              "properties": [
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
              "uuid": "0f2cbd9a-625d-4250-bbdf-6269acf91ea8",
              "parent_uuid": "9ba05c78-96af-480f-ab2c-65af74b5fd50",
              "tagName": "td",
              "properties": [
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
              "uuid": "78a45dac-a419-4c57-a34d-b686104156d0",
              "parent_uuid": "9ba05c78-96af-480f-ab2c-65af74b5fd50",
              "tagName": "td",
              "properties": [
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
              "uuid": "56bb3511-f5c2-4d7e-8157-b6d98d104613",
              "parent_uuid": "9ba05c78-96af-480f-ab2c-65af74b5fd50",
              "tagName": "td",
              "properties": [
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
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "e00165b2-3bca-47d6-80e5-9a15076ae331",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "46e7d3f4-ca28-4c67-ac65-400a17f0ce22",
              "parent_uuid": "e00165b2-3bca-47d6-80e5-9a15076ae331",
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
                  "107"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>OSR-Lifte</b><br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "1c7ba058-b52c-42f2-bb52-e13fb86779c0",
              "parent_uuid": "e00165b2-3bca-47d6-80e5-9a15076ae331",
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
              "uuid": "cb6deaea-b6d4-46af-b15b-31bf618e4361",
              "parent_uuid": "e00165b2-3bca-47d6-80e5-9a15076ae331",
              "tagName": "td",
              "properties": [
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
              "uuid": "860fb40b-096a-4391-bed8-c62a2d34ade7",
              "parent_uuid": "e00165b2-3bca-47d6-80e5-9a15076ae331",
              "tagName": "td",
              "properties": [
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
              "uuid": "c8949d16-9434-43c2-9279-9e53cd7cd908",
              "parent_uuid": "e00165b2-3bca-47d6-80e5-9a15076ae331",
              "tagName": "td",
              "properties": [
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
              "uuid": "fec0c8a3-46c6-4f84-8f09-6812597ced03",
              "parent_uuid": "e00165b2-3bca-47d6-80e5-9a15076ae331",
              "tagName": "td",
              "properties": [
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
          "sort": 14,
          "lvl": 0
        },
        {
          "uuid": "b6da1d25-f40f-425b-bc27-e047a912bfba",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "076e4b39-65e1-4e23-bdd2-ebbc33fd7154",
              "parent_uuid": "b6da1d25-f40f-425b-bc27-e047a912bfba",
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
                  "119"
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
              "innerHtml": "\r\n                    <span>Zustand und Funktion <b>Behälterlift/Liftplattform</b><br>- Bewegung Liftplattform (Laufruhe, Vibrationen, Geräusche)<br>- Motor, Kupplung (Laufruhe, Geräusche, mech. Befestigung)<br>- Antriebswelle (Laufruhe,Abnutzung)<br>- Hubzahnriemen (Geradelauf, Spannung, Abnutzung)<br>- Umlenkrolle (Laufruhe, Abnutzung)<br>- Schleppkette (Kabellauf)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "6340a61b-118e-4323-ad37-1323391777ee",
              "parent_uuid": "b6da1d25-f40f-425b-bc27-e047a912bfba",
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
              "uuid": "e18ef0ea-ff0b-408f-bfa3-1592b393d021",
              "parent_uuid": "b6da1d25-f40f-425b-bc27-e047a912bfba",
              "tagName": "td",
              "properties": [
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
              "uuid": "85e0e986-79fa-46c5-9d1b-d3ea4401f6c6",
              "parent_uuid": "b6da1d25-f40f-425b-bc27-e047a912bfba",
              "tagName": "td",
              "properties": [
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
              "uuid": "45c91c7e-d764-48e3-b44f-603c3477950c",
              "parent_uuid": "b6da1d25-f40f-425b-bc27-e047a912bfba",
              "tagName": "td",
              "properties": [
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
              "uuid": "af4c1244-2127-4104-98d2-1b2e29c85b3b",
              "parent_uuid": "b6da1d25-f40f-425b-bc27-e047a912bfba",
              "tagName": "td",
              "properties": [
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
          "sort": 15,
          "lvl": 0
        },
        {
          "uuid": "35d8378e-ab1e-40a1-8240-2d4b5b5c729e",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dad02073-0550-4212-a464-b235fa4fef49",
              "parent_uuid": "35d8378e-ab1e-40a1-8240-2d4b5b5c729e",
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
                  "119"
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
              "innerHtml": "\r\n                    <span><b>Zustand und Funktion an EBG/Shuttle 01 - 13</b><br>- Sensoren, Distanzen<br>- Laufräder für Längs- und Querfahrwerk, Seitenführungsrad (Lagerung, Laufruhe)<br>- Teleskoparme, Antriebkette<br>- Drehgeber, Induktivgeber<br>- Gassenfahrt, Quergassenfahrt, Behälterentnahme, Behältereinlagerung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4b02979b-c0a8-4be2-9c82-0e73041110ef",
              "parent_uuid": "35d8378e-ab1e-40a1-8240-2d4b5b5c729e",
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
              "uuid": "12576a6d-b774-4b53-a6fd-5de3541c0abe",
              "parent_uuid": "35d8378e-ab1e-40a1-8240-2d4b5b5c729e",
              "tagName": "td",
              "properties": [
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
              "uuid": "759dbc79-d831-4940-b3f3-7f455c336b77",
              "parent_uuid": "35d8378e-ab1e-40a1-8240-2d4b5b5c729e",
              "tagName": "td",
              "properties": [
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
              "uuid": "d38b8e86-e744-438d-9952-ae5903db8573",
              "parent_uuid": "35d8378e-ab1e-40a1-8240-2d4b5b5c729e",
              "tagName": "td",
              "properties": [
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
              "uuid": "755023de-bfe2-4b50-b4a0-b603559881fc",
              "parent_uuid": "35d8378e-ab1e-40a1-8240-2d4b5b5c729e",
              "tagName": "td",
              "properties": [
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
          "sort": 16,
          "lvl": 0
        },
        {
          "uuid": "b83e92d3-6902-4adb-9d2f-252dab208736",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "075e034d-c55e-4130-813d-780d11d899d8",
              "parent_uuid": "b83e92d3-6902-4adb-9d2f-252dab208736",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Zustand und Funktion der Schutzvorrichtung zu den Gassenbereichen<br>- Knapp-Lock<br>- Not-Halt Taster<br>- Schutzzaun, Schutzabdeckung</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "2c15e06b-b840-4ed4-a94b-24c78e2c3b25",
              "parent_uuid": "b83e92d3-6902-4adb-9d2f-252dab208736",
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
              "uuid": "ef373cf6-ad81-47e8-b682-c5533896d4aa",
              "parent_uuid": "b83e92d3-6902-4adb-9d2f-252dab208736",
              "tagName": "td",
              "properties": [
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
              "uuid": "793ec530-6d4f-4b10-b133-cc29f9dfe9b1",
              "parent_uuid": "b83e92d3-6902-4adb-9d2f-252dab208736",
              "tagName": "td",
              "properties": [
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
              "uuid": "7d91cb9d-ad54-45da-bf32-a65389fd1e48",
              "parent_uuid": "b83e92d3-6902-4adb-9d2f-252dab208736",
              "tagName": "td",
              "properties": [
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
              "uuid": "1e84ebfd-db5c-43f5-83ae-4cbaa6d5f703",
              "parent_uuid": "b83e92d3-6902-4adb-9d2f-252dab208736",
              "tagName": "td",
              "properties": [
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
          "sort": 17,
          "lvl": 0
        },
        {
          "uuid": "ba986770-c952-451c-a7f1-59d0b66c8986",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: none;"
            ]
          ],
          "children": [
            {
              "uuid": "c8267732-f79c-4271-9f9f-f07500b1e341",
              "parent_uuid": "ba986770-c952-451c-a7f1-59d0b66c8986",
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
          "sort": 18,
          "lvl": 0
        },
        {
          "uuid": "c21b9d97-42e3-442f-a1d5-643d813ed363",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e6ab1775-b9e4-4ba1-abfb-d718602992ce",
              "parent_uuid": "c21b9d97-42e3-442f-a1d5-643d813ed363",
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
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 19,
          "lvl": 0
        },
        {
          "uuid": "121ba2d2-31e3-48b8-9f69-25dbc2038921",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "6e0f86c4-3d4d-4d05-9b90-911c273aeec7",
              "parent_uuid": "121ba2d2-31e3-48b8-9f69-25dbc2038921",
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
          "sort": 20,
          "lvl": 0
        },
        {
          "uuid": "4037dfd1-48bb-48d8-a43f-7d8038213866",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "9307b559-fd6c-433e-9e37-6a0d8a8c17c8",
              "parent_uuid": "4037dfd1-48bb-48d8-a43f-7d8038213866",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000"
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
          "sort": 21,
          "lvl": 0
        },
        {
          "uuid": "b5f85855-a70c-439e-8677-7de6704e1f98",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "9e0b09a3-3d85-4cb9-8316-792b4e9bbbbe",
              "parent_uuid": "b5f85855-a70c-439e-8677-7de6704e1f98",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten TK01.01 / .02 / .03</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 22,
          "lvl": 0
        },
        {
          "uuid": "fd8456bc-41ca-4e45-bdc7-617c550b4dc6",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "51dd343b-ba1f-41d8-9f12-3ff8c5d4ed6e",
              "parent_uuid": "fd8456bc-41ca-4e45-bdc7-617c550b4dc6",
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
                  "109"
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
              "innerHtml": "\r\n                    <span>Reinigung der Fördertechnik<br>- Barcodescanner (mittels trockenem, fusselfreiem Tuch)<br>- Optische Sensoren / Reflektoren (mittels trockenem, fusselfreiem Tuch)<br>- Antriebsriemen<br>- Antriebsrollen<br>- Gurtumsetzer</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "47043ae9-b96d-4477-af24-ee189bbf4a74",
              "parent_uuid": "fd8456bc-41ca-4e45-bdc7-617c550b4dc6",
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
              "uuid": "7477e51d-ac55-4ea8-929b-5c404f3de237",
              "parent_uuid": "fd8456bc-41ca-4e45-bdc7-617c550b4dc6",
              "tagName": "td",
              "properties": [
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
              "uuid": "45940cd6-ab3d-4619-840d-5a894c1077d5",
              "parent_uuid": "fd8456bc-41ca-4e45-bdc7-617c550b4dc6",
              "tagName": "td",
              "properties": [
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
              "uuid": "e3676c89-0151-423d-bc6c-341740dd380a",
              "parent_uuid": "fd8456bc-41ca-4e45-bdc7-617c550b4dc6",
              "tagName": "td",
              "properties": [
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
              "uuid": "f845c4ff-8e1a-4780-a95a-9b8ac6befef2",
              "parent_uuid": "fd8456bc-41ca-4e45-bdc7-617c550b4dc6",
              "tagName": "td",
              "properties": [
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
          "sort": 23,
          "lvl": 0
        },
        {
          "uuid": "cfeee8c1-7b11-4555-a920-a5716353307b",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d6cd6da1-1aba-4282-9813-939f1abe29a3",
              "parent_uuid": "cfeee8c1-7b11-4555-a920-a5716353307b",
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
                  "115"
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
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschränke mittels Staubsauger, Filtermattenaustausch<br>- VERW: F01.GB01<br>- WA: F01.GB02<br>- WE: F01.GB03<br>- Steigzone: F01.GB04 / F01.GB05 / F01.1 / F01.2</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "4ee9c787-4a49-4d03-b9a8-a2966c68d272",
              "parent_uuid": "cfeee8c1-7b11-4555-a920-a5716353307b",
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
              "uuid": "631c2c00-98f9-425d-b1a9-07ce70c46d32",
              "parent_uuid": "cfeee8c1-7b11-4555-a920-a5716353307b",
              "tagName": "td",
              "properties": [
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
              "uuid": "1953259f-87a1-4d8c-bafc-c159c011b659",
              "parent_uuid": "cfeee8c1-7b11-4555-a920-a5716353307b",
              "tagName": "td",
              "properties": [
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
              "uuid": "e7303ae0-fc82-4c9d-811d-335cf58d79fc",
              "parent_uuid": "cfeee8c1-7b11-4555-a920-a5716353307b",
              "tagName": "td",
              "properties": [
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
              "uuid": "5bacc943-1b93-4878-983d-d9619482ce5a",
              "parent_uuid": "cfeee8c1-7b11-4555-a920-a5716353307b",
              "tagName": "td",
              "properties": [
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
          "sort": 24,
          "lvl": 0
        },
        {
          "uuid": "4d04000c-33df-4a4a-b8ef-59af97220001",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "39dd1a94-833d-4db0-9e5e-5ba57282be26",
              "parent_uuid": "4d04000c-33df-4a4a-b8ef-59af97220001",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Brandschutztore (Stöbich)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "7439a1a3-6cb1-4d3e-ac69-c498c32e684d",
              "parent_uuid": "4d04000c-33df-4a4a-b8ef-59af97220001",
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
              "uuid": "35331ca0-5568-4ec3-b7df-1622bd8f0e25",
              "parent_uuid": "4d04000c-33df-4a4a-b8ef-59af97220001",
              "tagName": "td",
              "properties": [
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
              "uuid": "c0827ada-c7e9-444c-b166-53bd57b8ee45",
              "parent_uuid": "4d04000c-33df-4a4a-b8ef-59af97220001",
              "tagName": "td",
              "properties": [
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
              "uuid": "cbbcf8fd-99b7-4fca-a58a-7966f0837810",
              "parent_uuid": "4d04000c-33df-4a4a-b8ef-59af97220001",
              "tagName": "td",
              "properties": [
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
              "uuid": "3d836db9-fe9a-43d8-a4f7-328751ad7084",
              "parent_uuid": "4d04000c-33df-4a4a-b8ef-59af97220001",
              "tagName": "td",
              "properties": [
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
          "sort": 25,
          "lvl": 0
        },
        {
          "uuid": "d0877049-10df-414f-b086-eb76d6254f85",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "52e99b67-1ed4-4c15-9742-3ba22a05a13c",
              "parent_uuid": "d0877049-10df-414f-b086-eb76d6254f85",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>Reinigung dezentraler Steuerschrank Tresorschieber (Hügli)</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "16bbd8f1-ac99-4d50-ae49-1161fb2d48df",
              "parent_uuid": "d0877049-10df-414f-b086-eb76d6254f85",
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
              "uuid": "fe9807ff-ea2b-4bb1-834c-511d85d2fcc1",
              "parent_uuid": "d0877049-10df-414f-b086-eb76d6254f85",
              "tagName": "td",
              "properties": [
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
              "uuid": "2b64b394-b2c2-4ed5-a5b4-cb6a34d22642",
              "parent_uuid": "d0877049-10df-414f-b086-eb76d6254f85",
              "tagName": "td",
              "properties": [
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
              "uuid": "66985b23-f0a8-4a2a-b26b-e1efd25f51f2",
              "parent_uuid": "d0877049-10df-414f-b086-eb76d6254f85",
              "tagName": "td",
              "properties": [
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
              "uuid": "3cf42371-1d86-4789-8601-092220319ad6",
              "parent_uuid": "d0877049-10df-414f-b086-eb76d6254f85",
              "tagName": "td",
              "properties": [
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
          "sort": 26,
          "lvl": 0
        },
        {
          "uuid": "de03540d-2c34-4ed4-8929-2c7f69c02b33",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: black; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "443b8aee-62c4-444d-adc0-e75e855269b0",
              "parent_uuid": "de03540d-2c34-4ed4-8929-2c7f69c02b33",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Wartungsarbeiten OSR U30</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 27,
          "lvl": 0
        },
        {
          "uuid": "02f54ebd-07c2-422c-9cff-ed6db6dfa261",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "4b8fb642-7386-4f9f-bbd0-880c55876df8",
              "parent_uuid": "02f54ebd-07c2-422c-9cff-ed6db6dfa261",
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
              "innerHtml": "\r\n                    <span>Reinigung <b>dezentraler Steuerschränke</b> mittels Staubsauger, Filtermattenaustausch<br>- SH01.04+BHLF1<br>- SH01.01+F1<br>- SH01.01+SUV01<br>- SH01.02+SUV01<br>- SH01.03+SUV01<br></span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a1468925-bd39-4a9b-8859-f10ce288b65f",
              "parent_uuid": "02f54ebd-07c2-422c-9cff-ed6db6dfa261",
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
              "uuid": "37579a20-8bef-4e6c-9dc3-7ae01b680d30",
              "parent_uuid": "02f54ebd-07c2-422c-9cff-ed6db6dfa261",
              "tagName": "td",
              "properties": [
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
              "uuid": "ba35f40c-b589-487c-9457-1fdf46dbe231",
              "parent_uuid": "02f54ebd-07c2-422c-9cff-ed6db6dfa261",
              "tagName": "td",
              "properties": [
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
              "uuid": "39f1eb69-3443-4894-9c7d-ecad1ddfc928",
              "parent_uuid": "02f54ebd-07c2-422c-9cff-ed6db6dfa261",
              "tagName": "td",
              "properties": [
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
              "uuid": "c2335bae-e653-4366-b848-dcc418e924f0",
              "parent_uuid": "02f54ebd-07c2-422c-9cff-ed6db6dfa261",
              "tagName": "td",
              "properties": [
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
          "sort": 28,
          "lvl": 0
        },
        {
          "uuid": "710a6fd2-c309-47fb-b53d-aad7c85f6df4",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "a02b2b84-9ab4-4ba9-a3aa-531c06e4af61",
              "parent_uuid": "710a6fd2-c309-47fb-b53d-aad7c85f6df4",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten in den <b>Gassenbereichen</b><br>- Knapp-Lock<br>- Quergangüberwachungssensoren<br>- Reflektorfolien<br>- Fahrprofil<br>- Stromschienen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "dc4ad067-f7e2-4c8f-b9c4-bef7a9fc5ce6",
              "parent_uuid": "710a6fd2-c309-47fb-b53d-aad7c85f6df4",
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
              "uuid": "a7f1f008-2c03-475a-b850-74d14bebff04",
              "parent_uuid": "710a6fd2-c309-47fb-b53d-aad7c85f6df4",
              "tagName": "td",
              "properties": [
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
              "uuid": "2ee8f320-471c-4d84-b080-65361d2b76cd",
              "parent_uuid": "710a6fd2-c309-47fb-b53d-aad7c85f6df4",
              "tagName": "td",
              "properties": [
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
              "uuid": "a84ee545-b7d7-4447-8fc2-a7e008d325a4",
              "parent_uuid": "710a6fd2-c309-47fb-b53d-aad7c85f6df4",
              "tagName": "td",
              "properties": [
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
              "uuid": "92d270cf-30e0-4def-a0f6-838df6f67f53",
              "parent_uuid": "710a6fd2-c309-47fb-b53d-aad7c85f6df4",
              "tagName": "td",
              "properties": [
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
          "sort": 29,
          "lvl": 0
        },
        {
          "uuid": "4756c439-9625-4c6a-ab50-43c6e21b436b",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "eec6b295-e23c-4422-8645-ddef0bcbd05f",
              "parent_uuid": "4756c439-9625-4c6a-ab50-43c6e21b436b",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten im <b>OSR Shuttle-Lift Zwischenpuffer</b><br>- Optische Sensoren, Reflektoren<br>- Gabellichtschranke<br>- Sicherheitslichtgitter<br>- Keilrippenriemen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "85fd0297-de80-4051-8236-a35aca56ff29",
              "parent_uuid": "4756c439-9625-4c6a-ab50-43c6e21b436b",
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
              "uuid": "cc7b1c08-8a48-4422-9961-e1e818b4767d",
              "parent_uuid": "4756c439-9625-4c6a-ab50-43c6e21b436b",
              "tagName": "td",
              "properties": [
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
              "uuid": "5d0da7cd-c26a-415c-b14c-91b743a91b62",
              "parent_uuid": "4756c439-9625-4c6a-ab50-43c6e21b436b",
              "tagName": "td",
              "properties": [
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
              "uuid": "91b40a95-9e0a-4cf5-aafb-21141faf252c",
              "parent_uuid": "4756c439-9625-4c6a-ab50-43c6e21b436b",
              "tagName": "td",
              "properties": [
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
              "uuid": "949299a8-6710-432b-8bff-1b21d22e5731",
              "parent_uuid": "4756c439-9625-4c6a-ab50-43c6e21b436b",
              "tagName": "td",
              "properties": [
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
          "sort": 30,
          "lvl": 0
        },
        {
          "uuid": "a2028630-f3cf-4344-9d55-feaee183a508",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f78d336b-9df3-4693-9678-bc8e59e21c62",
              "parent_uuid": "a2028630-f3cf-4344-9d55-feaee183a508",
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
              "innerHtml": "\r\n                    <span>Reinigungsarbeiten an <b>EBG/Shuttle 01 - 13</b><br>- Sensoren, Reflektoren<br>- Gleitleiste, Schleifer, Laufräder<br>- LED-Steifen, Shuttlegehäuse<br>- Teleskoparme, Antriebkette</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "21a498c7-f030-421f-b025-0fd9dafca821",
              "parent_uuid": "a2028630-f3cf-4344-9d55-feaee183a508",
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
              "uuid": "20bf07ee-0528-489d-9cc7-05045f4181a7",
              "parent_uuid": "a2028630-f3cf-4344-9d55-feaee183a508",
              "tagName": "td",
              "properties": [
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
              "uuid": "79c52390-4133-484a-88bf-cafe41a47d53",
              "parent_uuid": "a2028630-f3cf-4344-9d55-feaee183a508",
              "tagName": "td",
              "properties": [
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
              "uuid": "cfcfae8a-ff3b-4d37-8347-4de4ad314305",
              "parent_uuid": "a2028630-f3cf-4344-9d55-feaee183a508",
              "tagName": "td",
              "properties": [
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
              "uuid": "ff472fd7-ef7f-424c-b8ca-ba864a957a72",
              "parent_uuid": "a2028630-f3cf-4344-9d55-feaee183a508",
              "tagName": "td",
              "properties": [
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
          "sort": 31,
          "lvl": 0
        },
        {
          "uuid": "df66284f-9657-491f-b572-ec930c505f3e",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "55074bbd-0e03-4288-8077-7227cd88e92e",
              "parent_uuid": "df66284f-9657-491f-b572-ec930c505f3e",
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
          "sort": 32,
          "lvl": 0
        },
        {
          "uuid": "0844d68f-a6d8-4eed-b203-a73a3b0ffb29",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "5305a036-8848-47c2-9ba5-64721919909e",
              "parent_uuid": "0844d68f-a6d8-4eed-b203-a73a3b0ffb29",
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
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <u><span>Bemerkungen:</span></u>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 33,
          "lvl": 0
        },
        {
          "uuid": "72f8ddfa-3e10-47e0-81f9-db5fa62899b1",
          "parent_uuid": "4fd54811-cdcb-45f6-961a-a88ca366e243",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f1a96652-c7c6-48ba-8025-5dada10b4752",
              "parent_uuid": "72f8ddfa-3e10-47e0-81f9-db5fa62899b1",
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
          "sort": 34,
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
    ,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS cl_uid 
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
		,'698EA23D-485A-4CEE-9B06-2E130A3A5626' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = '698EA23D-485A-4CEE-9B06-2E130A3A5626'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


GO 


PRINT 'Done Executing "Insert_NPL.sql"' 


GO 




PRINT 'Begin Executing "Insert_Schuettgutcontainer.sql"' 

GO 



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
  "uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "5d1aa998-2af2-420e-97fc-1c63d6f4743a",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
      "tagName": "colgroup",
      "properties": [
        [
          "span",
          "3"
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
      "uuid": "d3558f20-0215-4a45-a959-2d97e147d97e",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "77"
        ]
      ],
      "children": [],
      "sort": 1,
      "lvl": 0
    },
    {
      "uuid": "bb617a22-b61c-40cc-a183-d79892d31728",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "73"
        ]
      ],
      "children": [],
      "sort": 2,
      "lvl": 0
    },
    {
      "uuid": "df62e32e-d758-4bd6-be28-f65e213e25c8",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "67"
        ]
      ],
      "children": [],
      "sort": 3,
      "lvl": 0
    },
    {
      "uuid": "58158f5a-c516-4fd4-8291-279f2852ce06",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
      "tagName": "colgroup",
      "properties": [
        [
          "width",
          "49"
        ]
      ],
      "children": [],
      "sort": 4,
      "lvl": 0
    },
    {
      "uuid": "3e1ae6c0-b0b9-4c21-b93a-bc09fd9b302d",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
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
      "uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
      "parent_uuid": "4dc2a91a-7629-4de9-9bf4-356871d6c72c",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-bottom: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "115c774c-f973-445e-899d-52a90d986f4a",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-bottom: 1px solid #000000; border-left: 2px solid #000000"
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
              "innerHtml": "\r\n                    <span>Datum:</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "bb2fccd1-b8b2-4586-b201-35a9b062178a",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "502e8883-a84b-4bb1-8fe5-3e26ed8f8a3d",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "081641c2-09dc-49e6-82d6-bc1d8aa6265d",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span>Bargeldgewerk: Schüttgutcontainer</span>\r\n                ",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "0c163523-d810-431a-9b39-8d78ca4fd504",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "2d34c627-f994-4dab-b90e-033f492257fb",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "fdbb3ee2-b6cb-4df9-a886-b201ca5718c2",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "fd0f419b-fd2b-488b-8792-dc93a6265951",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "8475b08f-1ee2-4f07-8f63-40fd2e9a3d07",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "f16ca41e-e9dc-415f-8151-b4e02df5d4e8",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
              "uuid": "b54cdb84-cf74-4c44-a773-d7e459fa2fc4",
              "parent_uuid": "65e07b50-fc4b-4fac-9246-24ac603d3981",
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
          "uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid black; border-top: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "0c137cbe-3fc0-4f91-8a40-1064c14ff526",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
              "uuid": "f12cd205-4fb3-4e41-8b3e-980e82cbad7b",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
              "uuid": "1f988d81-f9de-4e9e-8651-9f7230046c60",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
              "uuid": "21771b3d-cabb-461f-9dc5-0057cfaf3d09",
              "parent_uuid": "5973e9df-ab6d-443f-a164-30d249226a3a",
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
          "uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c6973a93-f4e6-464d-973e-7ef586aaf3e7",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
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
                  "center"
                ],
                [
                  "valign",
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"blink_notme\">Achtung: Arbeiten nur ausführen, wenn keine Werte vorhanden sind.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "9e2dd651-b98b-4f0f-8e8e-89db8e7758a9",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ],
                [
                  "style",
                  "height: 4.5cm;"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">Wartungs oder Prüfintervall [Jahr]</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "43c28301-5a07-434b-af7e-4e4c55bd99a0",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "\r\n                    <span class=\"vert\">in Ordnung</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "f8671937-977f-434e-8aa5-8864cb3ad52f",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">nicht in Ordnung</span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "49ed908d-2f49-40a9-9481-b7d8d755eaf4",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">erledigt</span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "90c84ef1-541c-4c58-9dcc-cc36cfb59080",
              "parent_uuid": "25ae56a6-278d-4ab4-91a4-fdc2bcc393be",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder verticalColumn"
                ]
              ],
              "innerHtml": "<span class=\"vert\">nicht vorhanden</span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            }
          ],
          "sort": 2,
          "lvl": 0
        },
        {
          "uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "57039d85-946d-4da8-ba5c-9197d7c1618a",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "4"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "25fdb6d1-e97c-430b-99af-779ca29d20e3",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2\">Grenzwert</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "58fad092-d74b-4204-a9df-e4dcc7dd49a6",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Messwert</span>\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "70eb1547-0042-4cde-8e1d-2daf909d47e0",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "95df441d-6b52-4a2d-a66c-3f48c33f453c",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 4,
              "lvl": 0
            },
            {
              "uuid": "a3ea36d0-e475-41bf-8d7b-c1de3996ab9a",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "dbf7fca5-c56c-4f8d-9918-cb28852dd0a1",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "9746ad41-77de-4b6b-a04a-e5cda6a49f0e",
              "parent_uuid": "c3b01d2d-aaca-404e-9dc6-1235504bf334",
              "tagName": "td",
              "properties": [
                [
                  "align",
                  "left"
                ]
              ],
              "innerHtml": "<span style=\"color: #F2F2F2;\"><br></span>",
              "children": [],
              "sort": 7,
              "lvl": 0
            }
          ],
          "sort": 3,
          "lvl": 0
        },
        {
          "uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "53ca83cb-ed6e-4e2b-82dc-d0afee89a5cc",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "left"
                ],
                [
                  "colspan",
                  "4"
                ]
              ],
              "innerHtml": "\r\n                    <span>Im plombierten Zustand muss die grösst mögliche Öffnung gemessen werden.</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "a263a0ae-9d83-4ac4-985f-a1298d28c70e",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
                  "top"
                ]
              ],
              "innerHtml": "\r\n                    <span>5mm</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "55d944ec-81cc-4af3-9cdd-ed10b765a43f",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
              "tagName": "td",
              "properties": [
                [
                  "style",
                  "border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; margin:0; padding: 0; "
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
              "innerHtml": "\r\n                    <input type=\"text\" style=\"display: block; width: 100%; height: 100%; box-sizing: border-box; margin:0; padding:0;\">\r\n                ",
              "children": [],
              "sort": 2,
              "lvl": 0
            },
            {
              "uuid": "bcf48398-3397-40c2-9b5f-5e1ab68a8aa5",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "sort": 3,
              "lvl": 0
            },
            {
              "uuid": "2ddc140e-9baa-40cb-84ae-44d424589859",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
            },
            {
              "uuid": "f8ab6764-2e05-4554-bcd5-7f96da417984",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "sort": 5,
              "lvl": 0
            },
            {
              "uuid": "53d7e229-2d9a-4795-95c5-b6271d5e0673",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "sort": 6,
              "lvl": 0
            },
            {
              "uuid": "032294e9-9dd1-4a01-bd0f-4c9560b38abd",
              "parent_uuid": "82efd231-23b7-4cba-8ba5-fea61886bf50",
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
              "sort": 7,
              "lvl": 0
            }
          ],
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "e781ff44-6e3d-4411-acc7-c0c10a021dcf",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "innerHtml": "\r\n                    <span>Auf Beschädigungen oder Defekte prüfen</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "3b17788b-b1d3-4bb2-aed4-349eaece643b",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
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
              "uuid": "2bd309a3-5227-4381-b4c3-5120179c88bb",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
              "tagName": "td",
              "properties": [
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
              "uuid": "63c253c3-0dd1-44b9-97a8-3e3f7f6e1208",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
              "tagName": "td",
              "properties": [
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
              "uuid": "aa1cefbe-7b45-4818-92ae-961143ba8925",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
              "tagName": "td",
              "properties": [
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
              "uuid": "bcd5a7bd-ddf5-4f0b-bf48-955bb9c74c63",
              "parent_uuid": "650dae06-cd44-4c9f-8dbb-bcc9e64b8726",
              "tagName": "td",
              "properties": [
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
          "uuid": "7d14237f-f03d-4d50-b301-4247fd01b1f6",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "cd5cd0f7-1199-41a8-bfae-2d89a08ea32f",
              "parent_uuid": "7d14237f-f03d-4d50-b301-4247fd01b1f6",
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
                  "20"
                ]
              ],
              "innerHtml": "<span><br></span>",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 6,
          "lvl": 0
        },
        {
          "uuid": "0a66d9b9-0c00-4548-b586-0df0f9a61805",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "e97d817d-2d39-4165-8261-5f058061f734",
              "parent_uuid": "0a66d9b9-0c00-4548-b586-0df0f9a61805",
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
              "innerHtml": "\r\n                    <span style=\"color: #F2F2F2;\">Prüfarbeiten vor der Durchführung der Arbeiten</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            }
          ],
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "00ee2432-2f6d-4e84-ac1a-e698d67fb354",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
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
              "innerHtml": "\r\n                    <span>Führungsschiene links / rechts fetten mit Molykote weisses Lagerfett</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "c2bbf271-3aff-44d8-9258-4b899d1c7201",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "758a3e31-340b-4532-b82d-7dd56a86805c",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
              "tagName": "td",
              "properties": [
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
              "uuid": "11b8a04b-6834-4d24-9d83-20befc8cda2e",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
              "tagName": "td",
              "properties": [
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
              "uuid": "7d87dff1-d367-42d5-98be-fbeed43469d3",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
              "tagName": "td",
              "properties": [
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
              "uuid": "185003a5-2ab7-4093-8453-2ec77816ed82",
              "parent_uuid": "f36bd613-133a-46e1-b143-6f1929bea87e",
              "tagName": "td",
              "properties": [
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
          "parent_uuid": "dbd517ff-420a-4866-86e1-cc69c0ee184c",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2de9f30c-2101-455c-892b-6eca811822ac",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
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
              "innerHtml": "\r\n                    <span>Schieber fetten mit Molykote weisses Lagerfett</span>\r\n                ",
              "children": [],
              "sort": 0,
              "lvl": 0
            },
            {
              "uuid": "922c7a9f-602e-4eb4-9063-e226e75df407",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
              "tagName": "td",
              "properties": [
                [
                  "class",
                  "slimBlackBorder"
                ],
                [
                  "align",
                  "center"
                ]
              ],
              "innerHtml": "\r\n                    <span>6M</span>\r\n                ",
              "children": [],
              "sort": 1,
              "lvl": 0
            },
            {
              "uuid": "4202ac52-5cb5-426d-8e0f-4aa19f402fe0",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
              "tagName": "td",
              "properties": [
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
              "uuid": "a5c6fe8d-34ab-4d6a-b591-765633a352f9",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
              "tagName": "td",
              "properties": [
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
              "uuid": "1dc2debb-6a5e-4372-a79d-dcd947263d56",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
              "tagName": "td",
              "properties": [
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
              "uuid": "b0e9a6b3-91ac-47e2-8f4d-d01dcf3ae63e",
              "parent_uuid": "dd9e2e2b-5265-4165-971d-f6ba2d517a2c",
              "tagName": "td",
              "properties": [
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
          "sort": 9,
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
	,dbo.LTrimWhitespace(dbo.RTrimWhitespace(CTE.innerHtml)) AS innerHtml 
	,CTE.sort 
	,CTE.properties 
	,CTE.lvl 
	,CTE.recsort 
    ,'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS cl_uid 
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
		,'EB159A9C-E69F-49F4-B10E-3A4825973E46' AS ELE_CL_UID -- uniqueidentifier
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
SET @__cl_uid = 'EB159A9C-E69F-49F4-B10E-3A4825973E46'; 

SELECT CL_UID, CL_Name FROM T_Checklist WHERE CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 

SELECT ELE_UID, ELE_Parent_UID, ELE_CL_UID, ELE_TagName, ELE_Sort, ELE_InnerHtml FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 



SELECT PRO_UID, PRO_Name, PRO_Value, PRO_ELE_UID FROM T_Checklist_ZO_ElementProperties WHERE PRO_ELE_UID IN (SELECT ELE_UID FROM T_ChecklistElements WHERE ELE_CL_UID = @__cl_uid) ORDER BY PRO_ELE_UID, PRO_Name
-- FOR JSON AUTO, INCLUDE_NULL_VALUES 
; 


GO 


PRINT 'Done Executing "Insert_Schuettgutcontainer.sql"' 


GO 




PRINT 'Begin Executing "Insert_VHP.sql"' 

GO 



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
  "uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "0a8411e3-7bcf-4d78-9448-3f0e3158f2fe",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "2ed2d54d-2b44-473a-a8e5-93567f4ff0ac",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "d10c9f5a-ef51-4167-bc29-b9fad5690f71",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "c8abf951-ac38-46c7-9b20-5bde073ac4bd",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "ba8dbe6f-aec8-4718-b0b7-c2533fa491d6",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "a3e9ef97-2a93-4358-b95b-8cf4eddcb4c7",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "9fcae0e3-b9d7-4a26-89a4-b67ae5c2f9ec",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
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
      "uuid": "2d109eae-76b5-4f95-9557-883990510b59",
      "parent_uuid": "7e157764-f0f1-4080-b525-ad8d6a44f24a",
      "tagName": "tbody",
      "properties": [],
      "children": [
        {
          "uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-bottom: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "5f0674cb-2dcb-4c23-9f9d-d2b6425e98d5",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "7f27e0b2-be37-4010-a907-102c720faa93",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "d5cf5a85-e602-4ba0-bfcb-c08decf928fe",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "250d3d44-67f2-48ca-9f5e-8b4de0251714",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "0e9ebf7f-ff12-4844-997b-7e65c4199ba5",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "fefb1d57-6303-4792-9f87-49f81a14b6ad",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "edbb64fd-58b2-4f97-b137-8c6ede5dc8d0",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "efa62d5c-a7fb-4dcd-863a-2c1972885e55",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "c4643ea2-901c-44d3-b340-af9603566eac",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "036fedf6-1100-4d1e-b4a5-bee71f98ec67",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
              "uuid": "9d770ebe-620f-4123-b0d2-f26b2637e790",
              "parent_uuid": "922ef99e-a179-4ec2-a7b6-ad5913ac2797",
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
          "uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "border: 2px solid #000; border-top: 1px solid #000;"
            ]
          ],
          "children": [
            {
              "uuid": "4dfb7f2d-4009-4b70-9258-d3d1cd41bfda",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
              "uuid": "99d430cc-977c-4af1-9cf3-b4a71f95eb77",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
              "uuid": "440b0108-d7b4-4b48-98d3-617866ff8982",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
              "uuid": "c95ea089-886e-4d90-8601-9e71b04f5752",
              "parent_uuid": "90e67c80-dc07-45b4-8b84-0b248a25fd3e",
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
          "uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "dd12431c-10f1-467d-8475-41efd4b0d933",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "041891fc-36ae-4f09-af8e-abe115a31beb",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "7f785d74-82c4-49f7-a08e-614e971d310e",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "2bb392e5-a533-43fe-ac6c-6619ef6660d3",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "723b2f2d-4c11-4a58-bcd8-af2e0d3f2a71",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
              "uuid": "b4920047-79f8-4a6d-84f4-806c135f9f42",
              "parent_uuid": "afeada43-a68b-4713-8d15-9c34c20964cb",
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
          "uuid": "ad0e9e56-26ea-4104-92bb-f53a2c94def1",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "1906cec3-6779-4828-aed8-f5e9311067b0",
              "parent_uuid": "ad0e9e56-26ea-4104-92bb-f53a2c94def1",
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
          "uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "ae365123-da89-4a9f-aa6c-3ea413b31e47",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
              "uuid": "8fd84a7c-c41e-445b-ab13-7c8839dbf9d0",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
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
              "uuid": "39b51c43-7175-444a-9135-068f34817ff0",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
              "tagName": "td",
              "properties": [
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
              "uuid": "9f22a68d-c1ab-42d6-a476-e3274338fdbf",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
              "tagName": "td",
              "properties": [
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
              "uuid": "83f8061d-d205-4ef7-95b2-cba50fc0990d",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
              "tagName": "td",
              "properties": [
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
              "uuid": "f8632c78-819a-4fb0-ad50-f689c65a79f9",
              "parent_uuid": "c42c3a05-67fe-47c9-bd15-fd82471027bc",
              "tagName": "td",
              "properties": [
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
          "sort": 4,
          "lvl": 0
        },
        {
          "uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "c06e1c93-9975-4fe3-ad44-1b00771c3079",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
              "uuid": "4656a4df-1a1e-4ffb-a5e5-8f333519921c",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
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
              "uuid": "a7fa77fe-fdc5-42a1-8a4a-1436d796e606",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
              "tagName": "td",
              "properties": [
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
              "uuid": "36ad0b9c-2c9f-4e7e-94b8-53fd5f96ecd8",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
              "tagName": "td",
              "properties": [
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
              "uuid": "34b798fb-6208-4755-ab18-c7f009009022",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
              "tagName": "td",
              "properties": [
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
              "uuid": "1dbcbcae-9a80-4b54-b5ab-29f193371e51",
              "parent_uuid": "52278bb3-2d72-47e6-a544-a02193d5145c",
              "tagName": "td",
              "properties": [
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
          "uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2aa6881f-fd8f-44a6-b8bf-a6a973cc2dc8",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
              "uuid": "d9e6269a-4f86-440e-a17d-8fc87fefd072",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
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
              "uuid": "153f74a3-7bb2-4244-8dff-4b9d0782e734",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
              "tagName": "td",
              "properties": [
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
              "uuid": "76dc1ef0-25c1-45c5-aa2e-87f78253e577",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
              "tagName": "td",
              "properties": [
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
              "uuid": "60d66c97-6852-420a-b21e-12d1038b73b5",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
              "tagName": "td",
              "properties": [
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
              "uuid": "6a080957-3f43-47bd-90b2-be326acd8aed",
              "parent_uuid": "059077be-6db3-4617-bcf2-bb39e019a794",
              "tagName": "td",
              "properties": [
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
          "uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "232826cf-2df5-419d-950c-8d403e03d3e5",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
              "uuid": "f72cf592-6339-4b3e-9c18-0243805e6c02",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
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
              "uuid": "4f89d07a-c25b-4e72-98e9-cd6f91d16a96",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
              "tagName": "td",
              "properties": [
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
              "uuid": "d3a95807-b747-4bae-9938-8db5791165fa",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
              "tagName": "td",
              "properties": [
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
              "uuid": "642c5570-ff0a-478f-aa3f-5efb2e922111",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
              "tagName": "td",
              "properties": [
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
              "uuid": "c9fe4945-61a7-4f41-ac28-109d07892485",
              "parent_uuid": "9c721c30-6275-42a3-b30a-a882b68e710a",
              "tagName": "td",
              "properties": [
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
          "sort": 7,
          "lvl": 0
        },
        {
          "uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04391b39-c11d-4ffa-9452-6019db89038a",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
              "uuid": "224c95bc-2c63-4d8a-91e1-c327f6319efb",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
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
              "uuid": "b6f404a9-aa33-4ebc-b153-70534d8e0a47",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
              "tagName": "td",
              "properties": [
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
              "uuid": "59ba105e-db6a-4eef-80bf-a4527a69cac3",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
              "tagName": "td",
              "properties": [
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
              "uuid": "2d0d3c6f-e300-4edc-b2a1-246334ea80e0",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
              "tagName": "td",
              "properties": [
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
              "uuid": "67d3eb93-9948-4844-a0c5-b4c4e21dde85",
              "parent_uuid": "9edf4ccb-4a51-4439-a329-72497633fa33",
              "tagName": "td",
              "properties": [
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
          "sort": 8,
          "lvl": 0
        },
        {
          "uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "b2605f07-e0cb-4d0f-9248-d1add5f991ce",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
              "uuid": "20d430a7-5bd4-4076-855d-547879ce1656",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
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
              "uuid": "406f4840-83a9-44c1-a68e-60089c79c002",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
              "tagName": "td",
              "properties": [
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
              "uuid": "ba88a5e1-600f-4d28-8f1c-5591287889f3",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
              "tagName": "td",
              "properties": [
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
              "uuid": "2d226285-5c89-41e0-ab10-48980436a8b1",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
              "tagName": "td",
              "properties": [
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
              "uuid": "0933217d-c863-47bc-80ef-8120bde126cd",
              "parent_uuid": "47bf7326-70b0-4686-afa6-682c806b3c19",
              "tagName": "td",
              "properties": [
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
          "sort": 9,
          "lvl": 0
        },
        {
          "uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "f3793823-756a-4a4c-8856-91d5e00b2764",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
              "uuid": "b6d5e9ec-4dca-4a48-9410-56e144240d62",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
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
              "uuid": "04246858-36ff-4ae8-9fbb-3b24bb3f7825",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
              "tagName": "td",
              "properties": [
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
              "uuid": "2a38c4fb-f5bd-4c94-b0b7-372e164a965e",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
              "tagName": "td",
              "properties": [
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
              "uuid": "a990a468-3694-45f2-9e1e-25a20fd47a29",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
              "tagName": "td",
              "properties": [
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
              "uuid": "bcf575c3-fcd2-4e1e-a370-f361e93c0777",
              "parent_uuid": "837dec8a-004e-4838-b467-70aa8d5bd353",
              "tagName": "td",
              "properties": [
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
          "sort": 10,
          "lvl": 0
        },
        {
          "uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "32bf198a-091c-4032-bfca-1e451b12c065",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
              "uuid": "da60afb5-c17f-4251-a3fa-80c060ff6340",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
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
              "uuid": "74c0bd44-de88-4dff-9309-28afa5d3a155",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
              "tagName": "td",
              "properties": [
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
              "uuid": "bf534c53-71e1-4dad-82e3-8a7b64298184",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
              "tagName": "td",
              "properties": [
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
              "uuid": "7f27bf6d-1a25-46a7-826d-a53d5d254a44",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
              "tagName": "td",
              "properties": [
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
              "uuid": "aa11ad9e-9c62-43bd-98c6-dd815a9cc39d",
              "parent_uuid": "29474f56-7be1-4e90-a789-e27f65418d69",
              "tagName": "td",
              "properties": [
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
          "sort": 11,
          "lvl": 0
        },
        {
          "uuid": "646e60a3-5623-4a60-bfb8-6fc2181837b6",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [
            [
              "style",
              "background-color: #000; border: 1px solid black;"
            ]
          ],
          "children": [
            {
              "uuid": "593227d4-6e9a-4f8d-8ce0-a76ad8775668",
              "parent_uuid": "646e60a3-5623-4a60-bfb8-6fc2181837b6",
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
          "uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "2b0ee646-620e-4e05-a8d8-2de34e6b979d",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
              "uuid": "dc42df3a-99f2-4111-9cfb-bb10f738fb62",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
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
              "uuid": "e876a7f9-2f23-4ed6-b27f-e2cf849ccbee",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
              "tagName": "td",
              "properties": [
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
              "uuid": "a7d502f5-09f8-4c2b-a8e3-b5b23c9cb008",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
              "tagName": "td",
              "properties": [
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
              "uuid": "fced221b-9983-45f9-8db9-221afd489d34",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
              "tagName": "td",
              "properties": [
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
              "uuid": "8a1df4d5-d39d-458b-80ee-01189327817b",
              "parent_uuid": "79262628-1441-4330-92f3-1c59ede17eb7",
              "tagName": "td",
              "properties": [
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
          "sort": 13,
          "lvl": 0
        },
        {
          "uuid": "ceef6816-2c2a-4d36-9207-c517181610d2",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "7968a1df-a93b-48af-b530-b045da1c2c44",
              "parent_uuid": "ceef6816-2c2a-4d36-9207-c517181610d2",
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
          "uuid": "7a36ece0-b241-400d-b074-c8c51af0babb",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "d8533246-4ffa-4c4a-a4db-22ba9c50344c",
              "parent_uuid": "7a36ece0-b241-400d-b074-c8c51af0babb",
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
          "uuid": "ac91a758-2c85-46e1-92e6-01d6edafdc0c",
          "parent_uuid": "2d109eae-76b5-4f95-9557-883990510b59",
          "tagName": "tr",
          "properties": [],
          "children": [
            {
              "uuid": "04ca5d80-84d3-4e7a-8c99-96765651dae9",
              "parent_uuid": "ac91a758-2c85-46e1-92e6-01d6edafdc0c",
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


GO 


PRINT 'Done Executing "Insert_VHP.sql"' 


GO 



